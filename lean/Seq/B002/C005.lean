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
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A276916.P396322178884957613

`4*A276914(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276916.P396322178884957613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A276914 n + 1

end

end A276916.P396322178884957613

noncomputable section

/-- A276916: Subsequence of centered square numbers obtained by adding four triangles from A276914 and a central element, a(n) = 4*A276914(n) + 1.

Offset 0, canonical program `A276916.P396322178884957613`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*A276914(n)+1` (program `A276916.P396322178884957613`, by `A276916.P396322178884957613.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A276916 (n : ℕ) : ℤ :=
  A276916.P396322178884957613.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*A276914(n)+1` (program `A276916.P396322178884957613`, by `A276916.P396322178884957613.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A276916.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A284606.P14144566751347367166

`(-1)^(n+1)*A284019(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284606.P14144566751347367166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A284019 (n + 1)

end

end A284606.P14144566751347367166

noncomputable section

/-- A284606: a(n) = (-1)^n * A284019(n).

Offset 1, canonical program `A284606.P14144566751347367166`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^(n+1)*A284019(n+1)` (program `A284606.P14144566751347367166`, by `A284606.P14144566751347367166.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A284606 (n : ℕ) : ℤ :=
  A284606.P14144566751347367166.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^(n+1)*A284019(n+1)` (program `A284606.P14144566751347367166`, by `A284606.P14144566751347367166.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A284606.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A265917.P11657784271815987445

`floor(A070939(n+1)/A000120(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265917.P11657784271815987445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070939 (n + 1) : ℚ) / (A000120 (n + 1) : ℚ)⌋

end

end A265917.P11657784271815987445

noncomputable section

/-- A265917: a(n) = floor(A070939(n)/A000120(n)) where A070939(n) is the binary length of n and A000120(n) is the binary weight of n.

Offset 1, canonical program `A265917.P11657784271815987445`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A070939(n+1)/A000120(n+1))` (program `A265917.P11657784271815987445`, by `A265917.P11657784271815987445.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A265917 (n : ℕ) : ℤ :=
  A265917.P11657784271815987445.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A070939(n+1)/A000120(n+1))` (program `A265917.P11657784271815987445`, by `A265917.P11657784271815987445.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A265917.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A265918.P6975300764845745833

`A070939(n+1)%A000120(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265918.P6975300764845745833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (n + 1)) (A000120 (n + 1))

end

end A265918.P6975300764845745833

noncomputable section

/-- A265918: a(n) = A070939(n) mod A000120(n), where A070939(n) is the binary length of n and A000120(n) is the binary weight of n.

Offset 1, canonical program `A265918.P6975300764845745833`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A070939(n+1)%A000120(n+1)` (program `A265918.P6975300764845745833`, by `A265918.P6975300764845745833.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A265918 (n : ℕ) : ℤ :=
  A265918.P6975300764845745833.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A070939(n+1)%A000120(n+1)` (program `A265918.P6975300764845745833`, by `A265918.P6975300764845745833.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A265918.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A280700.P14793683405892301722

`A000120(A005187(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280700.P14793683405892301722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005187 n).toNat

end

end A280700.P14793683405892301722

noncomputable section

/-- A280700: Binary weight of terms of A005187: a(n) = A000120(A005187(n)).

Offset 0, canonical program `A280700.P14793683405892301722`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(A005187(n))` (program `A280700.P14793683405892301722`, by `A280700.P14793683405892301722.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A280700 (n : ℕ) : ℤ :=
  A280700.P14793683405892301722.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(A005187(n))` (program `A280700.P14793683405892301722`, by `A280700.P14793683405892301722.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A280700.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A284005.P12569247682710505975

`(1+A000120(n))*a(floor(n/2))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284005.P12569247682710505975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A000120 n) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A284005.P12569247682710505975

noncomputable section

/-- A284005: a(0) = 1, and for n > 1, a(n) = (1 + A000120(n))*a(floor(n/2)); also a(n) = A000005(A283477(n)).

Offset 0, canonical program `A284005.P12569247682710505975`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+A000120(n))*a(floor(n/2))` (program `A284005.P12569247682710505975`, by `A284005.P12569247682710505975.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A284005 (n : ℕ) : ℤ :=
  A284005.P12569247682710505975.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+A000120(n))*a(floor(n/2))` (program `A284005.P12569247682710505975`, by `A284005.P12569247682710505975.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A284005.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A295297.P15610912244864616743

`(A000120(n+1)+A000203(n+1))%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295297.P15610912244864616743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (n + 1) + A000203 (n + 1)) 2

end

end A295297.P15610912244864616743

noncomputable section

/-- A295297: a(n) = (A000120(n) + A000203(n)) mod 2.

Offset 1, canonical program `A295297.P15610912244864616743`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000120(n+1)+A000203(n+1))%2` (program `A295297.P15610912244864616743`, by `A295297.P15610912244864616743.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A295297 (n : ℕ) : ℤ :=
  A295297.P15610912244864616743.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000120(n+1)+A000203(n+1))%2` (program `A295297.P15610912244864616743`, by `A295297.P15610912244864616743.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A295297.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A236959.P4408222998361723081

`A006093(n+1)/gcd(A006093(n+1), 3)`
-/

namespace A236959.P4408222998361723081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (Int.gcd (A006093 (n + 1)) 3 : ℚ)

end

end A236959.P4408222998361723081

noncomputable section

/-- A236959: Number of nonzero cubic residues modulo the n-th prime.

Offset 1, canonical program `A236959.P4408222998361723081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236959 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236959.P4408222998361723081.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236965.P13563175010307940546

`A006093(n+1)/gcd(A006093(n+1), 4)`
-/

namespace A236965.P13563175010307940546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (Int.gcd (A006093 (n + 1)) 4 : ℚ)

end

end A236965.P13563175010307940546

noncomputable section

/-- A236965: Number of nonzero quartic residues modulo the n-th prime.

Offset 1, canonical program `A236965.P13563175010307940546`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236965 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236965.P13563175010307940546.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237424.P11989314284916062246

`(A052216(n+1)+1)/3`
-/

namespace A237424.P11989314284916062246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052216 (n + 1) + 1 : ℚ) / 3

end

end A237424.P11989314284916062246

noncomputable section

/-- A237424: Numbers of the form (10^a + 10^b + 1)/3.

Offset 1, canonical program `A237424.P11989314284916062246`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A237424.P11989314284916062246.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237424.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237589.P15064465826932885110

`A014284(n+2)-2`
-/

namespace A237589.P15064465826932885110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 2) - 2

end

end A237589.P15064465826932885110

noncomputable section

/-- A237589: Sum of first n odd noncomposite numbers.

Offset 1, canonical program `A237589.P15064465826932885110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237589 (n : ℕ) : ℤ :=
  A237589.P15064465826932885110.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238452.P3440070362232594000

`A057977(n+1)-A057977(n)*(n+1)%2`
-/

namespace A238452.P3440070362232594000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (n + 1) - A057977 n * (((n + 1) % 2 : ℕ) : ℤ)

end

end A238452.P3440070362232594000

noncomputable section

/-- A238452: Second column of the extended Catalan triangle A189231.

Offset 0, canonical program `A238452.P3440070362232594000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238452 (n : ℕ) : ℤ :=
  A238452.P3440070362232594000.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239052.P10933618441211416237

`3*A008438(n)`
-/

namespace A239052.P10933618441211416237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008438 n

end

end A239052.P10933618441211416237

noncomputable section

/-- A239052: Sum of divisors of 4*n-2.

Offset 1, canonical program `A239052.P10933618441211416237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239052 (n : ℕ) : ℤ :=
  A239052.P10933618441211416237.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239053.P13241166166120264042

`4*A097723(n)`
-/

namespace A239053.P13241166166120264042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A097723 n

end

end A239053.P13241166166120264042

noncomputable section

/-- A239053: Sum of divisors of 4*n-1.

Offset 1, canonical program `A239053.P13241166166120264042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239053 (n : ℕ) : ℤ :=
  A239053.P13241166166120264042.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239636.P9315992942707104834

`2*A014689(n+1)-1`
-/

namespace A239636.P9315992942707104834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014689 (n + 1) - 1

end

end A239636.P9315992942707104834

noncomputable section

/-- A239636: Distance between the two occurrences of n-th prime in A082500.

Offset 1, canonical program `A239636.P9315992942707104834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239636 (n : ℕ) : ℤ :=
  A239636.P9315992942707104834.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239691.P9580753319822426723

`A053824(A000040(n+1))`
-/

namespace A239691.P9580753319822426723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A000040 (n + 1)).toNat

end

end A239691.P9580753319822426723

noncomputable section

/-- A239691: Base 5 sum of digits of prime(n).

Offset 1, canonical program `A239691.P9580753319822426723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239691 (n : ℕ) : ℤ :=
  A239691.P9580753319822426723.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239885.P1896518761553761145

`A110295(n+1)/2`
-/

namespace A239885.P1896518761553761145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110295 (n + 1) : ℚ) / 2

end

end A239885.P1896518761553761145

noncomputable section

/-- A239885: a(n) = 2^(n-2) * prime(n).

Offset 1, canonical program `A239885.P1896518761553761145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239885.P1896518761553761145.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240068.P6814075163463490224

`8*A008864(n+1)`
-/

namespace A240068.P6814075163463490224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A008864 (n + 1)

end

end A240068.P6814075163463490224

noncomputable section

/-- A240068: Number of prime Lipschitz quaternions having norm prime(n).

Offset 1, canonical program `A240068.P6814075163463490224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240068 (n : ℕ) : ℤ :=
  A240068.P6814075163463490224.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240068.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240530.P76168564774585467

`2*A028329(n)`
-/

namespace A240530.P76168564774585467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028329 n

end

end A240530.P76168564774585467

noncomputable section

/-- A240530: a(n) = 4*(2*n)! / (n!)^2.

Offset 0, canonical program `A240530.P76168564774585467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240530 (n : ℕ) : ℤ :=
  A240530.P76168564774585467.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240558.P15701210074794565359

`2^n*A057977(n)`
-/

namespace A240558.P15701210074794565359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A057977 n

end

end A240558.P15701210074794565359

noncomputable section

/-- A240558: a(n) = 2^n*n!/((floor(n/2)+1)*floor(n/2)!^2).

Offset 0, canonical program `A240558.P15701210074794565359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240558 (n : ℕ) : ℤ :=
  A240558.P15701210074794565359.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240804.P4925870377936776396

`A070826(n+2)-2`
-/

namespace A240804.P4925870377936776396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 2) - 2

end

end A240804.P4925870377936776396

noncomputable section

/-- A240804: a(n) = -2 + product of first n odd primes.

Offset 1, canonical program `A240804.P4925870377936776396`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240804 (n : ℕ) : ℤ :=
  A240804.P4925870377936776396.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240836.P5427845226329489471

`2*A081016(n)`
-/

namespace A240836.P5427845226329489471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081016 n

end

end A240836.P5427845226329489471

noncomputable section

/-- A240836: Numbers n such that n^3 = x*y*z where 2 <= x <= y <= z , n^3+1 = (x-1)*(y+1)*(z+1).

Offset 1, canonical program `A240836.P5427845226329489471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240836 (n : ℕ) : ℤ :=
  A240836.P5427845226329489471.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242090.P12079019008023178367

`1/2*A242089(n+1)`
-/

namespace A242090.P12079019008023178367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A242089 (n + 1) : ℚ)

end

end A242090.P12079019008023178367

noncomputable section

/-- A242090: Number of triples (a,b,c) with 0 < a < b < c < p and a + b + c == 0 mod p, where 2*b < p = prime(n).

Offset 1, canonical program `A242090.P12079019008023178367`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242090.P12079019008023178367.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242389.P11990972106804115361

`A000079(n+1)-A001065(n+1)`
-/

namespace A242389.P11990972106804115361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A001065 (n + 1)

end

end A242389.P11990972106804115361

noncomputable section

/-- A242389: 2^n minus the sum of the proper divisors of n.

Offset 1, canonical program `A242389.P11990972106804115361`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242389 (n : ℕ) : ℤ :=
  A242389.P11990972106804115361.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242456.P17431878854406711509

`A000142(n+2)/A007917(n+2)`
-/

namespace A242456.P17431878854406711509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 2) : ℚ) / (A007917 (n + 2) : ℚ)

end

end A242456.P17431878854406711509

noncomputable section

/-- A242456: Least number k such that n!/k is prime.

Offset 2, canonical program `A242456.P17431878854406711509`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242456 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242456.P17431878854406711509.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242456.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242480.P3191042440145874501

`A142150(n+1)+A054024(n+1)+A229110(n+1)`
-/

namespace A242480.P3191042440145874501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A054024 (n + 1) + A229110 (n + 1)

end

end A242480.P3191042440145874501

noncomputable section

/-- A242480: a(n) = (n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n.

Offset 1, canonical program `A242480.P3191042440145874501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242480 (n : ℕ) : ℤ :=
  A242480.P3191042440145874501.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243756.P3633262118431824460

`A242954(row(n))/(A242954(col(n))*A242954(row(n)-col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243756.P3633262118431824460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242954 (SequenceMachineLib.triRow n) : ℚ) / (A242954 (SequenceMachineLib.triCol n) * A242954 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A243756.P3633262118431824460

noncomputable section

/-- A243756: Triangle read by rows: T(n,k) = A242954(n)/(A242954(k) * A242954(n-k)).

Offset 0, canonical program `A243756.P3633262118431824460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243756 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A243756.P3633262118431824460.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243892.P16948930208499248981

`A000040(A106587(n+1))`
-/

namespace A243892.P16948930208499248981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A106587 (n + 1)).toNat

end

end A243892.P16948930208499248981

noncomputable section

/-- A243892: a(n) = prime(k) with k = n^2 + prime(n)^2.

Offset 1, canonical program `A243892.P16948930208499248981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243892 (n : ℕ) : ℤ :=
  A243892.P16948930208499248981.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243892.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243893.P4774674769451763253

`A000040(A106587(n+1)-1)`
-/

namespace A243893.P4774674769451763253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A106587 (n + 1) - 1).toNat

end

end A243893.P4774674769451763253

noncomputable section

/-- A243893: a(n) = prime(k-1) with k = n^2 + prime(n)^2.

Offset 1, canonical program `A243893.P4774674769451763253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243893 (n : ℕ) : ℤ :=
  A243893.P4774674769451763253.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243893.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243894.P4993376093936159259

`A000040(A106587(n+1)+1)`
-/

namespace A243894.P4993376093936159259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A106587 (n + 1) + 1).toNat

end

end A243894.P4993376093936159259

noncomputable section

/-- A243894: a(n) = prime(k+1) with k = n^2 + prime(n)^2.

Offset 1, canonical program `A243894.P4993376093936159259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243894 (n : ℕ) : ℤ :=
  A243894.P4993376093936159259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244329.P12240149953231840397

`floor(A024816(n+1)/A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244329.P12240149953231840397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024816 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)⌋

end

end A244329.P12240149953231840397

noncomputable section

/-- A244329: a(n) = floor(antisigma(n) / sigma(n)) = floor(A024816(n) / A000203(n)).

Offset 1, canonical program `A244329.P12240149953231840397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244329 (n : ℕ) : ℤ :=
  A244329.P12240149953231840397.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244509.P12134030914393588250

`A127917(n+1)*(A000040(n+1)-1)`
-/

namespace A244509.P12134030914393588250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127917 (n + 1) * (A000040 (n + 1) - 1)

end

end A244509.P12134030914393588250

noncomputable section

/-- A244509: Order of GL_2(p), the general linear group over F_p, where p runs through the primes.

Offset 1, canonical program `A244509.P12134030914393588250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244509 (n : ℕ) : ℤ :=
  A244509.P12134030914393588250.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244509.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244963.P8812478636684031312

`A000203(n+1)-A001615(n+1)`
-/

namespace A244963.P8812478636684031312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A001615 (n + 1)

end

end A244963.P8812478636684031312

noncomputable section

/-- A244963: a(n) = sigma(n) - n * Product_{p|n, p prime} (1 + 1/p).

Offset 1, canonical program `A244963.P8812478636684031312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244963 (n : ℕ) : ℤ :=
  A244963.P8812478636684031312.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247159.P14898152283325292687

`A000203(A100484(n+1))`
-/

namespace A247159.P14898152283325292687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A100484 (n + 1)).toNat

end

end A247159.P14898152283325292687

noncomputable section

/-- A247159: Sum of divisors of even semiprimes.

Offset 1, canonical program `A247159.P14898152283325292687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247159 (n : ℕ) : ℤ :=
  A247159.P14898152283325292687.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247380.P8040246546011606999

`A117495(n+2)-A117495(n+1)`
-/

namespace A247380.P8040246546011606999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117495 (n + 2) - A117495 (n + 1)

end

end A247380.P8040246546011606999

noncomputable section

/-- A247380: First differences of A117495.

Offset 1, canonical program `A247380.P8040246546011606999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247380 (n : ℕ) : ℤ :=
  A247380.P8040246546011606999.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247562.P5849283782100272797

`A101402(10^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A247562.P5849283782100272797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (10 ^ n)

end

end A247562.P5849283782100272797

noncomputable section

/-- A247562: A101402(10^n).

Offset 0, canonical program `A247562.P5849283782100272797`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247562 (n : ℕ) : ℤ :=
  A247562.P5849283782100272797.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247562.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247938.P2429314974595596227

`A000203(A001348(n+1))`
-/

namespace A247938.P2429314974595596227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001348 (n + 1)).toNat

end

end A247938.P2429314974595596227

noncomputable section

/-- A247938: Sum of divisors of 2^prime(n)-1.

Offset 1, canonical program `A247938.P2429314974595596227`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247938 (n : ℕ) : ℤ :=
  A247938.P2429314974595596227.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247938.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247939.P5337322857846998931

`A000203(A098640(n+1))`
-/

namespace A247939.P5337322857846998931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A098640 (n + 1)).toNat

end

end A247939.P5337322857846998931

noncomputable section

/-- A247939: Sum of divisors of 2^prime(n)+1.

Offset 1, canonical program `A247939.P5337322857846998931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247939 (n : ℕ) : ℤ :=
  A247939.P5337322857846998931.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A248517.P14904334009551317657

`A060831(n)-n`
-/

namespace A248517.P14904334009551317657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n - (n : ℤ)

end

end A248517.P14904334009551317657

noncomputable section

/-- A248517: Number of odd divisors > 1 in the numbers 1 through n, counted with multiplicity.

Offset 0, canonical program `A248517.P14904334009551317657`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248517 (n : ℕ) : ℤ :=
  A248517.P14904334009551317657.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249154.P2345966816674260141

`(n+1)*A000120(n)`
-/

namespace A249154.P2345966816674260141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000120 n

end

end A249154.P2345966816674260141

noncomputable section

/-- A249154: (n+1) times the number of 1's in the binary expansion of n.

Offset 0, canonical program `A249154.P2345966816674260141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249154 (n : ℕ) : ℤ :=
  A249154.P2345966816674260141.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249154.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249586.P18263077682237297372

`A000537(n^3)`
-/

namespace A249586.P18263077682237297372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n ^ 3)

end

end A249586.P18263077682237297372

noncomputable section

/-- A249586: Sum of the first n^3 cubes.

Offset 0, canonical program `A249586.P18263077682237297372`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249586 (n : ℕ) : ℤ :=
  A249586.P18263077682237297372.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A250130.P14508315065986858238

`(n+1)*A002110(n+1)`
-/

namespace A250130.P14508315065986858238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002110 (n + 1)

end

end A250130.P14508315065986858238

noncomputable section

/-- A250130: Numerator of the harmonic mean of the first n primes.

Offset 1, canonical program `A250130.P14508315065986858238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250130 (n : ℕ) : ℤ :=
  A250130.P14508315065986858238.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250130.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A250622.P6101694569032814672

`A250621(n+1)-A000040(n+1)`
-/

namespace A250622.P6101694569032814672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - A000040 (n + 1)

end

end A250622.P6101694569032814672

noncomputable section

/-- A250622: a(n) = floor(n*log(prime(n)))-prime(n), n >= 1.

Offset 1, canonical program `A250622.P6101694569032814672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250622 (n : ℕ) : ℤ :=
  A250622.P6101694569032814672.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A250623.P3707548778749929836

`A250621(n+1)+A050502(n+1)-2*A000040(n+1)`
-/

namespace A250623.P3707548778749929836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) + A050502 (n + 1) - 2 * A000040 (n + 1)

end

end A250623.P3707548778749929836

noncomputable section

/-- A250623: a(n) = floor(n*log(prime(n))) + ceiling(n*log(n)) - 2*prime(n).

Offset 1, canonical program `A250623.P3707548778749929836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250623 (n : ℕ) : ℤ :=
  A250623.P3707548778749929836.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251482.P15283012355348993553

`A085581(n+2)+A086861(n+2)+1-2*(n+2)`
-/

namespace A251482.P15283012355348993553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085581 (n + 2) + (A086861 (n + 2) + 1) - (2 * (n + 2) : ℤ)

end

end A251482.P15283012355348993553

noncomputable section

/-- A251482: a(n) = floor(prime(n)/log(n)) + ceiling(prime(n)/log(prime(n))) - 2*n, n >=2.

Offset 2, canonical program `A251482.P15283012355348993553`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251482 (n : ℕ) : ℤ :=
  A251482.P15283012355348993553.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251720.P7553802040136073168

`A000040(n+1)*A006094(n+1)`
-/

namespace A251720.P7553802040136073168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A006094 (n + 1)

end

end A251720.P7553802040136073168

noncomputable section

/-- A251720: a(n) = (p_n)^2 * p_{n+1}, where p_n is the n-th prime, A000040(n).

Offset 1, canonical program `A251720.P7553802040136073168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251720 (n : ℕ) : ℤ :=
  A251720.P7553802040136073168.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251720.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253487.P6679940990735206685

`2*A110609(n+1)`
-/

namespace A253487.P6679940990735206685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110609 (n + 1)

end

end A253487.P6679940990735206685

noncomputable section

/-- A253487: Number of lattice paths of 2*n+2 steps in the first quadrant from (0,0) to (n,n).

Offset 0, canonical program `A253487.P6679940990735206685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253487 (n : ℕ) : ℤ :=
  A253487.P6679940990735206685.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253588.P1990290581636288616

`(col(n)+1)*A002110(row(n)-col(n)+1)`
-/

namespace A253588.P1990290581636288616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * A002110 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A253588.P1990290581636288616

noncomputable section

/-- A253588: Upward antidiagonals of array of all multiples of primorial(n), for each n>0.

Offset 1, canonical program `A253588.P1990290581636288616`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253588 (n : ℕ) : ℤ :=
  A253588.P1990290581636288616.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253628.P7800863770916163170

`A001615(n+1)%(n+1)`
-/

namespace A253628.P7800863770916163170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001615 (n + 1)) (n + 1 : ℤ)

end

end A253628.P7800863770916163170

noncomputable section

/-- A253628: Psi(n) mod n, where Psi is the Dedekind psi function (A001615).

Offset 1, canonical program `A253628.P7800863770916163170`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253628 (n : ℕ) : ℤ :=
  A253628.P7800863770916163170.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254046.P17306611648514838872

`A051064(2*n+1)`
-/

namespace A254046.P17306611648514838872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (2 * n + 1)

end

end A254046.P17306611648514838872

noncomputable section

/-- A254046: Column index of n in A191450: a(3n) = 1, a(3n+1) = 1, a(3n+2) = 1 + a(n+1).

Offset 1, canonical program `A254046.P17306611648514838872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254046 (n : ℕ) : ℤ :=
  A254046.P17306611648514838872.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254609.P12096620193551696999

`A243757(row(n))/(A243757(col(n))*A243757(row(n)-col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254609.P12096620193551696999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243757 (SequenceMachineLib.triRow n) : ℚ) / (A243757 (SequenceMachineLib.triCol n) * A243757 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A254609.P12096620193551696999

noncomputable section

/-- A254609: Triangle read by rows: T(n,k) = A243757(n)/(A243757(k)*A243757(n-k)).

Offset 0, canonical program `A254609.P12096620193551696999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A254609.P12096620193551696999.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254667.P2531765093314999596

`A063524(n)+n`
-/

namespace A254667.P2531765093314999596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + (n : ℤ)

end

end A254667.P2531765093314999596

noncomputable section

/-- A254667: The nonnegative numbers with 2 instead of 1.

Offset 0, canonical program `A254667.P2531765093314999596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254667 (n : ℕ) : ℤ :=
  A254667.P2531765093314999596.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254730.P5145825961016030495

`A243758(row(n))/(A243758(col(n))*A243758(row(n)-col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254730.P5145825961016030495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243758 (SequenceMachineLib.triRow n) : ℚ) / (A243758 (SequenceMachineLib.triCol n) * A243758 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A254730.P5145825961016030495

noncomputable section

/-- A254730: Triangle read by rows: T(n,k) = A243758(n)/(A243758(k)*A243758(n-k)).

Offset 0, canonical program `A254730.P5145825961016030495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254730 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A254730.P5145825961016030495.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255000.P13204659214420156332

`A000040(n+1+A001223(n+1))`
-/

namespace A255000.P13204659214420156332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) + A001223 (n + 1)).toNat

end

end A255000.P13204659214420156332

noncomputable section

/-- A255000: Prime(n + d(n)), with d(n) = prime(n+1) - prime(n), for n >= 1.

Offset 1, canonical program `A255000.P13204659214420156332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255000 (n : ℕ) : ℤ :=
  A255000.P13204659214420156332.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255171.P878351036913062245

`A072473(n+2)-A072473(n+1)`
-/

namespace A255171.P878351036913062245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 2) - A072473 (n + 1)

end

end A255171.P878351036913062245

noncomputable section

/-- A255171: First differences of A072473.

Offset 1, canonical program `A255171.P878351036913062245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255171 (n : ℕ) : ℤ :=
  A255171.P878351036913062245.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255171.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255326.P2760968161460451827

`1+a(A066503(n))` with `a(0)=0`
-/

namespace A255326.P2760968161460451827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A066503 n).toNat

end

end A255326.P2760968161460451827

noncomputable section

/-- A255326: a(n) gives the number of steps needed to reach zero, when we start from x = n and repeatedly subtract x's squarefree kernel (A007947(x)) from it.

Offset 0, canonical program `A255326.P2760968161460451827`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255326 (n : ℕ) : ℤ :=
  (A255326.P2760968161460451827.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255683.P1316510834808175680

`A000120(n+1)*(A000918(A000523(n+1)+1)+1)`
-/

namespace A255683.P1316510834808175680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) * (A000918 (A000523 (n + 1) + 1).toNat + 1)

end

end A255683.P1316510834808175680

noncomputable section

/-- A255683: Sum of the binary numbers whose digits are cyclic permutations of the binary expansion of n.

Offset 1, canonical program `A255683.P1316510834808175680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255683 (n : ℕ) : ℤ :=
  A255683.P1316510834808175680.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256135.P15425195409357675136

`A000351(A000120(n))`
-/

namespace A256135.P15425195409357675136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A000120 n).toNat

end

end A256135.P15425195409357675136

noncomputable section

/-- A256135: a(n) = 5^A000120(n).

Offset 0, canonical program `A256135.P15425195409357675136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256135 (n : ℕ) : ℤ :=
  A256135.P15425195409357675136.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256136.P14588542491347922594

`A000400(A000120(n))`
-/

namespace A256136.P14588542491347922594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A000120 n).toNat

end

end A256136.P14588542491347922594

noncomputable section

/-- A256136: a(n) = 6^A000120(n).

Offset 0, canonical program `A256136.P14588542491347922594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256136 (n : ℕ) : ℤ :=
  A256136.P14588542491347922594.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256140.P17674566044913898206

`(row(n)-col(n))^A000120(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256140.P17674566044913898206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) ^ (A000120 (SequenceMachineLib.triCol n) : ℤ)

end

end A256140.P17674566044913898206

noncomputable section

/-- A256140: Square array read by antidiagonals upwards: T(n,k) = n^A000120(k), n>=0, k>=0.

Offset 0, canonical program `A256140.P17674566044913898206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256140 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256140.P17674566044913898206.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256140.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256244.P8227914721066336132

`A000196(n+2)-A071028(n+2)+2`
-/

namespace A256244.P8227914721066336132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 2) - A071028 (n + 2) + 2

end

end A256244.P8227914721066336132

noncomputable section

/-- A256244: a(n) = sqrt(n + 2*A256243(n)).

Offset 1, canonical program `A256244.P8227914721066336132`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256244 (n : ℕ) : ℤ :=
  A256244.P8227914721066336132.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256605.P11334752825439384772

`A003418(n+3)/A007917(n+2)`
-/

namespace A256605.P11334752825439384772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 3) : ℚ) / (A007917 (n + 2) : ℚ)

end

end A256605.P11334752825439384772

noncomputable section

/-- A256605: Least k such that n+1 is the n-th divisor of k.

Offset 2, canonical program `A256605.P11334752825439384772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256605 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256605.P11334752825439384772.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257520.P11881127439333961031

`A097861(n)+1`
-/

namespace A257520.P11881127439333961031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + 1

end

end A257520.P11881127439333961031

noncomputable section

/-- A257520: Number of factorizations of m^2 into 2 factors, where m is a product of exactly n distinct primes and each factor is a product of n primes (counted with multiplicity).

Offset 0, canonical program `A257520.P11881127439333961031`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257520 (n : ℕ) : ℤ :=
  A257520.P11881127439333961031.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257567.P6211609735986924028

`A007949(A061725(n+1))`
-/

namespace A257567.P6211609735986924028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A061725 (n + 1)).toNat

end

end A257567.P6211609735986924028

noncomputable section

/-- A257567: a(n) is the largest exponent k such that 3^k divides (prime(n)^2 + 2).

Offset 1, canonical program `A257567.P6211609735986924028`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257567 (n : ℕ) : ℤ :=
  A257567.P6211609735986924028.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258155.P7697194881725591398

`A046301(n+1)²`
-/

namespace A258155.P7697194881725591398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) ^ 2

end

end A258155.P7697194881725591398

noncomputable section

/-- A258155: Products of squares of three successive primes.

Offset 1, canonical program `A258155.P7697194881725591398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258155 (n : ℕ) : ℤ :=
  A258155.P7697194881725591398.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258745.P174900374007038232

`A028365(n)/(n+1)`
-/

namespace A258745.P174900374007038232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028365 n : ℚ) / (n + 1 : ℚ)

end

end A258745.P174900374007038232

noncomputable section

/-- A258745: Order of general affine group AGL(n,2) (=A028365(n)) divided by (n+1).

Offset 0, canonical program `A258745.P174900374007038232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258745 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A258745.P174900374007038232.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258831.P9209545369141060216

`(-1)^n*A098098(n)`
-/

namespace A258831.P9209545369141060216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A098098 n

end

end A258831.P9209545369141060216

noncomputable section

/-- A258831: Expansion of (psi(-x^3) * f(-x, x^2))^2 in powers of x where psi(), f(,) are Ramanujan theta functions.

Offset 0, canonical program `A258831.P9209545369141060216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258831 (n : ℕ) : ℤ :=
  A258831.P9209545369141060216.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258934.P655756384477978096

`A072473(n+2)/2`
-/

namespace A258934.P655756384477978096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072473 (n + 2) : ℚ) / 2

end

end A258934.P655756384477978096

noncomputable section

/-- A258934: Half the difference between the 2n-th prime and the n-th prime, starting from n=2.

Offset 2, canonical program `A258934.P655756384477978096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A258934.P655756384477978096.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258934.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259318.P4014428591920832291

`A259109(n)*A006331(n)-A259108(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259318.P4014428591920832291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259109 n * A006331 n - A259108 n ^ 2

end

end A259318.P4014428591920832291

noncomputable section

/-- A259318: a(n) = A259109(n)*A006331(n) - A259108(n)^2.

Offset 0, canonical program `A259318.P4014428591920832291`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259318 (n : ℕ) : ℤ :=
  A259318.P4014428591920832291.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259320.P7124907213139693720

`2*(n+1)*A259319(n+1)-A259110(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259320.P7124907213139693720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A259319 (n + 1) - A259110 (n + 1) ^ 2

end

end A259320.P7124907213139693720

noncomputable section

/-- A259320: a(n) = 2*n*A259319(n) - A259110(n)^2.

Offset 1, canonical program `A259320.P7124907213139693720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259320 (n : ℕ) : ℤ :=
  A259320.P7124907213139693720.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259320.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259648.P18063920106671831620

`floor(A030078(n+2)/((n+2)*log(n+2)))`
-/

namespace A259648.P18063920106671831620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030078 (n + 2) : ℝ) / ((n + 2 : ℝ) * Real.log (n + 2 : ℝ))⌋

end

end A259648.P18063920106671831620

noncomputable section

/-- A259648: a(n) = floor( prime(n)^3 / (n*log(n)) ).

Offset 2, canonical program `A259648.P18063920106671831620`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+2)^3/((n+2)*log(n+2)))` (program `A259648.P4211030694444674055`, by `A259648.P4211030694444674055.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A259648 (n : ℕ) : ℤ :=
  A259648.P18063920106671831620.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+2)^3/((n+2)*log(n+2)))` (program `A259648.P4211030694444674055`, by `A259648.P4211030694444674055.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A259648.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A259654.P10870511641020313706

`A051674(n+1)-A062457(n+1)`
-/

namespace A259654.P10870511641020313706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1) - A062457 (n + 1)

end

end A259654.P10870511641020313706

noncomputable section

/-- A259654: a(n) = prime(n)^prime(n) - prime(n)^n.

Offset 1, canonical program `A259654.P10870511641020313706`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259654 (n : ℕ) : ℤ :=
  A259654.P10870511641020313706.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259654.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260754.P5965187776734892308

`A039716(n+2)/A000040(n+1)`
-/

namespace A260754.P5965187776734892308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 2) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A260754.P5965187776734892308

noncomputable section

/-- A260754: a(n) = prime(n+1)! / prime(n).

Offset 1, canonical program `A260754.P5965187776734892308`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260754 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A260754.P5965187776734892308.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261225.P9013570553216359185

`n-A055401(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261225.P9013570553216359185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055401 n

end

end A261225.P9013570553216359185

noncomputable section

/-- A261225: n minus the number of positive cubes needed to sum to n using the greedy algorithm: a(n) = n - A055401(n).

Offset 0, canonical program `A261225.P9013570553216359185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261225 (n : ℕ) : ℤ :=
  A261225.P9013570553216359185.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261232.P7381574163309701758

`A261231(3^n)`
-/

namespace A261232.P7381574163309701758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (3 ^ n)

end

end A261232.P7381574163309701758

noncomputable section

/-- A261232: a(n) = number of steps to reach 0 when starting from k = 3^n and repeatedly applying the map that replaces k with k - (sum of digits in base-3 representation of k).

Offset 0, canonical program `A261232.P7381574163309701758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261232 (n : ℕ) : ℤ :=
  A261232.P7381574163309701758.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261523.P4523387212413988190

`A058077(n+1)*A039716(n+1)`
-/

namespace A261523.P4523387212413988190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058077 (n + 1) * A039716 (n + 1)

end

end A261523.P4523387212413988190

noncomputable section

/-- A261523: a(n) = prime(n+1)! / (prime(n+1) - prime(n))!.

Offset 1, canonical program `A261523.P4523387212413988190`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261523 (n : ℕ) : ℤ :=
  A261523.P4523387212413988190.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261971.P11221082958945660540

`6*A001248(n+1)-12*A000040(n+1)+8`
-/

namespace A261971.P11221082958945660540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001248 (n + 1) - 12 * A000040 (n + 1) + 8

end

end A261971.P11221082958945660540

noncomputable section

/-- A261971: Number of unit cubes that have a side on the surface of a p X p X p cube composed of p^3 unit cubes, where p is the n-th prime.

Offset 1, canonical program `A261971.P11221082958945660540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261971 (n : ℕ) : ℤ :=
  A261971.P11221082958945660540.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261971.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262189.P8058755779545758609

`A060001(n+2)/A000045(n+1)`
-/

namespace A262189.P8058755779545758609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060001 (n + 2) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A262189.P8058755779545758609

noncomputable section

/-- A262189: a(n) = Fibonacci(n+1)! / Fibonacci(n).

Offset 1, canonical program `A262189.P8058755779545758609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262189 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A262189.P8058755779545758609.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262189.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262208.P17030949861541882624

`A051674(n+1)%A000312(n+1)`
-/

namespace A262208.P17030949861541882624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051674 (n + 1)) (A000312 (n + 1))

end

end A262208.P17030949861541882624

noncomputable section

/-- A262208: a(n) = prime(n)^prime(n) mod n^n.

Offset 1, canonical program `A262208.P17030949861541882624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262208 (n : ℕ) : ℤ :=
  A262208.P17030949861541882624.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262927.P17145259488631727692

`A262397(2*n)+A262397(2*n+1)`
-/

namespace A262927.P17145259488631727692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 (2 * n) + A262397 (2 * n + 1)

end

end A262927.P17145259488631727692

noncomputable section

/-- A262927: a(n+9) = a(n) + 10*(n+4) + 9. a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10, a(5)=15, a(6)=23, a(7)=30, a(8)=39.

Offset 0, canonical program `A262927.P17145259488631727692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262927 (n : ℕ) : ℤ :=
  A262927.P17145259488631727692.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263418.P3906359032708304120

`a(n-1)+5*A001911(n)` with `a(0)=1`
-/

namespace A263418.P3906359032708304120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 5 * A001911 n

end

end A263418.P3906359032708304120

noncomputable section

/-- A263418: a(n) is the total number of pentagrams in a variant of pentagram fractal after n iterations.

Offset 0, canonical program `A263418.P3906359032708304120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263418 (n : ℕ) : ℤ :=
  A263418.P3906359032708304120.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263418.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263483.P11551331983002563713

`A000040(n+1)+A039704(n+1)`
-/

namespace A263483.P11551331983002563713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A039704 (n + 1)

end

end A263483.P11551331983002563713

noncomputable section

/-- A263483: a(n) = prime(n)+(prime(n) modulo 6).

Offset 1, canonical program `A263483.P11551331983002563713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263483 (n : ℕ) : ℤ :=
  A263483.P11551331983002563713.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263673.P17564345836323760569

`A180000(n)*A152271(n)`
-/

namespace A263673.P17564345836323760569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180000 n * A152271 n

end

end A263673.P17564345836323760569

noncomputable section

/-- A263673: a(n) = lcm{1,2,...,n} / binomial(n,floor(n/2)).

Offset 0, canonical program `A263673.P17564345836323760569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263673 (n : ℕ) : ℤ :=
  A263673.P17564345836323760569.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263673.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263727.P9447933061179139825

`A048760(A000045(n))`
-/

namespace A263727.P9447933061179139825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000045 n).toNat

end

end A263727.P9447933061179139825

noncomputable section

/-- A263727: Largest square number less than or equal to the n-th Fibonacci number.

Offset 0, canonical program `A263727.P9447933061179139825`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263727 (n : ℕ) : ℤ :=
  A263727.P9447933061179139825.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263841.P10709210720201135454

`A005773(n+1)+A132894(n)`
-/

namespace A263841.P10709210720201135454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + A132894 n

end

end A263841.P10709210720201135454

noncomputable section

/-- A263841: Expansion of (1 - 2*x - x^2)/(sqrt(1+x)*(1-3*x)^(3/2)*2*x) - 1/(2*x).

Offset 0, canonical program `A263841.P10709210720201135454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263841 (n : ℕ) : ℤ :=
  A263841.P10709210720201135454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265104.P5308251035994619113

`A265100(n+2)-6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265104.P5308251035994619113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265100 (n + 2) - 6

end

end A265104.P5308251035994619113

noncomputable section

/-- A265104: a(n) = A265100(n+1) - 6, n >= 1.

Offset 1, canonical program `A265104.P5308251035994619113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265104 (n : ℕ) : ℤ :=
  A265104.P5308251035994619113.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268329.P14268697526507854789

`2*A000344(n+2)`
-/

namespace A268329.P14268697526507854789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000344 (n + 2)

end

end A268329.P14268697526507854789

noncomputable section

/-- A268329: Expansion of (1 - sqrt(1 - 4*x))^5/16.

Offset 5, canonical program `A268329.P14268697526507854789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268329 (n : ℕ) : ℤ :=
  A268329.P14268697526507854789.a (n - 5)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268478.P14026841174278803869

`A180363(n+1)%A001248(n+1)`
-/

namespace A268478.P14026841174278803869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180363 (n + 1)) (A001248 (n + 1))

end

end A268478.P14026841174278803869

noncomputable section

/-- A268478: L(p) modulo p^2, where p = prime(n) and L is a Lucas number (A000032).

Offset 1, canonical program `A268478.P14026841174278803869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268478 (n : ℕ) : ℤ :=
  A268478.P14026841174278803869.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268553.P1174429533030880570

`A006480(n)²`
-/

namespace A268553.P1174429533030880570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 n ^ 2

end

end A268553.P1174429533030880570

noncomputable section

/-- A268553: Diagonal of the rational function 1/((1 - u v - u w - v w) * (1 - x y - x z - y z)).

Offset 0, canonical program `A268553.P1174429533030880570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268553 (n : ℕ) : ℤ :=
  A268553.P1174429533030880570.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A270313.P12699358592740471625

`(n+1)/A104714(n+1)`
-/

namespace A270313.P12699358592740471625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A104714 (n + 1) : ℚ)

end

end A270313.P12699358592740471625

noncomputable section

/-- A270313: Denominator of Fibonacci(n)/n.

Offset 1, canonical program `A270313.P12699358592740471625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270313 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A270313.P12699358592740471625.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271387.P7354328824045121266

`A002110(n)/A034386(n)`
-/

namespace A271387.P7354328824045121266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A034386 n : ℚ)

end

end A271387.P7354328824045121266

noncomputable section

/-- A271387: Numerator of prime(n)#/n!, where prime(n)# is the prime factorial function.

Offset 0, canonical program `A271387.P7354328824045121266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271387 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A271387.P7354328824045121266.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272172.P12139415757426446480

`A000203(A004736(n+1))`
-/

namespace A272172.P12139415757426446480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004736 (n + 1)).toNat

end

end A272172.P12139415757426446480

noncomputable section

/-- A272172: Triangle read by rows: T(n,k) in which row n lists the first n terms of A000203 in reverse order.

Offset 1, canonical program `A272172.P12139415757426446480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272172 (n : ℕ) : ℤ :=
  A272172.P12139415757426446480.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272173.P7571362483636851933

`A000203(n+1)*A008864(n+1)`
-/

namespace A272173.P7571362483636851933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A008864 (n + 1)

end

end A272173.P7571362483636851933

noncomputable section

/-- A272173: Product of the sum of the divisors of n and the sum of the divisors of n-th prime.

Offset 1, canonical program `A272173.P7571362483636851933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272173 (n : ℕ) : ℤ :=
  A272173.P7571362483636851933.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272263.P14829198746395316325

`A087131(n)-1`
-/

namespace A272263.P14829198746395316325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087131 n - 1

end

end A272263.P14829198746395316325

noncomputable section

/-- A272263: a(n) = numerator of A000032(n) - 1/2^n.

Offset 0, canonical program `A272263.P14829198746395316325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272263 (n : ℕ) : ℤ :=
  A272263.P14829198746395316325.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274009.P14334026613148662434

`A000120(n)+(-1)^n`
-/

namespace A274009.P14334026613148662434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (-1) ^ n

end

end A274009.P14334026613148662434

noncomputable section

/-- A274009: 1's distance from a number in its binary expansion.

Offset 0, canonical program `A274009.P14334026613148662434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274009 (n : ℕ) : ℤ :=
  A274009.P14334026613148662434.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274263.P9426455071173877905

`floor(A001223(n+2)/A001223(n+1))`
-/

namespace A274263.P9426455071173877905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001223 (n + 2) : ℚ) / (A001223 (n + 1) : ℚ)⌋

end

end A274263.P9426455071173877905

noncomputable section

/-- A274263: Integer part of the ratio of consecutive prime gaps.

Offset 1, canonical program `A274263.P9426455071173877905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274263 (n : ℕ) : ℤ :=
  A274263.P9426455071173877905.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274575.P18445276803397930196

`A000120(n+1)-A008687(n+2)`
-/

namespace A274575.P18445276803397930196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A008687 (n + 2)

end

end A274575.P18445276803397930196

noncomputable section

/-- A274575: For m=1,2,3,... write all the 2^m binary vectors of length m in increasing order, and replace each vector with (number of 1's) - (number of 0's). Start with an initial 0 for the empty vector.

Offset 0, canonical program `A274575.P18445276803397930196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274575 (n : ℕ) : ℤ :=
  A274575.P18445276803397930196.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274883.P490056159256726624

`2^col(n)*C(row(n), col(n))*A057977(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A274883.P490056159256726624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A057977 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A274883.P490056159256726624

noncomputable section

/-- A274883: Triangle read by rows, T(n,k) = 2^k*binomial(n,k)*A057977(n-k) for n>=0 and 0<=k<=n.

Offset 0, canonical program `A274883.P490056159256726624`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^col(n)*C(row(n), col(n))*A057977(row(n)-col(n))` (program `A274883.P490056159256726624`, by `A274883.P490056159256726624.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A274883 (n : ℕ) : ℤ :=
  A274883.P490056159256726624.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^col(n)*C(row(n), col(n))*A057977(row(n)-col(n))` (program `A274883.P490056159256726624`, by `A274883.P490056159256726624.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A274883.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A275329.P1318522631389672065

`A057977(n)*A008619(n+2)`
-/

namespace A275329.P1318522631389672065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A008619 (n + 2)

end

end A275329.P1318522631389672065

noncomputable section

/-- A275329: a(n) = (2+[n/2])*n!/((1+[n/2])*[n/2]!^2).

Offset 0, canonical program `A275329.P1318522631389672065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275329 (n : ℕ) : ℤ :=
  A275329.P1318522631389672065.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275630.P6039504158649628288

`A007947(A084920(n+1))`
-/

namespace A275630.P6039504158649628288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A084920 (n + 1)).toNat

end

end A275630.P6039504158649628288

noncomputable section

/-- A275630: a(n) = product of distinct primes dividing prime(n)^2 - 1.

Offset 1, canonical program `A275630.P6039504158649628288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275630 (n : ℕ) : ℤ :=
  A275630.P6039504158649628288.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276349.P10108756407215495079

`A002275(A002260(n+1))*10^A004736(n+1)`
-/

namespace A276349.P10108756407215495079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 (A002260 (n + 1)).toNat : ℚ) * (10 : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A276349.P10108756407215495079

noncomputable section

/-- A276349: Numbers consisting of a nonempty string of 1's followed by a nonempty string of 0's.

Offset 1, canonical program `A276349.P10108756407215495079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276349 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276349.P10108756407215495079.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276939.P10839818542998394330

`A002110(n)+A002110(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276939.P10839818542998394330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n + A002110 (n + 1)

end

end A276939.P10839818542998394330

noncomputable section

/-- A276939: Row 2 of A276945: a(n) = A002110(n) + A002110(n+1).

Offset 0, canonical program `A276939.P10839818542998394330`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276939 (n : ℕ) : ℤ :=
  A276939.P10839818542998394330.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277174.P1977954027832943730

`n!*A048803(n)`
-/

namespace A277174.P1977954027832943730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A048803 n

end

end A277174.P1977954027832943730

noncomputable section

/-- A277174: a(n) = Product_{i=1..n} i*rad(i) where rad(n) = A007947(n).

Offset 0, canonical program `A277174.P1977954027832943730`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277174 (n : ℕ) : ℤ :=
  A277174.P1977954027832943730.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A279882.P5085618674870066561

`A000225(A008864(n+1))`
-/

namespace A279882.P5085618674870066561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A008864 (n + 1)).toNat

end

end A279882.P5085618674870066561

noncomputable section

/-- A279882: a(n) = 2^(prime(n) + 1) - 1.

Offset 1, canonical program `A279882.P5085618674870066561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279882 (n : ℕ) : ℤ :=
  A279882.P5085618674870066561.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279882.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280098.P5959995611617743735

`A280097(n+1)/24`
-/

namespace A280098.P5959995611617743735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280097 (n + 1) : ℚ) / 24

end

end A280098.P5959995611617743735

noncomputable section

/-- A280098: The sum of the divisors of 24*n - 1, divided by 24.

Offset 1, canonical program `A280098.P5959995611617743735`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280098 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280098.P5959995611617743735.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280098.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280706.P5164209367709686178

`A283467(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A280706.P5164209367709686178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A283467 (n + 1) + a (n - 1)

end

end A280706.P5164209367709686178

noncomputable section

/-- A280706: a(n) = Sum_{k=1..n} q(k+1-q(k)), where q(k) = A005185(k); partial sums of A283467.

Offset 1, canonical program `A280706.P5164209367709686178`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280706 (n : ℕ) : ℤ :=
  A280706.P5164209367709686178.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A282282.P3169685430802513097

`A024450(n+1)%A000330(n+1)`
-/

namespace A282282.P3169685430802513097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024450 (n + 1)) (A000330 (n + 1))

end

end A282282.P3169685430802513097

noncomputable section

/-- A282282: Remainder when sum of squares of the first n primes is divided by n-th square pyramidal number.

Offset 1, canonical program `A282282.P3169685430802513097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282282 (n : ℕ) : ℤ :=
  A282282.P3169685430802513097.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282282.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283480.P8882450698688990884

`A095901(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A283480.P8882450698688990884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095901 (n + 1) + a (n - 1)

end

end A283480.P8882450698688990884

noncomputable section

/-- A283480: Partial sums of A095901.

Offset 1, canonical program `A283480.P8882450698688990884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283480 (n : ℕ) : ℤ :=
  A283480.P8882450698688990884.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283677.P2265603654644096943

`lcm(A004001(A004001(n+1)), A004001(A080677(n+1)))`
-/

namespace A283677.P2265603654644096943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004001 (A004001 (n + 1)).toNat) (A004001 (A080677 (n + 1)).toNat)

end

end A283677.P2265603654644096943

noncomputable section

/-- A283677: a(n) = lcm(b(b(n)), b(n-b(n)+1)) where b(n) = A004001(n).

Offset 1, canonical program `A283677.P2265603654644096943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283677 (n : ℕ) : ℤ :=
  (A283677.P2265603654644096943.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284374.P83058503211766454

`A007917(a(n-a(n-1))+a(n-a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A284374.P83058503211766454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007917 (a ((n : ℤ) - a (n - 1)).toNat + a ((n : ℤ) - a (n - 2)).toNat).toNat

end

end A284374.P83058503211766454

noncomputable section

/-- A284374: a(1) = a(2) = 1; a(n) is the largest prime <= (a(n-a(n-1)) + a(n-a(n-2))) for n > 2.

Offset 1, canonical program `A284374.P83058503211766454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284374 (n : ℕ) : ℤ :=
  A284374.P83058503211766454.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284397.P2967028521939954678

`A007917(a(a(n-1)-1)+a(n-a(n-2)-1))` with `a(0)=1, a(1)=2`
-/

namespace A284397.P2967028521939954678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A007917 (a (a (n - 1) - 1).toNat + a ((n : ℤ) - a (n - 2) - 1).toNat).toNat

end

end A284397.P2967028521939954678

noncomputable section

/-- A284397: a(1) = 1, a(2) = 2; a(n) is the largest prime <= (a(a(n-1)) + a(n-a(n-2)-1)) for n > 2.

Offset 1, canonical program `A284397.P2967028521939954678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284397 (n : ℕ) : ℤ :=
  A284397.P2967028521939954678.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284412.P12322783761233441949

`A007917(a(a(n-1)-1)+a(n-a(n-1)))` with `a(0)=1`
-/

namespace A284412.P12322783761233441949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007917 (a (a (n - 1) - 1).toNat + a ((n : ℤ) - a (n - 1)).toNat).toNat

end

end A284412.P12322783761233441949

noncomputable section

/-- A284412: a(1) = 1, a(2) = 2; a(n) is the largest prime <= (a(a(n-1)) + a(n-a(n-1))) for n > 2.

Offset 1, canonical program `A284412.P12322783761233441949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284412 (n : ℕ) : ℤ :=
  A284412.P12322783761233441949.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285231.P11568269954127471462

`A159324(n+2)/2`
-/

namespace A285231.P11568269954127471462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159324 (n + 2) : ℚ) / 2

end

end A285231.P11568269954127471462

noncomputable section

/-- A285231: Number of entries in the third cycles of all permutations of [n].

Offset 3, canonical program `A285231.P11568269954127471462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285231 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285231.P11568269954127471462.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285551.P12448397724595995412

`A100538(n+2)-A100538(n+1)`
-/

namespace A285551.P12448397724595995412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100538 (n + 2) - A100538 (n + 1)

end

end A285551.P12448397724595995412

noncomputable section

/-- A285551: Volume of each square prism building the next 3-dimensional box in A100538 where side lengths form the Padovan spiral number sequence (A134816), starting with 1 X 1 X 1, 1 X 1 X 2, 2 X 2 X 2, 2 X 2 X 3, 4 X 4 X 5, ...

Offset 1, canonical program `A285551.P12448397724595995412`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285551 (n : ℕ) : ℤ :=
  A285551.P12448397724595995412.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286629.P15215319129502204958

`(A000040(n+1)-1)*A002110(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286629.P15215319129502204958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) * A002110 (n + 1)

end

end A286629.P15215319129502204958

noncomputable section

/-- A286629: a(n) = (A000040(n)-1) * A002110(n).

Offset 1, canonical program `A286629.P15215319129502204958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286629 (n : ℕ) : ℤ :=
  A286629.P15215319129502204958.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A287658.P9810160959772235257

`2*(n+1)-A005614(n)`
-/

namespace A287658.P9810160959772235257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A005614 n

end

end A287658.P9810160959772235257

noncomputable section

/-- A287658: Positions of 0 in A287657; complement of A287659.

Offset 1, canonical program `A287658.P9810160959772235257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287658 (n : ℕ) : ℤ :=
  A287658.P9810160959772235257.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A289031.P18143589707004328162

`2*a(n-1)-a(n-2)+A003517(n+2)` with `a(0)=1, a(1)=8`
-/

namespace A289031.P18143589707004328162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 * a (n - 1) - a (n - 2) + A003517 (n + 2)

end

end A289031.P18143589707004328162

noncomputable section

/-- A289031: Number of perfect matchings on n+3 edges which represent RNA secondary folding structures characterized by the Reeder and Giegerich and the Lyngso and Pedersen families, but not the family characterized by Cao and Chen.

Offset 1, canonical program `A289031.P18143589707004328162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289031 (n : ℕ) : ℤ :=
  A289031.P18143589707004328162.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A289715.P5247963101703617559

`A002457(n)-A002378(n)`
-/

namespace A289715.P5247963101703617559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - A002378 n

end

end A289715.P5247963101703617559

noncomputable section

/-- A289715: The order of the semigroup of orientation-preserving full transformations on n elements.

Offset 1, canonical program `A289715.P5247963101703617559`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289715 (n : ℕ) : ℤ :=
  A289715.P5247963101703617559.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289715.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A290517.P3773173028150075257

`n*a(n-1)/A004736(n)` with `a(0)=1, a(1)=1`
-/

namespace A290517.P3773173028150075257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℚ) * a (n - 1) / (A004736 n : ℚ)

end

end A290517.P3773173028150075257

noncomputable section

/-- A290517: Maximum value of the multinomial coefficients M(n;lambda), where lambda ranges over all partitions of n into distinct parts.

Offset 0, canonical program `A290517.P3773173028150075257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290517 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290517.P3773173028150075257.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A290518.P3455240857272655374

`a(n-1)*A004736(n)` with `a(0)=1, a(1)=1`
-/

namespace A290518.P3455240857272655374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A004736 n

end

end A290518.P3455240857272655374

noncomputable section

/-- A290518: Minimum value of Product_{i in lambda} i!, where lambda ranges over all partitions of n into distinct parts.

Offset 0, canonical program `A290518.P3455240857272655374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290518 (n : ℕ) : ℤ :=
  A290518.P3455240857272655374.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290518.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291463.P14308935140851577628

`A000040(n+1)*A001223(n+1)`
-/

namespace A291463.P14308935140851577628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001223 (n + 1)

end

end A291463.P14308935140851577628

noncomputable section

/-- A291463: a(n) is the product of n-th prime number with the distance to the next prime.

Offset 1, canonical program `A291463.P14308935140851577628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291463 (n : ℕ) : ℤ :=
  A291463.P14308935140851577628.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291463.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291681.P5930894285660804942

`A067046(n+2)-A067046(n+1)`
-/

namespace A291681.P5930894285660804942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067046 (n + 2) - A067046 (n + 1)

end

end A291681.P5930894285660804942

noncomputable section

/-- A291681: First differences of A067046.

Offset 1, canonical program `A291681.P5930894285660804942`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291681 (n : ℕ) : ℤ :=
  A291681.P5930894285660804942.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291681.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292918.P8931066894349998368

`2*A071917(n+1)+1`
-/

namespace A292918.P8931066894349998368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071917 (n + 1) + 1

end

end A292918.P8931066894349998368

noncomputable section

/-- A292918: Let A_n be a square n X n matrix with entries A_n(i,j)=1 if i+j is prime, and A_n(i,j)=0 otherwise. Then a(n) counts the 1's in A_n.

Offset 1, canonical program `A292918.P8931066894349998368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292918 (n : ℕ) : ℤ :=
  A292918.P8931066894349998368.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292918.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293558.P3398353888254782623

`A005867(col(n))*A002110(row(n)+1)/A002110(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293558.P3398353888254782623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005867 (SequenceMachineLib.triCol n) * A002110 (SequenceMachineLib.triRow n + 1) : ℚ) / (A002110 (SequenceMachineLib.triCol n + 1) : ℚ)

end

end A293558.P3398353888254782623

noncomputable section

/-- A293558: Triangle T(n,k) read by rows: T(n,k) = A005867(k-1)*A002110(n)/A002110(k).

Offset 1, canonical program `A293558.P3398353888254782623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293558 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A293558.P3398353888254782623.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294193.P17962944169664122984

`A055555(n+1)-A055555(n)`
-/

namespace A294193.P17962944169664122984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055555 (n + 1) - A055555 n

end

end A294193.P17962944169664122984

noncomputable section

/-- A294193: a(n) = sum of integers between n!+1 and (n+1)!.

Offset 0, canonical program `A294193.P17962944169664122984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294193 (n : ℕ) : ℤ :=
  A294193.P17962944169664122984.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294193.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295132.P17976459601710744624

`2*A005043(n+2)*((6+6/(n+1))*A005043(n+1)+(2+1/(n+1))*A005043(n+2))`
-/

namespace A295132.P17976459601710744624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A005043 (n + 2) : ℚ) * ((6 + 6 / (n + 1 : ℚ)) * (A005043 (n + 1) : ℚ) + (2 + 1 / (n + 1 : ℚ)) * (A005043 (n + 2) : ℚ))

end

end A295132.P17976459601710744624

noncomputable section

/-- A295132: a(n) = (2/n)*Sum_{k=1..n} (2k+1)*M(k)^2 where M(k) is the Motzkin number A001006(k).

Offset 1, canonical program `A295132.P17976459601710744624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295132 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295132.P17976459601710744624.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295655.P11062722249012159338

`A000203(n+1)/A294896(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295655.P11062722249012159338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A294896 (n + 1) : ℚ)

end

end A295655.P11062722249012159338

noncomputable section

/-- A295655: a(n) = A000203(n) / A294896(n) = A000203(n) / gcd(A000203(n), A005187(n)).

Offset 1, canonical program `A295655.P11062722249012159338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295655 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295655.P11062722249012159338.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295656.P13422451265484002052

`A005187(n+1)/A294896(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295656.P13422451265484002052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005187 (n + 1) : ℚ) / (A294896 (n + 1) : ℚ)

end

end A295656.P13422451265484002052

noncomputable section

/-- A295656: a(n) = A005187(n) / A294896(n) = A005187(n) / gcd(A000203(n), A005187(n)).

Offset 1, canonical program `A295656.P13422451265484002052`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295656 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295656.P13422451265484002052.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295889.P9945374899946900535

`A000035(1+A000120(n)+A000120(3*n))`
-/

namespace A295889.P9945374899946900535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (1 + A000120 n + A000120 (3 * n)).toNat

end

end A295889.P9945374899946900535

noncomputable section

/-- A295889: a(n) = 1 if binary weights of n and 3n have the same parity, 0 otherwise.

Offset 0, canonical program `A295889.P9945374899946900535`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295889 (n : ℕ) : ℤ :=
  A295889.P9945374899946900535.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A296770.P4976538490288116259

`A002457(n)-A008549(n)`
-/

namespace A296770.P4976538490288116259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - A008549 n

end

end A296770.P4976538490288116259

noncomputable section

/-- A296770: Row sums of A050158.

Offset 0, canonical program `A296770.P4976538490288116259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296770 (n : ℕ) : ℤ :=
  A296770.P4976538490288116259.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296770.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297402.P15825475486828403093

`A074723(n+1)/2`
-/

namespace A297402.P15825475486828403093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074723 (n + 1) : ℚ) / 2

end

end A297402.P15825475486828403093

noncomputable section

/-- A297402: a(n) = gcd_{k=1..n} (prime(k+1)^n-1)/2.

Offset 1, canonical program `A297402.P15825475486828403093`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297402 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A297402.P15825475486828403093.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297402.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297446.P8708024790327824958

`A060692(n+1)-1`
-/

namespace A297446.P8708024790327824958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060692 (n + 1) - 1

end

end A297446.P8708024790327824958

noncomputable section

/-- A297446: a(1) = 1; a(n) = (2^n - 1)*((3^n - 1)/(2^n - 1) mod 1), n >= 2. Unreduced numerators of fractional parts of (3^n - 1)/(2^n - 1).

Offset 1, canonical program `A297446.P8708024790327824958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297446 (n : ℕ) : ℤ :=
  A297446.P8708024790327824958.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A298252.P859259455876682479

`A113935(n+2)`
-/

namespace A298252.P859259455876682479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 2)

end

end A298252.P859259455876682479

noncomputable section

/-- A298252: Even integers n such that n-3 is prime.

Offset 1, canonical program `A298252.P859259455876682479`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A298252 (n : ℕ) : ℤ :=
  A298252.P859259455876682479.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A298252.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300559.P15332861236027180194

`A180119(n)+1`
-/

namespace A300559.P15332861236027180194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 n + 1

end

end A300559.P15332861236027180194

noncomputable section

/-- A300559: a(n) = n*(n+1)!/2 + 1.

Offset 0, canonical program `A300559.P15332861236027180194`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)!/2+1` (program `A300559.P11525460963011046020`, by `A300559.P11525460963011046020.correct`). Lean does not check the parsing of the name. -/
def A300559 (n : ℕ) : ℤ :=
  A300559.P15332861236027180194.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)!/2+1` (program `A300559.P11525460963011046020`, by `A300559.P11525460963011046020.correct`). Lean does not check the parsing of the name. -/
def A300559.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A300905.P9758388862821370311

`A100879(n+1)%A217872(n+1)`
-/

namespace A300905.P9758388862821370311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100879 (n + 1)) (A217872 (n + 1))

end

end A300905.P9758388862821370311

noncomputable section

/-- A300905: a(n) = n^sigma(n) mod sigma(n)^n.

Offset 1, canonical program `A300905.P9758388862821370311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300905 (n : ℕ) : ℤ :=
  A300905.P9758388862821370311.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300905.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A302156.P3507929015073044205

`A002110(n+1)*a(n-1)/2` with `a(0)=1`
-/

namespace A302156.P3507929015073044205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A002110 (n + 1) : ℚ) * a (n - 1) / 2

end

end A302156.P3507929015073044205

noncomputable section

/-- A302156: a(n) = Product_{k=1..n} prime(k+1)^(n-k+1).

Offset 0, canonical program `A302156.P3507929015073044205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302156 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A302156.P3507929015073044205.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302156.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A302451.P919645638412412286

`n^A000120(n)`
-/

namespace A302451.P919645638412412286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A000120 n : ℤ)

end

end A302451.P919645638412412286

noncomputable section

/-- A302451: a(n) = [x^n] Product_{k>=0} (1 + n*x^(2^k)).

Offset 0, canonical program `A302451.P919645638412412286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302451 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A302451.P919645638412412286.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A303557.P12965752241371039063

`A011782(n)*A002110(n)`
-/

namespace A303557.P12965752241371039063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A002110 n

end

end A303557.P12965752241371039063

noncomputable section

/-- A303557: a(0) = 1; a(n) = 2^(n-1)*prime(n)#, where prime(n)# is the product of first n primes.

Offset 0, canonical program `A303557.P12965752241371039063`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303557 (n : ℕ) : ℤ :=
  A303557.P12965752241371039063.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303557.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A303834.P9769245571489669932

`2*(-1)^(n+1)+2^(n+1)*A000032(n+1)+A005248(n+1)`
-/

namespace A303834.P9769245571489669932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (-1) ^ (n + 1) + (2 ^ (n + 1) : ℤ) * A000032 (n + 1) + A005248 (n + 1)

end

end A303834.P9769245571489669932

noncomputable section

/-- A303834: Number of total dominating sets in the n-gear graph.

Offset 1, canonical program `A303834.P9769245571489669932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303834 (n : ℕ) : ℤ :=
  A303834.P9769245571489669932.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303834.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304917.P17979454716105343834

`A062457(n+1)-A002110(n)`
-/

namespace A304917.P17979454716105343834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062457 (n + 1) - A002110 n

end

end A304917.P17979454716105343834

noncomputable section

/-- A304917: a(n) = prime(n)^n - primorial(n - 1).

Offset 1, canonical program `A304917.P17979454716105343834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304917 (n : ℕ) : ℤ :=
  A304917.P17979454716105343834.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A305624.P13235165757477837643

`A000919(n+1)-A056311(n+1)`
-/

namespace A305624.P13235165757477837643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000919 (n + 1) - A056311 (n + 1)

end

end A305624.P13235165757477837643

noncomputable section

/-- A305624: Number of chiral pairs of rows of n colors with exactly 4 different colors.

Offset 1, canonical program `A305624.P13235165757477837643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305624 (n : ℕ) : ℤ :=
  A305624.P13235165757477837643.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A305739.P9759240343848292300

`A180119(n+1)-1`
-/

namespace A305739.P9759240343848292300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 (n + 1) - 1

end

end A305739.P9759240343848292300

noncomputable section

/-- A305739: a(n) = n!*T(n) - 1, where T(n) is the n-th triangular number.

Offset 1, canonical program `A305739.P9759240343848292300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305739 (n : ℕ) : ℤ :=
  A305739.P9759240343848292300.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305739.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306237.P9842382789925021475

`A002110(n+2)/A000040(n+1)`
-/

namespace A306237.P9842382789925021475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 2) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A306237.P9842382789925021475

noncomputable section

/-- A306237: a(n) = primorial prime(n)#/prime(n - 1).

Offset 2, canonical program `A306237.P9842382789925021475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306237 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306237.P9842382789925021475.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306237.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306637.P785911528326980778

`A000045(n)*A128834(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306637.P785911528326980778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A128834 n

end

end A306637.P785911528326980778

noncomputable section

/-- A306637: a(n) = Fibonacci(n) * A128834(n).

Offset 0, canonical program `A306637.P785911528326980778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306637 (n : ℕ) : ℤ :=
  A306637.P785911528326980778.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306695.P3980179616297842556

`gcd(n+1, A001615(n+1))`
-/

namespace A306695.P3980179616297842556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001615 (n + 1))

end

end A306695.P3980179616297842556

noncomputable section

/-- A306695: a(n) = gcd(n, psi(n)).

Offset 1, canonical program `A306695.P3980179616297842556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306695 (n : ℕ) : ℤ :=
  (A306695.P3980179616297842556.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306695.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306927.P17814691939423950955

`A001615(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306927.P17814691939423950955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - (n + 1 : ℤ)

end

end A306927.P17814691939423950955

noncomputable section

/-- A306927: a(n) = A001615(n) - n.

Offset 1, canonical program `A306927.P17814691939423950955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306927 (n : ℕ) : ℤ :=
  A306927.P17814691939423950955.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A307124.P3472363838436474427

`2*A005867(n+1)²`
-/

namespace A307124.P3472363838436474427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005867 (n + 1) ^ 2

end

end A307124.P3472363838436474427

noncomputable section

/-- A307124: a(n) is twice the square of the product of the first n primes each decreased by one.

Offset 1, canonical program `A307124.P3472363838436474427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307124 (n : ℕ) : ℤ :=
  A307124.P3472363838436474427.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239619.P15559327982944587006

`A053735(A000040(n+1))`
-/

namespace A239619.P15559327982944587006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A000040 (n + 1)).toNat

end

end A239619.P15559327982944587006

noncomputable section

/-- A239619: Base 3 sum of digits of prime(n).

Offset 1, canonical program `A239619.P15559327982944587006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239619 (n : ℕ) : ℤ :=
  A239619.P15559327982944587006.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239690.P6526358221762526972

`A053737(A000040(n+1))`
-/

namespace A239690.P6526358221762526972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A000040 (n + 1)).toNat

end

end A239690.P6526358221762526972

noncomputable section

/-- A239690: Base 4 sum of digits of prime(n).

Offset 1, canonical program `A239690.P6526358221762526972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239690 (n : ℕ) : ℤ :=
  A239690.P6526358221762526972.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239692.P2456652248599163808

`A053827(A000040(n+1))`
-/

namespace A239692.P2456652248599163808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A000040 (n + 1)).toNat

end

end A239692.P2456652248599163808

noncomputable section

/-- A239692: Base 6 sum of digits of prime(n).

Offset 1, canonical program `A239692.P2456652248599163808`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239692 (n : ℕ) : ℤ :=
  A239692.P2456652248599163808.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242603.P13537598340442924408

`(n+1)/A268354(n+1)`
-/

namespace A242603.P13537598340442924408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A268354 (n + 1) : ℚ)

end

end A242603.P13537598340442924408

noncomputable section

/-- A242603: Largest divisor of n not divisible by 7. Remove factors 7 from n.

Offset 1, canonical program `A242603.P13537598340442924408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242603 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242603.P13537598340442924408.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244842.P11551185186741496577

`9*A274766(n)`
-/

namespace A244842.P11551185186741496577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A274766 n

end

end A244842.P11551185186741496577

noncomputable section

/-- A244842: a(n) = (10^n - 1)*(10^n - 10)/90.

Offset 1, canonical program `A244842.P11551185186741496577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244842 (n : ℕ) : ℤ :=
  A244842.P11551185186741496577.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244842.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245396.P10349761144669550165

`A007917(A249669(n+1))`
-/

namespace A245396.P10349761144669550165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A249669 (n + 1)).toNat

end

end A245396.P10349761144669550165

noncomputable section

/-- A245396: Largest prime not exceeding prime(n)^(1 + 1/n).

Offset 1, canonical program `A245396.P10349761144669550165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245396 (n : ℕ) : ℤ :=
  A245396.P10349761144669550165.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246776.P2517314765722432230

`A249669(n+1)-A000040(n+2)`
-/

namespace A246776.P2517314765722432230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - A000040 (n + 2)

end

end A246776.P2517314765722432230

noncomputable section

/-- A246776: a(n) = floor(prime(n)^(1+1/n)) - prime(n+1).

Offset 1, canonical program `A246776.P2517314765722432230`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246776 (n : ℕ) : ℤ :=
  A246776.P2517314765722432230.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246776.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246778.P4705111850102885447

`A249669(n+1)-A000040(n+1)`
-/

namespace A246778.P4705111850102885447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - A000040 (n + 1)

end

end A246778.P4705111850102885447

noncomputable section

/-- A246778: a(n) = floor(prime(n)^(1+1/n)) - prime(n).

Offset 1, canonical program `A246778.P4705111850102885447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246778 (n : ℕ) : ℤ :=
  A246778.P4705111850102885447.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257800.P8907689118794167458

`A000035(A233271(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257800.P8907689118794167458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A233271 n).toNat

end

end A257800.P8907689118794167458

noncomputable section

/-- A257800: Sequence A233271 reduced modulo 2: a(n) = A000035(A233271(n)); the parity of each term in the infinite trunk of inverted binary beanstalk.

Offset 0, canonical program `A257800.P8907689118794167458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257800 (n : ℕ) : ℤ :=
  A257800.P8907689118794167458.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259321.P6098507823331148853

`A259110(n+1)*A259323(n+1)-A259319(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259321.P6098507823331148853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 (n + 1) * A259323 (n + 1) - A259319 (n + 1) ^ 2

end

end A259321.P6098507823331148853

noncomputable section

/-- A259321: a(n) = A259110(n)*A259323(n) - A259319(n)^2.

Offset 1, canonical program `A259321.P6098507823331148853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259321 (n : ℕ) : ℤ :=
  A259321.P6098507823331148853.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259321.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263133.P4183536222213236562

`(2^A000267(n)+2^A384688(n))/3-1`
-/

namespace A263133.P4183536222213236562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000267 n : ℤ) + (2 : ℚ) ^ (A384688 n : ℤ)) / 3 - 1

end

end A263133.P4183536222213236562

noncomputable section

/-- A263133: Numbers m such that binomial(4*m + 3, m) is odd.

Offset 1, canonical program `A263133.P4183536222213236562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263133 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A263133.P4183536222213236562.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265024.P4967435460097502295

`n!*A000593(n+1)`
-/

namespace A265024.P4967435460097502295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000593 (n + 1)

end

end A265024.P4967435460097502295

noncomputable section

/-- A265024: a(n) = n! * Sum_{d in D(n+1)} (-1)^(d+1)*(n+1)/d, D(n) the divisors of n.

Offset 0, canonical program `A265024.P4967435460097502295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265024 (n : ℕ) : ℤ :=
  A265024.P4967435460097502295.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265024.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268185.P2116769644466918163

`A000040(n+1)+A007652(n+1)`
-/

namespace A268185.P2116769644466918163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A007652 (n + 1)

end

end A268185.P2116769644466918163

noncomputable section

/-- A268185: a(n) = prime(n) + last digit of prime(n).

Offset 1, canonical program `A268185.P2116769644466918163`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268185 (n : ℕ) : ℤ :=
  A268185.P2116769644466918163.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A269223.P14814624165986150479

`A000142(A053735(n))`
-/

namespace A269223.P14814624165986150479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A053735 n).toNat

end

end A269223.P14814624165986150479

noncomputable section

/-- A269223: Factorial of the sum of digits of n in base 3.

Offset 0, canonical program `A269223.P14814624165986150479`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269223 (n : ℕ) : ℤ :=
  A269223.P14814624165986150479.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A269224.P2228145044449409064

`A000142(A053737(n))`
-/

namespace A269224.P2228145044449409064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A053737 n).toNat

end

end A269224.P2228145044449409064

noncomputable section

/-- A269224: Factorial of the sum of digits of n in base 4.

Offset 0, canonical program `A269224.P2228145044449409064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269224 (n : ℕ) : ℤ :=
  A269224.P2228145044449409064.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276729.P16499400846689770455

`A055642(n)-A193238(n)`
-/

namespace A276729.P16499400846689770455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A193238 n

end

end A276729.P16499400846689770455

noncomputable section

/-- A276729: Number of nonprime digits in the decimal expansion of n.

Offset 0, canonical program `A276729.P16499400846689770455`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276729 (n : ℕ) : ℤ :=
  A276729.P16499400846689770455.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276729.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277267.P1918104767288043109

`n-A279521(n+1)`
-/

namespace A277267.P1918104767288043109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A279521 (n + 1)

end

end A277267.P1918104767288043109

noncomputable section

/-- A277267: Minimum number of single-direction edges in leveled binary trees with n nodes.

Offset 1, canonical program `A277267.P1918104767288043109`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277267 (n : ℕ) : ℤ :=
  A277267.P1918104767288043109.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280108.P11591801532326893364

`A000593(A000032(n+1))`
-/

namespace A280108.P11591801532326893364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000032 (n + 1)).toNat

end

end A280108.P11591801532326893364

noncomputable section

/-- A280108: Sum of odd divisors of Lucas(n).

Offset 1, canonical program `A280108.P11591801532326893364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280108 (n : ℕ) : ℤ :=
  A280108.P11591801532326893364.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A296548.P17723853187876266426

`A002884(row(n))/(A002884(col(n))*A002884(row(n)-col(n)))`
-/

namespace A296548.P17723853187876266426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (SequenceMachineLib.triRow n) : ℚ) / (A002884 (SequenceMachineLib.triCol n) * A002884 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A296548.P17723853187876266426

noncomputable section

/-- A296548: Triangle read by rows: T(n,k) is the number of diagonalizable n X n matrices over GF(2) that have rank k, n >= 0, 0 <= k <= n.

Offset 0, canonical program `A296548.P17723853187876266426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296548 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296548.P17723853187876266426.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A302346.P17985738319529799265

`A002884(col(n))*A002884(row(n)-col(n))*2^(col(n)*(row(n)-col(n)))`
-/

namespace A302346.P17985738319529799265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (SequenceMachineLib.triCol n) * A002884 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) : ℤ)

end

end A302346.P17985738319529799265

noncomputable section

/-- A302346: Triangle read by rows. Number of invertible linear operators T on an n-dimensional vector space over GF(2) such that T(U) = U for some given k-dimensional subspace U.

Offset 0, canonical program `A302346.P17985738319529799265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302346 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A302346.P17985738319529799265.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302346.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304274.P11244077371519869299

`A305498(n+2)-3/2*A305498(n+1)+1`
-/

namespace A304274.P11244077371519869299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305498 (n + 2) : ℚ) - (3 : ℚ) / 2 * (A305498 (n + 1) : ℚ) + 1

end

end A304274.P11244077371519869299

noncomputable section

/-- A304274: The concatenation of the first n elements is the largest positive even number with n digits when written in base 3/2.

Offset 1, canonical program `A304274.P11244077371519869299`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A304274.P11244077371519869299.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304274.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A235743.P3971823922931559072

`A000040(eq[A031131(n+1)+4, A031131(n+2)]+1)`
-/

namespace A235743.P3971823922931559072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A235743.P3971823922931559072

noncomputable section

/-- A235743: Primes p(k) such that p(k) + p(k+3) = p(k+1) + p(k+2) + 4.

Offset 1, canonical program `A235743.P3971823922931559072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A235743 (n : ℕ) : ℤ :=
  A235743.P3971823922931559072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A235743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235996.P612755675873609379

`2^n-∑[A208354(n)]`
-/

namespace A235996.P612755675873609379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235996.P612755675873609379

noncomputable section

/-- A235996: Number of length n binary words that contain at least one pair of consecutive 0's followed by (at some point in the word) at least one pair of consecutive 1's.

Offset 0, canonical program `A235996.P612755675873609379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A235996 (n : ℕ) : ℤ :=
  A235996.P612755675873609379.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A235996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236182.P8812619462684082735

`∑[A030516(n+1)]`
-/

namespace A236182.P8812619462684082735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P8812619462684082735

noncomputable section

/-- A236182: Sum of the sixth powers of the first n primes.

Offset 1, canonical program `A236182.P8812619462684082735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236182 (n : ℕ) : ℤ :=
  A236182.P8812619462684082735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236206.P10023384627399408474

`filter[A160545(n+1), A011558(#)]`
-/

namespace A236206.P10023384627399408474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A236206.P10023384627399408474

noncomputable section

/-- A236206: Numbers not divisible by 3, 5 or 7.

Offset 1, canonical program `A236206.P10023384627399408474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A236206 (n : ℕ) : ℤ :=
  A236206.P10023384627399408474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A236206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236209.P8443258730828089445

`∑[A092759(n+1)]`
-/

namespace A236209.P8443258730828089445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P8443258730828089445

noncomputable section

/-- A236209: Sum of the seventh powers of the first n primes.

Offset 1, canonical program `A236209.P8443258730828089445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236209 (n : ℕ) : ℤ :=
  A236209.P8443258730828089445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236214.P10912221979790008616

`∑[A179645(n+1)]`
-/

namespace A236214.P10912221979790008616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P10912221979790008616

noncomputable section

/-- A236214: Sum of the eighth powers of the first n primes.

Offset 1, canonical program `A236214.P10912221979790008616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236214 (n : ℕ) : ℤ :=
  A236214.P10912221979790008616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236215.P8665745897530177500

`∑[A179665(n+1)]`
-/

namespace A236215.P8665745897530177500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P8665745897530177500

noncomputable section

/-- A236215: Sum of the ninth powers of the first n primes.

Offset 1, canonical program `A236215.P8665745897530177500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236215 (n : ℕ) : ℤ :=
  A236215.P8665745897530177500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236216.P6788692688263138763

`∑[A030629(n+1)]`
-/

namespace A236216.P6788692688263138763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P6788692688263138763

noncomputable section

/-- A236216: Sum of the tenth powers of the first n primes.

Offset 1, canonical program `A236216.P6788692688263138763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236216 (n : ℕ) : ℤ :=
  A236216.P6788692688263138763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236218.P7494143856053409080

`∑[A030631(n+1)]`
-/

namespace A236218.P7494143856053409080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P7494143856053409080

noncomputable section

/-- A236218: Sum of the twelfth powers of the first n primes.

Offset 1, canonical program `A236218.P7494143856053409080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236218 (n : ℕ) : ℤ :=
  A236218.P7494143856053409080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236221.P10884310046436513075

`∑[A138031(n+1)]`
-/

namespace A236221.P10884310046436513075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236221.P10884310046436513075

noncomputable section

/-- A236221: Sum of the thirteenth powers of the first n primes.

Offset 1, canonical program `A236221.P10884310046436513075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236221 (n : ℕ) : ℤ :=
  A236221.P10884310046436513075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236222.P5013014953412716250

`∑[A092759(n+1)²]`
-/

namespace A236222.P5013014953412716250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236222.P5013014953412716250

noncomputable section

/-- A236222: Sum of the fourteenth powers of the first n primes.

Offset 1, canonical program `A236222.P5013014953412716250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236222 (n : ℕ) : ℤ :=
  A236222.P5013014953412716250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236223.P9577004228190771243

`∑[A050997(n+1)^3]`
-/

namespace A236223.P9577004228190771243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236223.P9577004228190771243

noncomputable section

/-- A236223: Sum of the fifteenth powers of the first n primes.

Offset 1, canonical program `A236223.P9577004228190771243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236223 (n : ℕ) : ℤ :=
  A236223.P9577004228190771243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236395.P3290551735307445708

`A132634(A000040(n+1))`
-/

namespace A236395.P3290551735307445708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132634 (A000040 (n + 1)).toNat

end

end A236395.P3290551735307445708

noncomputable section

/-- A236395: a(n) = Fibonacci(p) mod p^2, where p = prime(n).

Offset 1, canonical program `A236395.P3290551735307445708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A236395 (n : ℕ) : ℤ :=
  A236395.P3290551735307445708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A236395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236693.P4114692838688995240

`eq[A057427(n), A073816(n+1)]+1`
-/

namespace A236693.P4114692838688995240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A236693.P4114692838688995240

noncomputable section

/-- A236693: Numbers k such that 2^sigma(k) == 1 (mod k).

Offset 1, canonical program `A236693.P4114692838688995240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A236693 (n : ℕ) : ℤ :=
  (A236693.P4114692838688995240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A236693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236758.P18436612115019287046

`∑[A230980(n)+A082460(n+1)]`
-/

namespace A236758.P18436612115019287046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + A082460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236758.P18436612115019287046

noncomputable section

/-- A236758: Number of partitions of 3*n into 3 parts with smallest part prime.

Offset 1, canonical program `A236758.P18436612115019287046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236758 (n : ℕ) : ℤ :=
  A236758.P18436612115019287046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237448.P13955953425339463645

`A131818(n+1)-A080343(n)`
-/

namespace A237448.P13955953425339463645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - A080343 n

end

end A237448.P13955953425339463645

noncomputable section

/-- A237448: Square array T(row >= 1, col >= 1): The first row, row=1, T(1,col) = col = A000027. When row > col, T(row,col) = row, otherwise (when 1 < row <= col), T(row,col) = row-1.

Offset 1, canonical program `A237448.P13955953425339463645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237448 (n : ℕ) : ℤ :=
  A237448.P13955953425339463645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237622.P7177384520578188316

`n*A276666(n)+1`
-/

namespace A237622.P7177384520578188316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276666 n + 1

end

end A237622.P7177384520578188316

noncomputable section

/-- A237622: Interpolation polynomial through n points (0,1), (1,1), ..., (n-2,1) and (n-1,n) evaluated at 2n, a(0)=1.

Offset 0, canonical program `A237622.P7177384520578188316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A237622 (n : ℕ) : ℤ :=
  A237622.P7177384520578188316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A237622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237649.P15310033212845427612

`A163659((n+1)^3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A237649.P15310033212845427612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163659 ((n + 1) ^ 3)

end

end A237649.P15310033212845427612

noncomputable section

/-- A237649: a(n) = A163659(n^3), where A163659 is the logarithmic derivative of Stern's diatomic series (A002487).

Offset 1, canonical program `A237649.P15310033212845427612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237649 (n : ℕ) : ℤ :=
  A237649.P15310033212845427612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238248.P15572753832820351809

`A043689(n+1)+1`
-/

namespace A238248.P15572753832820351809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043689 (n + 1) + 1

end

end A238248.P15572753832820351809

noncomputable section

/-- A238248: Numbers m such that A072219(m) = 7.

Offset 1, canonical program `A238248.P15572753832820351809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238248 (n : ℕ) : ℤ :=
  A238248.P15572753832820351809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238339.P679773765752699266

`2*A055129(A122797(n+1))-1`
-/

namespace A238339.P679773765752699266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055129 (A122797 (n + 1)).toNat - 1

end

end A238339.P679773765752699266

noncomputable section

/-- A238339: Square number array read by ascending antidiagonals: T(1,k) = 2*k + 1, and T(n,k) = (2*n^(k+1)-n-1)/(n-1) otherwise.

Offset 0, canonical program `A238339.P679773765752699266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4822 terms. -/
def A238339 (n : ℕ) : ℤ :=
  A238339.P679773765752699266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4822 terms. -/
def A238339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238362.P12922951587572492693

`p?[A000120(A000120(n)+1)*(8*n+3)]`
-/

namespace A238362.P12922951587572492693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n + 1).toNat * (8 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238362.P12922951587572492693

noncomputable section

/-- A238362: Primes p such that A000120(p - 1) = A000120(p + 1) = 2^k for some k.

Offset 1, canonical program `A238362.P12922951587572492693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A238362 (n : ℕ) : ℤ :=
  A238362.P12922951587572492693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A238362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238455.P12384802579070016511

`(A201125(n+1)-A084188(n))/2`
-/

namespace A238455.P12384802579070016511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201125 (n + 1) - A084188 n : ℚ) / 2

end

end A238455.P12384802579070016511

noncomputable section

/-- A238455: Difference between 4^n and the nearest triangular number.

Offset 0, canonical program `A238455.P12384802579070016511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A238455 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A238455.P12384802579070016511.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A238455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238529.P10773024009408837413

`1+a(A238525(n))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A238529.P10773024009408837413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  1 + a (A238525 n).toNat

end

end A238529.P10773024009408837413

noncomputable section

/-- A238529: a(0) = a(1) = 0, and for n > 1, a(n) = number of iterations of A238525 (n modulo sopfr(n)) needed to reach either 0 or 1. Here sopfr(n) is the sum of the prime factors of n, with multiplicity, A001414.

Offset 0, canonical program `A238529.P10773024009408837413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A238525, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238529 (n : ℕ) : ℤ :=
  (A238529.P10773024009408837413.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A238525, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238737.P4243855582569951164

`A175851(2*(n+1))-1`
-/

namespace A238737.P4243855582569951164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * (n + 1)) - 1

end

end A238737.P4243855582569951164

noncomputable section

/-- A238737: a(n) = 2*n+2 - A224911(n).

Offset 0, canonical program `A238737.P4243855582569951164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238737 (n : ℕ) : ℤ :=
  A238737.P4243855582569951164.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238755.P15434247612324085362

`A057427(A029578(n))*A110440(A167499(n)-2)`
-/

namespace A238755.P15434247612324085362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A029578 n).toNat * A110440 (A167499 n - 2).toNat

end

end A238755.P15434247612324085362

noncomputable section

/-- A238755: Second convolution of A065096.

Offset 0, canonical program `A238755.P15434247612324085362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A238755 (n : ℕ) : ℤ :=
  A238755.P15434247612324085362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A238755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238913.P6336402216914630951

`A000102(n)+A000100(n)`
-/

namespace A238913.P6336402216914630951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000102 n + A000100 n

end

end A238913.P6336402216914630951

noncomputable section

/-- A238913: Number of self-inverse permutations p on [n] where the maximal displacement of an element equals 2.

Offset 0, canonical program `A238913.P6336402216914630951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A238913 (n : ℕ) : ℤ :=
  A238913.P6336402216914630951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A238913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239287.P8882484153100334312

`val(A115216(n), 4)`
-/

namespace A239287.P8882484153100334312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A115216 n).toNat 4

end

end A239287.P8882484153100334312

noncomputable section

/-- A239287: Triangle T(n,k), 0 <= k <= n, read by rows: T(n,k) = floor(n/2) - min(k,n-k).

Offset 0, canonical program `A239287.P8882484153100334312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A239287 (n : ℕ) : ℤ :=
  (A239287.P8882484153100334312.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A239287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239324.P18438988059213314958

`A090431(n)+a(n-1)` with `a(0)=0`
-/

namespace A239324.P18438988059213314958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A090431 n + a (n - 1)

end

end A239324.P18438988059213314958

noncomputable section

/-- A239324: Partial sums of A090431.

Offset 0, canonical program `A239324.P18438988059213314958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239324 (n : ℕ) : ℤ :=
  A239324.P18438988059213314958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239447.P4299851072612919937

`∑[n-A055945(n)]`
-/

namespace A239447.P4299851072612919937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P4299851072612919937

noncomputable section

/-- A239447: Partial sums of A030101.

Offset 0, canonical program `A239447.P4299851072612919937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239447 (n : ℕ) : ℤ :=
  A239447.P4299851072612919937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239453.P10419208607055236630

`Δ[A057977(n+1)]+A077957(n)²`
-/

namespace A239453.P10419208607055236630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A077957 n ^ 2

end

end A239453.P10419208607055236630

noncomputable section

/-- A239453: Convolution of the generalized Catalan numbers A057977 with themselves.

Offset 0, canonical program `A239453.P10419208607055236630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A239453 (n : ℕ) : ℤ :=
  A239453.P10419208607055236630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A239453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239876.P14147958566961035666

`∑[A229110(n+1)]`
-/

namespace A239876.P14147958566961035666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239876.P14147958566961035666

noncomputable section

/-- A239876: Partial sums of A229110, where A229110(n) = antisigma(n) mod n = A024816(n) mod n.

Offset 1, canonical program `A239876.P14147958566961035666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239876 (n : ℕ) : ℤ :=
  A239876.P14147958566961035666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240231.P14758268946136650672

`A028310(∑{e}[n+1, A053735(#)])`
-/

namespace A240231.P14758268946136650672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ p ∈ Nat.primeFactors (f1 n), A053735 (Nat.factorization (f1 n) p)).toNat

end

end A240231.P14758268946136650672

noncomputable section

/-- A240231: Number of factors needed in the unique factorization of positive integers into terms of A186285 where any term is used at most twice.

Offset 1, canonical program `A240231.P14758268946136650672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240231 (n : ℕ) : ℤ :=
  A240231.P14758268946136650672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240513.P2129167559691971757

`A119749(n+1)+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A240513.P2129167559691971757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A119749 (n + 1) + a (n - 2)

end

end A240513.P2129167559691971757

noncomputable section

/-- A240513: Number of n X 2 0..1 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..1 introduced in row major order.

Offset 1, canonical program `A240513.P2129167559691971757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A240513 (n : ℕ) : ℤ :=
  A240513.P2129167559691971757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A240513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240569.P17904370683734456303

`p?[A018252(n+1)+A018252(n+3)]`
-/

namespace A240569.P17904370683734456303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + A018252 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240569.P17904370683734456303

noncomputable section

/-- A240569: Primes of the form k(m) + k(m+2) where k(m) = A018252(m) (nonprimes), m >= 1.

Offset 1, canonical program `A240569.P17904370683734456303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A240569 (n : ℕ) : ℤ :=
  A240569.P17904370683734456303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A240569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240609.P9554572774244923858

`A342912(n+1)+A005043(n)-A082397(n+1)`
-/

namespace A240609.P9554572774244923858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342912 (n + 1) + (A005043 n - A082397 (n + 1))

end

end A240609.P9554572774244923858

noncomputable section

/-- A240609: Number of n-length words w over a 3-ary alphabet such that w is empty or a prefix z concatenated with letter a_i and i=1 or 0 < #(z,a_{i-1}) >= #(z,a_i), where #(z,a_i) counts the occurrences of the i-th letter in z.

Offset 0, canonical program `A240609.P9554572774244923858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A240609 (n : ℕ) : ℤ :=
  A240609.P9554572774244923858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A240609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240769.P16242250980846924409

`A080079(A051162(n)+1)`
-/

namespace A240769.P16242250980846924409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A051162 n + 1).toNat

end

end A240769.P16242250980846924409

noncomputable section

/-- A240769: Triangle read by rows: T(1,1) = 1; T(n+1,k) = T(n,k+1), 1 <= k < n; T(n+1,n) = 2*T(n,1); T(n+1,n+1) = 2*T(n,1) - 1.

Offset 1, canonical program `A240769.P16242250980846924409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A240769 (n : ℕ) : ℤ :=
  A240769.P16242250980846924409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A240769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240860.P9512636483321662059

`∑[(-1)^n*A001248(n+1)]`
-/

namespace A240860.P9512636483321662059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240860.P9512636483321662059

noncomputable section

/-- A240860: a(n) = Sum_{i=1..n} (-1)^{i+1} prime(i)^2, where prime(k) denotes the k-th prime: alternating sum of the squares of the first n primes.

Offset 1, canonical program `A240860.P9512636483321662059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240860 (n : ℕ) : ℤ :=
  A240860.P9512636483321662059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240879.P14005581407535111882

`A114121(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A240879.P14005581407535111882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114121 n + 4 * a (n - 1)

end

end A240879.P14005581407535111882

noncomputable section

/-- A240879: Self-convolution of Sum(binomial(2*n, i), i=0..n).

Offset 0, canonical program `A240879.P14005581407535111882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A240879 (n : ℕ) : ℤ :=
  A240879.P14005581407535111882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A240879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240923.P7245222179821891144

`A017665(n+1)-A000203(A017666(n+1))`
-/

namespace A240923.P7245222179821891144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - A000203 (A017666 (n + 1)).toNat

end

end A240923.P7245222179821891144

noncomputable section

/-- A240923: a(n) = numerator(sigma(n)/n) - sigma(denominator(sigma(n)/n)).

Offset 1, canonical program `A240923.P7245222179821891144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240923 (n : ℕ) : ℤ :=
  A240923.P7245222179821891144.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240939.P940604586909977599

`A068869(n+1)-A185012(n)`
-/

namespace A240939.P940604586909977599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068869 (n + 1) - A185012 n

end

end A240939.P940604586909977599

noncomputable section

/-- A240939: Least number k >= 0 such that n! + k is a perfect power.

Offset 1, canonical program `A240939.P940604586909977599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A240939 (n : ℕ) : ℤ :=
  A240939.P940604586909977599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A240939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241151.P10347220583869706345

`∑[A097806(n)]`
-/

namespace A241151.P10347220583869706345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P10347220583869706345

noncomputable section

/-- A241151: Number of distinct degrees in the partition graph G(n) defined at A241150.

Offset 2, canonical program `A241151.P10347220583869706345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241151 (n : ℕ) : ℤ :=
  A241151.P10347220583869706345.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241524.P1056954697449867720

`A002697(n)+A002457(n)`
-/

namespace A241524.P1056954697449867720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + A002457 n

end

end A241524.P1056954697449867720

noncomputable section

/-- A241524: a(n) = 4^n*(n/4 + binomial(n+1/2, 1/2)).

Offset 0, canonical program `A241524.P1056954697449867720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A241524 (n : ℕ) : ℤ :=
  A241524.P1056954697449867720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A241524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241566.P8126277569896418132

`∑[A307912(n+1)]`
-/

namespace A241566.P8126277569896418132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241566.P8126277569896418132

noncomputable section

/-- A241566: Number of 2-element subsets of {1,...,n} whose sum has more than 2 divisors.

Offset 1, canonical program `A241566.P8126277569896418132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241566 (n : ℕ) : ℤ :=
  A241566.P8126277569896418132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241575.P5643789270522155057

`A214848(n)-1`
-/

namespace A241575.P5643789270522155057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n - 1

end

end A241575.P5643789270522155057

noncomputable section

/-- A241575: Sturmian expansion of 1/2 in base sqrt(2)-1.

Offset 0, canonical program `A241575.P5643789270522155057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A241575 (n : ℕ) : ℤ :=
  A241575.P5643789270522155057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A241575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241587.P18432490739127419303

`Δ[A168597(n)/2]-A168597(n)`
-/

namespace A241587.P18432490739127419303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168597 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A168597 n : ℚ)

end

end A241587.P18432490739127419303

noncomputable section

/-- A241587: Coefficients in an expansion of the trace of the log of the adjacency operator on the infinite grid Z x Z.

Offset 1, canonical program `A241587.P18432490739127419303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A241587 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A241587.P18432490739127419303.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A241587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241603.P4160281635668687309

`∑{d}[n+1, #*A210032(#)]`
-/

namespace A241603.P4160281635668687309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A210032 d

end

end A241603.P4160281635668687309

noncomputable section

/-- A241603: a(n) = Sum_{d|n, d <= 5} d^2 + 5*Sum_{d|n, d>5} d.

Offset 1, canonical program `A241603.P4160281635668687309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A241603 (n : ℕ) : ℤ :=
  A241603.P4160281635668687309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A241603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241682.P11323323633827690027

`(A123344(n)-A167193(n))*A084247(n)`
-/

namespace A241682.P11323323633827690027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123344 n - A167193 n) * A084247 n

end

end A241682.P11323323633827690027

noncomputable section

/-- A241682: Total number of unit squares appearing in the Thue-Morse sequence logical matrices after n stages.

Offset 0, canonical program `A241682.P11323323633827690027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241682 (n : ℕ) : ℤ :=
  A241682.P11323323633827690027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241746.P12347380051297708002

`A270296(A103517(n))+3`
-/

namespace A241746.P12347380051297708002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (A103517 n).toNat + 3

end

end A241746.P12347380051297708002

noncomputable section

/-- A241746: Smallest number greater than n that CANNOT be scored using n darts on a standard dartboard.

Offset 1, canonical program `A241746.P12347380051297708002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A241746 (n : ℕ) : ℤ :=
  A241746.P12347380051297708002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A241746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241816.P2851650172626581552

`A214546(and(n, n+1))-1+n`
-/

namespace A241816.P2851650172626581552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (Nat.land n (n + 1)) - 1 + (n : ℤ)

end

end A241816.P2851650172626581552

noncomputable section

/-- A241816: a(n) is the largest number smaller than n that can be obtained by swapping two adjacent bits in n, or n if no such number exists.

Offset 0, canonical program `A241816.P2851650172626581552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241816 (n : ℕ) : ℤ :=
  A241816.P2851650172626581552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241937.P14061841482093411935

`A108674(n+1)+A051877(n)`
-/

namespace A241937.P14061841482093411935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108674 (n + 1) + A051877 n

end

end A241937.P14061841482093411935

noncomputable section

/-- A241937: Number of length 1+4 0..n arrays with no consecutive five elements summing to more than 2*n.

Offset 1, canonical program `A241937.P14061841482093411935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241937 (n : ℕ) : ℤ :=
  A241937.P14061841482093411935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242120.P15962889724436984483

`A022976(A074972(n+1))`
-/

namespace A242120.P15962889724436984483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022976 (A074972 (n + 1)).toNat

end

end A242120.P15962889724436984483

noncomputable section

/-- A242120: a(n) = n-th prime modulo 20.

Offset 1, canonical program `A242120.P15962889724436984483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242120 (n : ℕ) : ℤ :=
  A242120.P15962889724436984483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242136.P1263783666612363736

`2*A000260(n+1)-A197271(n+1)`
-/

namespace A242136.P1263783666612363736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000260 (n + 1) - A197271 (n + 1)

end

end A242136.P1263783666612363736

noncomputable section

/-- A242136: Number of strong triangulations of a fixed square with n interior vertices.

Offset 0, canonical program `A242136.P1263783666612363736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A242136 (n : ℕ) : ℤ :=
  A242136.P1263783666612363736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A242136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242137.P8379527440574402766

`lt[A076816(n), A054071(n+1)]`
-/

namespace A242137.P8379527440574402766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242137.P8379527440574402766

noncomputable section

/-- A242137: Numbers n such that there are no triangular numbers strictly between n^2 and n^2 + n.

Offset 1, canonical program `A242137.P8379527440574402766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2937 terms. -/
def A242137 (n : ℕ) : ℤ :=
  (A242137.P8379527440574402766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2937 terms. -/
def A242137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242287.P1452863974751054915

`A000217(A242286(n+1))`
-/

namespace A242287.P1452863974751054915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A242286 (n + 1)).toNat

end

end A242287.P1452863974751054915

noncomputable section

/-- A242287: Greedy-summable triangular numbers.

Offset 1, canonical program `A242287.P1452863974751054915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242287 (n : ℕ) : ℤ :=
  A242287.P1452863974751054915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242300.P18198570952785436576

`A242496(n)+A027941(n)`
-/

namespace A242300.P18198570952785436576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242496 n + A027941 n

end

end A242300.P18198570952785436576

noncomputable section

/-- A242300: a(n) = Sum_{0<=i

Offset 0, canonical program `A242300.P18198570952785436576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A242300 (n : ℕ) : ℤ :=
  A242300.P18198570952785436576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A242300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242312.P5495476097644624386

`A010888(A096145(n))`
-/

namespace A242312.P5495476097644624386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A096145 n).toNat

end

end A242312.P5495476097644624386

noncomputable section

/-- A242312: Digital roots in Pascal's triangle, triangle read by rows, 0 <= k <= n.

Offset 0, canonical program `A242312.P5495476097644624386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242312 (n : ℕ) : ℤ :=
  A242312.P5495476097644624386.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242401.P14578160612207848124

`eq[A056926(n), A123110(n)]`
-/

namespace A242401.P14578160612207848124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242401.P14578160612207848124

noncomputable section

/-- A242401: Numbers that are neither triangular nor square.

Offset 1, canonical program `A242401.P14578160612207848124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242401 (n : ℕ) : ℤ :=
  (A242401.P14578160612207848124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242407.P18030510277826149703

`eq[A053735(n), A089643(2*n)]`
-/

namespace A242407.P18030510277826149703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242407.P18030510277826149703

noncomputable section

/-- A242407: Numbers such that in ternary representation all pairs of adjacent digits have sums not greater than 2.

Offset 1, canonical program `A242407.P18030510277826149703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A242407 (n : ℕ) : ℤ :=
  (A242407.P18030510277826149703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A242407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242483.P4194193378462052771

`2*lt[n, A054024(A004277(n))]`
-/

namespace A242483.P4194193378462052771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242483.P4194193378462052771

noncomputable section

/-- A242483: Numbers n such that A242481(n) = ((n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n) / n = 2.

Offset 1, canonical program `A242483.P4194193378462052771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6516 terms. -/
def A242483 (n : ℕ) : ℤ :=
  (A242483.P4194193378462052771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6516 terms. -/
def A242483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242515.P17523326989586538796

`lt[12, A175851(12*(n+1))]`
-/

namespace A242515.P17523326989586538796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (12 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242515.P17523326989586538796

noncomputable section

/-- A242515: Numbers n such that 12n+1, 12n+5, 12n+7, 12n+11 are all composite numbers.

Offset 1, canonical program `A242515.P17523326989586538796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1204 terms. -/
def A242515 (n : ℕ) : ℤ :=
  (A242515.P17523326989586538796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1204 terms. -/
def A242515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242594.P11226976374991562602

`eq[4, A008952(2*n)]`
-/

namespace A242594.P11226976374991562602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242594.P11226976374991562602

noncomputable section

/-- A242594: Numbers k such that 4^k has initial digit 4.

Offset 1, canonical program `A242594.P11226976374991562602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. -/
def A242594 (n : ℕ) : ℤ :=
  (A242594.P11226976374991562602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. -/
def A242594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242962.P14535489765730197107

`∑{d}[n+1, #]%(A080572(n)+1)`
-/

namespace A242962.P14535489765730197107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A080572 n + 1)

end

end A242962.P14535489765730197107

noncomputable section

/-- A242962: a(1) = a(2) = 0; for n >= 3: a(n) = (n*(n+1)/2) mod antisigma(n) = A000217(n) mod A024816(n).

Offset 1, canonical program `A242962.P14535489765730197107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242962 (n : ℕ) : ℤ :=
  A242962.P14535489765730197107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243011.P10761689159614172034

`A238328(n+1)-A238702(n+1)`
-/

namespace A243011.P10761689159614172034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238328 (n + 1) - A238702 (n + 1)

end

end A243011.P10761689159614172034

noncomputable section

/-- A243011: Sum of the three largest parts in the partitions of 4n into 4 parts.

Offset 1, canonical program `A243011.P10761689159614172034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A238702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243011 (n : ℕ) : ℤ :=
  A243011.P10761689159614172034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A238702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243111.P6016306481035327470

`A000217(A057062(n+1))-A000040(n+1)`
-/

namespace A243111.P6016306481035327470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A057062 (n + 1)).toNat - A000040 (n + 1)

end

end A243111.P6016306481035327470

noncomputable section

/-- A243111: Difference between the smallest triangular number >= n-th prime and the n-th prime.

Offset 1, canonical program `A243111.P6016306481035327470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243111 (n : ℕ) : ℤ :=
  A243111.P6016306481035327470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243473.P145029483165858518

`A017665(n+1)-A017666(n+1)`
-/

namespace A243473.P145029483165858518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - A017666 (n + 1)

end

end A243473.P145029483165858518

noncomputable section

/-- A243473: a(n) = numerator(sigma(n)/n) - denominator(sigma(n)/n) where sigma(n) = sum of divisors of n.

Offset 1, canonical program `A243473.P145029483165858518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243473 (n : ℕ) : ℤ :=
  A243473.P145029483165858518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243987.P14044502209302201752

`A051731(n+1)+a(n-1)%A002260(n+1)` with `a(0)=1`
-/

namespace A243987.P14044502209302201752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051731 (n + 1) + Int.tmod (a (n - 1)) (A002260 (n + 1))

end

end A243987.P14044502209302201752

noncomputable section

/-- A243987: Triangle read by rows: T(n, k) is the number of divisors of n that are less than or equal to k for 1 <= k <= n.

Offset 1, canonical program `A243987.P14044502209302201752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243987 (n : ℕ) : ℤ :=
  A243987.P14044502209302201752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244050.P4388915496307742353

`4*A175254(n+1)`
-/

namespace A244050.P4388915496307742353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A175254 (n + 1)

end

end A244050.P4388915496307742353

noncomputable section

/-- A244050: Partial sums of A243980.

Offset 1, canonical program `A244050.P4388915496307742353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244050 (n : ℕ) : ℤ :=
  A244050.P4388915496307742353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244158.P16181830196420561079

`A028897(n)+A027870(A000196(n))`
-/

namespace A244158.P16181830196420561079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 n + A027870 (A000196 n).toNat

end

end A244158.P16181830196420561079

noncomputable section

/-- A244158: If n = Sum c_i * 10^i then a(n) = Sum c_i * Cat(i+1), where Cat(k) = A000108(k).

Offset 0, canonical program `A244158.P16181830196420561079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A244158 (n : ℕ) : ℤ :=
  A244158.P16181830196420561079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A244158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244160.P12813125502844365443

`∑[A010058(n)]`
-/

namespace A244160.P12813125502844365443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P12813125502844365443

noncomputable section

/-- A244160: a(0)=0, and for n >= 1, a(n) = the largest k such that k-th Catalan number <= n.

Offset 0, canonical program `A244160.P12813125502844365443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244160 (n : ℕ) : ℤ :=
  A244160.P12813125502844365443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244221.P4166625272978156220

`a(n-A081290(n))` with `a(0)=0, a(1)=1`
-/

namespace A244221.P4166625272978156220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - A081290 n).toNat

end

end A244221.P4166625272978156220

noncomputable section

/-- A244221: Parity of Greedy Catalan Base representation for n: a(n) = A014418(n) reduced modulo 2.

Offset 0, canonical program `A244221.P4166625272978156220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244221 (n : ℕ) : ℤ :=
  (A244221.P4166625272978156220.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244325.P7029042646841468854

`floor((∑[n]-A001065(n+1))/(n+1))`
-/

namespace A244325.P7029042646841468854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001065 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A244325.P7029042646841468854

noncomputable section

/-- A244325: a(n) = floor(antisigma(n) / n), where antisigma(n) = A024816(n) = the sum of the non-divisors of n that are between 1 and n.

Offset 1, canonical program `A244325.P7029042646841468854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244325 (n : ℕ) : ℤ :=
  A244325.P7029042646841468854.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244374.P963690707800537045

`p?[A104635(n+2)+A104635(n+1)+1]`
-/

namespace A244374.P963690707800537045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 2) + (A104635 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244374.P963690707800537045

noncomputable section

/-- A244374: Primes which are the arithmetic mean of two consecutive primes of the form 4n+3.

Offset 1, canonical program `A244374.P963690707800537045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 619 terms. -/
def A244374 (n : ℕ) : ℤ :=
  A244374.P963690707800537045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 619 terms. -/
def A244374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244734.P1874380478709244094

`(n+1)/gcd(n+1, A057944(n))`
-/

namespace A244734.P1874380478709244094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A057944 n) : ℚ)

end

end A244734.P1874380478709244094

noncomputable section

/-- A244734: Numerators of the triangle T(n,k) = (n*(n+1)/2 + k + 1)/(k+1) for n >= k >= 0.

Offset 0, canonical program `A244734.P1874380478709244094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244734.P1874380478709244094.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244736.P9268599895378486618

`eq[2, gcd(2, A039703(n+1))]+1`
-/

namespace A244736.P9268599895378486618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A039703 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A244736.P9268599895378486618

noncomputable section

/-- A244736: Numbers k such that (prime(k) mod 5) is even.

Offset 1, canonical program `A244736.P9268599895378486618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A244736 (n : ℕ) : ℤ :=
  (A244736.P9268599895378486618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A244736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244797.P7934935714290983183

`A032741(A040976(n+1))`
-/

namespace A244797.P7934935714290983183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A040976 (n + 1)).toNat

end

end A244797.P7934935714290983183

noncomputable section

/-- A244797: Number of moduli m such that (prime(n) mod m) = 2.

Offset 1, canonical program `A244797.P7934935714290983183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244797 (n : ℕ) : ℤ :=
  A244797.P7934935714290983183.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244887.P16582301542853436473

`A002457(n+2)-A002694(n+4)`
-/

namespace A244887.P16582301542853436473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 2) - A002694 (n + 4)

end

end A244887.P16582301542853436473

noncomputable section

/-- A244887: Third column of triangle in A234950.

Offset 2, canonical program `A244887.P16582301542853436473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A244887 (n : ℕ) : ℤ :=
  A244887.P16582301542853436473.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A244887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244911.P2421789843677533910

`A057145(n+2)-A002262(n)`
-/

namespace A244911.P2421789843677533910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - A002262 n

end

end A244911.P2421789843677533910

noncomputable section

/-- A244911: Table read by antidiagonals: T(n,k) = n*k + T(n-1,k) for n >=1, T(0,k) = 1.

Offset 0, canonical program `A244911.P2421789843677533910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244911 (n : ℕ) : ℤ :=
  A244911.P2421789843677533910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245111.P13739336468849869505

`A048993(n)*A097805(A245300(n))`
-/

namespace A245111.P13739336468849869505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A097805 (A245300 n).toNat

end

end A245111.P13739336468849869505

noncomputable section

/-- A245111: G.f.: A(x,y) = Sum_{n>=0} exp(-y/(1-n*x)) * y^n/(1-n*x)^n / n!.

Offset 0, canonical program `A245111.P13739336468849869505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A245111 (n : ℕ) : ℤ :=
  A245111.P13739336468849869505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A245111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245174.P17300894965390179754

`Δ[A006450(n+2)-A006450(n+1)]`
-/

namespace A245174.P17300894965390179754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P17300894965390179754

noncomputable section

/-- A245174: Second differences of A006450.

Offset 1, canonical program `A245174.P17300894965390179754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245174 (n : ℕ) : ℤ :=
  A245174.P17300894965390179754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245175.P15986975037316514887

`Δ[Δ[A038580(n+1)]]`
-/

namespace A245175.P15986975037316514887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245175.P15986975037316514887

noncomputable section

/-- A245175: Second differences of A038580.

Offset 1, canonical program `A245175.P15986975037316514887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A245175 (n : ℕ) : ℤ :=
  A245175.P15986975037316514887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A245175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245200.P9972553082105733129

`3*A286679(n+3)%A004139(n+1)`
-/

namespace A245200.P9972553082105733129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod (A286679 (n + 3)) (A004139 (n + 1))

end

end A245200.P9972553082105733129

noncomputable section

/-- A245200: Smallest positive solution to k == 0 mod 3 and k == 1 mod prime(n).

Offset 3, canonical program `A245200.P9972553082105733129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245200 (n : ℕ) : ℤ :=
  A245200.P9972553082105733129.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245232.P15192089048372292749

`A005900(A103982(n+1))`
-/

namespace A245232.P15192089048372292749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (A103982 (n + 1)).toNat

end

end A245232.P15192089048372292749

noncomputable section

/-- A245232: Semiprimes of the form (2*n^3+n)/3.

Offset 1, canonical program `A245232.P15192089048372292749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A245232 (n : ℕ) : ℤ :=
  A245232.P15192089048372292749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A245232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245484.P7320759544988298613

`A001001(n+1)-A064987(n+1)`
-/

namespace A245484.P7320759544988298613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001001 (n + 1) - A064987 (n + 1)

end

end A245484.P7320759544988298613

noncomputable section

/-- A245484: a(n) = Sum_{(d

Offset 1, canonical program `A245484.P7320759544988298613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245484 (n : ℕ) : ℤ :=
  A245484.P7320759544988298613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245508.P16525106307191820182

`2*ceil(sqrt(A111333(n+1)))²`
-/

namespace A245508.P16525106307191820182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt (A111333 (n + 1) : ℝ)⌉ ^ 2

end

end A245508.P16525106307191820182

noncomputable section

/-- A245508: Smallest double square (cf. A001105) greater than n-th prime.

Offset 1, canonical program `A245508.P16525106307191820182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245508 (n : ℕ) : ℤ :=
  A245508.P16525106307191820182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245550.P6354447121910343670

`A006046(floor(n/2))+sqrt(A177241(n))`
-/

namespace A245550.P6354447121910343670
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006046 ⌊(n : ℚ) / 2⌋.toNat : ℝ) + Real.sqrt (A177241 n : ℝ)

end

end A245550.P6354447121910343670

noncomputable section

/-- A245550: a(0)=0; for n >= 1, a(n) = f(n) - 2*f(floor((n-1)/2)), where f(n) = A006046(n).

Offset 0, canonical program `A245550.P6354447121910343670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A245550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245550.P6354447121910343670.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A245550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245650.P3892271656114421038

`p?[A245071(n+1)]`
-/

namespace A245650.P3892271656114421038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245650.P3892271656114421038

noncomputable section

/-- A245650: Primes in the sequence 12*n - prime(n), (A245071).

Offset 1, canonical program `A245650.P3892271656114421038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245650 (n : ℕ) : ℤ :=
  A245650.P3892271656114421038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246062.P4162383363487901360

`abs(A193618(n))`
-/

namespace A246062.P4162383363487901360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A193618 n|

end

end A246062.P4162383363487901360

noncomputable section

/-- A246062: G.f.: sqrt( (1 + sqrt(1+8*x)) / (1 + sqrt(1-8*x)) ).

Offset 0, canonical program `A246062.P4162383363487901360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A246062 (n : ℕ) : ℤ :=
  A246062.P4162383363487901360.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A246062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246306.P12951552392633180147

`abs(1-A246305(n+1))`
-/

namespace A246306.P12951552392633180147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A246305 (n + 1)|

end

end A246306.P12951552392633180147

noncomputable section

/-- A246306: Numbers k such that cos(k) > cos(k+1) > cos(k+2) > cos(k+3) < cos(k+4).

Offset 1, canonical program `A246306.P12951552392633180147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246306 (n : ℕ) : ℤ :=
  A246306.P12951552392633180147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246413.P8427678712717733605

`A246407(n+7)-11`
-/

namespace A246413.P8427678712717733605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 7) - 11

end

end A246413.P8427678712717733605

noncomputable section

/-- A246413: Positive integers k satisfying csc(k) > csc(k+1).

Offset 1, canonical program `A246413.P8427678712717733605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A246413 (n : ℕ) : ℤ :=
  A246413.P8427678712717733605.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A246413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246438.P3012299356465480649

`eq[0, A164349(n)]`
-/

namespace A246438.P3012299356465480649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246438.P3012299356465480649

noncomputable section

/-- A246438: Numbers m such that A164349(m) = 0.

Offset 1, canonical program `A246438.P3012299356465480649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246438 (n : ℕ) : ℤ :=
  (A246438.P3012299356465480649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246439.P44155868527142489

`lt[0, A164349(n)]`
-/

namespace A246439.P44155868527142489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246439.P44155868527142489

noncomputable section

/-- A246439: Numbers m such that A164349(m) = 1.

Offset 1, canonical program `A246439.P44155868527142489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5816 terms. -/
def A246439 (n : ℕ) : ℤ :=
  (A246439.P44155868527142489.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5816 terms. -/
def A246439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246447.P1059127038919390337

`(n+3)²-Δ[A118777(n+2)]`
-/

namespace A246447.P1059127038919390337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A246447.P1059127038919390337

noncomputable section

/-- A246447: The odd primes squared plus 1 and the composites squared minus 1.

Offset 1, canonical program `A246447.P1059127038919390337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A246447 (n : ℕ) : ℤ :=
  A246447.P1059127038919390337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A246447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246467.P12426944221142986197

`A026375(n)²`
-/

namespace A246467.P12426944221142986197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 n ^ 2

end

end A246467.P12426944221142986197

noncomputable section

/-- A246467: G.f.: 1 / AGM(1-5*x, sqrt((1-x)*(1-25*x))).

Offset 0, canonical program `A246467.P12426944221142986197`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246467 (n : ℕ) : ℤ :=
  A246467.P12426944221142986197.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246467.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246592.P8185262232204503921

`n-A053644(A038554(n))`
-/

namespace A246592.P8185262232204503921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053644 (A038554 n).toNat

end

end A246592.P8185262232204503921

noncomputable section

/-- A246592: Smallest number that can be obtained by swapping 2 adjacent bits in the binary expansion of n.

Offset 0, canonical program `A246592.P8185262232204503921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246592 (n : ℕ) : ℤ :=
  A246592.P8185262232204503921.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246594.P17130502543014025446

`A053644(A087734(n))+n`
-/

namespace A246594.P17130502543014025446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A087734 n).toNat + (n : ℤ)

end

end A246594.P17130502543014025446

noncomputable section

/-- A246594: a(n)=n for n <= 2; for n >= 3, a(n) = largest number that can be obtained by swapping two adjacent bits in the binary expansion of n.

Offset 0, canonical program `A246594.P17130502543014025446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A246594 (n : ℕ) : ℤ :=
  A246594.P17130502543014025446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A246594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246622.P10478257499552316779

`p?[A063114(n+1)]`
-/

namespace A246622.P10478257499552316779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246622.P10478257499552316779

noncomputable section

/-- A246622: Primes of the form n + product of nonzero digits of n, in order of their occurrence.

Offset 1, canonical program `A246622.P10478257499552316779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 784 terms. -/
def A246622 (n : ℕ) : ℤ :=
  A246622.P10478257499552316779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 784 terms. -/
def A246622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246692.P5270854730874171209

`record[gcd(n+1, A270388(2*(n+1)))]`
-/

namespace A246692.P5270854730874171209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A270388 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246692.P5270854730874171209

noncomputable section

/-- A246692: Numbers k such that k | A000129(k).

Offset 1, canonical program `A246692.P5270854730874171209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246692 (n : ℕ) : ℤ :=
  (A246692.P5270854730874171209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246694.P8696891911788978763

`A209278(A204164(n+1)+A161680(n))`
-/

namespace A246694.P8696891911788978763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A204164 (n + 1) + A161680 n).toNat

end

end A246694.P8696891911788978763

noncomputable section

/-- A246694: Triangle read by rows: T(n,k) = T(n,k-2) + 1 if n > 1 and 2 <= k <= n; T(0,0) = 1, T(1,0) = 1, T(1,1) = 2; if n > 1 is odd, then T(n,0) = T(n-1,n-2) + 1 and T(n,1) = T(n-1,n-1) + 1; if n > 1 is even, then T(n,0) = T(n-1,n-1) + 1 and T(n,1) = T(n-1,n-2) + 1.

Offset 0, canonical program `A246694.P8696891911788978763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A246694 (n : ℕ) : ℤ :=
  A246694.P8696891911788978763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A246694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246910.P10023558416160660707

`eq[3/2*A074400(n+1), A000203(A155085(n+1))]+1`
-/

namespace A246910.P10023558416160660707
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A074400 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A155085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A246910.P10023558416160660707

noncomputable section

/-- A246910: Numbers n such that sigma(n+sigma(n)) = 3*sigma(n).

Offset 1, canonical program `A246910.P10023558416160660707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A246910 (n : ℕ) : ℤ :=
  (A246910.P10023558416160660707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A246910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246934.P5973542768665934503

`ceil(sqrt(A112045(n+1)))²`
-/

namespace A246934.P5973542768665934503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A112045 (n + 1) : ℝ)⌉ ^ 2

end

end A246934.P5973542768665934503

noncomputable section

/-- A246934: The closest square to n-th prime.

Offset 1, canonical program `A246934.P5973542768665934503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246934 (n : ℕ) : ℤ :=
  A246934.P5973542768665934503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247287.P5555525899423498411

`∑[A097861(n)]`
-/

namespace A247287.P5555525899423498411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247287.P5555525899423498411

noncomputable section

/-- A247287: Number of weak peaks in all Motzkin paths of length n. A weak peak of a Motzkin path is a vertex on the top of a hump. A hump is an upstep followed by 0 or more flatsteps followed by a downstep. For example, the Motzkin path u*duu*h*h*dd, where u=(1,1), h=(1,0), d(1,-1), has 4 weak peaks (shown by the stars).

Offset 0, canonical program `A247287.P5555525899423498411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A247287 (n : ℕ) : ℤ :=
  A247287.P5555525899423498411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A247287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247301.P7412956680447402795

`floor((A247302(n+3)+A010054(n))/2)`
-/

namespace A247301.P7412956680447402795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247302 (n + 3) + A010054 n : ℚ) / 2⌋

end

end A247301.P7412956680447402795

noncomputable section

/-- A247301: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,0) to (n,k), where 0 >= k <= 2, consisting of segments given by the vectors (1,1), (2,1), (1,-1).

Offset 0, canonical program `A247301.P7412956680447402795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1216 terms. -/
def A247301 (n : ℕ) : ℤ :=
  A247301.P7412956680447402795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1216 terms. -/
def A247301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247420.P9000325431005934409

`2*A000201(A000201(A242094(n+1)))+n+1`
-/

namespace A247420.P9000325431005934409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000201 (A000201 (A242094 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A247420.P9000325431005934409

noncomputable section

/-- A247420: Complement of A247419.

Offset 1, canonical program `A247420.P9000325431005934409`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247420 (n : ℕ) : ℤ :=
  A247420.P9000325431005934409.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247425.P17381508495483219201

`A005206(A003259(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A247425.P17381508495483219201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003259 (n + 1)).toNat

end

end A247425.P17381508495483219201

noncomputable section

/-- A247425: A005206(A003259(n)).

Offset 1, canonical program `A247425.P17381508495483219201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247425 (n : ℕ) : ℤ :=
  A247425.P17381508495483219201.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247515.P5212930640307927296

`eq[1, A067614(n+1)]+1`
-/

namespace A247515.P5212930640307927296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247515.P5212930640307927296

noncomputable section

/-- A247515: Numbers k such that 2*floor(sqrt(prime(k))) < floor(2*sqrt(prime(k))).

Offset 1, canonical program `A247515.P5212930640307927296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A247515 (n : ℕ) : ℤ :=
  (A247515.P5212930640307927296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A247515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247617.P3615264077344713285

`A145979(n)-A246416(n)`
-/

namespace A247617.P3615264077344713285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 n - A246416 n

end

end A247617.P3615264077344713285

noncomputable section

/-- A247617: a(4n) = n + 1/2 - (-1)^n/2 + (-1)^n, a(2n+1) = 2*n + 5, a(4n+2) = 2*n + 3.

Offset 0, canonical program `A247617.P3615264077344713285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247617 (n : ℕ) : ℤ :=
  A247617.P3615264077344713285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247644.P317797350283830947

`A140751(n+1)*A140751(n)`
-/

namespace A247644.P317797350283830947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140751 (n + 1) * A140751 n

end

end A247644.P317797350283830947

noncomputable section

/-- A247644: Triangle formed from the odd-numbered rows of A088855.

Offset 1, canonical program `A247644.P317797350283830947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A247644 (n : ℕ) : ℤ :=
  A247644.P317797350283830947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A247644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247972.P1506214924061998001

`A247971(a(n-1)+5)+n` with `a(0)=5`
-/

namespace A247972.P1506214924061998001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A247971 (a (n - 1) + 5).toNat + (n : ℤ)

end

end A247972.P1506214924061998001

noncomputable section

/-- A247972: Numbers k such that A247971(k+1) = A247971(k).

Offset 1, canonical program `A247972.P1506214924061998001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A247972 (n : ℕ) : ℤ :=
  A247972.P1506214924061998001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A247972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247984.P15958932547498070819

`A307768(n+1)+A007877(n+1)*A063886(n+1)`
-/

namespace A247984.P15958932547498070819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307768 (n + 1) + A007877 (n + 1) * A063886 (n + 1)

end

end A247984.P15958932547498070819

noncomputable section

/-- A247984: Constant terms of congruences derived from a permutation polynomial motivated by generalized quadrangles.

Offset 1, canonical program `A247984.P15958932547498070819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A247984 (n : ℕ) : ℤ :=
  A247984.P15958932547498070819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A247984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247987.P17329123447741709562

`comp[A247986(n+1)-1]+1`
-/

namespace A247987.P17329123447741709562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247986 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247987.P17329123447741709562

noncomputable section

/-- A247987: Numbers k such that A247985(k+1) - A247985(k) = 3.

Offset 1, canonical program `A247987.P17329123447741709562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247987 (n : ℕ) : ℤ :=
  (A247987.P17329123447741709562.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248126.P4372670379426275761

`A338754((n+1)²)`
-/

namespace A248126.P4372670379426275761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 ((n + 1) ^ 2)

end

end A248126.P4372670379426275761

noncomputable section

/-- A248126: a(n) = n^2 with each digit repeated.

Offset 1, canonical program `A248126.P4372670379426275761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A248126 (n : ℕ) : ℤ :=
  A248126.P4372670379426275761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A248126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248150.P14883232548873335720

`lt[A105824(n+1), 1]+1`
-/

namespace A248150.P14883232548873335720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105824 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A248150.P14883232548873335720

noncomputable section

/-- A248150: Numbers whose sum of divisors (A000203) is divisible by 4.

Offset 1, canonical program `A248150.P14883232548873335720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248150 (n : ℕ) : ℤ :=
  (A248150.P14883232548873335720.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248184.P16797326836110857965

`record[n+1-A248183(n+1)%A248183(n+2)]`
-/

namespace A248184.P16797326836110857965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A248183 (n + 1)) (A248183 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248184.P16797326836110857965

noncomputable section

/-- A248184: Numbers k such that A248183(k+1) = A248183(k).

Offset 1, canonical program `A248184.P16797326836110857965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248184 (n : ℕ) : ℤ :=
  A248184.P16797326836110857965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248368.P16657822915587106588

`p?[A248221(n+1)]`
-/

namespace A248368.P16657822915587106588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248368.P16657822915587106588

noncomputable section

/-- A248368: Primes p such that 52*p + 1 is prime.

Offset 1, canonical program `A248368.P16657822915587106588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 670 terms. -/
def A248368 (n : ℕ) : ℤ :=
  A248368.P16657822915587106588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 670 terms. -/
def A248368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248502.P6195159982500652258

`comp[A248501(n+1)-1]+1`
-/

namespace A248502.P6195159982500652258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248501 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248502.P6195159982500652258

noncomputable section

/-- A248502: Numbers m that are not coprime to floor(m/16).

Offset 1, canonical program `A248502.P6195159982500652258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248502 (n : ℕ) : ℤ :=
  (A248502.P6195159982500652258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248806.P12635437797534997553

`Δ[eq[1, A000002(n+1)]]-1`
-/

namespace A248806.P12635437797534997553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A248806.P12635437797534997553

noncomputable section

/-- A248806: Number of 2's separating successive 1's in the Kolakoski sequence A000002.

Offset 1, canonical program `A248806.P12635437797534997553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. -/
def A248806 (n : ℕ) : ℤ :=
  A248806.P12635437797534997553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. -/
def A248806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248910.P11530105690920292692

`record[A054895(A234959(n+1))+1+n]`
-/

namespace A248910.P11530105690920292692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (A234959 (n + 1)).toNat + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248910.P11530105690920292692

noncomputable section

/-- A248910: Numbers with no zeros in base-6 representation.

Offset 1, canonical program `A248910.P11530105690920292692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A248910 (n : ℕ) : ℤ :=
  A248910.P11530105690920292692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A248910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248962.P12892924221916097292

`A000720(A250621(n+1)+A000007(n))`
-/

namespace A248962.P12892924221916097292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A250621 (n + 1) + A000007 n).toNat

end

end A248962.P12892924221916097292

noncomputable section

/-- A248962: a(n) = PrimePi(log(prime(n))*n).

Offset 1, canonical program `A248962.P12892924221916097292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8761 terms. -/
def A248962 (n : ℕ) : ℤ :=
  A248962.P12892924221916097292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8761 terms. -/
def A248962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249036.P2673849611643492835

`2-A078881(a(n-1))+n` with `a(0)=1`
-/

namespace A249036.P2673849611643492835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - A078881 (a (n - 1)).toNat + (n : ℤ)

end

end A249036.P2673849611643492835

noncomputable section

/-- A249036: a(1)=1, a(2)=2; thereafter a(n) = a(n-1-(number of even terms so far)) + a(n-1-(number of odd terms so far)).

Offset 1, canonical program `A249036.P2673849611643492835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249036 (n : ℕ) : ℤ :=
  A249036.P2673849611643492835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249164.P13270305561893433312

`2*A245783(n+1)-1`
-/

namespace A249164.P13270305561893433312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245783 (n + 1) - 1

end

end A249164.P13270305561893433312

noncomputable section

/-- A249164: Numbers n such that the triangular number T(n) is equal to the sum of the pentagonal numbers P(m) and P(m+1) for some m.

Offset 1, canonical program `A249164.P13270305561893433312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A249164 (n : ℕ) : ℤ :=
  A249164.P13270305561893433312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A249164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249308.P11744014540350760347

`2^n*A128014(n)`
-/

namespace A249308.P11744014540350760347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A128014 n

end

end A249308.P11744014540350760347

noncomputable section

/-- A249308: Central terms of triangle A249307.

Offset 0, canonical program `A249308.P11744014540350760347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A249308 (n : ℕ) : ℤ :=
  A249308.P11744014540350760347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A249308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249343.P11021096354197649042

`(n+1)*A004128(n)-∑[A346502(n)]`
-/

namespace A249343.P11021096354197649042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004128 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249343.P11021096354197649042

noncomputable section

/-- A249343: The exponent of the highest power of 3 dividing the product of the elements on the n-th row of Pascal's triangle (A001142(n)).

Offset 0, canonical program `A249343.P11021096354197649042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249343 (n : ℕ) : ℤ :=
  A249343.P11021096354197649042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249670.P6555047459186973760

`A017665(n+1)*A017666(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249670.P6555047459186973760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) * A017666 (n + 1)

end

end A249670.P6555047459186973760

noncomputable section

/-- A249670: a(n) = A017665(n)*A017666(n).

Offset 1, canonical program `A249670.P6555047459186973760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249670 (n : ℕ) : ℤ :=
  A249670.P6555047459186973760.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249719.P10354154330167799316

`eq[9, A060011(n)]`
-/

namespace A249719.P10354154330167799316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249719.P10354154330167799316

noncomputable section

/-- A249719: Complement of A051382.

Offset 1, canonical program `A249719.P10354154330167799316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8464 terms. -/
def A249719 (n : ℕ) : ℤ :=
  (A249719.P10354154330167799316.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8464 terms. -/
def A249719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249757.P11501670255758349847

`2*A249756(n)-A007318(n)`
-/

namespace A249757.P11501670255758349847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249756 n - A007318 n

end

end A249757.P11501670255758349847

noncomputable section

/-- A249757: Triangular array of coefficients of polynomials p(n,x) = (x + 1)*p(n-1,x) + 2*n*x, p(0,x) = 1.

Offset 0, canonical program `A249757.P11501670255758349847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249757 (n : ℕ) : ℤ :=
  A249757.P11501670255758349847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249866.P2760361692551330954

`and(A054431(n+1), A073216(n))`
-/

namespace A249866.P2760361692551330954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A073216 n)

end

end A249866.P2760361692551330954

noncomputable section

/-- A249866: Characteristic triangle for primitive Pythagorean triples.

Offset 2, canonical program `A249866.P2760361692551330954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249866 (n : ℕ) : ℤ :=
  A249866.P2760361692551330954.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250155.P12803802932175960487

`(n+2)^7-A250060(n+1)`
-/

namespace A250155.P12803802932175960487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 7 : ℤ) - A250060 (n + 1)

end

end A250155.P12803802932175960487

noncomputable section

/-- A250155: Number of length 1+6 0..n arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

Offset 1, canonical program `A250155.P12803802932175960487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250155 (n : ℕ) : ℤ :=
  A250155.P12803802932175960487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250497.P5629535852931321434

`A164406(n+3)^3`
-/

namespace A250497.P5629535852931321434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164406 (n + 3) ^ 3

end

end A250497.P5629535852931321434

noncomputable section

/-- A250497: Number of (n+2)X(1+2) 0..1 arrays with nondecreasing medians of every three consecutive values in every row and column.

Offset 1, canonical program `A250497.P5629535852931321434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A250497 (n : ℕ) : ℤ :=
  A250497.P5629535852931321434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A250497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251634.P17680182308673229941

`A248810(C(n, n²)+n-A002024(n+1))`
-/

namespace A251634.P17680182308673229941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248810 ((Nat.choose n (n ^ 2) + n : ℤ) - A002024 (n + 1)).toNat

end

end A251634.P17680182308673229941

noncomputable section

/-- A251634: Numerators of inverse Riordan triangle of Riordan triangle A029635. Riordan (1/(1-x), x/(1+2*x)). Triangle read by rows for 0 <= m <= n.

Offset 0, canonical program `A251634.P17680182308673229941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251634 (n : ℕ) : ℤ :=
  A251634.P17680182308673229941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251707.P16439731495366822498

`A251706(n+1)-A001592(n)`
-/

namespace A251707.P16439731495366822498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 (n + 1) - A001592 n

end

end A251707.P16439731495366822498

noncomputable section

/-- A251707: 6-step Fibonacci sequence starting with (0,0,0,1,0,0).

Offset 0, canonical program `A251707.P16439731495366822498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251707 (n : ℕ) : ℤ :=
  A251707.P16439731495366822498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251711.P4002084624491784275

`A251710(n+1)-A122189(n)`
-/

namespace A251711.P4002084624491784275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251710 (n + 1) - A122189 n

end

end A251711.P4002084624491784275

noncomputable section

/-- A251711: 7-step Fibonacci sequence starting with (0,0,0,0,1,0,0).

Offset 0, canonical program `A251711.P4002084624491784275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251711 (n : ℕ) : ℤ :=
  A251711.P4002084624491784275.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251741.P8014523365454003641

`A251740(n+1)-A079262(n)`
-/

namespace A251741.P8014523365454003641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251740 (n + 1) - A079262 n

end

end A251741.P8014523365454003641

noncomputable section

/-- A251741: 8-step Fibonacci sequence starting with 0,0,0,0,1,0,0,0.

Offset 0, canonical program `A251741.P8014523365454003641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251741 (n : ℕ) : ℤ :=
  A251741.P8014523365454003641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251746.P9920030553128613572

`A104144(n+1)-A104144(n)`
-/

namespace A251746.P9920030553128613572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (n + 1) - A104144 n

end

end A251746.P9920030553128613572

noncomputable section

/-- A251746: 9-step Fibonacci sequence starting with 0,0,0,0,0,0,0,1,0.

Offset 0, canonical program `A251746.P9920030553128613572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A251746 (n : ℕ) : ℤ :=
  A251746.P9920030553128613572.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A251746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A251747.P15525027116418191893

`A104144(n+2)-A104144(n+1)-A104144(n)`
-/

namespace A251747.P15525027116418191893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (n + 2) - A104144 (n + 1) - A104144 n

end

end A251747.P15525027116418191893

noncomputable section

/-- A251747: 9-step Fibonacci sequence starting with 0,0,0,0,0,0,1,0,0.

Offset 0, canonical program `A251747.P15525027116418191893`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A251747 (n : ℕ) : ℤ :=
  A251747.P15525027116418191893.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A251747.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252055.P14347574890606999635

`∑{d}[n+1, A003849(#-1)*A005614((n+1)/#-1)]`
-/

namespace A252055.P14347574890606999635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003849 (d - 1) * A005614 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A252055.P14347574890606999635

noncomputable section

/-- A252055: Number of products A000201(i)*A001950(j) = n.

Offset 1, canonical program `A252055.P14347574890606999635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A252055 (n : ℕ) : ℤ :=
  A252055.P14347574890606999635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A252055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252651.P4540024866136707722

`A046913(2*n+1)/A061347(n+1)*A061347(n+2)`
-/

namespace A252651.P4540024866136707722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046913 (2 * n + 1) : ℚ) / (A061347 (n + 1) : ℚ) * (A061347 (n + 2) : ℚ)

end

end A252651.P4540024866136707722

noncomputable section

/-- A252651: Expansion of q^(-1/2) * (eta(q) * eta(q^2) * eta(q^6) / eta(q^3))^2 in powers of q.

Offset 0, canonical program `A252651.P4540024866136707722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A252651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A252651.P4540024866136707722.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A252651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252704.P14111611536729371917

`A337959(n+1)+A337960(n+1)`
-/

namespace A252704.P14111611536729371917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337959 (n + 1) + A337960 (n + 1)

end

end A252704.P14111611536729371917

noncomputable section

/-- A252704: The number of ways to color the faces of a regular icosahedron with n colors, counting mirror images as one.

Offset 1, canonical program `A252704.P14111611536729371917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252704 (n : ℕ) : ℤ :=
  A252704.P14111611536729371917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252871.P6032531055172696839

`A252815(n+1)-∑[C(n+3, 2)]`
-/

namespace A252871.P6032531055172696839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A252871.P6032531055172696839

noncomputable section

/-- A252871: Number of nX3 nonnegative integer arrays with upper left 0 and lower right n+3-4 and value increasing by 0 or 1 with every step right or down.

Offset 1, canonical program `A252871.P6032531055172696839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252871 (n : ℕ) : ℤ :=
  A252871.P6032531055172696839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253106.P15381254514479886503

`∪[A001748(n+1), A100484(n+1)]`
-/

namespace A253106.P15381254514479886503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253106.P15381254514479886503

noncomputable section

/-- A253106: Semiprimes with smallest factor <= 3.

Offset 1, canonical program `A253106.P15381254514479886503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253106 (n : ℕ) : ℤ :=
  (A253106.P15381254514479886503.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253169.P3897809180562102722

`A063656(∑[n]*A010054(n+1)+n+1)`
-/

namespace A253169.P3897809180562102722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010054 (n + 1) + (n + 1 : ℤ)).toNat

end

end A253169.P3897809180562102722

noncomputable section

/-- A253169: Smallest m such that A256188(m) = n.

Offset 1, canonical program `A253169.P3897809180562102722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A253169 (n : ℕ) : ℤ :=
  A253169.P3897809180562102722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A253169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253180.P12215385652287182854

`A048993(n)*A168256(n)`
-/

namespace A253180.P12215385652287182854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A168256 n

end

end A253180.P12215385652287182854

noncomputable section

/-- A253180: Number T(n,k) of 2n-length strings of balanced parentheses of exactly k different types that are introduced in ascending order; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

Offset 0, canonical program `A253180.P12215385652287182854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A253180 (n : ℕ) : ℤ :=
  A253180.P12215385652287182854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A253180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253251.P7156480629485270913

`A052038(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A253251.P7156480629485270913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052038 (a (n - 1)).toNat + a (n - 1)

end

end A253251.P7156480629485270913

noncomputable section

/-- A253251: a(1) = 1, and for n > 0, a(n+1) = a(n) + floor(10^k/a(n)), where k is the least integer such that 10^k >= a(n).

Offset 1, canonical program `A253251.P7156480629485270913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7106 terms. -/
def A253251 (n : ℕ) : ℤ :=
  A253251.P7156480629485270913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7106 terms. -/
def A253251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253414.P8812429951265453479

`A073089(2*n+3)-A073089(A014681(n+1))`
-/

namespace A253414.P8812429951265453479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (2 * n + 3) - A073089 (A014681 (n + 1)).toNat

end

end A253414.P8812429951265453479

noncomputable section

/-- A253414: G.f. satisfies (1+x^2)*g(x) = 1 + x*g(x^2).

Offset 0, canonical program `A253414.P8812429951265453479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253414 (n : ℕ) : ℤ :=
  A253414.P8812429951265453479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253780.P12171033837205224752

`A253779(n+1)^3`
-/

namespace A253780.P12171033837205224752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253779 (n + 1) ^ 3

end

end A253780.P12171033837205224752

noncomputable section

/-- A253780: Cubes c^3 that are equal to the sum of m^3 consecutive cubes starting at b^3 with b (A253778) for m^3 not divisible by 3 (A118719).

Offset 1, canonical program `A253780.P12171033837205224752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253780 (n : ℕ) : ℤ :=
  A253780.P12171033837205224752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253969.P1574330651743664428

`A000040(eq[2, A006094(n+2)%3]+2)`
-/

namespace A253969.P1574330651743664428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A253969.P1574330651743664428

noncomputable section

/-- A253969: Primes p such that p + nextprime(p) is divisible by 6.

Offset 1, canonical program `A253969.P1574330651743664428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5979 terms. -/
def A253969 (n : ℕ) : ℤ :=
  A253969.P1574330651743664428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5979 terms. -/
def A253969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254111.P14386116396176993841

`A254110(n+1)+1`
-/

namespace A254111.P14386116396176993841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254110 (n + 1) + 1

end

end A254111.P14386116396176993841

noncomputable section

/-- A254111: One-based column index of n in A254105: If A234017(n) = 0, then a(n) = 1, otherwise a(n) = 1 + a(A234017(n)).

Offset 1, canonical program `A254111.P14386116396176993841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A254111 (n : ℕ) : ℤ :=
  A254111.P14386116396176993841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A254111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254128.P15982088991823615533

`2*A094536(abs(1-n))`
-/

namespace A254128.P15982088991823615533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094536 |1 - (n : ℤ)|.toNat

end

end A254128.P15982088991823615533

noncomputable section

/-- A254128: Number of binary strings of length n that begin with an odd-length palindrome.

Offset 0, canonical program `A254128.P15982088991823615533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A254128 (n : ℕ) : ℤ :=
  A254128.P15982088991823615533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A254128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254146.P6523098754647194470

`A254145(n)+A001555(n)`
-/

namespace A254146.P6523098754647194470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254145 n + A001555 n

end

end A254146.P6523098754647194470

noncomputable section

/-- A254146: a(n) = 1*8^n + 2*7^n + 3*6^n + 4*5^n + 5*4^n + 6*3^n + 7*2^n + 8*1^n.

Offset 0, canonical program `A254146.P6523098754647194470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A254146 (n : ℕ) : ℤ :=
  A254146.P6523098754647194470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A254146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254399.P2182745436888946370

`A220362(n+1)-A164267(n)`
-/

namespace A254399.P2182745436888946370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220362 (n + 1) - A164267 n

end

end A254399.P2182745436888946370

noncomputable section

/-- A254399: A Fibonacci sum: a(n) = Sum_{j=0..n-1} F(j)^2*F(2*n-j), in which the F's are the Fibonacci numbers.

Offset 1, canonical program `A254399.P2182745436888946370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A254399 (n : ℕ) : ℤ :=
  A254399.P2182745436888946370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A254399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254464.P2241084014738837999

`A254463(n)+A254145(n)`
-/

namespace A254464.P2241084014738837999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254463 n + A254145 n

end

end A254464.P2241084014738837999

noncomputable section

/-- A254464: a(n) = 21*2^n + 10*4^n + 15*3^n + 3*6^n + 6*5^n + 7^n + 28.

Offset 0, canonical program `A254464.P2241084014738837999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254464 (n : ℕ) : ℤ :=
  A254464.P2241084014738837999.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254671.P17194479350893143433

`lt[1, A296955(n+1)-2]`
-/

namespace A254671.P17194479350893143433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A254671.P17194479350893143433

noncomputable section

/-- A254671: Numbers that can be represented as x*y + x + y, where x >= y > 1.

Offset 1, canonical program `A254671.P17194479350893143433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254671 (n : ℕ) : ℤ :=
  (A254671.P17194479350893143433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254674.P12644809012096564832

`∑[A001090(n)]+A199336(n+1)²`
-/

namespace A254674.P12644809012096564832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A199336 (n + 1) ^ 2

end

end A254674.P12644809012096564832

noncomputable section

/-- A254674: Indices of heptagonal numbers (A000566) which are also centered triangular numbers (A005448).

Offset 1, canonical program `A254674.P12644809012096564832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A254674 (n : ℕ) : ℤ :=
  A254674.P12644809012096564832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A254674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255177.P6164696374415755256

`Δ[Δ[A001015(n-A057427(n))]]`
-/

namespace A255177.P6164696374415755256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 ((n : ℤ) - A057427 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255177.P6164696374415755256

noncomputable section

/-- A255177: Second differences of seventh powers (A001015).

Offset 0, canonical program `A255177.P6164696374415755256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A255177 (n : ℕ) : ℤ :=
  A255177.P6164696374415755256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A255177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255224.P15824476764255298837

`A255223(n+1)+12`
-/

namespace A255224.P15824476764255298837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255223 (n + 1) + 12

end

end A255224.P15824476764255298837

noncomputable section

/-- A255224: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255224.P15824476764255298837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255224 (n : ℕ) : ℤ :=
  A255224.P15824476764255298837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255225.P10298454783296627816

`A255223(n+1)+30`
-/

namespace A255225.P10298454783296627816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255223 (n + 1) + 30

end

end A255225.P10298454783296627816

noncomputable section

/-- A255225: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255225.P10298454783296627816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255225 (n : ℕ) : ℤ :=
  A255225.P10298454783296627816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255491.P15620683629542724992

`comp[A181732(n+1)-1]+1`
-/

namespace A255491.P15620683629542724992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181732 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A255491.P15620683629542724992

noncomputable section

/-- A255491: Numbers k such that 90*k+1 is composite.

Offset 1, canonical program `A255491.P15620683629542724992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255491 (n : ℕ) : ℤ :=
  (A255491.P15620683629542724992.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255527.P13612266625817391283

`A127739(A065033(n))+n`
-/

namespace A255527.P13612266625817391283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A065033 n).toNat + (n : ℤ)

end

end A255527.P13612266625817391283

noncomputable section

/-- A255527: Where records occur in A255437.

Offset 1, canonical program `A255527.P13612266625817391283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255527 (n : ℕ) : ℤ :=
  A255527.P13612266625817391283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255648.P2204606610145785971

`abs(A112848(n+1))`
-/

namespace A255648.P2204606610145785971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112848 (n + 1)|

end

end A255648.P2204606610145785971

noncomputable section

/-- A255648: Expansion of (a(q) + a(q^2) + a(q^3) + a(q^6) - 4) / 6 in powers of q where a() is a cubic AGM theta function.

Offset 1, canonical program `A255648.P2204606610145785971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255648 (n : ℕ) : ℤ :=
  A255648.P2204606610145785971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255743.P1815308521634170027

`A003951(A000120(n))`
-/

namespace A255743.P1815308521634170027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 (A000120 n).toNat

end

end A255743.P1815308521634170027

noncomputable section

/-- A255743: a(1) = 1; for n > 1, a(n) = 9*8^{A000120(n-1)-1}.

Offset 1, canonical program `A255743.P1815308521634170027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255743 (n : ℕ) : ℤ :=
  A255743.P1815308521634170027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255744.P326173307851122901

`A003952(A000120(n))`
-/

namespace A255744.P326173307851122901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003952 (A000120 n).toNat

end

end A255744.P326173307851122901

noncomputable section

/-- A255744: a(1) = 1; for n > 1, a(n) = 10*9^(A000120(n-1)-1).

Offset 1, canonical program `A255744.P326173307851122901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255744 (n : ℕ) : ℤ :=
  A255744.P326173307851122901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255766.P5457253108334879080

`∑[A003953(A000120(n))]`
-/

namespace A255766.P5457253108334879080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003953 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255766.P5457253108334879080

noncomputable section

/-- A255766: Partial sums of A255745.

Offset 1, canonical program `A255766.P5457253108334879080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255766 (n : ℕ) : ℤ :=
  A255766.P5457253108334879080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255812.P10331550004199229261

`A009998(n)/A152656(n)*A119502(n)`
-/

namespace A255812.P10331550004199229261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n : ℚ) / (A152656 n : ℚ) * (A119502 n : ℚ)

end

end A255812.P10331550004199229261

noncomputable section

/-- A255812: Rectangular array: row n gives the denominators in the positive convolutory n-th root of (1,1,1,...).

Offset 1, canonical program `A255812.P10331550004199229261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A255812 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A255812.P10331550004199229261.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A255812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255977.P171322725944610092

`A054347(n)-((n+1)²-3*(n+1))/2`
-/

namespace A255977.P171322725944610092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054347 n : ℚ) - (((n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) : ℚ) / 2

end

end A255977.P171322725944610092

noncomputable section

/-- A255977: The number of numbers j+k*r <= n, where r = golden ratio and j and k are nonnegative integers.

Offset 1, canonical program `A255977.P171322725944610092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255977 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A255977.P171322725944610092.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256061.P4374303968947799052

`A131689(n)*A168256(n)`
-/

namespace A256061.P4374303968947799052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n * A168256 n

end

end A256061.P4374303968947799052

noncomputable section

/-- A256061: Number T(n,k) of 2n-length strings of balanced parentheses of exactly k different types; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

Offset 0, canonical program `A256061.P4374303968947799052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. -/
def A256061 (n : ℕ) : ℤ :=
  A256061.P4374303968947799052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. -/
def A256061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256095.P12103393017234258254

`gcd(A049780(n), A057944(n))`
-/

namespace A256095.P12103393017234258254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049780 n) (A057944 n)

end

end A256095.P12103393017234258254

noncomputable section

/-- A256095: Triangle of greatest common divisors of two triangular numbers (A000217).

Offset 0, canonical program `A256095.P12103393017234258254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256095 (n : ℕ) : ℤ :=
  (A256095.P12103393017234258254.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256313.P3101194887776980855

`A256524(n)-A077043(n+1)`
-/

namespace A256313.P3101194887776980855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256524 n - A077043 (n + 1)

end

end A256313.P3101194887776980855

noncomputable section

/-- A256313: Number of partitions of 3n into exactly 4 parts.

Offset 0, canonical program `A256313.P3101194887776980855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256313 (n : ℕ) : ℤ :=
  A256313.P3101194887776980855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256540.P17379518847437446653

`A001402(4*n)`
-/

namespace A256540.P17379518847437446653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (4 * n)

end

end A256540.P17379518847437446653

noncomputable section

/-- A256540: Number of partitions of 4n into at most 6 parts.

Offset 0, canonical program `A256540.P17379518847437446653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256540 (n : ℕ) : ℤ :=
  A256540.P17379518847437446653.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256540.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256737.P6811670045123415095

`A078584(n+1)-1`
-/

namespace A256737.P6811670045123415095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (n + 1) - 1

end

end A256737.P6811670045123415095

noncomputable section

/-- A256737: Number of composites lying between successive pairs of primes, beginning with pair (2,3). Bisection of A046933.

Offset 1, canonical program `A256737.P6811670045123415095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256737 (n : ℕ) : ℤ :=
  A256737.P6811670045123415095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256764.P16508789042629990084

`2^(n+3)*A204032(n+2)`
-/

namespace A256764.P16508789042629990084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) * A204032 (n + 2)

end

end A256764.P16508789042629990084

noncomputable section

/-- A256764: Number of (n+2)X(1+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

Offset 1, canonical program `A256764.P16508789042629990084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A256764 (n : ℕ) : ℤ :=
  A256764.P16508789042629990084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A256764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256765.P9408415703290799051

`A204032(n+2)²`
-/

namespace A256765.P9408415703290799051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204032 (n + 2) ^ 2

end

end A256765.P9408415703290799051

noncomputable section

/-- A256765: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

Offset 1, canonical program `A256765.P9408415703290799051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A256765 (n : ℕ) : ℤ :=
  A256765.P9408415703290799051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A256765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256966.P7229463913405472594

`∑[A095791(n)]+n`
-/

namespace A256966.P7229463913405472594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A256966.P7229463913405472594

noncomputable section

/-- A256966: Partial sums of A072649.

Offset 1, canonical program `A256966.P7229463913405472594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256966 (n : ℕ) : ℤ :=
  A256966.P7229463913405472594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257089.P3849951302181853917

`A007949(A256689(n+1))`
-/

namespace A257089.P3849951302181853917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A256689 (n + 1)).toNat

end

end A257089.P3849951302181853917

noncomputable section

/-- A257089: a(n) = log_3 (A256689(n)).

Offset 1, canonical program `A257089.P3849951302181853917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257089 (n : ℕ) : ℤ :=
  A257089.P3849951302181853917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257090.P18330022939788008876

`log2(A256691(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257090.P18330022939788008876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A256691 (n + 1) : ℝ)

end

end A257090.P18330022939788008876

noncomputable section

/-- A257090: a(n) = log_2 (A256691(n)).

Offset 1, canonical program `A257090.P18330022939788008876`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A257090.P18330022939788008876.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257213.P15189177021721227426

`A259361(n)+1+floor(sqrt(A232091(n+1)-1-n+A079813(n+1))+A079813(n+1)/2)`
-/

namespace A257213.P15189177021721227426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 n + 1 + ⌊Real.sqrt (A232091 (n + 1) - 1 - (n : ℤ) + A079813 (n + 1) : ℝ) + ((A079813 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A257213.P15189177021721227426

noncomputable section

/-- A257213: Least d>0 such that floor(n/d) = floor(n/(d+1)).

Offset 0, canonical program `A257213.P15189177021721227426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257213 (n : ℕ) : ℤ :=
  A257213.P15189177021721227426.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257213.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257464.P12698508547421429426

`∑[A083709(n)]`
-/

namespace A257464.P12698508547421429426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257464.P12698508547421429426

noncomputable section

/-- A257464: Number of factorizations of m^n into 3 factors, where m is a product of exactly 3 distinct primes and each factor is a product of n primes (counted with multiplicity).

Offset 0, canonical program `A257464.P12698508547421429426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257464 (n : ℕ) : ℤ :=
  A257464.P12698508547421429426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257531.P7062776360316150328

`A063524(A062173(n+1))`
-/

namespace A257531.P7062776360316150328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A062173 (n + 1)).toNat

end

end A257531.P7062776360316150328

noncomputable section

/-- A257531: If 2^(n-1) mod n = 1, then 1 else 0.

Offset 1, canonical program `A257531.P7062776360316150328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257531 (n : ℕ) : ℤ :=
  A257531.P7062776360316150328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257612.P2032820488222380078

`A060187(n+1)*A137688(n)`
-/

namespace A257612.P2032820488222380078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) * A137688 n

end

end A257612.P2032820488222380078

noncomputable section

/-- A257612: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 4*x + 2.

Offset 0, canonical program `A257612.P2032820488222380078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1454 terms. -/
def A257612 (n : ℕ) : ℤ :=
  A257612.P2032820488222380078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1454 terms. -/
def A257612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257616.P7186092579697854524

`A137688(n)*A142458(n+1)`
-/

namespace A257616.P7186092579697854524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n * A142458 (n + 1)

end

end A257616.P7186092579697854524

noncomputable section

/-- A257616: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 6*x + 2.

Offset 0, canonical program `A257616.P7186092579697854524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1294 terms. -/
def A257616 (n : ℕ) : ℤ :=
  A257616.P7186092579697854524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1294 terms. -/
def A257616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257618.P2906390378512934072

`A137688(n)*A142459(n+1)`
-/

namespace A257618.P2906390378512934072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n * A142459 (n + 1)

end

end A257618.P2906390378512934072

noncomputable section

/-- A257618: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 8*x + 2.

Offset 0, canonical program `A257618.P2906390378512934072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A257618 (n : ℕ) : ℤ :=
  A257618.P2906390378512934072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A257618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257931.P9957961478944527783

`A128834(n)*A259042(n)`
-/

namespace A257931.P9957961478944527783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n * A259042 n

end

end A257931.P9957961478944527783

noncomputable section

/-- A257931: Period 24 sequence [0, 1, 1, 0, -2, -1, 0, 1, 0, 0, -1, -1, 0, 1, 1, 0, 0, -1, 0, 1, 2, 0, -1, -1].

Offset 0, canonical program `A257931.P9957961478944527783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257931 (n : ℕ) : ℤ :=
  A257931.P9957961478944527783.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258316.P5658510745853391097

`A020706(A025581(n))+A001911(A002260(n+1))`
-/

namespace A258316.P5658510745853391097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (A025581 n).toNat + A001911 (A002260 (n + 1)).toNat

end

end A258316.P5658510745853391097

noncomputable section

/-- A258316: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 or 0011.

Offset 1, canonical program `A258316.P5658510745853391097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1104 terms. -/
def A258316 (n : ℕ) : ℤ :=
  A258316.P5658510745853391097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1104 terms. -/
def A258316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258415.P4473213064253829696

`A151575(A004736(n+1))+A054582(n)`
-/

namespace A258415.P4473213064253829696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 (A004736 (n + 1)).toNat + A054582 n

end

end A258415.P4473213064253829696

noncomputable section

/-- A258415: Array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = (2 + 2^(n-1)*(6*k - 3 + 2*(-1)^n))/3, n,k >= 1.

Offset 1, canonical program `A258415.P4473213064253829696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258415 (n : ℕ) : ℤ :=
  A258415.P4473213064253829696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258445.P3993367522767130701

`A140751(A023969(n)+n)`
-/

namespace A258445.P3993367522767130701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140751 (A023969 n + (n : ℤ)).toNat

end

end A258445.P3993367522767130701

noncomputable section

/-- A258445: Irregular triangle related to Pascal's triangle.

Offset 1, canonical program `A258445.P3993367522767130701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A258445 (n : ℕ) : ℤ :=
  A258445.P3993367522767130701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A258445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258578.P11835959862927243434

`A000040(eq[1, A006094(n+2)%3]+2)`
-/

namespace A258578.P11835959862927243434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A258578.P11835959862927243434

noncomputable section

/-- A258578: Primes p such that difference between p and next prime after p is multiple of 6.

Offset 1, canonical program `A258578.P11835959862927243434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4019 terms. -/
def A258578 (n : ℕ) : ℤ :=
  A258578.P11835959862927243434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4019 terms. -/
def A258578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258758.P2809109636177300966

`A007318(n)*A100100(A057944(n))`
-/

namespace A258758.P2809109636177300966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A100100 (A057944 n).toNat

end

end A258758.P2809109636177300966

noncomputable section

/-- A258758: Triangle T(n,k) = C(n+k-1,k)*C(2*n-1,n-k).

Offset 0, canonical program `A258758.P2809109636177300966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A258758 (n : ℕ) : ℤ :=
  A258758.P2809109636177300966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A258758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259215.P17719300614074887301

`∑[A052956(n+1)]+4`
-/

namespace A259215.P17719300614074887301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A259215.P17719300614074887301

noncomputable section

/-- A259215: Number of (n+1) X (1+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0101.

Offset 1, canonical program `A259215.P17719300614074887301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A259215 (n : ℕ) : ℤ :=
  A259215.P17719300614074887301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A259215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259222.P17040782005112290321

`2^(col(n)+2)+A001911(row(n)-col(n)+1)*A000045(col(n)+4)+A234933(row(n)-col(n)+2)`
-/

namespace A259222.P17040782005112290321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (SequenceMachineLib.triCol n + 2) : ℤ) + A001911 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A000045 (SequenceMachineLib.triCol n + 4) + A234933 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2).toNat

end

end A259222.P17040782005112290321

noncomputable section

/-- A259222: T(n,k) is the number of (n+1) X (k+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0101.

Offset 1, canonical program `A259222.P17040782005112290321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A259222 (n : ℕ) : ℤ :=
  A259222.P17040782005112290321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A259222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259334.P13494176114006813757

`A122525(∑[char[∑[n]]]²-n)`
-/

namespace A259334.P13494176114006813757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122525 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A259334.P13494176114006813757

noncomputable section

/-- A259334: Triangle read by rows: T(n, k) = k * (n - 1)! * n^(n - k - 1) / (n - k)!.

Offset 1, canonical program `A259334.P13494176114006813757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A259334 (n : ℕ) : ℤ :=
  A259334.P13494176114006813757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A259334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259549.P10181913513683013065

`∑[A071028(n)]`
-/

namespace A259549.P10181913513683013065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259549.P10181913513683013065

noncomputable section

/-- A259549: Triangle T(n,k) with rows of length 2n-1 filled with consecutive integers, each appearing twice except for the last term, T(n,2n-1) = n(n+1)/2.

Offset 1, canonical program `A259549.P10181913513683013065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259549 (n : ℕ) : ℤ :=
  A259549.P10181913513683013065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259556.P7131408588609023786

`A001950(A004736(n+1))+A000201(A002260(n+1))`
-/

namespace A259556.P7131408588609023786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A004736 (n + 1)).toNat + A000201 (A002260 (n + 1)).toNat

end

end A259556.P7131408588609023786

noncomputable section

/-- A259556: Rectangular array, read by antidiagonals: T(h,k) = u(h) + v(k), where u = A000201 (lower Wythoff numbers), v = A001950 (upper Wythoff numbers), and h >= 1, k >= 1.

Offset 1, canonical program `A259556.P7131408588609023786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259556 (n : ℕ) : ℤ :=
  A259556.P7131408588609023786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259575.P7201171947853536315

`A259572(n+1)+A054431(n+1)`
-/

namespace A259575.P7201171947853536315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (n + 1) + A054431 (n + 1)

end

end A259575.P7201171947853536315

noncomputable section

/-- A259575: Reciprocity array of 1; rectangular, read by antidiagonals.

Offset 1, canonical program `A259575.P7201171947853536315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259575 (n : ℕ) : ℤ :=
  A259575.P7201171947853536315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259624.P17320192781786384517

`∪[A061489(n+1), A258085(n+1)]`
-/

namespace A259624.P17320192781786384517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259624.P17320192781786384517

noncomputable section

/-- A259624: Strictly increasing list of F - 1, F, and F + 1, where F = A000045, the Fibonacci numbers.

Offset 1, canonical program `A259624.P17320192781786384517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A259624 (n : ℕ) : ℤ :=
  (A259624.P17320192781786384517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A259624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259626.P18318315588248049035

`A259625(n+1)+1`
-/

namespace A259626.P18318315588248049035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259625 (n + 1) + 1

end

end A259626.P18318315588248049035

noncomputable section

/-- A259626: List of numbers L and L + 1, where L = A000032, the Lucas numbers, sorted into increasing order and duplicates removed.

Offset 1, canonical program `A259626.P18318315588248049035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A259626 (n : ℕ) : ℤ :=
  A259626.P18318315588248049035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A259626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259665.P16347607823842233365

`a(n-1)+A137688(n-1)²` with `a(0)=0`
-/

namespace A259665.P16347607823842233365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A137688 (n - 1) ^ 2

end

end A259665.P16347607823842233365

noncomputable section

/-- A259665: a(0)=0, a(1)=1, a(n) = min{4 a(k) + (4^(n-k)-1)/3, k=0..(n-1)} for n>=2.

Offset 0, canonical program `A259665.P16347607823842233365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A259665 (n : ℕ) : ℤ :=
  A259665.P16347607823842233365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A259665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259709.P9823627250390288999

`A000129(n+2)-A045925(n+2)`
-/

namespace A259709.P9823627250390288999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - A045925 (n + 2)

end

end A259709.P9823627250390288999

noncomputable section

/-- A259709: a(n) = A259708(n,n-1).

Offset 1, canonical program `A259709.P9823627250390288999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A259709 (n : ℕ) : ℤ :=
  A259709.P9823627250390288999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A259709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259966.P1129345898442510754

`A118430(n+1)+Δ[A118430(n)]`
-/

namespace A259966.P1129345898442510754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 (n + 1) + (f1 (n + 1) - f1 n)

end

end A259966.P1129345898442510754

noncomputable section

/-- A259966: Total binary weight (cf. A000120) of all A005251(n) binary sequences of length n not containing any isolated 1's.

Offset 0, canonical program `A259966.P1129345898442510754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A259966 (n : ℕ) : ℤ :=
  A259966.P1129345898442510754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A259966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260112.P11147998696318706904

`A053737(n)+A110591(n)-1`
-/

namespace A260112.P11147998696318706904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n + A110591 n - 1

end

end A260112.P11147998696318706904

noncomputable section

/-- A260112: Minimal number of steps to get from 0 to n by (a) adding 1 or (b) multiplying by 4.

Offset 0, canonical program `A260112.P11147998696318706904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260112 (n : ℕ) : ℤ :=
  A260112.P11147998696318706904.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260188.P5872051986536960582

`lcm(a(n-1), A105561(n+1))` with `a(0)=1`
-/

namespace A260188.P5872051986536960582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A105561 (n + 1))

end

end A260188.P5872051986536960582

noncomputable section

/-- A260188: Greatest primorial less than or equal to n.

Offset 1, canonical program `A260188.P5872051986536960582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260188 (n : ℕ) : ℤ :=
  (A260188.P5872051986536960582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260228.P14478418545957725030

`gcd(A051696(n+1), A059929(n))`
-/

namespace A260228.P14478418545957725030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051696 (n + 1)) (A059929 n)

end

end A260228.P14478418545957725030

noncomputable section

/-- A260228: a(n) = max(gcd(n,F(n-1)),gcd(n,F(n+1))), where F(n) is the n-th Fibonacci number.

Offset 1, canonical program `A260228.P14478418545957725030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A260228 (n : ℕ) : ℤ :=
  (A260228.P14478418545957725030.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A260228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260302.P5652294795697804353

`C(A057427(A004526(n))*A339623(n+1)+1, 2)`
-/

namespace A260302.P5652294795697804353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057427 (A004526 n).toNat * A339623 (n + 1) + 1).toNat 2

end

end A260302.P5652294795697804353

noncomputable section

/-- A260302: Maximum water retention of a number octagon of order n.

Offset 1, canonical program `A260302.P5652294795697804353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260302 (n : ℕ) : ℤ :=
  (A260302.P5652294795697804353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260492.P11140523939615091371

`A071028(n)*A140751(n)`
-/

namespace A260492.P11140523939615091371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n * A140751 n

end

end A260492.P11140523939615091371

noncomputable section

/-- A260492: Pascal's triangle aerated with columns of zeros.

Offset 0, canonical program `A260492.P11140523939615091371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A260492 (n : ℕ) : ℤ :=
  A260492.P11140523939615091371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A260492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260626.P15351941485670242193

`A014491(A018252(n+1))`
-/

namespace A260626.P15351941485670242193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A018252 (n + 1)).toNat

end

end A260626.P15351941485670242193

noncomputable section

/-- A260626: a(n) = gcd(m, 2^m-1) where m is the n-th nonprime positive integer.

Offset 1, canonical program `A260626.P15351941485670242193`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260626 (n : ℕ) : ℤ :=
  A260626.P15351941485670242193.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260945.P4856476267328599373

`A062157(n)*A112848(A028310(n))`
-/

namespace A260945.P4856476267328599373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A112848 (A028310 n).toNat

end

end A260945.P4856476267328599373

noncomputable section

/-- A260945: Expansion of (2*b(q^4) - b(q) - b(q^2)) / 3 in powers of q where b() is a cubic AGM theta function.

Offset 0, canonical program `A260945.P4856476267328599373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260945 (n : ℕ) : ℤ :=
  A260945.P4856476267328599373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260963.P9935285251690812100

`eq[1, A129514(n+1)]+1`
-/

namespace A260963.P9935285251690812100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260963.P9935285251690812100

noncomputable section

/-- A260963: Numbers k such that gcd(sigma(k), k*(k+1)/2 - sigma(k)) = 1, where sigma(k) is sum of positive divisors of k.

Offset 1, canonical program `A260963.P9935285251690812100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A260963 (n : ℕ) : ℤ :=
  (A260963.P9935285251690812100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A260963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261585.P15148700531395716474

`A204551(A011862(n+4)-n)`
-/

namespace A261585.P15148700531395716474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A011862 (n + 4) - (n : ℤ)).toNat

end

end A261585.P15148700531395716474

noncomputable section

/-- A261585: Number of sexagesimal digits of Fibonacci numbers in base-60 representation.

Offset 0, canonical program `A261585.P15148700531395716474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A261585 (n : ℕ) : ℤ :=
  A261585.P15148700531395716474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A261585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261792.P15740581189978020374

`p?[A128913(n+1)-1]`
-/

namespace A261792.P15740581189978020374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128913 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261792.P15740581189978020374

noncomputable section

/-- A261792: Primes of the form k*pi(k) - 1, where pi(k) is the number of primes <= k.

Offset 1, canonical program `A261792.P15740581189978020374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. -/
def A261792 (n : ℕ) : ℤ :=
  A261792.P15740581189978020374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. -/
def A261792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261884.P17761053337338084082

`A112848(n+1)/A177702(n)`
-/

namespace A261884.P17761053337338084082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (n + 1) : ℚ) / (A177702 n : ℚ)

end

end A261884.P17761053337338084082

noncomputable section

/-- A261884: Expansion of (a(q) - a(q^2) - 2*a(q^3) + 2*a(q^6)) / 6 in powers of q where a() is a cubic AGM function.

Offset 1, canonical program `A261884.P17761053337338084082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A261884.P17761053337338084082.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262085.P10166447916415025632

`eq[A082023(n+8), A082023(n)]`
-/

namespace A262085.P10166447916415025632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262085.P10166447916415025632

noncomputable section

/-- A262085: Numbers n such that phi(n + 8) = phi(n) + 8 where phi(n) = A000010(n) is Euler's totient function.

Offset 1, canonical program `A262085.P10166447916415025632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A262085 (n : ℕ) : ℤ :=
  (A262085.P10166447916415025632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A262085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262138.P2006343145286097734

`A109763(n+1)-A062234(A080513(n))`
-/

namespace A262138.P2006343145286097734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (n + 1) - A062234 (A080513 n).toNat

end

end A262138.P2006343145286097734

noncomputable section

/-- A262138: Interleaved first and second differences of the prime numbers.

Offset 1, canonical program `A262138.P2006343145286097734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262138 (n : ℕ) : ℤ :=
  A262138.P2006343145286097734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262226.P7059141703345200458

`A147565(n)+abs(A141665(n))-A007318(n)`
-/

namespace A262226.P7059141703345200458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147565 n + (|A141665 n| - A007318 n)

end

end A262226.P7059141703345200458

noncomputable section

/-- A262226: Eulerian numbers of type D, the primary type.

Offset 0, canonical program `A262226.P7059141703345200458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A262226 (n : ℕ) : ℤ :=
  A262226.P7059141703345200458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A262226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262248.P6925392583546764891

`C(A006005(n+1), 4)`
-/

namespace A262248.P6925392583546764891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006005 (n + 1)).toNat 4

end

end A262248.P6925392583546764891

noncomputable section

/-- A262248: Number of intersections of diagonals in the interior of a regular p-gon where p is the n-th prime.

Offset 1, canonical program `A262248.P6925392583546764891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262248 (n : ℕ) : ℤ :=
  (A262248.P6925392583546764891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262717.P11064767684716280499

`A174687(n)%A264772(A000124(n))`
-/

namespace A262717.P11064767684716280499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174687 n) (A264772 (A000124 n).toNat)

end

end A262717.P11064767684716280499

noncomputable section

/-- A262717: a(n) = (n-1)*binomial(3*n-2,n)/(2*n-1) + (n+1)*binomial(3*n,n)/(2*n+1) - binomial(3*n-1,n).

Offset 0, canonical program `A262717.P11064767684716280499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A262717 (n : ℕ) : ℤ :=
  A262717.P11064767684716280499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A262717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262720.P7657853626115152366

`A014531(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A262720.P7657853626115152366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014531 (n + 1) - a (n - 1)

end

end A262720.P7657853626115152366

noncomputable section

/-- A262720: a(n) = Sum_{k=0..n/2} binomial(n+3,k)*binomial(n+1-k,k+1).

Offset 0, canonical program `A262720.P7657853626115152366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A262720 (n : ℕ) : ℤ :=
  A262720.P7657853626115152366.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A262720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262808.P9571554599653427594

`A071028(gcd(n, A027656(n)))`
-/

namespace A262808.P9571554599653427594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (Int.gcd (n : ℤ) (A027656 n))

end

end A262808.P9571554599653427594

noncomputable section

/-- A262808: Triangle read by rows giving successive states of cellular automaton generated by "Rule 147" initiated with a single ON (black) cell.

Offset 0, canonical program `A262808.P9571554599653427594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262808 (n : ℕ) : ℤ :=
  A262808.P9571554599653427594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262867.P11260331152945562372

`A171378(n)+1`
-/

namespace A262867.P11260331152945562372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171378 n + 1

end

end A262867.P11260331152945562372

noncomputable section

/-- A262867: Total number of ON (black) cells after n iterations of the "Rule 153" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A262867.P11260331152945562372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262867 (n : ℕ) : ℤ :=
  A262867.P11260331152945562372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263529.P3881219160965345252

`Δ[A187044(n)]`
-/

namespace A263529.P3881219160965345252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263529.P3881219160965345252

noncomputable section

/-- A263529: Binomial transform of double factorial n!! (A006882).

Offset 0, canonical program `A263529.P3881219160965345252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A263529 (n : ℕ) : ℤ :=
  A263529.P3881219160965345252.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A263529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263826.P15511005818763180610

`∑{d}[n+1, A000203(#)*A236283((n+1)/#)]`
-/

namespace A263826.P15511005818763180610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A236283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263826.P15511005818763180610

noncomputable section

/-- A263826: The number c_{Z3 pi_1(B_1)}(2n) of 3-torus 2n-coverings over the first amphicosm.

Offset 1, canonical program `A263826.P15511005818763180610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263826 (n : ℕ) : ℤ :=
  A263826.P15511005818763180610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263827.P8673343635422957235

`∑{d}[n+1, A054785(#)]`
-/

namespace A263827.P8673343635422957235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054785 d

end

end A263827.P8673343635422957235

noncomputable section

/-- A263827: The number c_{Cc pi_1(B_1)}(2n) of the second amphicosm 2n-coverings over the first amphicosm.

Offset 1, canonical program `A263827.P8673343635422957235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263827 (n : ℕ) : ℤ :=
  A263827.P8673343635422957235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263844.P203203564096424831

`2-(A188374(n+1)+A080764(n))`
-/

namespace A263844.P203203564096424831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A188374 (n + 1) + A080764 n)

end

end A263844.P203203564096424831

noncomputable section

/-- A263844: Constant term in expansion of n in Fraenkel's exotic ternary representation.

Offset 1, canonical program `A263844.P203203564096424831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263844 (n : ℕ) : ℤ :=
  A263844.P203203564096424831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263899.P16152381148978745656

`A002524(n+1)-Δ[A002265(n)]`
-/

namespace A263899.P16152381148978745656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (n + 1) - (f1 (n + 1) - f1 n)

end

end A263899.P16152381148978745656

noncomputable section

/-- A263899: Number of length n arrays of permutations of 0..n-1 with each element moved by -2 to 2 places and the total absolute value of displacements not greater than 2*(n-1).

Offset 1, canonical program `A263899.P16152381148978745656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A263899 (n : ℕ) : ℤ :=
  A263899.P16152381148978745656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A263899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264054.P3050985151313136823

`A006500(Δ[n²])`
-/

namespace A264054.P3050985151313136823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A264054.P3050985151313136823

noncomputable section

/-- A264054: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

Offset 1, canonical program `A264054.P3050985151313136823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A264054 (n : ℕ) : ℤ :=
  A264054.P3050985151313136823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A264054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264091.P17815593426725919287

`abs(A097948(n+1))*A020695(n)`
-/

namespace A264091.P17815593426725919287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097948 (n + 1)| * A020695 n

end

end A264091.P17815593426725919287

noncomputable section

/-- A264091: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

Offset 1, canonical program `A264091.P17815593426725919287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A264091 (n : ℕ) : ℤ :=
  A264091.P17815593426725919287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A264091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264184.P10399417770699243344

`A031923(3*(n+1))`
-/

namespace A264184.P10399417770699243344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (3 * (n + 1))

end

end A264184.P10399417770699243344

noncomputable section

/-- A264184: Number of (n+1)X(2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,-1 or 2,2.

Offset 1, canonical program `A264184.P10399417770699243344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A264184 (n : ℕ) : ℤ :=
  A264184.P10399417770699243344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A264184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264202.P8990464749144740541

`Δ[A020706(n)]*A006253(n+2)`
-/

namespace A264202.P8990464749144740541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006253 (n + 2)

end

end A264202.P8990464749144740541

noncomputable section

/-- A264202: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,2 or 1,0.

Offset 1, canonical program `A264202.P8990464749144740541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A264202 (n : ℕ) : ℤ :=
  A264202.P8990464749144740541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A264202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264263.P13926301945791695937

`A253900(n+1)-1`
-/

namespace A264263.P13926301945791695937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253900 (n + 1) - 1

end

end A264263.P13926301945791695937

noncomputable section

/-- A264263: The number of distinct nontrivial integral cevians of an isosceles triangle, with base of length 1 and legs of length n, that divide the base into two integral parts.

Offset 1, canonical program `A264263.P13926301945791695937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A264263 (n : ℕ) : ℤ :=
  A264263.P13926301945791695937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A264263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264514.P17377703999448308121

`A264507(Δ[n²])`
-/

namespace A264514.P17377703999448308121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264507 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A264514.P17377703999448308121

noncomputable section

/-- A264514: Number of (2n) X (2+1) arrays of permutations of 0..n*6-1 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

Offset 1, canonical program `A264514.P17377703999448308121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A264514 (n : ℕ) : ℤ :=
  A264514.P17377703999448308121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A264514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264515.P6654015843554446290

`A264507(n+1)²`
-/

namespace A264515.P6654015843554446290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264507 (n + 1) ^ 2

end

end A264515.P6654015843554446290

noncomputable section

/-- A264515: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

Offset 1, canonical program `A264515.P6654015843554446290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A264515 (n : ℕ) : ℤ :=
  A264515.P6654015843554446290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A264515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264802.P4268355736184422513

`A137688(n)+A130321(n)`
-/

namespace A264802.P4268355736184422513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + A130321 n

end

end A264802.P4268355736184422513

noncomputable section

/-- A264802: Position of the n largest occurrences of a shortest addition chain of length n in A003313, written as a triangle.

Offset 1, canonical program `A264802.P4268355736184422513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264802 (n : ℕ) : ℤ :=
  A264802.P4268355736184422513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264847.P10430912638818153852

`∑[∑[A059939(A080686(n+2))]]`
-/

namespace A264847.P10430912638818153852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A080686 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264847.P10430912638818153852

noncomputable section

/-- A264847: Pluritriangular numbers: a(0) = 0; a(n+1) = a(n) + the number of digits in terms a(0)..a(n).

Offset 0, canonical program `A264847.P10430912638818153852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A264847 (n : ℕ) : ℤ :=
  A264847.P10430912638818153852.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A264847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264960.P11808814825159870349

`A027306(n)²+A058622(n)²`
-/

namespace A264960.P11808814825159870349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n ^ 2 + A058622 n ^ 2

end

end A264960.P11808814825159870349

noncomputable section

/-- A264960: Half-convolution of the central binomial coefficients A000984 with itself.

Offset 0, canonical program `A264960.P11808814825159870349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A264960 (n : ℕ) : ℤ :=
  A264960.P11808814825159870349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A264960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265326.P14016085815446765591

`A055945(A000040(n+1))`
-/

namespace A265326.P14016085815446765591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A000040 (n + 1)).toNat

end

end A265326.P14016085815446765591

noncomputable section

/-- A265326: n-th prime minus its binary reversal.

Offset 1, canonical program `A265326.P14016085815446765591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055945, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265326 (n : ℕ) : ℤ :=
  A265326.P14016085815446765591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055945, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265359.P15668175611696395647

`a(n-1)+A240025(n)+A240025(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A265359.P15668175611696395647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + A240025 n + A240025 (n - 1)

end

end A265359.P15668175611696395647

noncomputable section

/-- A265359: Spiralwise distance to the nearest inner neighbor in Ulam-style square-spirals using zero-based indexing: a(0) = 0, for n >= 1, a(n) = n - A265409(n).

Offset 0, canonical program `A265359.P15668175611696395647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265359 (n : ℕ) : ℤ :=
  A265359.P15668175611696395647.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265410.P7138294630023427214

`a(n-1)+(1-A240025(n-1))*(1-A240025(n))` with `a(0)=0, a(1)=1`
-/

namespace A265410.P7138294630023427214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (1 - A240025 (n - 1)) * (1 - A240025 n)

end

end A265410.P7138294630023427214

noncomputable section

/-- A265410: a(n) = one-based index to the nearest horizontally or vertically adjacent inner neighbor in square-grid spirals, and to the nearest diagonally adjacent inner neighbor when n is one of the corner cases A033638.

Offset 1, canonical program `A265410.P7138294630023427214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265410 (n : ℕ) : ℤ :=
  A265410.P7138294630023427214.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265609.P16748235149498157221

`A114219(n)!*A071919(n)`
-/

namespace A265609.P16748235149498157221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A114219 n).toNat : ℤ) * A071919 n

end

end A265609.P16748235149498157221

noncomputable section

/-- A265609: Array read by ascending antidiagonals: A(n,k) the rising factorial, also known as Pochhammer symbol, for n >= 0 and k >= 0.

Offset 0, canonical program `A265609.P16748235149498157221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A265609 (n : ℕ) : ℤ :=
  A265609.P16748235149498157221.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A265609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265610.P12741386361720664927

`A029651(n)-A005807(n)`
-/

namespace A265610.P12741386361720664927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n - A005807 n

end

end A265610.P12741386361720664927

noncomputable section

/-- A265610: a(n) = rf(n, n+2)/(n+2)! - rf(n, n)/n!, rf the rising factorial A265609.

Offset 0, canonical program `A265610.P12741386361720664927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A265610 (n : ℕ) : ℤ :=
  A265610.P12741386361720664927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A265610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266188.P8279762912778917924

`A004001(A087686(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266188.P8279762912778917924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A087686 (n + 1)).toNat

end

end A266188.P8279762912778917924

noncomputable section

/-- A266188: a(n) = A004001(A087686(n)).

Offset 1, canonical program `A266188.P8279762912778917924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266188 (n : ℕ) : ℤ :=
  A266188.P8279762912778917924.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266218.P16124281478245643888

`xor(A063524(n), A266436(n))`
-/

namespace A266218.P16124281478245643888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A266436 n)

end

end A266218.P16124281478245643888

noncomputable section

/-- A266218: Decimal representation of the n-th iteration of the "Rule 7" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266218.P16124281478245643888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266218 (n : ℕ) : ℤ :=
  A266218.P16124281478245643888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266341.P9671448473235777529

`A053644(A038554(n))+n-A053644(n)`
-/

namespace A266341.P9671448473235777529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A038554 n).toNat + ((n : ℤ) - A053644 n)

end

end A266341.P9671448473235777529

noncomputable section

/-- A266341: If A036987(n) = 1, a(n) = n - A053644(n), otherwise a(n) = n - A053644(n) + 2^(A063250(n)-1).

Offset 0, canonical program `A266341.P9671448473235777529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266341 (n : ℕ) : ℤ :=
  A266341.P9671448473235777529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266532.P17179654325174085964

`A160722(n)+ceil(n*sin(11))`
-/

namespace A266532.P17179654325174085964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160722 n + ⌈(n : ℝ) * Real.sin (11 : ℝ)⌉

end

end A266532.P17179654325174085964

noncomputable section

/-- A266532: Total number of Y-toothpicks after n-th stage in the "outward" version of the cellular automaton of A160120.

Offset 0, canonical program `A266532.P17179654325174085964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266532 (n : ℕ) : ℤ :=
  A266532.P17179654325174085964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266707.P5074477213507265024

`abs(A059929(n)+Δ[A192872(n)])`
-/

namespace A266707.P5074477213507265024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059929 n + (f1 (n + 1) - f1 n)|

end

end A266707.P5074477213507265024

noncomputable section

/-- A266707: Coefficient of x^2 in minimal polynomial of the continued fraction [1^n,phi,1,1,1,...], where 1^n means n ones and phi = golden ratio = (1 + sqrt(5))/2.

Offset 0, canonical program `A266707.P5074477213507265024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A266707 (n : ℕ) : ℤ :=
  A266707.P5074477213507265024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A266707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266978.P11450421611937941305

`A376583(A037458(n+1))`
-/

namespace A266978.P11450421611937941305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376583 (A037458 (n + 1)).toNat

end

end A266978.P11450421611937941305

noncomputable section

/-- A266978: Triangle read by rows giving successive states of cellular automaton generated by "Rule 79" initiated with a single ON (black) cell.

Offset 0, canonical program `A266978.P11450421611937941305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266978 (n : ℕ) : ℤ :=
  A266978.P11450421611937941305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266980.P14525064463920435922

`A266668(n)+A001045(n)`
-/

namespace A266980.P14525064463920435922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266668 n + A001045 n

end

end A266980.P14525064463920435922

noncomputable section

/-- A266980: Decimal representation of the n-th iteration of the "Rule 79" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266980.P14525064463920435922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266980 (n : ℕ) : ℤ :=
  A266980.P14525064463920435922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267034.P4851684498594056330

`A266982((n+1)%(2*n+1))`
-/

namespace A267034.P4851684498594056330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 ((n + 1) % (2 * n + 1))

end

end A267034.P4851684498594056330

noncomputable section

/-- A267034: Triangle read by rows giving successive states of cellular automaton generated by "Rule 85" initiated with a single ON (black) cell.

Offset 0, canonical program `A267034.P4851684498594056330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267034 (n : ℕ) : ℤ :=
  A267034.P4851684498594056330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267053.P13468712992979904889

`and(3, A005210(A053188(n)+2+n)²)`
-/

namespace A267053.P13468712992979904889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A005210 (A053188 n + 2 + (n : ℤ)).toNat ^ 2)

end

end A267053.P13468712992979904889

noncomputable section

/-- A267053: Triangle read by rows giving successive states of cellular automaton generated by "Rule 93" initiated with a single ON (black) cell.

Offset 0, canonical program `A267053.P13468712992979904889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267053 (n : ℕ) : ℤ :=
  A267053.P13468712992979904889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267068.P17504432387453911525

`(n+1)/A189733(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267068.P17504432387453911525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A189733 n : ℚ)

end

end A267068.P17504432387453911525

noncomputable section

/-- A267068: a(n) = (n+1) / A189733(n).

Offset 0, canonical program `A267068.P17504432387453911525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267068 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A267068.P17504432387453911525.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267097.P13453783086901025802

`∑[A098033(n+1)]-1`
-/

namespace A267097.P13453783086901025802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A267097.P13453783086901025802

noncomputable section

/-- A267097: a(n) = number of 4k+1 primes among first n primes; least monotonic left inverse of A080147.

Offset 1, canonical program `A267097.P13453783086901025802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267097 (n : ℕ) : ℤ :=
  A267097.P13453783086901025802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267134.P15213870686594157141

`Δ[n²]-eq[5, A039704(n+3)]`
-/

namespace A267134.P15213870686594157141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A267134.P15213870686594157141

noncomputable section

/-- A267134: a(n) = n minus the number of primes of form 6m + 1 that are less than n-th prime of form 6m - 1.

Offset 1, canonical program `A267134.P15213870686594157141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267134 (n : ℕ) : ℤ :=
  A267134.P15213870686594157141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267271.P1576574748171931790

`or(A029744(A016777(n)), A267003(n))`
-/

namespace A267271.P1576574748171931790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029744 (A016777 n).toNat) (A267003 n)

end

end A267271.P1576574748171931790

noncomputable section

/-- A267271: Decimal representation of the n-th iteration of the "Rule 115" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267271.P1576574748171931790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267271 (n : ℕ) : ℤ :=
  A267271.P1576574748171931790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267351.P7254378362285730718

`or(A146523(n), A266668(n))`
-/

namespace A267351.P7254378362285730718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146523 n) (A266668 n)

end

end A267351.P7254378362285730718

noncomputable section

/-- A267351: Decimal representation of the n-th iteration of the "Rule 123" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267351.P7254378362285730718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267351 (n : ℕ) : ℤ :=
  A267351.P7254378362285730718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267421.P8160187547805568179

`p?[A004232(n+1)+1+n]`
-/

namespace A267421.P8160187547805568179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004232 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P8160187547805568179

noncomputable section

/-- A267421: Primes of the form prime(n) + n + n^2.

Offset 1, canonical program `A267421.P8160187547805568179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A267421 (n : ℕ) : ℤ :=
  A267421.P8160187547805568179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A267421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267443.P4725894432829547169

`A043545(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A267443.P4725894432829547169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A043545 n + 10 * a (n - 1)

end

end A267443.P4725894432829547169

noncomputable section

/-- A267443: Binary representation of the middle column of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267443.P4725894432829547169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267443 (n : ℕ) : ℤ :=
  A267443.P4725894432829547169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267533.P12377575930394932186

`A152822(C(5, A053186(n)))`
-/

namespace A267533.P12377575930394932186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (Nat.choose 5 (A053186 n).toNat)

end

end A267533.P12377575930394932186

noncomputable section

/-- A267533: Triangle read by rows giving successive states of cellular automaton generated by "Rule 143" initiated with a single ON (black) cell.

Offset 0, canonical program `A267533.P12377575930394932186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267533 (n : ℕ) : ℤ :=
  A267533.P12377575930394932186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267605.P324515188696850996

`(∑[∑[A034870(n)]]+n)%2`
-/

namespace A267605.P324515188696850996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) 2

end

end A267605.P324515188696850996

noncomputable section

/-- A267605: Triangle read by rows giving successive states of cellular automaton generated by "Rule 181" initiated with a single ON (black) cell.

Offset 0, canonical program `A267605.P324515188696850996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267605 (n : ℕ) : ℤ :=
  A267605.P324515188696850996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267675.P16119488282880190552

`and(-A001317(n), A095121(2*n))`
-/

namespace A267675.P16119488282880190552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A001317 n) (A095121 (2 * n))

end

end A267675.P16119488282880190552

noncomputable section

/-- A267675: Decimal representation of the n-th iteration of the "Rule 195" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267675.P16119488282880190552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267675 (n : ℕ) : ℤ :=
  A267675.P16119488282880190552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267729.P4113010895853328698

`Δ[A023610(n)]²`
-/

namespace A267729.P4113010895853328698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A267729.P4113010895853328698

noncomputable section

/-- A267729: Number of n X 2 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

Offset 1, canonical program `A267729.P4113010895853328698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A267729 (n : ℕ) : ℤ :=
  A267729.P4113010895853328698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A267729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267730.P9907999590693264910

`Δ[A023610(n)]^3`
-/

namespace A267730.P9907999590693264910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A267730.P9907999590693264910

noncomputable section

/-- A267730: Number of nX3 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

Offset 1, canonical program `A267730.P9907999590693264910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A267730 (n : ℕ) : ℤ :=
  A267730.P9907999590693264910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A267730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267773.P6472055355787003497

`C(n, A245552(n)²)`
-/

namespace A267773.P6472055355787003497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A245552 n ^ 2).toNat

end

end A267773.P6472055355787003497

noncomputable section

/-- A267773: Triangle read by rows giving successive states of cellular automaton generated by "Rule 207" initiated with a single ON (black) cell.

Offset 0, canonical program `A267773.P6472055355787003497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267773 (n : ℕ) : ℤ :=
  (A267773.P6472055355787003497.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267800.P2365698362491411621

`A267776(a(n-3)+n)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A267800.P2365698362491411621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A267776 (a (n - 3) + (n : ℤ)).toNat

end

end A267800.P2365698362491411621

noncomputable section

/-- A267800: Triangle read by rows giving successive states of cellular automaton generated by "Rule 213" initiated with a single ON (black) cell.

Offset 0, canonical program `A267800.P2365698362491411621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267800 (n : ℕ) : ℤ :=
  A267800.P2365698362491411621.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267810.P5765769009516729792

`A267683(n*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A267810.P5765769009516729792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A267683 ((n : ℤ) * a (n - 2)).toNat

end

end A267810.P5765769009516729792

noncomputable section

/-- A267810: Triangle read by rows giving successive states of cellular automaton generated by "Rule 217" initiated with a single ON (black) cell.

Offset 0, canonical program `A267810.P5765769009516729792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267810 (n : ℕ) : ℤ :=
  A267810.P5765769009516729792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267891.P13368573259135657762

`eq[16, A054844(n+1)]+1`
-/

namespace A267891.P13368573259135657762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A267891.P13368573259135657762

noncomputable section

/-- A267891: Numbers with 8 odd divisors.

Offset 1, canonical program `A267891.P13368573259135657762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267891 (n : ℕ) : ℤ :=
  (A267891.P13368573259135657762.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267991.P17804240115584663066

`a(n-2)+A226881(n+1)+1` with `a(0)=1, a(1)=4`
-/

namespace A267991.P17804240115584663066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (A226881 (n + 1) + 1)

end

end A267991.P17804240115584663066

noncomputable section

/-- A267991: Number of 2Xn arrays containing n copies of 0..2-1 with row sums and column sums nondecreasing.

Offset 1, canonical program `A267991.P17804240115584663066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267991 (n : ℕ) : ℤ :=
  A267991.P17804240115584663066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268174.P3160749783044655820

`eq[A001057(n), A213381(n)]`
-/

namespace A268174.P3160749783044655820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268174.P3160749783044655820

noncomputable section

/-- A268174: Integers m such that m^(m+1) == 1 (modulo (m+2)).

Offset 1, canonical program `A268174.P3160749783044655820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268174 (n : ℕ) : ℤ :=
  (A268174.P3160749783044655820.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268230.P9683439550737180113

`A000079(n)*A133179(A010078(n+1))`
-/

namespace A268230.P9683439550737180113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A133179 (A010078 (n + 1)).toNat

end

end A268230.P9683439550737180113

noncomputable section

/-- A268230: Decimal equivalents of A268229.

Offset 0, canonical program `A268230.P9683439550737180113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A268230 (n : ℕ) : ℤ :=
  A268230.P9683439550737180113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A268230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268231.P13230118980298299093

`lt[A000217(A080098(n)), n+1]`
-/

namespace A268231.P13230118980298299093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A080098 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268231.P13230118980298299093

noncomputable section

/-- A268231: Indices of 1's in A047999.

Offset 1, canonical program `A268231.P13230118980298299093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7699 terms. -/
def A268231 (n : ℕ) : ℤ :=
  (A268231.P13230118980298299093.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7699 terms. -/
def A268231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268232.P6386950122841436999

`lt[n, A000217(A080098(n))]`
-/

namespace A268232.P6386950122841436999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A080098 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268232.P6386950122841436999

noncomputable section

/-- A268232: Indices of 0's in A047999.

Offset 1, canonical program `A268232.P6386950122841436999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268232 (n : ℕ) : ℤ :=
  (A268232.P6386950122841436999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268370.P12788103030648664107

`∑[A000344(n+3)-A099376(n)]`
-/

namespace A268370.P12788103030648664107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 3) - A099376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268370.P12788103030648664107

noncomputable section

/-- A268370: Number of North-East lattice paths from (0,0) to (n,n) that have exactly three east steps below the subdiagonal y = x-1.

Offset 4, canonical program `A268370.P12788103030648664107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A268370 (n : ℕ) : ℤ :=
  A268370.P12788103030648664107.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A268370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268444.P5634643260865107777

`∏{digits}[A007090(n), #+1]`
-/

namespace A268444.P5634643260865107777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A268444.P5634643260865107777

noncomputable section

/-- A268444: a(n) = Product_{i=0..k}(n_i+1) where n = Sum_{i=0..k}n_i*4^i is the base-4 representation of n.

Offset 0, canonical program `A268444.P5634643260865107777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268444 (n : ℕ) : ℤ :=
  (A268444.P5634643260865107777.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268447.P7684583934776672033

`A128899(A000124(n+9)+8)`
-/

namespace A268447.P7684583934776672033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A000124 (n + 9) + 8).toNat

end

end A268447.P7684583934776672033

noncomputable section

/-- A268447: Number of North-East lattice paths from (0,0) to (n,n) that cross the diagonal y = x horizontally exactly four times.

Offset 8, canonical program `A268447.P7684583934776672033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A268447 (n : ℕ) : ℤ :=
  A268447.P7684583934776672033.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A268447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268744.P7767334516591821469

`A286814(n+1)+A001333(n)`
-/

namespace A268744.P7767334516591821469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286814 (n + 1) + A001333 n

end

end A268744.P7767334516591821469

noncomputable section

/-- A268744: Number of n X 2 binary arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

Offset 1, canonical program `A268744.P7767334516591821469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A268744 (n : ℕ) : ℤ :=
  A268744.P7767334516591821469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A268744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268775.P165643180478746125

`A093835(n)+A079859(n+4)`
-/

namespace A268775.P165643180478746125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093835 n + A079859 (n + 4)

end

end A268775.P165643180478746125

noncomputable section

/-- A268775: Number of n X 2 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two no more than once.

Offset 1, canonical program `A268775.P165643180478746125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A268775 (n : ℕ) : ℤ :=
  A268775.P165643180478746125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A268775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268900.P15039982914417740740

`6*A229582(n+1)`
-/

namespace A268900.P15039982914417740740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229582 (n + 1)

end

end A268900.P15039982914417740740

noncomputable section

/-- A268900: Number of n X 4 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

Offset 1, canonical program `A268900.P15039982914417740740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268900 (n : ℕ) : ℤ :=
  A268900.P15039982914417740740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268922.P7597364741946538744

`(2*A048899(n))%A000351(n)`
-/

namespace A268922.P7597364741946538744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A048899 n) (A000351 n)

end

end A268922.P7597364741946538744

noncomputable section

/-- A268922: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-4). These are the 1 mod 5 numbers, except for n = 0.

Offset 0, canonical program `A268922.P7597364741946538744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A268922 (n : ℕ) : ℤ :=
  A268922.P7597364741946538744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A268922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268989.P662386248003310424

`A208354(2*n+3)`
-/

namespace A268989.P662386248003310424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (2 * n + 3)

end

end A268989.P662386248003310424

noncomputable section

/-- A268989: Number of n X 2 binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

Offset 1, canonical program `A268989.P662386248003310424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A268989 (n : ℕ) : ℤ :=
  A268989.P662386248003310424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A268989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269246.P11189101600261398533

`∑{digits}[n*n², A085862(#)]`
-/

namespace A269246.P11189101600261398533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A085862 x).sum

end

end A269246.P11189101600261398533

noncomputable section

/-- A269246: Number of times the digit 6 appears in the decimal expansion of n^3.

Offset 0, canonical program `A269246.P11189101600261398533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269246 (n : ℕ) : ℤ :=
  A269246.P11189101600261398533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269250.P13199977431476461355

`∑{digits}[n^3, C(2, A006254(#+1))]`
-/

namespace A269250.P13199977431476461355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose 2 (A006254 (x + 1)).toNat).sum

end

end A269250.P13199977431476461355

noncomputable section

/-- A269250: Number of times the digit 0 appears in the decimal expansion of n^3.

Offset 0, canonical program `A269250.P13199977431476461355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269250 (n : ℕ) : ℤ :=
  (A269250.P13199977431476461355.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269381.P1411983519145448973

`∑[char[A233271(n+1)]]`
-/

namespace A269381.P1411983519145448973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269381.P1411983519145448973

noncomputable section

/-- A269381: Least monotonic left inverse of A233271.

Offset 0, canonical program `A269381.P1411983519145448973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A269381 (n : ℕ) : ℤ :=
  (A269381.P1411983519145448973.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A269381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269390.P13967432364545519165

`comp[A233271(n)]`
-/

namespace A269390.P13967432364545519165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A269390.P13967432364545519165

noncomputable section

/-- A269390: Complement of A233271.

Offset 1, canonical program `A269390.P13967432364545519165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269390 (n : ℕ) : ℤ :=
  (A269390.P13967432364545519165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269594.P601689813181141290

`(A269590(n)²+4)/5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269594.P601689813181141290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269590 n ^ 2 + 4 : ℚ) / (5 ^ n : ℚ)

end

end A269594.P601689813181141290

noncomputable section

/-- A269594: a(n) = (A269590(n)^2 + 4)/5^n, n >= 0.

Offset 0, canonical program `A269594.P601689813181141290`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269594 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A269594.P601689813181141290.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269601.P14206171943154091293

`A175654(n+1)+A175654(n)+A001787(n)`
-/

namespace A269601.P14206171943154091293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175654 (n + 1) + (A175654 n + A001787 n)

end

end A269601.P14206171943154091293

noncomputable section

/-- A269601: Number of length-n 0..2 arrays with no repeated value differing from the previous repeated value by one or less.

Offset 1, canonical program `A269601.P14206171943154091293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A269601 (n : ℕ) : ℤ :=
  A269601.P14206171943154091293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A269601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269849.P9914812276268584730

`∑[(A006094(n+1)%3+1)%2]`
-/

namespace A269849.P9914812276268584730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A006094 (n + 1)) 3 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P9914812276268584730

noncomputable section

/-- A269849: a(n) = number of integers k <= n for which prime(k+1)-prime(k) is not a multiple of three.

Offset 1, canonical program `A269849.P9914812276268584730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269849 (n : ℕ) : ℤ :=
  A269849.P9914812276268584730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269903.P4765007722614101742

`eq[4, and(6, A126084(n))]`
-/

namespace A269903.P4765007722614101742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A126084 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269903.P4765007722614101742

noncomputable section

/-- A269903: Integers n such that A002110(n) / 2 is the sum of 4 but no fewer nonzero squares.

Offset 1, canonical program `A269903.P4765007722614101742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A269903 (n : ℕ) : ℤ :=
  (A269903.P4765007722614101742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A269903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270127.P5718691714425253421

`∑[A062383(n)*A071044(n)]-A057427(n)`
-/

namespace A270127.P5718691714425253421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A270127.P5718691714425253421

noncomputable section

/-- A270127: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 86", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270127.P5718691714425253421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4612 terms. -/
def A270127 (n : ℕ) : ℤ :=
  A270127.P5718691714425253421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4612 terms. -/
def A270127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270131.P3903911104145321744

`A270089(n)+4%A053439(n)`
-/

namespace A270131.P3903911104145321744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270089 n + Int.tmod 4 (A053439 n)

end

end A270131.P3903911104145321744

noncomputable section

/-- A270131: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270131.P3903911104145321744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3339 terms. -/
def A270131 (n : ℕ) : ℤ :=
  A270131.P3903911104145321744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3339 terms. -/
def A270131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270189.P472065122293905227

`lt[0, A001223(n+1)%3]+1`
-/

namespace A270189.P472065122293905227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A270189.P472065122293905227

noncomputable section

/-- A270189: Numbers n for which (prime(n+1)-prime(n)) is not a multiple of three.

Offset 1, canonical program `A270189.P472065122293905227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270189 (n : ℕ) : ℤ :=
  (A270189.P472065122293905227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270192.P15087363916483575460

`lt[1, A001223(n+1)%3]+1`
-/

namespace A270192.P15087363916483575460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A270192.P15087363916483575460

noncomputable section

/-- A270192: Numbers n for which (prime(n+1)-prime(n)) mod 3 = 2.

Offset 1, canonical program `A270192.P15087363916483575460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270192 (n : ℕ) : ℤ :=
  (A270192.P15087363916483575460.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270200.P3592585650237564585

`∪[A001015(n), A233273(n)]`
-/

namespace A270200.P3592585650237564585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270200.P3592585650237564585

noncomputable section

/-- A270200: a(0) = 0; for n >= 1, a(n) = A054429(A005187(1+A054429(n-1))).

Offset 0, canonical program `A270200.P3592585650237564585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270200 (n : ℕ) : ℤ :=
  (A270200.P3592585650237564585.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270298.P12968977381553057789

`4*A008364(n+2)`
-/

namespace A270298.P12968977381553057789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008364 (n + 2)

end

end A270298.P12968977381553057789

noncomputable section

/-- A270298: Numbers which are representable as a sum of eight but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270298.P12968977381553057789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270298 (n : ℕ) : ℤ :=
  A270298.P12968977381553057789.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270298.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270342.P12478377227330995864

`eq[0, A270388(n+2)]+2`
-/

namespace A270342.P12478377227330995864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270388 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A270342.P12478377227330995864

noncomputable section

/-- A270342: Positive integers n such that the sum of the Pell numbers A000129(0) + ... + A000129(n-1) is divisible by n.

Offset 1, canonical program `A270342.P12478377227330995864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270342 (n : ℕ) : ℤ :=
  (A270342.P12478377227330995864.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270384.P1537396231614344993

`p?[ceil(A001749(n+1)/3)]`
-/

namespace A270384.P1537396231614344993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001749 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270384.P1537396231614344993

noncomputable section

/-- A270384: Primes p such that (3/4)(p + 1) - 1 is also prime.

Offset 1, canonical program `A270384.P1537396231614344993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270384 (n : ℕ) : ℤ :=
  A270384.P1537396231614344993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270440.P8383876616977072034

`round(sqrt(A028329(n)))+1`
-/

namespace A270440.P8383876616977072034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A028329 n : ℝ)) + 1

end

end A270440.P8383876616977072034

noncomputable section

/-- A270440: Least k such that binomial(k, 2) >= binomial(2*n, n).

Offset 0, canonical program `A270440.P8383876616977072034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A270440 (n : ℕ) : ℤ :=
  A270440.P8383876616977072034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A270440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270544.P6791323703914777716

`4*A060831(n)+n%2+n`
-/

namespace A270544.P6791323703914777716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A060831 n + ((n % 2 + n : ℕ) : ℤ)

end

end A270544.P6791323703914777716

noncomputable section

/-- A270544: Number of ordered pairs (i,j) with |i|, |j| <= n, |i * j| <= n, and i odd.

Offset 0, canonical program `A270544.P6791323703914777716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270544 (n : ℕ) : ℤ :=
  A270544.P6791323703914777716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270742.P9511645227848509118

`and(1, A235963(n)+A000124(A235963(n+1)))`
-/

namespace A270742.P9511645227848509118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A235963 n + A000124 (A235963 (n + 1)).toNat)

end

end A270742.P9511645227848509118

noncomputable section

/-- A270742: Binary expansion of C = (1/2)*(3/4)*(7/8)*(15/16)... .

Offset 0, canonical program `A270742.P9511645227848509118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270742 (n : ℕ) : ℤ :=
  A270742.P9511645227848509118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271187.P2014690052428888649

`A007913(A007318(n))`
-/

namespace A271187.P2014690052428888649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007318 n).toNat

end

end A271187.P2014690052428888649

noncomputable section

/-- A271187: Triangle T(n,k) read by rows: T(n,k) is the squarefree part of C(n,k).

Offset 0, canonical program `A271187.P2014690052428888649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A271187 (n : ℕ) : ℤ :=
  A271187.P2014690052428888649.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A271187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271355.P12576549963311332079

`A254729(A004736(n+1))`
-/

namespace A271355.P12576549963311332079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (A004736 (n + 1)).toNat

end

end A271355.P12576549963311332079

noncomputable section

/-- A271355: Triangular array: T(n,k) = |round((r^n)*(s^k))|, where r = golden ratio = (1+sqrt(5))/2, s = (1-sqrt(5))/2, 1 <= k <= n, n >= 1.

Offset 1, canonical program `A271355.P12576549963311332079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271355 (n : ℕ) : ℤ :=
  A271355.P12576549963311332079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271439.P9966869928347178630

`(1-A010054(n))*A083920(n)`
-/

namespace A271439.P9966869928347178630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010054 n) * A083920 n

end

end A271439.P9966869928347178630

noncomputable section

/-- A271439: If n is a triangular number, a(n) = 0, otherwise a(n) = n - A002024(n) + 1.

Offset 0, canonical program `A271439.P9966869928347178630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271439 (n : ℕ) : ℤ :=
  A271439.P9966869928347178630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271484.P10642354924052871060

`A059169(n+1)%A008620(A026741(n))`
-/

namespace A271484.P10642354924052871060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059169 (n + 1)) (A008620 (A026741 n).toNat)

end

end A271484.P10642354924052871060

noncomputable section

/-- A271484: Expansion of x^5/((1-x^2)*(1-x^4))+x^10/((1-x^4)*(1-x^6)).

Offset 0, canonical program `A271484.P10642354924052871060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271484 (n : ℕ) : ℤ :=
  A271484.P10642354924052871060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271499.P15216955592391079473

`lt[1, A000120(2*n-A005187(n))]`
-/

namespace A271499.P15216955592391079473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P15216955592391079473

noncomputable section

/-- A271499: Positive numbers n such that the number of 1's in the binary expansion of n is not a power of 2.

Offset 1, canonical program `A271499.P15216955592391079473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271499 (n : ℕ) : ℤ :=
  (A271499.P15216955592391079473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271653.P7087006881751362329

`p?[A072473(n+1)+A031215(n+1)]`
-/

namespace A271653.P7087006881751362329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + A031215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271653.P7087006881751362329

noncomputable section

/-- A271653: Primes of the form 2*prime(2k) - prime(k).

Offset 1, canonical program `A271653.P7087006881751362329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A271653 (n : ℕ) : ℤ :=
  A271653.P7087006881751362329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A271653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271703.P8618835330592467245

`A094587(n)*A097805(n)`
-/

namespace A271703.P8618835330592467245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A097805 n

end

end A271703.P8618835330592467245

noncomputable section

/-- A271703: Triangle read by rows: the unsigned Lah numbers T(n, k) = binomial(n-1, k-1)*n!/k! if n > 0 and k > 0, T(n, 0) = 0^n and otherwise 0, for n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A271703.P8618835330592467245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A271703 (n : ℕ) : ℤ :=
  A271703.P8618835330592467245.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A271703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271787.P16430295729200728671

`comp[n-A229062(n)]`
-/

namespace A271787.P16430295729200728671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A229062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A271787.P16430295729200728671

noncomputable section

/-- A271787: Integers k that are the sum of two nonzero squares while k*(k+1) is not.

Offset 1, canonical program `A271787.P16430295729200728671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271787 (n : ℕ) : ℤ :=
  (A271787.P16430295729200728671.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271823.P6491372009511408679

`A115140(n)+A077587(abs(1-n))`
-/

namespace A271823.P6491372009511408679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n + A077587 |1 - (n : ℤ)|.toNat

end

end A271823.P6491372009511408679

noncomputable section

/-- A271823: a(n) = binomial(2*n-4,n-1)*(n+3)/n.

Offset 1, canonical program `A271823.P6491372009511408679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A271823 (n : ℕ) : ℤ :=
  A271823.P6491372009511408679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A271823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271998.P5278477966171253614

`A271997(n+4)-1`
-/

namespace A271998.P5278477966171253614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271997 (n + 4) - 1

end

end A271998.P5278477966171253614

noncomputable section

/-- A271998: Volatile sequence: a(n) = A018227(n)-6.

Offset 3, canonical program `A271998.P5278477966171253614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A271998 (n : ℕ) : ℤ :=
  A271998.P5278477966171253614.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A271998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272008.P12989980508195434786

`A017665(n+1)%A017666(n+1)`
-/

namespace A272008.P12989980508195434786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017665 (n + 1)) (A017666 (n + 1))

end

end A272008.P12989980508195434786

noncomputable section

/-- A272008: a(n) is the numerator of the fractional part of sigma(n)/n, where sigma(n) is the sum of the divisors of n.

Offset 1, canonical program `A272008.P12989980508195434786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272008 (n : ℕ) : ℤ :=
  A272008.P12989980508195434786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272008.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272635.P7311207179197304679

`comp[A094570(n)%A094570(n+1)]`
-/

namespace A272635.P7311207179197304679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094570 n) (A094570 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272635.P7311207179197304679

noncomputable section

/-- A272635: Numbers that are not a sum or a difference of two Fibonacci numbers.

Offset 1, canonical program `A272635.P7311207179197304679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272635 (n : ℕ) : ℤ :=
  (A272635.P7311207179197304679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272756.P7505850742485616259

`ceil(A123753(A033156(n+1))/A123753(n))`
-/

namespace A272756.P7505850742485616259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123753 (A033156 (n + 1)).toNat : ℚ) / (A123753 n : ℚ)⌉

end

end A272756.P7505850742485616259

noncomputable section

/-- A272756: a(n) is the least k such that k > A070939(n * k).

Offset 1, canonical program `A272756.P7505850742485616259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A272756 (n : ℕ) : ℤ :=
  A272756.P7505850742485616259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A272756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272887.P6057499258403771745

`A091954(p?[xor(1, n)+1]+1)%(n+1)`
-/

namespace A272887.P6057499258403771745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091954 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)) (n + 1 : ℤ)

end

end A272887.P6057499258403771745

noncomputable section

/-- A272887: Number of ways to write prime(n) as (4*x + 2)*y + 4*x + 1 where x and y are nonnegative integers.

Offset 1, canonical program `A272887.P6057499258403771745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A272887 (n : ℕ) : ℤ :=
  A272887.P6057499258403771745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A272887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272898.P8267313110356408480

`eq[0, A272896(n)]`
-/

namespace A272898.P8267313110356408480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272898.P8267313110356408480

noncomputable section

/-- A272898: Numbers k such that 2^k has equal numbers of odd and even decimal digits.

Offset 1, canonical program `A272898.P8267313110356408480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A272898 (n : ℕ) : ℤ :=
  (A272898.P8267313110356408480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A272898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273189.P9425377602579684644

`A273187(n)-48`
-/

namespace A273189.P9425377602579684644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273187 n - 48

end

end A273189.P9425377602579684644

noncomputable section

/-- A273189: a(n) is the third number in a triple consisting of 3 numbers, which when squared are part of a right diagonal of a magic square of squares.

Offset 0, canonical program `A273189.P9425377602579684644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A273189 (n : ℕ) : ℤ :=
  A273189.P9425377602579684644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A273189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273221.P18280931573240640292

`A006564(A000040(n+1))-A262247(n+1)`
-/

namespace A273221.P18280931573240640292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006564 (A000040 (n + 1)).toNat - A262247 (n + 1)

end

end A273221.P18280931573240640292

noncomputable section

/-- A273221: a(n) = p*(p - 1)*(13*p - 5)/6, where p = prime(n).

Offset 1, canonical program `A273221.P18280931573240640292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A273221 (n : ℕ) : ℤ :=
  A273221.P18280931573240640292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A273221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273282.P4615267142029211613

`A007917(A079866(n+2))`
-/

namespace A273282.P4615267142029211613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A079866 (n + 2)).toNat

end

end A273282.P4615267142029211613

noncomputable section

/-- A273282: Largest prime not exceeding the geometric mean of all prime divisors of n counted with multiplicity.

Offset 2, canonical program `A273282.P4615267142029211613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079866, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273282 (n : ℕ) : ℤ :=
  A273282.P4615267142029211613.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079866, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273401.P1165814043605019566

`eq[A054844(n+2), A054844(n+1)]+1`
-/

namespace A273401.P1165814043605019566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273401.P1165814043605019566

noncomputable section

/-- A273401: Numbers n such that n and n + 1 have exactly the same number of odd divisors.

Offset 1, canonical program `A273401.P1165814043605019566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273401 (n : ℕ) : ℤ :=
  (A273401.P1165814043605019566.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273500.P16328251982798064153

`∑[A273499(n)]`
-/

namespace A273500.P16328251982798064153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273500.P16328251982798064153

noncomputable section

/-- A273500: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273500.P16328251982798064153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. -/
def A273500 (n : ℕ) : ℤ :=
  A273500.P16328251982798064153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. -/
def A273500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273501.P2635603986377445307

`Δ[A273499(n)]`
-/

namespace A273501.P2635603986377445307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273501.P2635603986377445307

noncomputable section

/-- A273501: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273501.P2635603986377445307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2767 terms. -/
def A273501 (n : ℕ) : ℤ :=
  A273501.P2635603986377445307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2767 terms. -/
def A273501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273514.P15425265425330946745

`floor(A120880(2*n)/2)`
-/

namespace A273514.P15425265425330946745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120880 (2 * n) : ℚ) / 2⌋

end

end A273514.P15425265425330946745

noncomputable section

/-- A273514: a(n) is the number of arithmetic progressions m < n < p (three numbers in arithmetic progression) such that m and p contain no 2's in their ternary representation.

Offset 0, canonical program `A273514.P15425265425330946745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A273514 (n : ℕ) : ℤ :=
  A273514.P15425265425330946745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A273514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273929.P9327079910848474256

`eq[n, A007913(or(4, n))]`
-/

namespace A273929.P9327079910848474256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.lor 4 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273929.P9327079910848474256

noncomputable section

/-- A273929: Numbers that are congruent to {5, 6, 7} mod 8 and are squarefree.

Offset 1, canonical program `A273929.P9327079910848474256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273929 (n : ℕ) : ℤ :=
  (A273929.P9327079910848474256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273939.P15009550147313335799

`A056921(n)+A056922(n)`
-/

namespace A273939.P15009550147313335799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056921 n + A056922 n

end

end A273939.P15009550147313335799

noncomputable section

/-- A273939: a(0) = 1, a(1) = 2; for k>0, a(2*k) = k*a(2*k-1) + a(2*k-2), a(2*k+1) = a(2*k) + a(2*k-1).

Offset 0, canonical program `A273939.P15009550147313335799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056921, A056922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273939 (n : ℕ) : ℤ :=
  A273939.P15009550147313335799.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056921, A056922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273973.P17292048362556108881

`A133179(Δ[or(1, n²)])`
-/

namespace A273973.P17292048362556108881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A273973.P17292048362556108881

noncomputable section

/-- A273973: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273973.P17292048362556108881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. -/
def A273973 (n : ℕ) : ℤ :=
  A273973.P17292048362556108881.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. -/
def A273973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274473.P317316573485528462

`and(A001317(A042948(n)), A126646(n))`
-/

namespace A274473.P317316573485528462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001317 (A042948 n).toNat) (A126646 n)

end

end A274473.P317316573485528462

noncomputable section

/-- A274473: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A274473.P317316573485528462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A274473 (n : ℕ) : ℤ :=
  A274473.P317316573485528462.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A274473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274663.P13727613085558383025

`A094648(3*n)`
-/

namespace A274663.P13727613085558383025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094648 (3 * n)

end

end A274663.P13727613085558383025

noncomputable section

/-- A274663: Sum of n-th powers of the roots of x^3 + 4*x^2 - 11*x - 1.

Offset 0, canonical program `A274663.P13727613085558383025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A274663 (n : ℕ) : ℤ :=
  A274663.P13727613085558383025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A274663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274698.P9145926141844344103

`A000040(n+1)-2*A007652(n+1)`
-/

namespace A274698.P9145926141844344103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2 * A007652 (n + 1)

end

end A274698.P9145926141844344103

noncomputable section

/-- A274698: a(n)=prime(n)-(2*last digit of prime(n)).

Offset 1, canonical program `A274698.P9145926141844344103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274698 (n : ℕ) : ℤ :=
  A274698.P9145926141844344103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274828.P10579815518661466708

`floor(∑[(-1)^n/A001223(n+1)])`
-/

namespace A274828.P10579815518661466708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) / (A001223 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A274828.P10579815518661466708

noncomputable section

/-- A274828: Integer part of the alternating n-th partial sum of the reciprocals of the successive prime gaps.

Offset 1, canonical program `A274828.P10579815518661466708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274828 (n : ℕ) : ℤ :=
  A274828.P10579815518661466708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274969.P429463321413355336

`2*A174687(n)-A026004(n)`
-/

namespace A274969.P429463321413355336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174687 n - A026004 n

end

end A274969.P429463321413355336

noncomputable section

/-- A274969: Number of walks in the first quadrant starting and ending at (0,0) consisting of 3n steps taken from {E=(1, 0), D=(-1, 1), S=(0, -1)}, no S step occurring before the final E step.

Offset 0, canonical program `A274969.P429463321413355336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A274969 (n : ℕ) : ℤ :=
  A274969.P429463321413355336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A274969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274987.P13758219418933082249

`p?[A274601(p?[A274601(n+1)])]`
-/

namespace A274987.P13758219418933082249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274601 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274601 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274987.P13758219418933082249

noncomputable section

/-- A274987: Primes p such that A274601(p) is a prime.

Offset 1, canonical program `A274987.P13758219418933082249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A274987 (n : ℕ) : ℤ :=
  A274987.P13758219418933082249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A274987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275112.P4810474057767871080

`∑[A064412(A028310(n))]-1`
-/

namespace A275112.P4810474057767871080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A275112.P4810474057767871080

noncomputable section

/-- A275112: Zero together with the partial sums of A064412.

Offset 0, canonical program `A275112.P4810474057767871080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275112 (n : ℕ) : ℤ :=
  A275112.P4810474057767871080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275161.P342480281307186842

`6-2*A240025(n+1)`
-/

namespace A275161.P342480281307186842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - 2 * A240025 (n + 1)

end

end A275161.P342480281307186842

noncomputable section

/-- A275161: Number of sides of a polygon formed by tiling n squares in a spiral.

Offset 1, canonical program `A275161.P342480281307186842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275161 (n : ℕ) : ℤ :=
  A275161.P342480281307186842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275418.P17647390156546014803

`eq[A054844(n+3), A054844(n+1)]+2`
-/

namespace A275418.P17647390156546014803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A275418.P17647390156546014803

noncomputable section

/-- A275418: Numbers n such that n - 1 has exactly as many odd divisors as n + 1.

Offset 1, canonical program `A275418.P17647390156546014803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275418 (n : ℕ) : ℤ :=
  (A275418.P17647390156546014803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275671.P10918635563416212347

`eq[gcd(2, n), A175192(n+1)]+1`
-/

namespace A275671.P10918635563416212347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275671.P10918635563416212347

noncomputable section

/-- A275671: Even values produced by the sigma function A000203, in increasing order.

Offset 1, canonical program `A275671.P10918635563416212347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275671 (n : ℕ) : ℤ :=
  (A275671.P10918635563416212347.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275697.P6247169262184432070

`p?[p?[2*n+1]-A058263(n+1)]`
-/

namespace A275697.P6247169262184432070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - A058263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275697.P6247169262184432070

noncomputable section

/-- A275697: Primes p such that gcd(p-1, q-1) = q - p, where q is the next prime after p.

Offset 1, canonical program `A275697.P6247169262184432070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3977 terms. -/
def A275697 (n : ℕ) : ℤ :=
  A275697.P6247169262184432070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3977 terms. -/
def A275697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276129.P2467275896849965756

`Δ[A054455(n)-A239342(n+1)]`
-/

namespace A276129.P2467275896849965756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054455 n - A239342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276129.P2467275896849965756

noncomputable section

/-- A276129: a(n) is the number of ordered ways to tile a strip of length n+2 with white tiles of odd lengths summing to length n and two red squares.

Offset 0, canonical program `A276129.P2467275896849965756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. -/
def A276129 (n : ℕ) : ℤ :=
  A276129.P2467275896849965756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. -/
def A276129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276158.P15647600386181717088

`A004736(n+1)*A008458(A002262(n))`
-/

namespace A276158.P15647600386181717088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A008458 (A002262 n).toNat

end

end A276158.P15647600386181717088

noncomputable section

/-- A276158: Triangle read by rows: T(n,k) = 6*k*(n + 1 - k) for 0 < k <= n; for k = 0, T(n,0) = n + 1.

Offset 0, canonical program `A276158.P15647600386181717088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276158 (n : ℕ) : ℤ :=
  A276158.P15647600386181717088.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276189.P219610882621668333

`A004736(n+1)*A005914(A002262(n))`
-/

namespace A276189.P219610882621668333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A005914 (A002262 n).toNat

end

end A276189.P219610882621668333

noncomputable section

/-- A276189: Triangle read by rows: T(n,k) = 2*(6*k^2 + 1)*(n + 1 - k) for 0 < k <= n; for k = 0, T(n,0) = n + 1.

Offset 0, canonical program `A276189.P219610882621668333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276189 (n : ℕ) : ℤ :=
  A276189.P219610882621668333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276208.P11970610108144692030

`A028310(A067850(n+1)+n)`
-/

namespace A276208.P11970610108144692030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A067850 (n + 1) + (n : ℤ)).toNat

end

end A276208.P11970610108144692030

noncomputable section

/-- A276208: Position of n! in the joint ranking of {2^h} and {k!}, where h >= 0, k >= 0.

Offset 1, canonical program `A276208.P11970610108144692030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276208 (n : ℕ) : ℤ :=
  A276208.P11970610108144692030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276397.P8421453054304162173

`A188590(n+1)-3`
-/

namespace A276397.P8421453054304162173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188590 (n + 1) - 3

end

end A276397.P8421453054304162173

noncomputable section

/-- A276397: Trajectory of 0 under the morphism 0 -> 001, 1 -> 0010.

Offset 0, canonical program `A276397.P8421453054304162173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276397 (n : ℕ) : ℤ :=
  A276397.P8421453054304162173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276502.P6559098655028179355

`lcm(((n+1)%a(n-1))!, A055642(n+1))` with `a(0)=1`
-/

namespace A276502.P6559098655028179355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (Nat.factorial ((n + 1) % a (n - 1)) : ℤ) (A055642 (n + 1))

end

end A276502.P6559098655028179355

noncomputable section

/-- A276502: Least k > 0 such that A045876(n) divides A045876(n*10^k).

Offset 1, canonical program `A276502.P6559098655028179355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A276502 (n : ℕ) : ℤ :=
  (A276502.P6559098655028179355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A276502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276732.P8742035922757632699

`10*A158017(n+1)-1`
-/

namespace A276732.P8742035922757632699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A158017 (n + 1) - 1

end

end A276732.P8742035922757632699

noncomputable section

/-- A276732: Primes p such that (p + 1)/10 is also prime.

Offset 1, canonical program `A276732.P8742035922757632699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276732 (n : ℕ) : ℤ :=
  A276732.P8742035922757632699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277078.P923418389823604188

`A130595(∑[A198954(n)-1])+A130321(n)%2`
-/

namespace A277078.P923418389823604188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + Int.tmod (A130321 n) 2

end

end A277078.P923418389823604188

noncomputable section

/-- A277078: Triangular array similar to A255935 but with 0's and 2's swapped in the trailing diagonal. The columns alternate in signs.

Offset 0, canonical program `A277078.P923418389823604188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A277078 (n : ℕ) : ℤ :=
  A277078.P923418389823604188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A277078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277094.P17994480033795369155

`A063459(or(1, n))+n`
-/

namespace A277094.P17994480033795369155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 (Nat.lor 1 n) + (n : ℤ)

end

end A277094.P17994480033795369155

noncomputable section

/-- A277094: Numbers k such that sin(k) > 0 and sin(k+2) < 0.

Offset 1, canonical program `A277094.P17994480033795369155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277094 (n : ℕ) : ℤ :=
  A277094.P17994480033795369155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277383.P12304855010601705857

`A005843(A007606(n+1))%A005408(A048761(n))`
-/

namespace A277383.P12304855010601705857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A007606 (n + 1)).toNat) (A005408 (A048761 n).toNat)

end

end A277383.P12304855010601705857

noncomputable section

/-- A277383: Each even integer k is followed by k odd integers.

Offset 1, canonical program `A277383.P12304855010601705857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5030 terms. -/
def A277383 (n : ℕ) : ℤ :=
  A277383.P12304855010601705857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5030 terms. -/
def A277383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277548.P8976666866191349016

`eq[4, A277543(n+1)]+1`
-/

namespace A277548.P8976666866191349016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277548.P8976666866191349016

noncomputable section

/-- A277548: Numbers k such that k/5^m == 4 (mod 5), where 5^m is the greatest power of 5 that divides k.

Offset 1, canonical program `A277548.P8976666866191349016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A277548 (n : ℕ) : ℤ :=
  (A277548.P8976666866191349016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A277548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277549.P6170443303380261541

`eq[1, and(3, A007913(n+1))]+1`
-/

namespace A277549.P6170443303380261541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A007913 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277549.P6170443303380261541

noncomputable section

/-- A277549: Numbers k such that k/4^m == 1 (mod 4), where 4^m is the greatest power of 4 that divides k.

Offset 1, canonical program `A277549.P6170443303380261541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277549 (n : ℕ) : ℤ :=
  (A277549.P6170443303380261541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277550.P8262281964553815661

`1+eq[1, A277543(n+1)]`
-/

namespace A277550.P8262281964553815661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277550.P8262281964553815661

noncomputable section

/-- A277550: Numbers k such that k/5^m == 1 (mod 5), where 5^m is the greatest power of 5 that divides k.

Offset 1, canonical program `A277550.P8262281964553815661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A277550 (n : ℕ) : ℤ :=
  (A277550.P8262281964553815661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A277550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277555.P18235990996721503234

`eq[3, A277543(n+1)]+1`
-/

namespace A277555.P18235990996721503234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277555.P18235990996721503234

noncomputable section

/-- A277555: Numbers k such that k/5^m == 3 (mod 5), where 5^m is the greatest power of 5 that divides k.

Offset 1, canonical program `A277555.P18235990996721503234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A277555 (n : ℕ) : ℤ :=
  (A277555.P18235990996721503234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A277555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277584.P4075816236948862761

`A025174(n)²`
-/

namespace A277584.P4075816236948862761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 n ^ 2

end

end A277584.P4075816236948862761

noncomputable section

/-- A277584: a(n) = binomial(3*n-1, n-1)^2.

Offset 0, canonical program `A277584.P4075816236948862761`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277584 (n : ℕ) : ℤ :=
  A277584.P4075816236948862761.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277661.P18037095489669609944

`A001108(n)-A047665(n)`
-/

namespace A277661.P18037095489669609944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n - A047665 n

end

end A277661.P18037095489669609944

noncomputable section

/-- A277661: 1st-order coefficients of the 1/N-expansion of traces of negative powers of real Wishart matrices with parameter c=2.

Offset 0, canonical program `A277661.P18037095489669609944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A277661 (n : ℕ) : ℤ :=
  A277661.P18037095489669609944.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A277661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277830.P11318479144716426685

`1+A061217(A014824(n)+1)`
-/

namespace A277830.P11318479144716426685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A061217 (A014824 n + 1).toNat

end

end A277830.P11318479144716426685

noncomputable section

/-- A277830: Number of digits '0' in the set of all numbers from 0 to A014824(n) = Sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

Offset 0, canonical program `A277830.P11318479144716426685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277830 (n : ℕ) : ℤ :=
  A277830.P11318479144716426685.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277830.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277919.P7047885698430682018

`2*A105306(n+1)-A055587(n)`
-/

namespace A277919.P7047885698430682018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105306 (n + 1) - A055587 n

end

end A277919.P7047885698430682018

noncomputable section

/-- A277919: Triangle read by rows: CL(n,k) is the number of labeled subgraphs with k edges of the n-cycle C_n.

Offset 0, canonical program `A277919.P7047885698430682018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277919 (n : ℕ) : ℤ :=
  A277919.P7047885698430682018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277927.P18359111901922409751

`gcd(A277560(n), A277926(n))`
-/

namespace A277927.P18359111901922409751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277560 n) (A277926 n)

end

end A277927.P18359111901922409751

noncomputable section

/-- A277927: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 5", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277927.P18359111901922409751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277927 (n : ℕ) : ℤ :=
  (A277927.P18359111901922409751.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278029.P1112025626637894235

`Δ[A000124(n-A076411(n+1))]`
-/

namespace A278029.P1112025626637894235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ((n : ℤ) - A076411 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278029.P1112025626637894235

noncomputable section

/-- A278029: a(1) = 0; for n > 1, a(n) = k if n is a non-perfect-power, A007916(k); or 0 if n is a perfect power.

Offset 1, canonical program `A278029.P1112025626637894235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A278029 (n : ℕ) : ℤ :=
  A278029.P1112025626637894235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A278029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278043.P1081770688957329620

`A000120(A003726(n+1))`
-/

namespace A278043.P1081770688957329620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003726 (n + 1)).toNat

end

end A278043.P1081770688957329620

noncomputable section

/-- A278043: Number of 1's in tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A278043.P1081770688957329620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278043 (n : ℕ) : ℤ :=
  A278043.P1081770688957329620.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278045.P7038591754817271268

`val(A003726(n+1)+A000038(n), 2)`
-/

namespace A278045.P7038591754817271268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003726 (n + 1) + A000038 n).toNat 2

end

end A278045.P7038591754817271268

noncomputable section

/-- A278045: Number of trailing 0's in tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A278045.P7038591754817271268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278045 (n : ℕ) : ℤ :=
  (A278045.P7038591754817271268.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278164.P857982996237124715

`A277904(2*n-a(n-1))` with `a(0)=0`
-/

namespace A278164.P857982996237124715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A277904 ((2 * n : ℤ) - a (n - 1)).toNat

end

end A278164.P857982996237124715

noncomputable section

/-- A278164: Irregular triangle read by rows: row n (n >= 0) is obtained by listing numbers 0 .. A000123(n)-1.

Offset 1, canonical program `A278164.P857982996237124715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5307 terms. -/
def A278164 (n : ℕ) : ℤ :=
  A278164.P857982996237124715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5307 terms. -/
def A278164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278301.P979363314421420552

`A007317(n+1)-A000245(n)`
-/

namespace A278301.P979363314421420552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) - A000245 n

end

end A278301.P979363314421420552

noncomputable section

/-- A278301: Number of permutations of length n in the class of juxtapositions of 321-avoiders with 21-avoiders.

Offset 0, canonical program `A278301.P979363314421420552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A278301 (n : ℕ) : ℤ :=
  A278301.P979363314421420552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A278301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278317.P17917219794750219579

`a(n-A141419(n))+2` with `a(0)=0, a(1)=1`
-/

namespace A278317.P17917219794750219579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - A141419 n).toNat + 2

end

end A278317.P17917219794750219579

noncomputable section

/-- A278317: Number of neighbors of each new term in a right triangle read by rows.

Offset 1, canonical program `A278317.P17917219794750219579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278317 (n : ℕ) : ℤ :=
  (A278317.P17917219794750219579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278480.P13399696177341259936

`a(n-A141419(n))+3` with `a(0)=2, a(1)=4`
-/

namespace A278480.P13399696177341259936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a ((n : ℤ) - A141419 n).toNat + 3

end

end A278480.P13399696177341259936

noncomputable section

/-- A278480: Number of neighbors of the n-th term in a full right triangle read by rows.

Offset 1, canonical program `A278480.P13399696177341259936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278480 (n : ℕ) : ℤ :=
  (A278480.P13399696177341259936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278597.P5436521184196426050

`round((a(A193592(n)-1)+3)/2)` with `a(0)=1`
-/

namespace A278597.P5436521184196426050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (A193592 n - 1).toNat + 3 : ℚ) / 2)

end

end A278597.P5436521184196426050

noncomputable section

/-- A278597: One half of A278481.

Offset 1, canonical program `A278597.P5436521184196426050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278597 (n : ℕ) : ℤ :=
  A278597.P5436521184196426050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278646.P6809345885454626845

`Δ[n²]*A005043(n)`
-/

namespace A278646.P6809345885454626845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A005043 n

end

end A278646.P6809345885454626845

noncomputable section

/-- A278646: a(n) = ((2*n+1)/(n+1))*Sum_{j=0..n/2} binomial(n+1, j)*binomial(n-j-1, n-2*j).

Offset 0, canonical program `A278646.P6809345885454626845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A278646 (n : ℕ) : ℤ :=
  A278646.P6809345885454626845.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A278646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279136.P12562316986369065531

`A000035(n)+3*A097861(n)`
-/

namespace A279136.P12562316986369065531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 3 * A097861 n

end

end A279136.P12562316986369065531

noncomputable section

/-- A279136: a(n) = n*Sum_{i=0..n-1} binomial(n,i)*binomial(i-1,n-i-1)/(n-i).

Offset 0, canonical program `A279136.P12562316986369065531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A279136 (n : ℕ) : ℤ :=
  A279136.P12562316986369065531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A279136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279262.P434213535527223328

`2*(A029907(n)+A001911(n))`
-/

namespace A279262.P434213535527223328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029907 n + A001911 n)

end

end A279262.P434213535527223328

noncomputable section

/-- A279262: Number of n X 2 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A279262.P434213535527223328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A279262 (n : ℕ) : ℤ :=
  A279262.P434213535527223328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A279262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279495.P16641540049933314464

`∑{d}[n+1, A023533(#)]`
-/

namespace A279495.P16641540049933314464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023533 d

end

end A279495.P16641540049933314464

noncomputable section

/-- A279495: Number of tetrahedral numbers dividing n.

Offset 1, canonical program `A279495.P16641540049933314464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279495 (n : ℕ) : ℤ :=
  A279495.P16641540049933314464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279539.P10358371075013548821

`A092755(n+1)+n`
-/

namespace A279539.P10358371075013548821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092755 (n + 1) + (n : ℤ)

end

end A279539.P10358371075013548821

noncomputable section

/-- A279539: Sum of ceilings of natural logs of first n integers.

Offset 1, canonical program `A279539.P10358371075013548821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279539 (n : ℕ) : ℤ :=
  A279539.P10358371075013548821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279557.P14817192244775272998

`∑[A099376(abs(1-n))]`
-/

namespace A279557.P14817192244775272998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279557.P14817192244775272998

noncomputable section

/-- A279557: Number of length n inversion sequences avoiding the patterns 110, 120, and 021.

Offset 0, canonical program `A279557.P14817192244775272998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A279557 (n : ℕ) : ℤ :=
  A279557.P14817192244775272998.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A279557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279561.P4289259103180755608

`∑[A001791(abs(1-n))]`
-/

namespace A279561.P4289259103180755608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279561.P4289259103180755608

noncomputable section

/-- A279561: Number of length n inversion sequences avoiding the patterns 101, 102, 201, and 210.

Offset 0, canonical program `A279561.P4289259103180755608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A279561 (n : ℕ) : ℤ :=
  A279561.P4289259103180755608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A279561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279735.P6571742376258623597

`A006367(Δ[n²])`
-/

namespace A279735.P6571742376258623597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A279735.P6571742376258623597

noncomputable section

/-- A279735: Number of n X 2 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A279735.P6571742376258623597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A279735 (n : ℕ) : ℤ :=
  A279735.P6571742376258623597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A279735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279742.P2431605558967303777

`2*(A010049(n)+2*A000071(n+1))`
-/

namespace A279742.P2431605558967303777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010049 n + 2 * A000071 (n + 1))

end

end A279742.P2431605558967303777

noncomputable section

/-- A279742: Number of 2 X n 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A279742.P2431605558967303777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A279742 (n : ℕ) : ℤ :=
  A279742.P2431605558967303777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A279742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279929.P8314140879303540729

`A131944(n+1)%A080322(n+2)`
-/

namespace A279929.P8314140879303540729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131944 (n + 1)) (A080322 (n + 2))

end

end A279929.P8314140879303540729

noncomputable section

/-- A279929: Expansion of c(q)*c(q^2)/9 - c(q^3)*c(q^6)/3 in powers of q where c() is a cubic AGM theta function.

Offset 1, canonical program `A279929.P8314140879303540729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279929 (n : ℕ) : ℤ :=
  A279929.P8314140879303540729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280172.P14429094366416205304

`A003987(n)+1`
-/

namespace A280172.P14429094366416205304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + 1

end

end A280172.P14429094366416205304

noncomputable section

/-- A280172: Lexicographically earliest table of positive integers read by antidiagonals such that no row or column contains a repeated term.

Offset 1, canonical program `A280172.P14429094366416205304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280172 (n : ℕ) : ℤ :=
  A280172.P14429094366416205304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280247.P5390597219215679512

`∑[A280246(n+1)]`
-/

namespace A280247.P5390597219215679512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280247.P5390597219215679512

noncomputable section

/-- A280247: Partial sums of A280246 (Product_{d|n} psi(d)).

Offset 1, canonical program `A280247.P5390597219215679512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A280247 (n : ℕ) : ℤ :=
  A280247.P5390597219215679512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A280247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280569.P16408018769860519565

`gcd(2, A250120(n))/(-1)^n`
-/

namespace A280569.P16408018769860519565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A250120 n) : ℚ) / ((-1) ^ n : ℚ)

end

end A280569.P16408018769860519565

noncomputable section

/-- A280569: a(n) = (-1)^n * 2 if n = 5*k and n!=0, otherwise a(n) = (-1)^n.

Offset 0, canonical program `A280569.P16408018769860519565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280569.P16408018769860519565.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280965.P11828091217461109387

`∩[A256173(n+1), A263651(n+1)]`
-/

namespace A280965.P11828091217461109387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280965.P11828091217461109387

noncomputable section

/-- A280965: Nonsquares whose distances to the two nearest squares are squares.

Offset 1, canonical program `A280965.P11828091217461109387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A280965 (n : ℕ) : ℤ :=
  (A280965.P11828091217461109387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A280965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280995.P6106047691923245664

`A003188(n)-A055945(A003188(n))`
-/

namespace A280995.P6106047691923245664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n - A055945 (A003188 n).toNat

end

end A280995.P6106047691923245664

noncomputable section

/-- A280995: a(n) is the number produced when n is converted to binary reflected Gray code, the binary digits are reversed and the code is converted back to decimal.

Offset 0, canonical program `A280995.P6106047691923245664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280995 (n : ℕ) : ℤ :=
  A280995.P6106047691923245664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281018.P7272843195360736797

`∩[A281015(n+1), A281017(n+1)]`
-/

namespace A281018.P7272843195360736797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281018.P7272843195360736797

noncomputable section

/-- A281018: Numbers with a prime number of dots and a prime number of dashes in their International Morse numeral representation.

Offset 1, canonical program `A281018.P7272843195360736797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1704 terms. -/
def A281018 (n : ℕ) : ℤ :=
  (A281018.P7272843195360736797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1704 terms. -/
def A281018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281023.P5406655693289314768

`∑[A067392(n+1)]`
-/

namespace A281023.P5406655693289314768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281023.P5406655693289314768

noncomputable section

/-- A281023: Partial sums of A067392.

Offset 1, canonical program `A281023.P5406655693289314768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281023 (n : ℕ) : ℤ :=
  A281023.P5406655693289314768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281050.P15094595003626402173

`record[A000035(n)*A055243(A052928(n))]`
-/

namespace A281050.P15094595003626402173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A055243 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281050.P15094595003626402173

noncomputable section

/-- A281050: Number of n X 2 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A281050.P15094595003626402173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A281050 (n : ℕ) : ℤ :=
  A281050.P15094595003626402173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A281050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281122.P114872565162045204

`A345135(Δ[n²])`
-/

namespace A281122.P114872565162045204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345135 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A281122.P114872565162045204

noncomputable section

/-- A281122: Triangle T read by rows: n-th row (n>=0) gives the non-vanishing coefficients of the polynomial q(n,x) = ((x+1)^(2^n) - (x-1)^(2^n))/2.

Offset 0, canonical program `A281122.P114872565162045204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A281122 (n : ℕ) : ℤ :=
  A281122.P114872565162045204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A281122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281200.P17871408107867168491

`(A004277(3*n)+n)*2^n`
-/

namespace A281200.P17871408107867168491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 (3 * n) + (n : ℤ)) * (2 ^ n : ℤ)

end

end A281200.P17871408107867168491

noncomputable section

/-- A281200: Number of n X 3 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A281200.P17871408107867168491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A281200 (n : ℕ) : ℤ :=
  A281200.P17871408107867168491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A281200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281206.P5937654758335153391

`2*(A029907((n+1)%(n^4+1))+A001911(n))`
-/

namespace A281206.P5937654758335153391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029907 ((n + 1) % (n ^ 4 + 1)) + A001911 n)

end

end A281206.P5937654758335153391

noncomputable section

/-- A281206: Number of 2 X n 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A281206.P5937654758335153391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A281206 (n : ℕ) : ℤ :=
  A281206.P5937654758335153391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A281206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281292.P10672042603538441158

`∪[2*A280084(n+1), A280084(n+1)]`
-/

namespace A281292.P10672042603538441158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A281292.P10672042603538441158

noncomputable section

/-- A281292: Squarefree numbers that are the sum of two squares in exactly one way.

Offset 1, canonical program `A281292.P10672042603538441158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281292 (n : ℕ) : ℤ :=
  (A281292.P10672042603538441158.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281298.P11648243705684211318

`floor(A086756(n+1)/A000533(n))`
-/

namespace A281298.P11648243705684211318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086756 (n + 1) : ℚ) / (A000533 n : ℚ)⌋

end

end A281298.P11648243705684211318

noncomputable section

/-- A281298: a(n) is the n-th decimal digit from the right in n^n.

Offset 1, canonical program `A281298.P11648243705684211318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A281298 (n : ℕ) : ℤ :=
  A281298.P11648243705684211318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A281298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281881.P16857394866510108787

`∑[A010054(n)]*A267849(n)`
-/

namespace A281881.P16857394866510108787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A267849 n

end

end A281881.P16857394866510108787

noncomputable section

/-- A281881: Triangle read by rows: T(n,k) (n>=1, 2<=k<=n+1) is the number of k-sequences of balls colored with at most n colors such that exactly one ball is of a color seen previously in the sequence.

Offset 1, canonical program `A281881.P16857394866510108787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A281881 (n : ℕ) : ℤ :=
  A281881.P16857394866510108787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A281881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281925.P16287795133733270560

`filter[A001043(n+1), A101637(#)]`
-/

namespace A281925.P16287795133733270560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A281925.P16287795133733270560

noncomputable section

/-- A281925: Numbers that are the product of exactly 4 primes and are of the form prime(k) + prime(k + 1).

Offset 1, canonical program `A281925.P16287795133733270560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A281925 (n : ℕ) : ℤ :=
  A281925.P16287795133733270560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A281925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281995.P16123693745508675808

`record[A007913(n+1)/A003557(A075254(n+1))]`
-/

namespace A281995.P16123693745508675808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A003557 (A075254 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281995.P16123693745508675808

noncomputable section

/-- A281995: Squarefree numbers that, when added to the sum of their prime factors, remain squarefree.

Offset 1, canonical program `A281995.P16123693745508675808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A281995 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A281995.P16123693745508675808.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A281995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282029.P4628424250403549240

`n-A242096(or(1, n))`
-/

namespace A282029.P4628424250403549240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A242096 (Nat.lor 1 n)

end

end A282029.P4628424250403549240

noncomputable section

/-- A282029: a(n) = n - pi(n/2).

Offset 0, canonical program `A282029.P4628424250403549240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282029 (n : ℕ) : ℤ :=
  A282029.P4628424250403549240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282081.P11413017079100609461

`∑[A282080(n)]`
-/

namespace A282081.P11413017079100609461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282081.P11413017079100609461

noncomputable section

/-- A282081: Number of n-element subsets of [n+5] having an even sum.

Offset 0, canonical program `A282081.P11413017079100609461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282081 (n : ℕ) : ℤ :=
  A282081.P11413017079100609461.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282088.P14513073344983035111

`A279028(abs(A097141(n)))`
-/

namespace A282088.P14513073344983035111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 |A097141 n|.toNat

end

end A282088.P14513073344983035111

noncomputable section

/-- A282088: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282088.P14513073344983035111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A282088 (n : ℕ) : ℤ :=
  A282088.P14513073344983035111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A282088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282121.P687425894295116859

`or(A277926(n), A277952(A237420(n)))`
-/

namespace A282121.P687425894295116859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277926 n) (A277952 (A237420 n).toNat)

end

end A282121.P687425894295116859

noncomputable section

/-- A282121: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282121.P687425894295116859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282121 (n : ℕ) : ℤ :=
  A282121.P687425894295116859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282142.P11491660470681616041

`lcm(A056594(n), A281146(n))`
-/

namespace A282142.P11491660470681616041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A281146 n)

end

end A282142.P11491660470681616041

noncomputable section

/-- A282142: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282142.P11491660470681616041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282142 (n : ℕ) : ℤ :=
  (A282142.P11491660470681616041.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282388.P15003936815126334606

`A133179(Δ[n²])`
-/

namespace A282388.P15003936815126334606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A282388.P15003936815126334606

noncomputable section

/-- A282388: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282388.P15003936815126334606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 422 terms. -/
def A282388 (n : ℕ) : ℤ :=
  A282388.P15003936815126334606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 422 terms. -/
def A282388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282745.P1956393292476371609

`A004736(lt[A002262(n)%5, 2]+1)-1`
-/

namespace A282745.P1956393292476371609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - 1

end

end A282745.P1956393292476371609

noncomputable section

/-- A282745: Irregular triangle read by rows, giving coefficients arising when solving g(n) = f(n)+ f(n-1) + f(n-2) + f(n-3) + f(n-4) for f(n).

Offset 0, canonical program `A282745.P1956393292476371609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A282745 (n : ℕ) : ℤ :=
  A282745.P1956393292476371609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A282745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282796.P8939512327850085478

`A056830(n)+A279028(n)-A000035(n)`
-/

namespace A282796.P8939512327850085478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n + (A279028 n - A000035 n)

end

end A282796.P8939512327850085478

noncomputable section

/-- A282796: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282796.P8939512327850085478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282796 (n : ℕ) : ℤ :=
  A282796.P8939512327850085478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282797.P11912184071198259924

`A279028(n)+A056830(A052928(n))`
-/

namespace A282797.P11912184071198259924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 n + A056830 (A052928 n).toNat

end

end A282797.P11912184071198259924

noncomputable section

/-- A282797: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282797.P11912184071198259924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282797 (n : ℕ) : ℤ :=
  A282797.P11912184071198259924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283234.P14512764588910667133

`∑[2*A282162(n)]`
-/

namespace A283234.P14512764588910667133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283234.P14512764588910667133

noncomputable section

/-- A283234: 2*A001950.

Offset 1, canonical program `A283234.P14512764588910667133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283234 (n : ℕ) : ℤ :=
  A283234.P14512764588910667133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283360.P18224020745696931425

`abs(A283025(n+2)-A283025(n+1))`
-/

namespace A283360.P18224020745696931425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A283025 (n + 2) - A283025 (n + 1)|

end

end A283360.P18224020745696931425

noncomputable section

/-- A283360: Absolute values of first differences of A283025.

Offset 1, canonical program `A283360.P18224020745696931425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283360 (n : ℕ) : ℤ :=
  A283360.P18224020745696931425.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283482.P13946192901551077010

`eq[0, A095901(n+1)]+1`
-/

namespace A283482.P13946192901551077010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283482.P13946192901551077010

noncomputable section

/-- A283482: Positions of even terms in A004001.

Offset 1, canonical program `A283482.P13946192901551077010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5068 terms. -/
def A283482 (n : ℕ) : ℤ :=
  (A283482.P13946192901551077010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5068 terms. -/
def A283482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283599.P7289157399895568468

`record[gcd(n+1, 1-A065764(n+1))]`
-/

namespace A283599.P7289157399895568468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (1 - A065764 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283599.P7289157399895568468

noncomputable section

/-- A283599: Numbers k that divide sigma(k^2) - 1.

Offset 1, canonical program `A283599.P7289157399895568468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1240 terms. -/
def A283599 (n : ℕ) : ℤ :=
  (A283599.P7289157399895568468.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1240 terms. -/
def A283599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283655.P11118753203039852526

`A004001(A004001(n+2))-A004001(A080677(n+1))`
-/

namespace A283655.P11118753203039852526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A004001 (n + 2)).toNat - A004001 (A080677 (n + 1)).toNat

end

end A283655.P11118753203039852526

noncomputable section

/-- A283655: a(n) = b(b(n+1)) - b(n-b(n)+1) where b(n) = A004001(n).

Offset 1, canonical program `A283655.P11118753203039852526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A283655 (n : ℕ) : ℤ :=
  A283655.P11118753203039852526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A283655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283672.P2489847264499951174

`gcd(A028310(A005185(n+3)), A283467(n+2))`
-/

namespace A283672.P2489847264499951174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (A005185 (n + 3)).toNat) (A283467 (n + 2))

end

end A283672.P2489847264499951174

noncomputable section

/-- A283672: a(n) = gcd(q(n - q(n+1) + 2), q(n - q(n) + 2)) where q(n) = A005185(n).

Offset 1, canonical program `A283672.P2489847264499951174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A283672 (n : ℕ) : ℤ :=
  (A283672.P2489847264499951174.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A283672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283683.P9744256243260942993

`A020906(n+1)-1`
-/

namespace A283683.P9744256243260942993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020906 (n + 1) - 1

end

end A283683.P9744256243260942993

noncomputable section

/-- A283683: Unique sequence with a(1)=0, a(2)=1, representing an array T(i,j) read by antidiagonals in which every row is this sequence itself.

Offset 1, canonical program `A283683.P9744256243260942993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283683 (n : ℕ) : ℤ :=
  A283683.P9744256243260942993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283833.P14205388821880758029

`abs(1-A002260(A006697(abs(2*n-n))))+1`
-/

namespace A283833.P14205388821880758029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A002260 (A006697 |(2 * n : ℤ) - (n : ℤ)|.toNat).toNat)| + 1

end

end A283833.P14205388821880758029

noncomputable section

/-- A283833: For t >= 0, if 2^t + t - 3 <= n <= 2^t + t - 1 then a(n) = 2^t - 1, while if 2^t + t - 1 < n < 2^(t+1) + t - 3 then a(n) = 2^(t+1) + t - 2 - n.

Offset 0, canonical program `A283833.P14205388821880758029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A283833 (n : ℕ) : ℤ :=
  A283833.P14205388821880758029.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A283833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283845.P12175913799182392741

`A123231(A204022(n+1))`
-/

namespace A283845.P12175913799182392741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A204022 (n + 1)).toNat

end

end A283845.P12175913799182392741

noncomputable section

/-- A283845: Square array read by antidiagonals: T(1,1) = T(1,2) = T(2,1) = T(2,2) = 1; thereafter T(m,n) = min {T(m,n-2) + T(m,n-1), T(m-2,n) + T(m-1,n), T(m-2,n-2) + T(m-1,n-1)}.

Offset 1, canonical program `A283845.P12175913799182392741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A283845 (n : ℕ) : ℤ :=
  A283845.P12175913799182392741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A283845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284115.P16117482239181993886

`A104764(n+1)*A104765(n+1)`
-/

namespace A284115.P16117482239181993886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104764 (n + 1) * A104765 (n + 1)

end

end A284115.P16117482239181993886

noncomputable section

/-- A284115: Hosoya triangle of Lucas type.

Offset 1, canonical program `A284115.P16117482239181993886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284115 (n : ℕ) : ℤ :=
  A284115.P16117482239181993886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284126.P15441816278525593705

`A002203(A002260(n+1))*A002203(A004736(n+1))`
-/

namespace A284126.P15441816278525593705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (A002260 (n + 1)).toNat * A002203 (A004736 (n + 1)).toNat

end

end A284126.P15441816278525593705

noncomputable section

/-- A284126: Hosoya triangle of Pell-Lucas type.

Offset 1, canonical program `A284126.P15441816278525593705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284126 (n : ℕ) : ℤ :=
  A284126.P15441816278525593705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284127.P6552234279612137804

`A215928(A002260(n+1))*A215928(A004736(n+1))`
-/

namespace A284127.P6552234279612137804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (A002260 (n + 1)).toNat * A215928 (A004736 (n + 1)).toNat

end

end A284127.P6552234279612137804

noncomputable section

/-- A284127: Hosoya triangle of Pell type, read by rows.

Offset 1, canonical program `A284127.P6552234279612137804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284127 (n : ℕ) : ℤ :=
  A284127.P6552234279612137804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284151.P14768707365356727264

`A284099(n+1)+A284105(n+1)`
-/

namespace A284151.P14768707365356727264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284099 (n + 1) + A284105 (n + 1)

end

end A284151.P14768707365356727264

noncomputable section

/-- A284151: Sum_{d|n, d=1 or 6 mod 7} d.

Offset 1, canonical program `A284151.P14768707365356727264`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284099, A284105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284151 (n : ℕ) : ℤ :=
  A284151.P14768707365356727264.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284099, A284105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284235.P13269542876579324852

`A263013(n)+A056830(n)`
-/

namespace A284235.P13269542876579324852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n + A056830 n

end

end A284235.P13269542876579324852

noncomputable section

/-- A284235: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284235.P13269542876579324852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A284235 (n : ℕ) : ℤ :=
  A284235.P13269542876579324852.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A284235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284371.P12964631515090121639

`A026364(n+1)-Δ[n²]`
-/

namespace A284371.P12964631515090121639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026364 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284371.P12964631515090121639

noncomputable section

/-- A284371: Positions of 1 in A284369; complement of A284370.

Offset 1, canonical program `A284371.P12964631515090121639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284371 (n : ℕ) : ℤ :=
  A284371.P12964631515090121639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284505.P3040843879912031655

`A283963(∑[char[2*n]])`
-/

namespace A284505.P3040843879912031655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284505.P3040843879912031655

noncomputable section

/-- A284505: Fixed point of the morphism 0->1, 1->1100.

Offset 1, canonical program `A284505.P3040843879912031655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284505 (n : ℕ) : ℤ :=
  A284505.P3040843879912031655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284773.P8746156910445809745

`∑[char[A283965(n+1)]+1]`
-/

namespace A284773.P8746156910445809745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284773.P8746156910445809745

noncomputable section

/-- A284773: Positions of 0 in A284772; complement of A284774.

Offset 1, canonical program `A284773.P8746156910445809745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284773 (n : ℕ) : ℤ :=
  (A284773.P8746156910445809745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284774.P7490368662566357042

`A283965(n+1)+1+n`
-/

namespace A284774.P7490368662566357042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (n + 1) + 1 + (n : ℤ)

end

end A284774.P7490368662566357042

noncomputable section

/-- A284774: Positions of 1 in A284772; complement of A284773.

Offset 1, canonical program `A284774.P7490368662566357042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284774 (n : ℕ) : ℤ :=
  A284774.P7490368662566357042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284880.P8602811279724322610

`A189630(n+1)-(n+1)`
-/

namespace A284880.P8602811279724322610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189630 (n + 1) - (n + 1 : ℤ)

end

end A284880.P8602811279724322610

noncomputable section

/-- A284880: Positions of 1 in A284878; complement of A284879.

Offset 1, canonical program `A284880.P8602811279724322610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284880 (n : ℕ) : ℤ :=
  A284880.P8602811279724322610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284907.P2959481405445577709

`A189670(n+1)-n`
-/

namespace A284907.P2959481405445577709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1) - (n : ℤ)

end

end A284907.P2959481405445577709

noncomputable section

/-- A284907: Positions of 1 in A284905; complement of A284906.

Offset 1, canonical program `A284907.P2959481405445577709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284907 (n : ℕ) : ℤ :=
  A284907.P2959481405445577709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284921.P2849752813632733205

`A284293(n+1)+A256077(n+1)`
-/

namespace A284921.P2849752813632733205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1) + A256077 (n + 1)

end

end A284921.P2849752813632733205

noncomputable section

/-- A284921: Numbers with digits 2 and 7 only.

Offset 1, canonical program `A284921.P2849752813632733205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284921 (n : ℕ) : ℤ :=
  A284921.P2849752813632733205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284968.P8591459530232121028

`∑[∑[A000245(n)]]`
-/

namespace A284968.P8591459530232121028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P8591459530232121028

noncomputable section

/-- A284968: Least hairpin family matchings with n edges that are both L&P and C&C whose leftmost edge is part of a hairpin.

Offset 1, canonical program `A284968.P8591459530232121028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A284968 (n : ℕ) : ℤ :=
  A284968.P8591459530232121028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A284968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285116.P11562393058970987769

`or(A097805(n+1), A097805(n))`
-/

namespace A285116.P11562393058970987769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097805 (n + 1)) (A097805 n)

end

end A285116.P11562393058970987769

noncomputable section

/-- A285116: Triangle read by rows: T(0,n) = T(n,n) = 1; and for n > 0, 0 < k < n, T(n,k) = C(n-1,k-1) OR C(n-1,k), where C(n,k) is binomial coefficient (A007318) and OR is bitwise-OR (A003986).

Offset 0, canonical program `A285116.P11562393058970987769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285116 (n : ℕ) : ℤ :=
  A285116.P11562393058970987769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285269.P15130939966737221586

`Δ[A278114(floor(sqrt(n²+1)))]`
-/

namespace A285269.P15130939966737221586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285269.P15130939966737221586

noncomputable section

/-- A285269: Number of (odd) primes between 2*n^2 and 2*(n+1)^2.

Offset 0, canonical program `A285269.P15130939966737221586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285269 (n : ℕ) : ℤ :=
  A285269.P15130939966737221586.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285436.P11623261315318011481

`A277918(floor(n/2))`
-/

namespace A285436.P11623261315318011481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277918 ⌊(n : ℚ) / 2⌋.toNat

end

end A285436.P11623261315318011481

noncomputable section

/-- A285436: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285436.P11623261315318011481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A285436 (n : ℕ) : ℤ :=
  A285436.P11623261315318011481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A285436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285473.P5965544858136921209

`or(1, A277560(n))`
-/

namespace A285473.P5965544858136921209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A277560 n)

end

end A285473.P5965544858136921209

noncomputable section

/-- A285473: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285473.P5965544858136921209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285473 (n : ℕ) : ℤ :=
  A285473.P5965544858136921209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285510.P11499573024811075816

`∪[2*n+1, A187811(n+1)]`
-/

namespace A285510.P11499573024811075816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285510.P11499573024811075816

noncomputable section

/-- A285510: Numbers k such that the average of the squarefree divisors of k is an integer.

Offset 1, canonical program `A285510.P11499573024811075816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285510 (n : ℕ) : ℤ :=
  (A285510.P11499573024811075816.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285680.P812841276497210756

`A284394(comp[A284396(n+1)]+1)`
-/

namespace A285680.P812841276497210756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284396 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284394 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A285680.P812841276497210756

noncomputable section

/-- A285680: {1010->2}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A285680.P812841276497210756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7941 terms. -/
def A285680 (n : ℕ) : ℤ :=
  A285680.P812841276497210756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7941 terms. -/
def A285680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285774.P2339232712092425148

`A077957(n)*A133179(n)`
-/

namespace A285774.P2339232712092425148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n * A133179 n

end

end A285774.P2339232712092425148

noncomputable section

/-- A285774: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285774.P2339232712092425148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 394 terms. -/
def A285774 (n : ℕ) : ℤ :=
  A285774.P2339232712092425148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 394 terms. -/
def A285774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285775.P6581137490788025272

`xor(A063524(A004525(n)), A277560(n))`
-/

namespace A285775.P6581137490788025272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 (A004525 n).toNat) (A277560 n)

end

end A285775.P6581137490788025272

noncomputable section

/-- A285775: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285775.P6581137490788025272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285775 (n : ℕ) : ℤ :=
  A285775.P6581137490788025272.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285851.P12289983839867635812

`A001223(n+1)/gcd(A001223(n+1), A226502(n+1))`
-/

namespace A285851.P12289983839867635812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / (Int.gcd (A001223 (n + 1)) (A226502 (n + 1)) : ℚ)

end

end A285851.P12289983839867635812

noncomputable section

/-- A285851: Denominator of the ratio of alternate consecutive prime gaps: Denominator((prime(n + 3) - prime(n + 2))/(prime(n + 1) - prime(n))).

Offset 1, canonical program `A285851.P12289983839867635812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A285851 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285851.P12289983839867635812.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A285851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285898.P6248290526350817964

`val(A077320(A049777(n+1)), A077320(n+1))`
-/

namespace A285898.P6248290526350817964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077320 (A049777 (n + 1)).toNat).toNat (A077320 (n + 1)).toNat

end

end A285898.P6248290526350817964

noncomputable section

/-- A285898: Triangle read by row: T(n,k) = number of partitions of n into exactly k consecutive parts (1 <= k <= n).

Offset 1, canonical program `A285898.P6248290526350817964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A285898 (n : ℕ) : ℤ :=
  (A285898.P6248290526350817964.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A285898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285967.P213330600347507789

`A285958(n+1)+A123087(n)`
-/

namespace A285967.P213330600347507789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285958 (n + 1) + A123087 n

end

end A285967.P213330600347507789

noncomputable section

/-- A285967: Positions of 0 in A285966; complement of A285968.

Offset 1, canonical program `A285967.P213330600347507789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285967 (n : ℕ) : ℤ :=
  A285967.P213330600347507789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285969.P11670156523082472099

`char[comp[∑[A036581(n)]]]`
-/

namespace A285969.P11670156523082472099
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285969.P11670156523082472099

noncomputable section

/-- A285969: {0110->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285969.P11670156523082472099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A285969 (n : ℕ) : ℤ :=
  (A285969.P11670156523082472099.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A285969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285980.P9702020314867581309

`∑[char[A285979(n+1)-(n+1)]+1]`
-/

namespace A285980.P9702020314867581309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285979 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285980.P9702020314867581309

noncomputable section

/-- A285980: Positions of 1 in A285978; complement of A285979.

Offset 1, canonical program `A285980.P9702020314867581309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285980 (n : ℕ) : ℤ :=
  (A285980.P9702020314867581309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286109.P13280078457702034505

`A057944(n)+A003987(n)`
-/

namespace A286109.P13280078457702034505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A003987 n

end

end A286109.P13280078457702034505

noncomputable section

/-- A286109: Square array read by antidiagonals: A(n,k) = T(n XOR k, 2*(n AND k)), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286109.P13280078457702034505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286109 (n : ℕ) : ℤ :=
  A286109.P13280078457702034505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286145.P7193597459372370240

`A003987(n)+A000217(A025581(n)+A003987(n))`
-/

namespace A286145.P7193597459372370240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + A000217 (A025581 n + A003987 n).toNat

end

end A286145.P7193597459372370240

noncomputable section

/-- A286145: Square array read by antidiagonals: A(n,k) = T(n XOR k, k), where T(n,k) is sequence A001477 considered as a two-dimensional table, and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286145.P7193597459372370240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286145 (n : ℕ) : ℤ :=
  A286145.P7193597459372370240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286159.P12324638875471488672

`A286158(A038722(n+1))`
-/

namespace A286159.P12324638875471488672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (A038722 (n + 1)).toNat

end

end A286159.P12324638875471488672

noncomputable section

/-- A286159: Lower triangular region of array A286156, transposed.

Offset 1, canonical program `A286159.P12324638875471488672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286159 (n : ℕ) : ℤ :=
  A286159.P12324638875471488672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286185.P1744816653617601400

`A286182(n+1)+2*n`
-/

namespace A286185.P1744816653617601400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286182 (n + 1) + (2 * n : ℤ)

end

end A286185.P1744816653617601400

noncomputable section

/-- A286185: Number of connected induced (non-null) subgraphs of the Möbius ladder graph with 2n nodes.

Offset 1, canonical program `A286185.P1744816653617601400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A286185 (n : ℕ) : ℤ :=
  A286185.P1744816653617601400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A286185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286308.P886211465635858917

`eq[2, A104714(n)]`
-/

namespace A286308.P886211465635858917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286308.P886211465635858917

noncomputable section

/-- A286308: Numbers m such that gcd(m, F(m)) = 2, where F(m) denotes the m-th Fibonacci number.

Offset 1, canonical program `A286308.P886211465635858917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A286308 (n : ℕ) : ℤ :=
  (A286308.P886211465635858917.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A286308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286689.P1415532130380415468

`∑[2-A187967(n+1)]`
-/

namespace A286689.P1415532130380415468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A187967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286689.P1415532130380415468

noncomputable section

/-- A286689: Positions of 0 in A286688; complement of A286690.

Offset 1, canonical program `A286689.P1415532130380415468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286689 (n : ℕ) : ℤ :=
  A286689.P1415532130380415468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286753.P7951708052083784182

`2*n+A035340(n)%2+1`
-/

namespace A286753.P7951708052083784182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (Int.tmod (A035340 n) 2 + 1)

end

end A286753.P7951708052083784182

noncomputable section

/-- A286753: Positions of 0 in A286752; complement of A286753.

Offset 1, canonical program `A286753.P7951708052083784182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286753 (n : ℕ) : ℤ :=
  A286753.P7951708052083784182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286770.P12168461856078736924

`A057427(xor(2, n))*A280410(n)`
-/

namespace A286770.P12168461856078736924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.xor 2 n) * A280410 n

end

end A286770.P12168461856078736924

noncomputable section

/-- A286770: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A286770.P12168461856078736924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A286770 (n : ℕ) : ℤ :=
  A286770.P12168461856078736924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A286770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286808.P17632618332489192172

`A138591(A028310(n))+n`
-/

namespace A286808.P17632618332489192172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (A028310 n).toNat + (n : ℤ)

end

end A286808.P17632618332489192172

noncomputable section

/-- A286808: Positions of 0 in A286807; complement of A286809.

Offset 1, canonical program `A286808.P17632618332489192172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286808 (n : ℕ) : ℤ :=
  A286808.P17632618332489192172.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286863.P9330102431573233598

`A000042(A004763(n+2)-n)`
-/

namespace A286863.P9330102431573233598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A004763 (n + 2) - (n : ℤ)).toNat

end

end A286863.P9330102431573233598

noncomputable section

/-- A286863: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 814", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A286863.P9330102431573233598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A286863 (n : ℕ) : ℤ :=
  A286863.P9330102431573233598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A286863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286908.P7172583901659206460

`a(n-1)+A286903(n)+1` with `a(0)=1`
-/

namespace A286908.P7172583901659206460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A286903 n + 1)

end

end A286908.P7172583901659206460

noncomputable section

/-- A286908: Positions of 0 in A286907; complement of A286909.

Offset 1, canonical program `A286908.P7172583901659206460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286908 (n : ℕ) : ℤ :=
  A286908.P7172583901659206460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286909.P7521876757351739898

`∑[2*Δ[A001951(n)]]`
-/

namespace A286909.P7521876757351739898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286909.P7521876757351739898

noncomputable section

/-- A286909: Positions of 1 in A286907; complement of A286908.

Offset 1, canonical program `A286909.P7521876757351739898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286909 (n : ℕ) : ℤ :=
  A286909.P7521876757351739898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286925.P3784326360336605252

`A286688(xor(1, n)+1)`
-/

namespace A286925.P3784326360336605252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (Nat.xor 1 n + 1)

end

end A286925.P3784326360336605252

noncomputable section

/-- A286925: {0->01,1->00}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286925.P3784326360336605252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286925 (n : ℕ) : ℤ :=
  A286925.P3784326360336605252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286926.P4754940036988776719

`∑[A144611(n+1)+A144611(n)]`
-/

namespace A286926.P4754940036988776719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (n + 1) + A144611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286926.P4754940036988776719

noncomputable section

/-- A286926: Positions of 0 in A286925; complement of A286927.

Offset 1, canonical program `A286926.P4754940036988776719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286926 (n : ℕ) : ℤ :=
  A286926.P4754940036988776719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287091.P14879557112610420772

`ceil(A008620(A053799(n))/A008458(n))`
-/

namespace A287091.P14879557112610420772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008620 (A053799 n).toNat : ℚ) / (A008458 n : ℚ)⌉

end

end A287091.P14879557112610420772

noncomputable section

/-- A287091: Expansion of Product_{k>=1} 1/(1 - x^((2*k-1)^3)).

Offset 0, canonical program `A287091.P14879557112610420772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A287091 (n : ℕ) : ℤ :=
  A287091.P14879557112610420772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A287091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287373.P285798426159073330

`lt[A101666(n), 1]+1`
-/

namespace A287373.P285798426159073330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101666 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287373.P285798426159073330

noncomputable section

/-- A287373: Positions of 0 in A101666.

Offset 1, canonical program `A287373.P285798426159073330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A287373 (n : ℕ) : ℤ :=
  (A287373.P285798426159073330.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A287373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287441.P16492158289097742092

`3*(n+1)-A287438(n+1)`
-/

namespace A287441.P16492158289097742092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A287438 (n + 1)

end

end A287441.P16492158289097742092

noncomputable section

/-- A287441: Positions of 2 in A287438.

Offset 1, canonical program `A287441.P16492158289097742092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287441 (n : ℕ) : ℤ :=
  A287441.P16492158289097742092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287529.P12551350988628766671

`A287528(n+1)+3*n+1`
-/

namespace A287529.P12551350988628766671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (n + 1) + (3 * n + 1 : ℤ)

end

end A287529.P12551350988628766671

noncomputable section

/-- A287529: Positions of 0 in A287528.

Offset 1, canonical program `A287529.P12551350988628766671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287529 (n : ℕ) : ℤ :=
  A287529.P12551350988628766671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287790.P4979616440180160803

`A287657(A004396(n+1))`
-/

namespace A287790.P4979616440180160803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287657 (A004396 (n + 1)).toNat

end

end A287790.P4979616440180160803

noncomputable section

/-- A287790: {0->001, 1->110}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287790.P4979616440180160803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287790 (n : ℕ) : ℤ :=
  A287790.P4979616440180160803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287795.P10719789566400101505

`1-A287657(A133310(n))`
-/

namespace A287795.P10719789566400101505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287657 (A133310 n).toNat

end

end A287795.P10719789566400101505

noncomputable section

/-- A287795: {0->101, 1->010}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287795.P10719789566400101505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287795 (n : ℕ) : ℤ :=
  A287795.P10719789566400101505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287803.P12111255639484665447

`2*A380960(n)+n+1`
-/

namespace A287803.P12111255639484665447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A380960 n + (n + 1 : ℤ)

end

end A287803.P12111255639484665447

noncomputable section

/-- A287803: Positions of 1 in A287801; complement of A287802.

Offset 1, canonical program `A287803.P12111255639484665447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287803 (n : ℕ) : ℤ :=
  A287803.P12111255639484665447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287868.P11245479068547752600

`lt[0, A103270(n+2)]+2`
-/

namespace A287868.P11245479068547752600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103270 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A287868.P11245479068547752600

noncomputable section

/-- A287868: Positions of 2's in A103270.

Offset 1, canonical program `A287868.P11245479068547752600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4136 terms. -/
def A287868 (n : ℕ) : ℤ :=
  (A287868.P11245479068547752600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4136 terms. -/
def A287868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288143.P10004612521345683866

`(-1)^n*A214262(n+1)`
-/

namespace A288143.P10004612521345683866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A214262 (n + 1)

end

end A288143.P10004612521345683866

noncomputable section

/-- A288143: Expansion of x * phi(x) * phi(x^3)^2 * f(x, x^5)^3 in powers of x where phi() is a Ramanujan theta function and f(, ) is Ramanujan's general theta function.

Offset 1, canonical program `A288143.P10004612521345683866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288143 (n : ℕ) : ℤ :=
  A288143.P10004612521345683866.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288196.P410680095994228574

`A286865(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A288196.P410680095994228574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A286865 n - a (n - 1)

end

end A288196.P410680095994228574

noncomputable section

/-- A288196: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288196.P410680095994228574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A288196 (n : ℕ) : ℤ :=
  A288196.P410680095994228574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A288196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288203.P3805704853841922969

`(∑[∑[A138591(n+1)]]+1)%2`
-/

namespace A288203.P3805704853841922969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A288203.P3805704853841922969

noncomputable section

/-- A288203: Fixed point of the mapping 00->0010, 1->010, starting with 00.

Offset 1, canonical program `A288203.P3805704853841922969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288203 (n : ℕ) : ℤ :=
  A288203.P3805704853841922969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288381.P12069710010268549905

`A288132(abs(1-n)+1)`
-/

namespace A288381.P12069710010268549905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (|1 - (n : ℤ)| + 1).toNat

end

end A288381.P12069710010268549905

noncomputable section

/-- A288381: Fixed point of the mapping 00->0001, 1->11, starting with 00.

Offset 1, canonical program `A288381.P12069710010268549905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288381 (n : ℕ) : ℤ :=
  A288381.P12069710010268549905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288417.P12479568783513944620

`∑{d}[n+1, A000593(#)]`
-/

namespace A288417.P12479568783513944620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d

end

end A288417.P12479568783513944620

noncomputable section

/-- A288417: a(n) = Sum_{d|n} A000593(n/d).

Offset 1, canonical program `A288417.P12479568783513944620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288417 (n : ℕ) : ℤ :=
  A288417.P12479568783513944620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288695.P14736522224666781171

`2*A136495(n+1)-(n+1)`
-/

namespace A288695.P14736522224666781171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136495 (n + 1) - (n + 1 : ℤ)

end

end A288695.P14736522224666781171

noncomputable section

/-- A288695: Positions of 0 in A288694; complement of A288696.

Offset 1, canonical program `A288695.P14736522224666781171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288695 (n : ℕ) : ℤ :=
  A288695.P14736522224666781171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288696.P14269972040630467567

`A136495(A136495(∑[char[2*n]]))+1+n`
-/

namespace A288696.P14269972040630467567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A136495 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1 + (n : ℤ)

end

end A288696.P14269972040630467567

noncomputable section

/-- A288696: Positions of 1 in A288694; complement of A288695.

Offset 1, canonical program `A288696.P14269972040630467567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288696 (n : ℕ) : ℤ :=
  A288696.P14269972040630467567.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288707.P4491168052433838887

`A189661(n-gcd(n, ∑[n])+1)`
-/

namespace A288707.P4491168052433838887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + 1).toNat

end

end A288707.P4491168052433838887

noncomputable section

/-- A288707: 0-limiting word of the mapping 00->1000, 10->00, starting with 00.

Offset 1, canonical program `A288707.P4491168052433838887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288707 (n : ℕ) : ℤ :=
  A288707.P4491168052433838887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288713.P9236112335966730183

`gcd(A000038(n), A288709(n+1))`
-/

namespace A288713.P9236112335966730183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A288709 (n + 1))

end

end A288713.P9236112335966730183

noncomputable section

/-- A288713: Positions of 1 in A288711; complement of A288712.

Offset 1, canonical program `A288713.P9236112335966730183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288713 (n : ℕ) : ℤ :=
  (A288713.P9236112335966730183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288808.P2515137361207868188

`A060546(n)*A133179(n)`
-/

namespace A288808.P2515137361207868188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A133179 n

end

end A288808.P2515137361207868188

noncomputable section

/-- A288808: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 510", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288808.P2515137361207868188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 393 terms. -/
def A288808 (n : ℕ) : ℤ :=
  A288808.P2515137361207868188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 393 terms. -/
def A288808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288875.P7032637044541296908

`gcd(A000038(n), A214406(A061579(n)))`
-/

namespace A288875.P7032637044541296908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A214406 (A061579 n).toNat)

end

end A288875.P7032637044541296908

noncomputable section

/-- A288875: Triangle read by rows. The rows give the coefficients of the numerator polynomials for the o.g.f.s of the diagonal sequences of triangle A028338.

Offset 0, canonical program `A288875.P7032637044541296908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A288875 (n : ℕ) : ℤ :=
  (A288875.P7032637044541296908.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A288875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288997.P1517214951232274038

`A159684(A081477(n+1)-n)`
-/

namespace A288997.P1517214951232274038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A081477 (n + 1) - (n : ℤ)).toNat

end

end A288997.P1517214951232274038

noncomputable section

/-- A288997: Fixed point of the mapping 00->0010, 01->001, 10->001, starting with 00.

Offset 1, canonical program `A288997.P1517214951232274038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288997 (n : ℕ) : ℤ :=
  A288997.P1517214951232274038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289233.P11314682189419640331

`∑[A008611(n)]-A011655(A008624(n))`
-/

namespace A289233.P11314682189419640331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A011655 (A008624 n).toNat

end

end A289233.P11314682189419640331

noncomputable section

/-- A289233: Largest number of disjoint point triples that can be chosen from an n X n X n triangular point grid, each point triple forming a 2 X 2 X 2 triangle.

Offset 1, canonical program `A289233.P11314682189419640331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289233 (n : ℕ) : ℤ :=
  A289233.P11314682189419640331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289448.P5757188125060123569

`2*(A000108(n)-A135336(n))+1`
-/

namespace A289448.P5757188125060123569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000108 n - A135336 n) + 1

end

end A289448.P5757188125060123569

noncomputable section

/-- A289448: a(n) is the number of permutations of length n that avoid the pattern 231 and the mesh pattern (21, 337) or the same sequence for the mesh patterns (21, 339), (21, 369), (21, 371).

Offset 0, canonical program `A289448.P5757188125060123569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289448 (n : ℕ) : ℤ :=
  A289448.P5757188125060123569.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289499.P16333506063555151706

`A289495(2*(n+1))-A289500(n+1)`
-/

namespace A289499.P16333506063555151706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289495 (2 * (n + 1)) - A289500 (n + 1)

end

end A289499.P16333506063555151706

noncomputable section

/-- A289499: Number of primes in the interval [8n, 9n].

Offset 1, canonical program `A289499.P16333506063555151706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289499 (n : ℕ) : ℤ :=
  A289499.P16333506063555151706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289589.P10535227749720856808

`A000108(n)-A135336(n)+1`
-/

namespace A289589.P10535227749720856808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A135336 n + 1

end

end A289589.P10535227749720856808

noncomputable section

/-- A289589: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 165) or the same sequence for the mesh patterns (12, 167), (12, 225), (12, 233), (12, 270), (12, 302), (12, 330), (12, 458).

Offset 0, canonical program `A289589.P10535227749720856808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289589 (n : ℕ) : ℤ :=
  A289589.P10535227749720856808.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289589.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289615.P7136354491060648403

`or(char[A055228(n)], A246604(n))`
-/

namespace A289615.P7136354491060648403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055228 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A246604 n)

end

end A289615.P7136354491060648403

noncomputable section

/-- A289615: A246604 (Catalan(n)-n) with initial terms 1,0,0,2 changed to 1,1,1,3.

Offset 0, canonical program `A289615.P7136354491060648403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289615 (n : ℕ) : ℤ :=
  A289615.P7136354491060648403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289652.P1856319461731628592

`gcd(C(2, n), A120304(n))`
-/

namespace A289652.P1856319461731628592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A120304 n)

end

end A289652.P1856319461731628592

noncomputable section

/-- A289652: Catalan numbers - 2 (A120304) with first three terms changed to 1,1,1.

Offset 0, canonical program `A289652.P1856319461731628592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289652 (n : ℕ) : ℤ :=
  (A289652.P1856319461731628592.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289768.P1306473856639736861

`A038185(A004526(n))`
-/

namespace A289768.P1306473856639736861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038185 (A004526 n).toNat

end

end A289768.P1306473856639736861

noncomputable section

/-- A289768: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 598", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A289768.P1306473856639736861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A289768 (n : ℕ) : ℤ :=
  A289768.P1306473856639736861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A289768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289769.P5085602509351808486

`A060546(n)*A273911(A004526(n))`
-/

namespace A289769.P5085602509351808486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A273911 (A004526 n).toNat

end

end A289769.P5085602509351808486

noncomputable section

/-- A289769: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 598", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A289769.P5085602509351808486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A289769 (n : ℕ) : ℤ :=
  A289769.P5085602509351808486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A289769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290021.P11662465135056403279

`A071673(n)+1`
-/

namespace A290021.P11662465135056403279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 n + 1

end

end A290021.P11662465135056403279

noncomputable section

/-- A290021: a(0) = 1; for n > 0, a(n) = a(k) + a(m) where binomial(k + m + 2, 2) - m = n and binomial(k + m + 2, 2) is the smallest triangular number larger than or equal to m.

Offset 0, canonical program `A290021.P11662465135056403279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290021 (n : ℕ) : ℤ :=
  A290021.P11662465135056403279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290496.P16609234457206249099

`Δ[∪[A000040(n+1), A100484(n+1)]]`
-/

namespace A290496.P16609234457206249099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290496.P16609234457206249099

noncomputable section

/-- A290496: First differences of A001751.

Offset 1, canonical program `A290496.P16609234457206249099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290496 (n : ℕ) : ℤ :=
  A290496.P16609234457206249099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290681.P13024392901378473371

`A131664(A060577(n))`
-/

namespace A290681.P13024392901378473371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 (A060577 n).toNat

end

end A290681.P13024392901378473371

noncomputable section

/-- A290681: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 929", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290681.P13024392901378473371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290681 (n : ℕ) : ℤ :=
  A290681.P13024392901378473371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291167.P12219534965446572701

`record[A000027(n+1)*A214295(A001615(n+1))]`
-/

namespace A291167.P12219534965446572701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A214295 (A001615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291167.P12219534965446572701

noncomputable section

/-- A291167: Numbers k such that psi(k) is a perfect square where psi(k) = A001615(k).

Offset 1, canonical program `A291167.P12219534965446572701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A291167 (n : ℕ) : ℤ :=
  A291167.P12219534965446572701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A291167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291239.P18430798082310055152

`(A291229(n)+A291227(n))/2`
-/

namespace A291239.P18430798082310055152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291229 n + A291227 n : ℚ) / 2

end

end A291239.P18430798082310055152

noncomputable section

/-- A291239: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - S^2) (1 - 2 S).

Offset 0, canonical program `A291239.P18430798082310055152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A291239 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291239.P18430798082310055152.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A291239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291385.P5437536221905050948

`1/4*A073388(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291385.P5437536221905050948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A073388 (n + 1) : ℚ)

end

end A291385.P5437536221905050948

noncomputable section

/-- A291385: a(n) = (1/4)*A073388(n+1).

Offset 0, canonical program `A291385.P5437536221905050948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291385 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291385.P5437536221905050948.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291408.P17875102635465885685

`1/2*A275439(n+4)`
-/

namespace A291408.P17875102635465885685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A275439 (n + 4) : ℚ)

end

end A291408.P17875102635465885685

noncomputable section

/-- A291408: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - S)(1 - S^2).

Offset 0, canonical program `A291408.P17875102635465885685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291408 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291408.P17875102635465885685.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291485.P3190505718156892050

`lt[0, A175192(C(n+2, 2))]+1`
-/

namespace A291485.P3190505718156892050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (Nat.choose (n + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A291485.P3190505718156892050

noncomputable section

/-- A291485: Numbers m such that sigma(x) = m*(m+1)/2 has at least one solution.

Offset 1, canonical program `A291485.P3190505718156892050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A291485 (n : ℕ) : ℤ :=
  (A291485.P3190505718156892050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A291485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291632.P11985089398796829925

`n*A122832(A161680(n))`
-/

namespace A291632.P11985089398796829925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A122832 (A161680 n).toNat

end

end A291632.P11985089398796829925

noncomputable section

/-- A291632: Column 1 of A122832.

Offset 0, canonical program `A291632.P11985089398796829925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A291632 (n : ℕ) : ℤ :=
  A291632.P11985089398796829925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A291632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291907.P1519353443668877122

`∩[A023693(n+1), A023699(n+1)]`
-/

namespace A291907.P1519353443668877122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291907.P1519353443668877122

noncomputable section

/-- A291907: Numbers such that the nonzero digits in the base 3 expansion consists of two 1s and one 2.

Offset 1, canonical program `A291907.P1519353443668877122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A291907 (n : ℕ) : ℤ :=
  (A291907.P1519353443668877122.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A291907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292286.P9648476840637549406

`A027656(∏{e}[n+1, #+1])-A057427(n)`
-/

namespace A292286.P9648476840637549406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - A057427 n

end

end A292286.P9648476840637549406

noncomputable section

/-- A292286: a(n) = k if the product of the divisors of n is n^k for some integer k, or -1 if no such k exists. For the ambiguous case, define a(1) = 0.

Offset 1, canonical program `A292286.P9648476840637549406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292286 (n : ℕ) : ℤ :=
  A292286.P9648476840637549406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292401.P6172847511973519015

`A001590(n+2)+2*A073778(n+4)-2*A073778(n+3)`
-/

namespace A292401.P6172847511973519015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 2) + 2 * A073778 (n + 4) - 2 * A073778 (n + 3)

end

end A292401.P6172847511973519015

noncomputable section

/-- A292401: p-INVERT of (1,0,2,0,2,0,2,0,2,0,...), where p(S) = (1 - S)^2.

Offset 0, canonical program `A292401.P6172847511973519015`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073778, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292401 (n : ℕ) : ℤ :=
  A292401.P6172847511973519015.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073778, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292610.P6314579995917335039

`A000217(record[A056926(n+1)+n])`
-/

namespace A292610.P6314579995917335039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A292610.P6314579995917335039

noncomputable section

/-- A292610: Take 3 triangle numbers, skip 1 triangle number, take 4 triangle numbers, skip 2 triangle numbers, take 5 triangle numbers, skip 3 triangle numbers, ...

Offset 1, canonical program `A292610.P6314579995917335039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292610 (n : ℕ) : ℤ :=
  A292610.P6314579995917335039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292639.P16554536473788705745

`A004959(n+1)+n`
-/

namespace A292639.P16554536473788705745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004959 (n + 1) + (n : ℤ)

end

end A292639.P16554536473788705745

noncomputable section

/-- A292639: Rank of (3+r)*n when all the numbers (3-r)*j and (3+r)*k, where r = sqrt(5), j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292639.P16554536473788705745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292639 (n : ℕ) : ℤ :=
  A292639.P16554536473788705745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292646.P6989065873889510323

`A189519(n+1)%A000572(n+1)+1+n`
-/

namespace A292646.P6989065873889510323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189519 (n + 1)) (A000572 (n + 1)) + 1 + (n : ℤ)

end

end A292646.P6989065873889510323

noncomputable section

/-- A292646: Rank of e*n when all the numbers e*j and (e+1)*k, for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292646.P6989065873889510323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292646 (n : ℕ) : ℤ :=
  A292646.P6989065873889510323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292648.P4814506142937687788

`A069210(n+2)+n`
-/

namespace A292648.P4814506142937687788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069210 (n + 2) + (n : ℤ)

end

end A292648.P4814506142937687788

noncomputable section

/-- A292648: Rank of Pi*n when all the numbers Pi*j and (Pi+1)*k, for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292648.P4814506142937687788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A292648 (n : ℕ) : ℤ :=
  A292648.P4814506142937687788.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A292648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292664.P10332037259361248374

`A000027(A054385(n+1)+n+1)`
-/

namespace A292664.P10332037259361248374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A054385 (n + 1) + (n + 1 : ℤ)).toNat

end

end A292664.P10332037259361248374

noncomputable section

/-- A292664: Rank of n*e when all the numbers j*(e-1) and k*e, for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292664.P10332037259361248374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292664 (n : ℕ) : ℤ :=
  A292664.P10332037259361248374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292944.P3273024462616144554

`A292272(n-A053644(n))`
-/

namespace A292944.P3273024462616144554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 ((n : ℤ) - A053644 n).toNat

end

end A292944.P3273024462616144554

noncomputable section

/-- A292944: a(n) = A292272(A004754(n)) - 2*A053644(n).

Offset 0, canonical program `A292944.P3273024462616144554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292944 (n : ℕ) : ℤ :=
  A292944.P3273024462616144554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293321.P7744093842615132060

`A293313(n+1)-A293322(n)`
-/

namespace A293321.P7744093842615132060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 (n + 1) - A293322 n

end

end A293321.P7744093842615132060

noncomputable section

/-- A293321: The integer k that minimizes |k/2^n - phi^2|, where phi = (1+sqrt(5))/2 = golden ratio.

Offset 0, canonical program `A293321.P7744093842615132060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A293321 (n : ℕ) : ℤ :=
  A293321.P7744093842615132060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A293321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293342.P14417699330269027731

`∑[A121349(n)]+3`
-/

namespace A293342.P14417699330269027731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A293342.P14417699330269027731

noncomputable section

/-- A293342: Least integer k such that k/2^n > Pi.

Offset 0, canonical program `A293342.P14417699330269027731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A293342 (n : ℕ) : ℤ :=
  A293342.P14417699330269027731.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A293342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293404.P14301270800513650876

`A293401(n)+n²`
-/

namespace A293404.P14301270800513650876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n + (n ^ 2 : ℤ)

end

end A293404.P14301270800513650876

noncomputable section

/-- A293404: Least integer k such that k/n^2 > (3 + sqrt(5))/2 (the golden ratio).

Offset 0, canonical program `A293404.P14301270800513650876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293404 (n : ℕ) : ℤ :=
  A293404.P14301270800513650876.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293407.P17658418096414741506

`A293401(n)-n²`
-/

namespace A293407.P17658418096414741506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n - (n ^ 2 : ℤ)

end

end A293407.P17658418096414741506

noncomputable section

/-- A293407: Least integer k such that k/n^2 > (-1 + sqrt(5))/2 (the golden ratio).

Offset 0, canonical program `A293407.P17658418096414741506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293407 (n : ℕ) : ℤ :=
  A293407.P17658418096414741506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293675.P17608895144235824468

`A293674(n)+A057427(n)`
-/

namespace A293675.P17608895144235824468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293674 n + A057427 n

end

end A293675.P17608895144235824468

noncomputable section

/-- A293675: a(n) is the least integer k such that k/Fibonacci(n) > e.

Offset 0, canonical program `A293675.P17608895144235824468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A293675 (n : ℕ) : ℤ :=
  A293675.P17608895144235824468.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A293675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293678.P1498172706207544919

`A293677(n)+A057427(n)`
-/

namespace A293678.P1498172706207544919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293677 n + A057427 n

end

end A293678.P1498172706207544919

noncomputable section

/-- A293678: a(n) is the least integer k such that k/Fibonacci(n) > Pi.

Offset 0, canonical program `A293678.P1498172706207544919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A293678 (n : ℕ) : ℤ :=
  A293678.P1498172706207544919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A293678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293895.P5570247358903279074

`∑{d}[n+1, A057427(#-1)*A079978((n+1)/#-1)]`
-/

namespace A293895.P5570247358903279074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A079978 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A293895.P5570247358903279074

noncomputable section

/-- A293895: Number of proper divisors of n of the form 3k+1.

Offset 1, canonical program `A293895.P5570247358903279074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293895 (n : ℕ) : ℤ :=
  A293895.P5570247358903279074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293897.P15372755132286244762

`A078181(n+1)%A080031(n)`
-/

namespace A293897.P15372755132286244762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078181 (n + 1)) (A080031 n)

end

end A293897.P15372755132286244762

noncomputable section

/-- A293897: Sum of proper divisors of n of the form 3k+1.

Offset 1, canonical program `A293897.P15372755132286244762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293897 (n : ℕ) : ℤ :=
  A293897.P15372755132286244762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294017.P13698229959135733253

`A175254(n+1)-A072481(n+1)`
-/

namespace A294017.P13698229959135733253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175254 (n + 1) - A072481 (n + 1)

end

end A294017.P13698229959135733253

noncomputable section

/-- A294017: Partial sums of A294016.

Offset 1, canonical program `A294017.P13698229959135733253`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072481, A175254, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294017 (n : ℕ) : ℤ :=
  A294017.P13698229959135733253.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072481, A175254, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294017.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294032.P2785429286265042746

`A053440(comp[∑[n]])/2`
-/

namespace A294032.P2785429286265042746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053440 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A294032.P2785429286265042746

noncomputable section

/-- A294032: Triangle read by rows, T(n, k) = Pochhammer(3, k)*Stirling2(3 + n, 3 + k) for n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A294032.P2785429286265042746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A294032 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294032.P2785429286265042746.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A294032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294083.P5303193915532408117

`A018252(n+1)^A000040(n+1)`
-/

namespace A294083.P5303193915532408117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A294083.P5303193915532408117

noncomputable section

/-- A294083: a(n) is the n-th nonprime number raised to the n-th prime number.

Offset 1, canonical program `A294083.P5303193915532408117`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294083.P5303193915532408117.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294243.P16303316000835451096

`∑[3*n+1]-A294143(n+1)`
-/

namespace A294243.P16303316000835451096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A294143 (n + 1)

end

end A294243.P16303316000835451096

noncomputable section

/-- A294243: Sum of the larger parts of the partitions of 2n into two parts with smaller part nonsquarefree.

Offset 1, canonical program `A294243.P16303316000835451096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294243 (n : ℕ) : ℤ :=
  A294243.P16303316000835451096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294263.P10402208649476642177

`∑[gcd(n, ∑[n])]-(A294237(n+1)+n)`
-/

namespace A294263.P10402208649476642177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A294237 (n + 1) + (n : ℤ))

end

end A294263.P10402208649476642177

noncomputable section

/-- A294263: Sum of the larger parts of the partitions of n into two parts with smaller part squarefree > 1.

Offset 1, canonical program `A294263.P10402208649476642177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294263 (n : ℕ) : ℤ :=
  A294263.P10402208649476642177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294288.P18195835425307198976

`A259108(n)-A294271(n+1)`
-/

namespace A294288.P18195835425307198976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259108 n - A294271 (n + 1)

end

end A294288.P18195835425307198976

noncomputable section

/-- A294288: Sum of the fourth powers of the parts in the partitions of n into two distinct parts.

Offset 1, canonical program `A294288.P18195835425307198976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294288 (n : ℕ) : ℤ :=
  A294288.P18195835425307198976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294301.P12374898961323151880

`A259109(n)-A294273(n+1)`
-/

namespace A294301.P12374898961323151880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259109 n - A294273 (n + 1)

end

end A294301.P12374898961323151880

noncomputable section

/-- A294301: Sum of the sixth powers of the parts in the partitions of n into two distinct parts.

Offset 1, canonical program `A294301.P12374898961323151880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294301 (n : ℕ) : ℤ :=
  A294301.P12374898961323151880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294302.P921645264619134672

`2*A000541(n)-A294274(n+1)`
-/

namespace A294302.P921645264619134672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000541 n - A294274 (n + 1)

end

end A294302.P921645264619134672

noncomputable section

/-- A294302: Sum of the seventh powers of the parts in the partitions of n into two distinct parts.

Offset 1, canonical program `A294302.P921645264619134672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294302 (n : ℕ) : ℤ :=
  A294302.P921645264619134672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294303.P18417890988148803670

`2*A000542(n)-A294275(n+1)`
-/

namespace A294303.P18417890988148803670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000542 n - A294275 (n + 1)

end

end A294303.P18417890988148803670

noncomputable section

/-- A294303: Sum of the eighth powers of the parts in the partitions of n into two distinct parts.

Offset 1, canonical program `A294303.P18417890988148803670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294303 (n : ℕ) : ℤ :=
  A294303.P18417890988148803670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294304.P10188443853695734833

`∑[2*n^9]-A294276(n+1)`
-/

namespace A294304.P10188443853695734833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A294276 (n + 1)

end

end A294304.P10188443853695734833

noncomputable section

/-- A294304: Sum of the ninth powers of the parts of the partitions of n into two distinct parts.

Offset 1, canonical program `A294304.P10188443853695734833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294304 (n : ℕ) : ℤ :=
  A294304.P10188443853695734833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294790.P1762533073326159722

`A014140(n)-n`
-/

namespace A294790.P1762533073326159722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014140 n - (n : ℤ)

end

end A294790.P1762533073326159722

noncomputable section

/-- A294790: Subtract n from partial sums of partial sums of Catalan numbers.

Offset 0, canonical program `A294790.P1762533073326159722`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014140, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294790 (n : ℕ) : ℤ :=
  A294790.P1762533073326159722.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014140, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294790.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295317.P9569981381580071021

`A295287(n+2)-A296160(n+2)`
-/

namespace A295317.P9569981381580071021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295287 (n + 2) - A296160 (n + 2)

end

end A295317.P9569981381580071021

noncomputable section

/-- A295317: Sum of the products of the smaller and larger parts of the partitions of n into two distinct parts with the smaller part odd.

Offset 1, canonical program `A295317.P9569981381580071021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295317 (n : ℕ) : ℤ :=
  A295317.P9569981381580071021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295318.P11884600890367549118

`A295287(n+1)-Δ[A038714(n)]²`
-/

namespace A295318.P11884600890367549118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295287 (n + 1) - (f1 (n + 1) - f1 n) ^ 2

end

end A295318.P11884600890367549118

noncomputable section

/-- A295318: Sum of the products of the smaller and larger parts of the partitions of n into two distinct parts with the smaller part even.

Offset 1, canonical program `A295318.P11884600890367549118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295318 (n : ℕ) : ℤ :=
  A295318.P11884600890367549118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295320.P2409977992126180392

`A295287(n+1)+A123596(n)-A002620(n)`
-/

namespace A295320.P2409977992126180392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295287 (n + 1) + (A123596 n - A002620 n)

end

end A295320.P2409977992126180392

noncomputable section

/-- A295320: Sum of the products of the smaller and larger parts of the partitions of n into two distinct parts with the larger part odd.

Offset 1, canonical program `A295320.P2409977992126180392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295320 (n : ℕ) : ℤ :=
  A295320.P2409977992126180392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295321.P1307019648991377142

`∑[A110660(n)]-A295287(n+1)`
-/

namespace A295321.P1307019648991377142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295287 (n + 1)

end

end A295321.P1307019648991377142

noncomputable section

/-- A295321: Sum of the products of the smaller and larger parts of the partitions of n into two distinct parts with the larger part even.

Offset 1, canonical program `A295321.P1307019648991377142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295321 (n : ℕ) : ℤ :=
  A295321.P1307019648991377142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296083.P6935362212108863333

`A039653(n+1)/A028310(A296081(n+1))`
-/

namespace A296083.P6935362212108863333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) : ℚ) / (A028310 (A296081 (n + 1)).toNat : ℚ)

end

end A296083.P6935362212108863333

noncomputable section

/-- A296083: a(1) = 0; for n > 1, a(n) = A039653(n) / gcd(A039653(n),A032741(n)).

Offset 1, canonical program `A296083.P6935362212108863333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296083.P6935362212108863333.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296307.P1006250162034138500

`(A004736(n+1)+1)*A010766(n+1)-1`
-/

namespace A296307.P1006250162034138500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + 1) * A010766 (n + 1) - 1

end

end A296307.P1006250162034138500

noncomputable section

/-- A296307: Array read by upwards antidiagonals: f(n,k) = (n+1)*ceiling(n/(k-1)) - 1.

Offset 1, canonical program `A296307.P1006250162034138500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A296307 (n : ℕ) : ℤ :=
  A296307.P1006250162034138500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A296307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296665.P10812788718355043143

`A296663(2*n)`
-/

namespace A296665.P10812788718355043143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296663 (2 * n)

end

end A296665.P10812788718355043143

noncomputable section

/-- A296665: Row sums of A296666.

Offset 0, canonical program `A296665.P10812788718355043143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A296665 (n : ℕ) : ℤ :=
  A296665.P10812788718355043143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A296665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297024.P11946772240064417738

`∑[∑[n]%(n+1)]-A001065(n+1)`
-/

namespace A297024.P11946772240064417738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001065 (n + 1)

end

end A297024.P11946772240064417738

noncomputable section

/-- A297024: Sum of the smaller parts of the partitions of n into two parts such that the smaller part does not divide the larger.

Offset 1, canonical program `A297024.P11946772240064417738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297024 (n : ℕ) : ℤ :=
  A297024.P11946772240064417738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297045.P15563910075369030090

`A025485(∑[A086080(n)]²)`
-/

namespace A297045.P15563910075369030090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025485 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A297045.P15563910075369030090

noncomputable section

/-- A297045: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-20 digits of n; see Comments.

Offset 1, canonical program `A297045.P15563910075369030090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A297045 (n : ℕ) : ℤ :=
  A297045.P15563910075369030090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A297045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297192.P4818272099896905294

`A297191(A063656(n))`
-/

namespace A297192.P4818272099896905294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 (A063656 n).toNat

end

end A297192.P4818272099896905294

noncomputable section

/-- A297192: Left-hand half of triangle A297191.

Offset 0, canonical program `A297192.P4818272099896905294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A297192 (n : ℕ) : ℤ :=
  A297192.P4818272099896905294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A297192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297491.P5911488717567930429

`A172190(n+1)-(A001748(n+1)+1)`
-/

namespace A297491.P5911488717567930429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172190 (n + 1) - (A001748 (n + 1) + 1)

end

end A297491.P5911488717567930429

noncomputable section

/-- A297491: a(n) = (1/2) * Sum_{|k|<=2*sqrt(p)} k^4*H(4*p-k^2) where H() is the Hurwitz class number and p is n-th prime.

Offset 1, canonical program `A297491.P5911488717567930429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A297491 (n : ℕ) : ℤ :=
  A297491.P5911488717567930429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A297491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297708.P854593747947966794

`2*A000085(n)-A135401(n)`
-/

namespace A297708.P854593747947966794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000085 n - A135401 n

end

end A297708.P854593747947966794

noncomputable section

/-- A297708: Number of permutations p of [n] such that p(p(i)) = i for all i or p(n+1-p(i)) = n+1-i for all i.

Offset 0, canonical program `A297708.P854593747947966794`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297708 (n : ℕ) : ℤ :=
  A297708.P854593747947966794.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297708.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297937.P16781275991554241127

`A057427(n)+∑[A297870(n+2)]`
-/

namespace A297937.P16781275991554241127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297937.P16781275991554241127

noncomputable section

/-- A297937: Number of nX2 0..1 arrays with every element equal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

Offset 1, canonical program `A297937.P16781275991554241127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A297937 (n : ℕ) : ℤ :=
  A297937.P16781275991554241127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A297937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298185.P5748684928581742112

`A003269(n)+A057427(n)*A157726(n)`
-/

namespace A298185.P5748684928581742112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n + A057427 n * A157726 n

end

end A298185.P5748684928581742112

noncomputable section

/-- A298185: Number of nX6 0..1 arrays with every element equal to 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

Offset 1, canonical program `A298185.P5748684928581742112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A298185 (n : ℕ) : ℤ :=
  A298185.P5748684928581742112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A298185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298638.P11624616744762784382

`eq[1, A179081(n)+A113217(n)]`
-/

namespace A298638.P11624616744762784382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n + A113217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298638.P11624616744762784382

noncomputable section

/-- A298638: Numbers k such that the digital sum of k and the digital root of k have opposite parity.

Offset 1, canonical program `A298638.P11624616744762784382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5115 terms. -/
def A298638 (n : ℕ) : ℤ :=
  (A298638.P11624616744762784382.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5115 terms. -/
def A298638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298864.P5884613117295893309

`A020901(n+1)+1+n`
-/

namespace A298864.P5884613117295893309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020901 (n + 1) + 1 + (n : ℤ)

end

end A298864.P5884613117295893309

noncomputable section

/-- A298864: Ranks of products 3*p when all primes p and products 3*p are jointly ranked.

Offset 1, canonical program `A298864.P5884613117295893309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298864 (n : ℕ) : ℤ :=
  A298864.P5884613117295893309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298866.P6502617962773511093

`A230980(A075518(n+1))+1+n`
-/

namespace A298866.P6502617962773511093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A075518 (n + 1)).toNat + 1 + (n : ℤ)

end

end A298866.P6502617962773511093

noncomputable section

/-- A298866: Positions of primes p when all p and 4*p are arranged in increasing order.

Offset 1, canonical program `A298866.P6502617962773511093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298866 (n : ℕ) : ℤ :=
  A298866.P6502617962773511093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299276.P15175403599523084453

`∑[A008137(n)]`
-/

namespace A299276.P15175403599523084453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299276.P15175403599523084453

noncomputable section

/-- A299276: Partial sums of A008137.

Offset 0, canonical program `A299276.P15175403599523084453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299276 (n : ℕ) : ℤ :=
  A299276.P15175403599523084453.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299919.P11614589965171883546

`A299918(n)%4`
-/

namespace A299919.P11614589965171883546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299918 n) 4

end

end A299919.P11614589965171883546

noncomputable section

/-- A299919: Motzkin numbers (A001006) mod 4.

Offset 0, canonical program `A299919.P11614589965171883546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299919 (n : ℕ) : ℤ :=
  A299919.P11614589965171883546.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300294.P16691287766721128725

`A054431(C(2, n)+n)`
-/

namespace A300294.P16691287766721128725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (Nat.choose 2 n + n)

end

end A300294.P16691287766721128725

noncomputable section

/-- A300294: Irregular triangle giving the GCD characteristic: T(1, 1) = 1 and, for n >= 2 and 1 <= m <= n-1, T(n, m) = 1 if gcd(n, m) = 1 and 0 otherwise.

Offset 1, canonical program `A300294.P16691287766721128725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300294 (n : ℕ) : ℤ :=
  A300294.P16691287766721128725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300295.P5909080087043294271

`A147650(n+1)+A067725(n)/A154629(n)`
-/

namespace A300295.P5909080087043294271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147650 (n + 1) : ℚ) + (A067725 n : ℚ) / (A154629 n : ℚ)

end

end A300295.P5909080087043294271

noncomputable section

/-- A300295: Denominator of (1/3)*n*(n + 2)/((1 + 2*n)*(3 + 2*n)).

Offset 0, canonical program `A300295.P5909080087043294271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A300295.P5909080087043294271.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300657.P2454119295566594023

`∑{d}[n+1, A054024(#)]`
-/

namespace A300657.P2454119295566594023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054024 d

end

end A300657.P2454119295566594023

noncomputable section

/-- A300657: a(n) = Sum_{d|n} sigma(d) mod d.

Offset 1, canonical program `A300657.P2454119295566594023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300657 (n : ℕ) : ℤ :=
  A300657.P2454119295566594023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300838.P2409035499828455037

`A057300(A003188(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300838.P2409035499828455037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A003188 n).toNat

end

end A300838.P2409035499828455037

noncomputable section

/-- A300838: Permutation of nonnegative integers: a(n) = A057300(A003188(n)).

Offset 0, canonical program `A300838.P2409035499828455037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057300, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300838 (n : ℕ) : ℤ :=
  A300838.P2409035499828455037.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057300, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300894.P15886639425935444398

`∏{p}[A026741(n+1), A038608(#+1)]`
-/

namespace A300894.P15886639425935444398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A038608 (p + 1)

end

end A300894.P15886639425935444398

noncomputable section

/-- A300894: L.g.f.: log(Product_{k>=1} (1 + mu(k)^2*x^k)) = Sum_{n>=1} a(n)*x^n/n, where mu() is the Moebius function (A008683).

Offset 1, canonical program `A300894.P15886639425935444398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300894 (n : ℕ) : ℤ :=
  A300894.P15886639425935444398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301274.P9797032890744289852

`(n+1)/gcd(∑[A006093(n+1)], A005843(n+1))`
-/

namespace A301274.P9797032890744289852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A005843 (n + 1)) : ℚ)

end

end A301274.P9797032890744289852

noncomputable section

/-- A301274: Denominator of mean of first n primes.

Offset 1, canonical program `A301274.P9797032890744289852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A301274.P9797032890744289852.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301286.P8785182498257756954

`∑[A301285(n)]`
-/

namespace A301286.P8785182498257756954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301286.P8785182498257756954

noncomputable section

/-- A301286: Partial sums of A301285.

Offset 0, canonical program `A301286.P8785182498257756954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301286 (n : ℕ) : ℤ :=
  A301286.P8785182498257756954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301478.P10263299354286000172

`eq[char[n*A000030(n)], A057427(n)]`
-/

namespace A301478.P10263299354286000172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000030 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A301478.P10263299354286000172

noncomputable section

/-- A301478: a(n) is the product of the n-th term of A301382 and its initial digit.

Offset 1, canonical program `A301478.P10263299354286000172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3059 terms. -/
def A301478 (n : ℕ) : ℤ :=
  (A301478.P10263299354286000172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3059 terms. -/
def A301478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301675.P6765283848545573258

`∑[A301674(n)]`
-/

namespace A301675.P6765283848545573258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301675.P6765283848545573258

noncomputable section

/-- A301675: Partial sums of A301674.

Offset 0, canonical program `A301675.P6765283848545573258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A301675 (n : ℕ) : ℤ :=
  A301675.P6765283848545573258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A301675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301727.P4383276684323886608

`∑[A301726(n)]`
-/

namespace A301727.P4383276684323886608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301727.P4383276684323886608

noncomputable section

/-- A301727: Partial sums of A301726.

Offset 0, canonical program `A301727.P4383276684323886608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301727 (n : ℕ) : ℤ :=
  A301727.P4383276684323886608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301848.P12737412631956633258

`A038189(n)+A010684(n)`
-/

namespace A301848.P12737412631956633258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n + A010684 n

end

end A301848.P12737412631956633258

noncomputable section

/-- A301848: Number of states generated by morphism during inflation stage of paper-folding sequence.

Offset 0, canonical program `A301848.P12737412631956633258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A301848 (n : ℕ) : ℤ :=
  A301848.P12737412631956633258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A301848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302592.P5948087057683146670

`∪[A000079(n), A006450(n+1)]`
-/

namespace A302592.P5948087057683146670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302592.P5948087057683146670

noncomputable section

/-- A302592: One, powers of 2, and prime numbers of prime index.

Offset 1, canonical program `A302592.P5948087057683146670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302592 (n : ℕ) : ℤ :=
  (A302592.P5948087057683146670.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302654.P9699993451691573189

`A110657(n)^∑[1-and(2, n)]`
-/

namespace A302654.P9699993451691573189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110657 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A302654.P9699993451691573189

noncomputable section

/-- A302654: Number of minimum total dominating sets in the n-path graph.

Offset 1, canonical program `A302654.P9699993451691573189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302654 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A302654.P9699993451691573189.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302722.P1266589313200144399

`A000040(n+1)^A018252(n+1)`
-/

namespace A302722.P1266589313200144399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A018252 (n + 1) : ℤ)

end

end A302722.P1266589313200144399

noncomputable section

/-- A302722: a(n) is the n-th prime number raised to the n-th nonprime number.

Offset 1, canonical program `A302722.P1266589313200144399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A302722 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A302722.P1266589313200144399.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A302722.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302778.P10477543848767176056

`A302777(n+1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A302778.P10477543848767176056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A302777 (n + 1) + a (n - 1)

end

end A302778.P10477543848767176056

noncomputable section

/-- A302778: Number of "Fermi-Dirac primes" (A050376) <= n.

Offset 1, canonical program `A302778.P10477543848767176056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A302777, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A302778 (n : ℕ) : ℤ :=
  A302778.P10477543848767176056.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A302777, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A302778.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A303120.P13190736090509542257

`record[A023855(n+1)*A214295(n+2)]`
-/

namespace A303120.P13190736090509542257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1) * A214295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303120.P13190736090509542257

noncomputable section

/-- A303120: Total area of all rectangles of size p X q such that p + q = n^2 and p <= q.

Offset 1, canonical program `A303120.P13190736090509542257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A303120 (n : ℕ) : ℤ :=
  A303120.P13190736090509542257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A303120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303212.P12818442115741467514

`xor(A063524(n), A179058(n+1))`
-/

namespace A303212.P12818442115741467514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A179058 (n + 1))

end

end A303212.P12818442115741467514

noncomputable section

/-- A303212: Number of minimum total dominating sets in the n X n rook complement graph.

Offset 1, canonical program `A303212.P12818442115741467514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303212 (n : ℕ) : ℤ :=
  A303212.P12818442115741467514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303259.P6745834928257893132

`A046899(A007590(n))-A142150(n)`
-/

namespace A303259.P6745834928257893132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A007590 n).toNat - A142150 n

end

end A303259.P6745834928257893132

noncomputable section

/-- A303259: Number of ordered rooted trees with n non-root nodes such that the maximal outdegree equals ceiling(n/2).

Offset 0, canonical program `A303259.P6745834928257893132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A303259 (n : ℕ) : ℤ :=
  A303259.P6745834928257893132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A303259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303449.P9379731540711879324

`A090633(Δ[n²])`
-/

namespace A303449.P9379731540711879324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090633 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A303449.P9379731540711879324

noncomputable section

/-- A303449: Denominator of (2*n+1)/(2^(2*n+1)-1).

Offset 0, canonical program `A303449.P9379731540711879324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A303449 (n : ℕ) : ℤ :=
  A303449.P9379731540711879324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A303449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303500.P18113148796147249263

`A024629(A305498(n+1))`
-/

namespace A303500.P18113148796147249263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A305498 (n + 1)).toNat

end

end A303500.P18113148796147249263

noncomputable section

/-- A303500: The smallest positive even integer that can be written with n digits in base 3/2.

Offset 0, canonical program `A303500.P18113148796147249263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303500 (n : ℕ) : ℤ :=
  A303500.P18113148796147249263.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303500.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304011.P17788673777642198236

`A097893(n)-A082397(n+1)`
-/

namespace A304011.P17788673777642198236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 n - A082397 (n + 1)

end

end A304011.P17788673777642198236

noncomputable section

/-- A304011: Number of same-sized pairs of subsets of set of n numbers that might have the same sum.

Offset 1, canonical program `A304011.P17788673777642198236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A304011 (n : ℕ) : ℤ :=
  A304011.P17788673777642198236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A304011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304013.P9907422437382582789

`A297909(n+1)+A155559(n)`
-/

namespace A304013.P9907422437382582789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297909 (n + 1) + A155559 n

end

end A304013.P9907422437382582789

noncomputable section

/-- A304013: Number of nX2 0..1 arrays with every element unequal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

Offset 1, canonical program `A304013.P9907422437382582789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A304013 (n : ℕ) : ℤ :=
  A304013.P9907422437382582789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A304013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304570.P4550797118024341307

`A304569(n+1)-A051731(n+1)`
-/

namespace A304570.P4550797118024341307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304569 (n + 1) - A051731 (n + 1)

end

end A304570.P4550797118024341307

noncomputable section

/-- A304570: Triangle read by rows: T(n,k) = 1 if k | n^e with e > 1 and n mod k != 0, T(n,k) = 0 otherwise (1 <= k <= n).

Offset 1, canonical program `A304570.P4550797118024341307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304570 (n : ℕ) : ℤ :=
  A304570.P4550797118024341307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305377.P16891160139841273733

`A003726(A008864(n+1))`
-/

namespace A305377.P16891160139841273733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (A008864 (n + 1)).toNat

end

end A305377.P16891160139841273733

noncomputable section

/-- A305377: Tribonacci representation of primes, written in base 10.

Offset 1, canonical program `A305377.P16891160139841273733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A305377 (n : ℕ) : ℤ :=
  A305377.P16891160139841273733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A305377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305608.P13060865660320932087

`floor(A303537(n)/2)`
-/

namespace A305608.P13060865660320932087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A303537 n : ℚ) / 2⌋

end

end A305608.P13060865660320932087

noncomputable section

/-- A305608: Expansion of 1/2 * (((1 + 4*x)/(1 - 4*x))^(1/4) - 1).

Offset 0, canonical program `A305608.P13060865660320932087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A305608 (n : ℕ) : ℤ :=
  A305608.P13060865660320932087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A305608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305612.P1112257045889294607

`A152548(n)-A210736(n)`
-/

namespace A305612.P1112257045889294607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152548 n - A210736 n

end

end A305612.P1112257045889294607

noncomputable section

/-- A305612: Expansion of 1/2 * (((1 + 2*x)/(1 - 2*x))^(3/2) - 1).

Offset 0, canonical program `A305612.P1112257045889294607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A305612 (n : ℕ) : ℤ :=
  A305612.P1112257045889294607.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A305612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305615.P4289076314322298115

`A269501(n)-1`
-/

namespace A305615.P4289076314322298115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269501 n - 1

end

end A305615.P4289076314322298115

noncomputable section

/-- A305615: Next term is the largest earlier term that would not create a repetition of an earlier subsequence of length 2, if such a number exists; otherwise it is the smallest nonnegative number not yet in the sequence.

Offset 0, canonical program `A305615.P4289076314322298115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A305615 (n : ℕ) : ℤ :=
  A305615.P4289076314322298115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A305615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305623.P15212273996991512636

`A056310(n+1)-A056454(n+1)`
-/

namespace A305623.P15212273996991512636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056310 (n + 1) - A056454 (n + 1)

end

end A305623.P15212273996991512636

noncomputable section

/-- A305623: Number of chiral pairs of rows of n colors with exactly 3 different colors.

Offset 1, canonical program `A305623.P15212273996991512636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056454, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305623 (n : ℕ) : ℤ :=
  A305623.P15212273996991512636.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056454, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305658.P5754960706359636572

`A024629(A000244(n))`
-/

namespace A305658.P5754960706359636572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A000244 n).toNat

end

end A305658.P5754960706359636572

noncomputable section

/-- A305658: Powers of 3 in base 3/2.

Offset 0, canonical program `A305658.P5754960706359636572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305658 (n : ℕ) : ℤ :=
  A305658.P5754960706359636572.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305659.P16175590300142977093

`A024629(A000079(n))`
-/

namespace A305659.P16175590300142977093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A000079 n).toNat

end

end A305659.P16175590300142977093

noncomputable section

/-- A305659: Powers of 2 in base 3/2.

Offset 0, canonical program `A305659.P16175590300142977093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305659 (n : ℕ) : ℤ :=
  A305659.P16175590300142977093.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305791.P13240285142475897368

`∑{d}[n+1, A175851(#)*A175851((n+1)/#)]`
-/

namespace A305791.P13240285142475897368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A175851 d * A175851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305791.P13240285142475897368

noncomputable section

/-- A305791: Dirichlet convolution of A175851 with itself.

Offset 1, canonical program `A305791.P13240285142475897368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305791 (n : ℕ) : ℤ :=
  A305791.P13240285142475897368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305849.P13687725906806595279

`A305848(n+1)-(n+1)`
-/

namespace A305849.P13687725906806595279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305848 (n + 1) - (n + 1 : ℤ)

end

end A305849.P13687725906806595279

noncomputable section

/-- A305849: Positions of 2 in the difference sequence of A305847.

Offset 1, canonical program `A305849.P13687725906806595279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A305849 (n : ℕ) : ℤ :=
  A305849.P13687725906806595279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A305849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306015.P10934879851139084817

`A094587(n)-A008290(n)*A010054(n)`
-/

namespace A306015.P10934879851139084817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n - A008290 n * A010054 n

end

end A306015.P10934879851139084817

noncomputable section

/-- A306015: Exponential series expansion of (exp(x*y) + sinh(x) - cosh(x))/(1 - x).

Offset 0, canonical program `A306015.P10934879851139084817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A306015 (n : ℕ) : ℤ :=
  A306015.P10934879851139084817.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A306015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306519.P16959847342839691536

`A071356(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A306519.P16959847342839691536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071356 (n - 1) - a (n - 1)

end

end A306519.P16959847342839691536

noncomputable section

/-- A306519: Expansion of 2/(1 + 2*x + sqrt(1 - 4*x*(1 + x))).

Offset 0, canonical program `A306519.P16959847342839691536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A306519 (n : ℕ) : ℤ :=
  A306519.P16959847342839691536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A306519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306549.P16886189725106089348

`A070939(n)!/A306286(n)`
-/

namespace A306549.P16886189725106089348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A070939 n).toNat : ℚ) / (A306286 n : ℚ)

end

end A306549.P16886189725106089348

noncomputable section

/-- A306549: a(n) is the product of the positions of the zeros in the binary expansion of n (the most significant bit having position 1).

Offset 0, canonical program `A306549.P16886189725106089348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306549 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306549.P16886189725106089348.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306604.P10796956106735223825

`Δ[A102477(n-A000040(n+1)%2)]`
-/

namespace A306604.P10796956106735223825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102477 ((n : ℤ) - Int.tmod (A000040 (n + 1)) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306604.P10796956106735223825

noncomputable section

/-- A306604: Number of perfect squares in the half-open interval [Pi^(n-1), Pi^n).

Offset 0, canonical program `A306604.P10796956106735223825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A306604 (n : ℕ) : ℤ :=
  A306604.P10796956106735223825.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A306604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306847.P13411803161334900953

`A290993(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A306847.P13411803161334900953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290993 (n - 1) + a (n - 1)

end

end A306847.P13411803161334900953

noncomputable section

/-- A306847: a(n) = Sum_{k=0..floor(n/6)} binomial(n,6*k).

Offset 0, canonical program `A306847.P13411803161334900953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A306847 (n : ℕ) : ℤ :=
  A306847.P13411803161334900953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A306847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307012.P6050295120128097672

`∑[-A128834(A036496(n))]`
-/

namespace A307012.P6050295120128097672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A128834 (A036496 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307012.P6050295120128097672

noncomputable section

/-- A307012: Second coordinate in a redundant hexagonal coordinate system of the points of a counterclockwise spiral on an hexagonal grid. First and third coordinates are given in A307011 and A345978.

Offset 0, canonical program `A307012.P6050295120128097672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307012 (n : ℕ) : ℤ :=
  A307012.P6050295120128097672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307151.P15043162297254329505

`(n+1)*A007913(5*(n+1))/A007913(n+1)`
-/

namespace A307151.P15043162297254329505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A007913 (5 * (n + 1)) : ℚ) / (A007913 (n + 1) : ℚ))

end

end A307151.P15043162297254329505

noncomputable section

/-- A307151: Row 5 of array in A059897.

Offset 1, canonical program `A307151.P15043162297254329505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307151 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307151.P15043162297254329505.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307294.P8973898542976002328

`A287775(n+1)-A109613(n)`
-/

namespace A307294.P8973898542976002328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 (n + 1) - A109613 n

end

end A307294.P8973898542976002328

noncomputable section

/-- A307294: If n is even, a(n) = A000201(n/2+1), otherwise a(n) = A000201((n-1)/2+1) + 1.

Offset 0, canonical program `A307294.P8973898542976002328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307294 (n : ℕ) : ℤ :=
  A307294.P8973898542976002328.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307295.P4534131516467912471

`A287723(n+1)-n`
-/

namespace A307295.P4534131516467912471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287723 (n + 1) - (n : ℤ)

end

end A307295.P4534131516467912471

noncomputable section

/-- A307295: If n is even, a(n) = A001950(n/2+1), otherwise a(n) = A001950((n-1)/2+1) + 1.

Offset 0, canonical program `A307295.P4534131516467912471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307295 (n : ℕ) : ℤ :=
  A307295.P4534131516467912471.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307304.P16711502216985444807

`A109900(n)+A011863(n)`
-/

namespace A307304.P16711502216985444807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n + A011863 n

end

end A307304.P16711502216985444807

noncomputable section

/-- A307304: Number of inequivalent ways of placing 2 nonattacking rooks on n X n board up to rotations and reflections of the board.

Offset 1, canonical program `A307304.P16711502216985444807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307304 (n : ℕ) : ℤ :=
  A307304.P16711502216985444807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307349.P9464959732630918459

`(A120305(n)-(-1)^n)/2`
-/

namespace A307349.P9464959732630918459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120305 n - (-1) ^ n : ℚ) / 2

end

end A307349.P9464959732630918459

noncomputable section

/-- A307349: a(n) = Sum_{i=1..n} Sum_{j=1..n} (-1)^(i+j) * (i+j)!/(2!*i!*j!).

Offset 0, canonical program `A307349.P9464959732630918459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120305, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307349 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307349.P9464959732630918459.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120305, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236284.P9106495769996058109

`A000005(n+1)^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A236284.P9106495769996058109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ (n + 1)

end

end A236284.P9106495769996058109

noncomputable section

/-- A236284: a(n) = tau(n)^n, where tau(n) = A000005(n) = the number of divisors of n.

Offset 1, canonical program `A236284.P9106495769996058109`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)^(n+1)` (program `A236284.P9106495769996058109`, by `A236284.P9106495769996058109.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A236284 (n : ℕ) : ℤ :=
  A236284.P9106495769996058109.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)^(n+1)` (program `A236284.P9106495769996058109`, by `A236284.P9106495769996058109.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A236284.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A236285.P7829773990434493690

`A000005(n+1)^A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A236285.P7829773990434493690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A000203 (n + 1) : ℤ)

end

end A236285.P7829773990434493690

noncomputable section

/-- A236285: a(n) = tau(n)^sigma(n), where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

Offset 1, canonical program `A236285.P7829773990434493690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236285 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236285.P7829773990434493690.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236286.P5783426394669148059

`A000005(n+1)^A001065(n+1)`
-/

namespace A236286.P5783426394669148059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A001065 (n + 1) : ℤ)

end

end A236286.P5783426394669148059

noncomputable section

/-- A236286: a(n) = tau(n)^sigma(n) / tau(n)^n, where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

Offset 1, canonical program `A236286.P5783426394669148059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236286.P5783426394669148059.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236287.P8329458404916216592

`A000203(n+1)^A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A236287.P8329458404916216592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A236287.P8329458404916216592

noncomputable section

/-- A236287: a(n) = sigma(n)^tau(n), where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

Offset 1, canonical program `A236287.P8329458404916216592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236287 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236287.P8329458404916216592.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236287.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237767.P18206314552424324483

`∩[A052382(n+1), A062372(n+1)]`
-/

namespace A237767.P18206314552424324483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237767.P18206314552424324483

noncomputable section

/-- A237767: Integers whose product of digits is a nonzero cube.

Offset 1, canonical program `A237767.P18206314552424324483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A237767 (n : ℕ) : ℤ :=
  (A237767.P18206314552424324483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A237767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238952.P6937701478012677279

`A007425(n+1)-A000005(n+1)`
-/

namespace A238952.P6937701478012677279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) - A000005 (n + 1)

end

end A238952.P6937701478012677279

noncomputable section

/-- A238952: The size (the number of arcs) in the transitive closure of divisor lattice D(n).

Offset 1, canonical program `A238952.P6937701478012677279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238952 (n : ℕ) : ℤ :=
  A238952.P6937701478012677279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238985.P10795254232173325653

`filter[A052382(n+1), A086299(#)]`
-/

namespace A238985.P10795254232173325653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A238985.P10795254232173325653

noncomputable section

/-- A238985: Zeroless 7-smooth numbers.

Offset 1, canonical program `A238985.P10795254232173325653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A238985 (n : ℕ) : ℤ :=
  A238985.P10795254232173325653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A238985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239059.P17968933749774508671

`A239195(n+1)+A238705(n+1)`
-/

namespace A239059.P17968933749774508671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239195 (n + 1) + A238705 (n + 1)

end

end A239059.P17968933749774508671

noncomputable section

/-- A239059: Sum of the two smallest parts from the partitions of 4n into 4 parts with smallest part = 1.

Offset 1, canonical program `A239059.P17968933749774508671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239059 (n : ℕ) : ℤ :=
  A239059.P17968933749774508671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239201.P12977593979021015894

`3*A242586(n)-1`
-/

namespace A239201.P12977593979021015894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A242586 n - 1

end

end A239201.P12977593979021015894

noncomputable section

/-- A239201: Expansion of -(x * sqrt(5*x^2 -6*x +1) -2*x^3 +3*x^2 -x) / ((3*x^2 -4*x +1) * sqrt(5*x^2 -6*x +1) +5*x^3 -11*x^2 +7*x -1).

Offset 1, canonical program `A239201.P12977593979021015894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A239201 (n : ℕ) : ℤ :=
  A239201.P12977593979021015894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A239201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239733.P15139081428395781281

`∩[A023216(n+1), A023234(n+1)]`
-/

namespace A239733.P15139081428395781281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239733.P15139081428395781281

noncomputable section

/-- A239733: Primes p such that 4p+9 and 9p+4 are both prime.

Offset 1, canonical program `A239733.P15139081428395781281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239733 (n : ℕ) : ℤ :=
  (A239733.P15139081428395781281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239930.P8856580518813960922

`∑{d}[n+1, A240025(#)]`
-/

namespace A239930.P8856580518813960922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A240025 d

end

end A239930.P8856580518813960922

noncomputable section

/-- A239930: Number of distinct quarter-squares dividing n.

Offset 1, canonical program `A239930.P8856580518813960922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239930 (n : ℕ) : ℤ :=
  A239930.P8856580518813960922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239976.P10372821839735602561

`eq[1, A068426(n)]+1`
-/

namespace A239976.P10372821839735602561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A239976.P10372821839735602561

noncomputable section

/-- A239976: Positions of ones in binary representation of log(2).

Offset 1, canonical program `A239976.P10372821839735602561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A239976 (n : ℕ) : ℤ :=
  (A239976.P10372821839735602561.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A239976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241989.P18072735750899753269

`eq[n+1, lcm(n+1, A053836(n+1))]+1`
-/

namespace A241989.P18072735750899753269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A053836 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A241989.P18072735750899753269

noncomputable section

/-- A241989: Positive numbers n that are divisible by the sum of the digits of n in base 16.

Offset 1, canonical program `A241989.P18072735750899753269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1606 terms. -/
def A241989 (n : ℕ) : ℤ :=
  (A241989.P18072735750899753269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1606 terms. -/
def A241989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242002.P8299068809405779655

`∑[2^(n+1)*A065357(n+1)*A065357(n)]`
-/

namespace A242002.P8299068809405779655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A065357 (n + 1) * A065357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242002.P8299068809405779655

noncomputable section

/-- A242002: Sum_{k=1..n} (-1)^isprime(k)*2^k.

Offset 1, canonical program `A242002.P8299068809405779655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A242002 (n : ℕ) : ℤ :=
  A242002.P8299068809405779655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A242002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242252.P7500226852341842309

`A370482(A001223(n+1)-1)`
-/

namespace A242252.P7500226852341842309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 (A001223 (n + 1) - 1).toNat

end

end A242252.P7500226852341842309

noncomputable section

/-- A242252: Start with n-th odd prime, and repeatedly subtract the greatest prime until either 0 or 1 remains. (The result is the "primes-greedy residue" of the n-th odd prime, which is "primes-greedy summable" if its residue = 0, as at A242255; see Comments.)

Offset 1, canonical program `A242252.P7500226852341842309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A242252 (n : ℕ) : ℤ :=
  A242252.P7500226852341842309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A242252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243129.P17128912643122886576

`A000203(A000005(A000005(A000005(n+1))))`
-/

namespace A243129.P17128912643122886576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (A000005 (A000005 (n + 1)).toNat).toNat).toNat

end

end A243129.P17128912643122886576

noncomputable section

/-- A243129: a(n) = sigma(d(d(d(n)))), where d(n) is the number of divisors of n.

Offset 1, canonical program `A243129.P17128912643122886576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243129 (n : ℕ) : ℤ :=
  A243129.P17128912643122886576.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243915.P6821417702652795590

`A000203(A001221(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243915.P6821417702652795590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001221 (n + 2)).toNat

end

end A243915.P6821417702652795590

noncomputable section

/-- A243915: a(n) = sigma(omega(n)).

Offset 2, canonical program `A243915.P6821417702652795590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243915 (n : ℕ) : ℤ :=
  A243915.P6821417702652795590.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244048.P6865276920681536651

`A024816(n+1)-A004125(n+1)`
-/

namespace A244048.P6865276920681536651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) - A004125 (n + 1)

end

end A244048.P6865276920681536651

noncomputable section

/-- A244048: Antisigma(n) minus the sum of remainders of n mod k, for k = 1,2,3,...,n.

Offset 1, canonical program `A244048.P6865276920681536651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244048 (n : ℕ) : ℤ :=
  A244048.P6865276920681536651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244118.P17660869933743092581

`A244119(n)/A007318(n)`
-/

namespace A244118.P17660869933743092581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244119 n : ℚ) / (A007318 n : ℚ)

end

end A244118.P17660869933743092581

noncomputable section

/-- A244118: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of 1 as Sum_{k=0..n} T(n,k)*binomial(n,k).

Offset 0, canonical program `A244118.P17660869933743092581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1580 terms. -/
def A244118 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244118.P17660869933743092581.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1580 terms. -/
def A244118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244607.P4839199191391835478

`eq[1, ∑{e}[1-A007954(n), #]]`
-/

namespace A244607.P4839199191391835478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244607.P4839199191391835478

noncomputable section

/-- A244607: Numbers k such that (product of digits of k) - 1 is prime.

Offset 1, canonical program `A244607.P4839199191391835478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A244607 (n : ℕ) : ℤ :=
  (A244607.P4839199191391835478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A244607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244637.P8806266305917714625

`p?[A048261(n+1)]`
-/

namespace A244637.P8806266305917714625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244637.P8806266305917714625

noncomputable section

/-- A244637: Primes that are the sum of the squares of distinct primes.

Offset 1, canonical program `A244637.P8806266305917714625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A244637 (n : ℕ) : ℤ :=
  A244637.P8806266305917714625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A244637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244796.P11267553040901324862

`A000005(A000040(n+1)-1)-1`
-/

namespace A244796.P11267553040901324862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) - 1).toNat - 1

end

end A244796.P11267553040901324862

noncomputable section

/-- A244796: Number of moduli m such that (prime(n) mod m) = 1.

Offset 1, canonical program `A244796.P11267553040901324862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244796 (n : ℕ) : ℤ :=
  A244796.P11267553040901324862.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245382.P3222382834720020531

`p?[A245383(n+1)]`
-/

namespace A245382.P3222382834720020531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245382.P3222382834720020531

noncomputable section

/-- A245382: Primes whose product of digits is a semiprime.

Offset 1, canonical program `A245382.P3222382834720020531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A245382 (n : ℕ) : ℤ :=
  A245382.P3222382834720020531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A245382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245639.P3877904969913949712

`p?[A143827(n+1)]`
-/

namespace A245639.P3877904969913949712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245639.P3877904969913949712

noncomputable section

/-- A245639: Prime numbers P such that 8*P^2-1 is also prime.

Offset 1, canonical program `A245639.P3877904969913949712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. -/
def A245639 (n : ℕ) : ℤ :=
  A245639.P3877904969913949712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. -/
def A245639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246294.P17393245477566257957

`A327139(Δ[n²])`
-/

namespace A246294.P17393245477566257957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A246294.P17393245477566257957

noncomputable section

/-- A246294: Numbers k such that sin(k) < sin(k+1) > sin(k+2).

Offset 1, canonical program `A246294.P17393245477566257957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246294 (n : ℕ) : ℤ :=
  A246294.P17393245477566257957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246297.P8914562729595011779

`A327139(2*(n+1))`
-/

namespace A246297.P8914562729595011779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (2 * (n + 1))

end

end A246297.P8914562729595011779

noncomputable section

/-- A246297: Numbers k such that sin(k) > sin(k+1) < sin(k+2).

Offset 1, canonical program `A246297.P8914562729595011779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246297 (n : ℕ) : ℤ :=
  A246297.P8914562729595011779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246406.P15282604472216613680

`∩[A246407(n+1)-1, A246407(n+1)]`
-/

namespace A246406.P15282604472216613680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246406.P15282604472216613680

noncomputable section

/-- A246406: Nonnegative integers k satisfying sec(k) > sec(k+1) > sec(k+2) < sec(k+3).

Offset 1, canonical program `A246406.P15282604472216613680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A246406 (n : ℕ) : ℤ :=
  (A246406.P15282604472216613680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A246406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246558.P11717952315131037420

`A007954(A000045(n))`
-/

namespace A246558.P11717952315131037420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A000045 n).toNat

end

end A246558.P11717952315131037420

noncomputable section

/-- A246558: Product of the digits of the n-th Fibonacci number.

Offset 0, canonical program `A246558.P11717952315131037420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246558 (n : ℕ) : ℤ :=
  A246558.P11717952315131037420.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246788.P913895177884739949

`A002260(n+1)*A248810(A014132(n+1))`
-/

namespace A246788.P913895177884739949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A248810 (A014132 (n + 1)).toNat

end

end A246788.P913895177884739949

noncomputable section

/-- A246788: Triangle read by rows: T(n,k) is the coefficient A_k in the transformation Sum_{k=0..n} (k+1)*x^k = Sum_{k=0..n} A_k*(x+2)^k.

Offset 0, canonical program `A246788.P913895177884739949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A246788 (n : ℕ) : ℤ :=
  A246788.P913895177884739949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A246788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246916.P16965770001564161991

`A000203(n+1)*A001710(A000005(n+1)+1)`
-/

namespace A246916.P16965770001564161991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001710 (A000005 (n + 1) + 1).toNat

end

end A246916.P16965770001564161991

noncomputable section

/-- A246916: Sum of the cumulative sums of all the permutations of divisors of number n.

Offset 1, canonical program `A246916.P16965770001564161991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246916 (n : ℕ) : ℤ :=
  A246916.P16965770001564161991.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247678.P17590283635497127436

`filter[A063305(n+3), A373977(#)]`
-/

namespace A247678.P17590283635497127436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A247678.P17590283635497127436

noncomputable section

/-- A247678: Odd composite numbers congruent to 4 modulo 9.

Offset 1, canonical program `A247678.P17590283635497127436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3954 terms. -/
def A247678 (n : ℕ) : ℤ :=
  A247678.P17590283635497127436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3954 terms. -/
def A247678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248211.P6041066512751082017

`A001221(n+2)-A001221(n+1)`
-/

namespace A248211.P6041066512751082017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2) - A001221 (n + 1)

end

end A248211.P6041066512751082017

noncomputable section

/-- A248211: First differences of omega(n), the number of distinct prime factors function (A001221).

Offset 1, canonical program `A248211.P6041066512751082017`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248211 (n : ℕ) : ℤ :=
  A248211.P6041066512751082017.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248365.P6680227823295661139

`A001704(4*(n+1))-1`
-/

namespace A248365.P6680227823295661139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (4 * (n + 1)) - 1

end

end A248365.P6680227823295661139

noncomputable section

/-- A248365: 4n concatenated with itself.

Offset 1, canonical program `A248365.P6680227823295661139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6250 terms. -/
def A248365 (n : ℕ) : ℤ :=
  A248365.P6680227823295661139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6250 terms. -/
def A248365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248565.P6743472506241932522

`comp[A248567(n+1)+n]+1`
-/

namespace A248565.P6743472506241932522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248567 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248565.P6743472506241932522

noncomputable section

/-- A248565: Least k such that log(4/3) - sum{1/(h*4^h), h = 1..k} < 1/8^n.

Offset 1, canonical program `A248565.P6743472506241932522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248565 (n : ℕ) : ℤ :=
  (A248565.P6743472506241932522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248577.P10884066776821242186

`A000005(n+1)*A001221(n+1)`
-/

namespace A248577.P10884066776821242186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A001221 (n + 1)

end

end A248577.P10884066776821242186

noncomputable section

/-- A248577: Product of the number of divisors of n and the number of distinct prime divisors of n; i.e., tau(n) * omega(n).

Offset 1, canonical program `A248577.P10884066776821242186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248577 (n : ℕ) : ℤ :=
  A248577.P10884066776821242186.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248662.P15236440755590100314

`lt[A001414(n+1), A000005(n+1)]+1`
-/

namespace A248662.P15236440755590100314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A248662.P15236440755590100314

noncomputable section

/-- A248662: Numbers with the property: tau(n) > sopfr(n), or A000005(n) > A001414(n).

Offset 1, canonical program `A248662.P15236440755590100314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A248662 (n : ℕ) : ℤ :=
  (A248662.P15236440755590100314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A248662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249102.P1085466036066387248

`eq[0, A268643(A307913(n+1))]`
-/

namespace A249102.P1085466036066387248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249102.P1085466036066387248

noncomputable section

/-- A249102: Numbers with no 1's in base-7 expansion.

Offset 1, canonical program `A249102.P1085466036066387248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. -/
def A249102 (n : ℕ) : ℤ :=
  (A249102.P1085466036066387248.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. -/
def A249102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250427.P17058954788119591334

`(A005994(n+2)-A096338(n))²`
-/

namespace A250427.P17058954788119591334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005994 (n + 2) - A096338 n) ^ 2

end

end A250427.P17058954788119591334

noncomputable section

/-- A250427: Number of (n+1)X(3+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250427.P17058954788119591334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A250427 (n : ℕ) : ℤ :=
  A250427.P17058954788119591334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A250427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250430.P15424429207822931623

`sqrt(A250429(n+1)*A250431(n+1))`
-/

namespace A250430.P15424429207822931623
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250429 (n + 1) * A250431 (n + 1) : ℝ)

end

end A250430.P15424429207822931623

noncomputable section

/-- A250430: Number of (n+1)X(6+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250430.P15424429207822931623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250430 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A250430.P15424429207822931623.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252480.P15877996964888360874

`∩[A011540(n+1)-1, A011540(n+1)]`
-/

namespace A252480.P15877996964888360874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252480.P15877996964888360874

noncomputable section

/-- A252480: Numbers whose decimal representation has at least one '0' digit in a position other than the final digit.

Offset 1, canonical program `A252480.P15877996964888360874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7721 terms. -/
def A252480 (n : ℕ) : ℤ :=
  (A252480.P15877996964888360874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7721 terms. -/
def A252480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252505.P33012695452401926

`A000005(A058035(n+1))`
-/

namespace A252505.P33012695452401926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A058035 (n + 1)).toNat

end

end A252505.P33012695452401926

noncomputable section

/-- A252505: Number of biquadratefree (4th power free) divisors of n.

Offset 1, canonical program `A252505.P33012695452401926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252505 (n : ℕ) : ℤ :=
  A252505.P33012695452401926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252505.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254105.P16731552791873516864

`A254107(A038722(n+1))%A017186(n)`
-/

namespace A254105.P16731552791873516864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254107 (A038722 (n + 1)).toNat) (A017186 n)

end

end A254105.P16731552791873516864

noncomputable section

/-- A254105: Dispersion of A055938; starting from its complementary sequence A005187 as the first column of square array A(row,col), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A254105.P16731552791873516864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A254105 (n : ℕ) : ℤ :=
  A254105.P16731552791873516864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A254105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254958.P15726477760308022044

`∩[A052382(n+1), A175396(n+1)]`
-/

namespace A254958.P15726477760308022044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254958.P15726477760308022044

noncomputable section

/-- A254958: Zeroless numbers n with digits d_1, d_2, ... d_k such that d_1^2 + ... + d_k^2 is a square.

Offset 1, canonical program `A254958.P15726477760308022044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A254958 (n : ℕ) : ℤ :=
  (A254958.P15726477760308022044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A254958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255415.P4478179475312166102

`A260715(A017401(n))`
-/

namespace A255415.P4478179475312166102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260715 (A017401 n).toNat

end

end A255415.P4478179475312166102

noncomputable section

/-- A255415: Row 5 of Ludic array A255127.

Offset 1, canonical program `A255415.P4478179475312166102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A255415 (n : ℕ) : ℤ :=
  A255415.P4478179475312166102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A255415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255808.P14703978000163478120

`record[A052382(n+1)+n+1-A007095(n+1)]`
-/

namespace A255808.P14703978000163478120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1) + ((n + 1 : ℤ) - A007095 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255808.P14703978000163478120

noncomputable section

/-- A255808: Numbers with no zeros in base-9 representation.

Offset 1, canonical program `A255808.P14703978000163478120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A255808 (n : ℕ) : ℤ :=
  A255808.P14703978000163478120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A255808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256532.P7056753071363475223

`(n+1)*A004125(n+1)`
-/

namespace A256532.P7056753071363475223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004125 (n + 1)

end

end A256532.P7056753071363475223

noncomputable section

/-- A256532: Product of n and the sum of remainders of n mod k, for k = 1, 2, 3, ..., n.

Offset 1, canonical program `A256532.P7056753071363475223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256532 (n : ℕ) : ℤ :=
  A256532.P7056753071363475223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256532.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256862.P1813085850284359841

`A013632(3*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A256862.P1813085850284359841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013632 (3 * a (n - 1)).toNat + a (n - 1)

end

end A256862.P1813085850284359841

noncomputable section

/-- A256862: a(1)=1, then a(n) = least number > a(n-1) such that 2*a(n-1)+a(n) is prime.

Offset 1, canonical program `A256862.P1813085850284359841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A256862 (n : ℕ) : ℤ :=
  A256862.P1813085850284359841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A256862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257220.P8696948705799715242

`lt[25, 4*a(A387463(n))]` with `a(0)=2, a(1)=7`
-/

namespace A257220.P8696948705799715242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f2 =>
  4 * f2 (A387463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257220.P8696948705799715242

noncomputable section

/-- A257220: Numbers that have at least one divisor containing the digit 3 in base 10.

Offset 1, canonical program `A257220.P8696948705799715242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8394 terms. -/
def A257220 (n : ℕ) : ℤ :=
  (A257220.P8696948705799715242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8394 terms. -/
def A257220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257282.P3133761122508046710

`comp[A257292(n+1)]`
-/

namespace A257282.P3133761122508046710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257282.P3133761122508046710

noncomputable section

/-- A257282: Numbers whose square is not the sum of two consecutive nonsquares.

Offset 1, canonical program `A257282.P3133761122508046710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257282 (n : ℕ) : ℤ :=
  (A257282.P3133761122508046710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257294.P9500194499461381062

`floor(A007954(n)^(1/A055642(n))*10^(A055642(n)-1))`
-/

namespace A257294.P9500194499461381062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007954 n : ℝ) ^ (1 / (A055642 n : ℚ) : ℝ) * ((10 : ℚ) ^ (A055642 n - 1 : ℤ) : ℝ)⌋

end

end A257294.P9500194499461381062

noncomputable section

/-- A257294: The first d decimal digits of the geometric mean of the digits of n, where d is the number of digits of n, without leading zeros.

Offset 0, canonical program `A257294.P9500194499461381062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257294 (n : ℕ) : ℤ :=
  A257294.P9500194499461381062.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258468.P10336485867580650606

`lcm(n+1, n+1-A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258468.P10336485867580650606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n + 1 : ℤ) - A000005 (n + 1))

end

end A258468.P10336485867580650606

noncomputable section

/-- A258468: a(n) = lcm(n, n - tau(n)).

Offset 1, canonical program `A258468.P10336485867580650606`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+1, n+1-A000005(n+1))` (program `A258468.P10336485867580650606`, by `A258468.P10336485867580650606.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A258468 (n : ℕ) : ℤ :=
  (A258468.P10336485867580650606.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+1, n+1-A000005(n+1))` (program `A258468.P10336485867580650606`, by `A258468.P10336485867580650606.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A258468.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A259024.P17201124140699928540

`A084091(n+1)-A084091(A175676(n+1))`
-/

namespace A259024.P17201124140699928540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (n + 1) - A084091 (A175676 (n + 1)).toNat

end

end A259024.P17201124140699928540

noncomputable section

/-- A259024: a(4*n) = a(n). a(4*n + 2) = 0. a(4*n + 1) = - A259022(n+2). a(4*n + 3) = - A259022(n-2).

Offset 1, canonical program `A259024.P17201124140699928540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259024 (n : ℕ) : ℤ :=
  A259024.P17201124140699928540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259315.P8137311913003913152

`comp[∪[A000040(n+1), A011540(n+1)]]`
-/

namespace A259315.P8137311913003913152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A259315.P8137311913003913152

noncomputable section

/-- A259315: Nonprimes containing no zeros in decimal representation.

Offset 1, canonical program `A259315.P8137311913003913152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259315 (n : ℕ) : ℤ :=
  (A259315.P8137311913003913152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259651.P6103828034812999762

`A001221((n+1)*(3*(n+1)-1)/2)`
-/

namespace A259651.P6103828034812999762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (((n + 1 : ℤ) * ((3 * (n + 1) : ℤ) - 1) : ℚ) / 2)).toNat

end

end A259651.P6103828034812999762

noncomputable section

/-- A259651: Number of distinct prime factors of the n-th pentagonal number (A000326).

Offset 1, canonical program `A259651.P6103828034812999762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259651 (n : ℕ) : ℤ :=
  A259651.P6103828034812999762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259773.P1634430538473741223

`A007954(A000032(n))`
-/

namespace A259773.P1634430538473741223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A000032 n).toNat

end

end A259773.P1634430538473741223

noncomputable section

/-- A259773: Product of the digits of the n-th Lucas number.

Offset 0, canonical program `A259773.P1634430538473741223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259773 (n : ℕ) : ℤ :=
  A259773.P1634430538473741223.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260235.P8919696338789847144

`A001221(A000384(n+2))`
-/

namespace A260235.P8919696338789847144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000384 (n + 2)).toNat

end

end A260235.P8919696338789847144

noncomputable section

/-- A260235: Number of distinct prime factors of the n-th hexagonal number (A000384).

Offset 2, canonical program `A260235.P8919696338789847144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260235 (n : ℕ) : ℤ :=
  A260235.P8919696338789847144.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260256.P436292535346818829

`eq[A000005(n+1), A000005(n+5)]+3`
-/

namespace A260256.P436292535346818829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A260256.P436292535346818829

noncomputable section

/-- A260256: Numbers m such that tau(m + 2) = tau(m - 2) where tau(k) = A000005(k).

Offset 1, canonical program `A260256.P436292535346818829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A260256 (n : ℕ) : ℤ :=
  (A260256.P436292535346818829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A260256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261447.P2588180063038653049

`A001221(A032741(n+2))`
-/

namespace A261447.P2588180063038653049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A032741 (n + 2)).toNat

end

end A261447.P2588180063038653049

noncomputable section

/-- A261447: The number of distinct prime factors of the number of proper divisors of n.

Offset 2, canonical program `A261447.P2588180063038653049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A032741, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261447 (n : ℕ) : ℤ :=
  A261447.P2588180063038653049.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A032741, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261969.P5982450597750301384

`A078615(n+1)/gcd(A078615(n+1), A304768(n+1))`
-/

namespace A261969.P5982450597750301384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078615 (n + 1) : ℚ) / (Int.gcd (A078615 (n + 1)) (A304768 (n + 1)) : ℚ)

end

end A261969.P5982450597750301384

noncomputable section

/-- A261969: Product of primes dividing n with maximum multiplicity.

Offset 1, canonical program `A261969.P5982450597750301384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261969 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A261969.P5982450597750301384.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262684.P11535517176772026227

`1-a(A000005(n+1)-1)` with `a(0)=0, a(1)=0`
-/

namespace A262684.P11535517176772026227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - a (A000005 (n + 1) - 1).toNat

end

end A262684.P11535517176772026227

noncomputable section

/-- A262684: Characteristic function for A080218.

Offset 1, canonical program `A262684.P11535517176772026227`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262684 (n : ℕ) : ℤ :=
  A262684.P11535517176772026227.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262866.P18281721116564885018

`A290682(A004277(n))-A001317(n)*A016116(2*n)`
-/

namespace A262866.P18281721116564885018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 (A004277 n).toNat - A001317 n * A016116 (2 * n)

end

end A262866.P18281721116564885018

noncomputable section

/-- A262866: Decimal representation of the n-th iteration of the "Rule 153" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A262866.P18281721116564885018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A262866 (n : ℕ) : ℤ :=
  A262866.P18281721116564885018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A262866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263085.P16582971687481211869

`A000005(2*(n+1)-1)+a(n-1)` with `a(0)=1`
-/

namespace A263085.P16582971687481211869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (2 * (n + 1) - 1) + a (n - 1)

end

end A263085.P16582971687481211869

noncomputable section

/-- A263085: Partial sums of A099774 (A099774(n) = number of divisors of n-th odd number).

Offset 1, canonical program `A263085.P16582971687481211869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263085 (n : ℕ) : ℤ :=
  A263085.P16582971687481211869.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263086.P3529414525031942336

`A000005(2*(n+1))+a(n-1)` with `a(0)=2`
-/

namespace A263086.P3529414525031942336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000005 (2 * (n + 1)) + a (n - 1)

end

end A263086.P3529414525031942336

noncomputable section

/-- A263086: Partial sums of A099777, where A099777(n) gives the number of divisors of n-th even number.

Offset 1, canonical program `A263086.P3529414525031942336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263086 (n : ℕ) : ℤ :=
  A263086.P3529414525031942336.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263243.P14781637449265801547

`A267520(n*and(1, ∑[n]))`
-/

namespace A263243.P14781637449265801547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267520 (n * Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A263243.P14781637449265801547

noncomputable section

/-- A263243: Triangle read by rows giving successive states of cellular automaton generated by "Rule 155" initiated with a single ON (black) cell.

Offset 0, canonical program `A263243.P14781637449265801547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263243 (n : ℕ) : ℤ :=
  A263243.P14781637449265801547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263919.P4377395564244564805

`(A266982(n)+n)%2`
-/

namespace A263919.P4377395564244564805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266982 n + (n : ℤ)) 2

end

end A263919.P4377395564244564805

noncomputable section

/-- A263919: Triangle read by rows giving successive states of cellular automaton generated by "Rule 163" initiated with a single ON (black) cell.

Offset 0, canonical program `A263919.P4377395564244564805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263919 (n : ℕ) : ℤ :=
  A263919.P4377395564244564805.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265402.P14245081475958957780

`p?[comp[(n+1)*A001221(2*n+1)]]`
-/

namespace A265402.P14245081475958957780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001221 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A265402.P14245081475958957780

noncomputable section

/-- A265402: Fixed points of A265388: numbers n for which gcd{k=1..n-1} binomial(2*n, 2*k) = n.

Offset 1, canonical program `A265402.P14245081475958957780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1770 terms. -/
def A265402 (n : ℕ) : ℤ :=
  (A265402.P14245081475958957780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1770 terms. -/
def A265402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265412.P11385853226138778996

`A265411(n)+a(n-1)` with `a(0)=1`
-/

namespace A265412.P11385853226138778996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265411 n + a (n - 1)

end

end A265412.P11385853226138778996

noncomputable section

/-- A265412: Partial sums of A265411.

Offset 0, canonical program `A265412.P11385853226138778996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265412 (n : ℕ) : ℤ :=
  A265412.P11385853226138778996.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265412.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265711.P15707034598538859304

`A266227(a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A265711.P15707034598538859304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266227 (a (n - 1) + 1).toNat + a (n - 1)

end

end A265711.P15707034598538859304

noncomputable section

/-- A265711: Numbers n such that floor(Sum_{d|n} 1 / sigma(d)) = 1.

Offset 1, canonical program `A265711.P15707034598538859304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265711 (n : ℕ) : ℤ :=
  A265711.P15707034598538859304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265712.P4281004375783898549

`eq[2, A266227(n+1)]+1`
-/

namespace A265712.P4281004375783898549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265712.P4281004375783898549

noncomputable section

/-- A265712: Numbers n such that floor(Sum_{d|n} 1 / sigma(d)) = 2.

Offset 1, canonical program `A265712.P4281004375783898549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. -/
def A265712 (n : ℕ) : ℤ :=
  (A265712.P4281004375783898549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. -/
def A265712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266090.P15536049013854608840

`and(A266671(n), A267003(n))`
-/

namespace A266090.P15536049013854608840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266671 n) (A267003 n)

end

end A266090.P15536049013854608840

noncomputable section

/-- A266090: Decimal representation of the n-th iteration of the "Rule 17" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266090.P15536049013854608840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266090 (n : ℕ) : ℤ :=
  A266090.P15536049013854608840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266155.P15383333705459464585

`A266377(xor(n, a(n-1)))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A266155.P15383333705459464585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A266377 (Int.xor (n : ℤ) (a (n - 1))).toNat

end

end A266155.P15383333705459464585

noncomputable section

/-- A266155: Triangle read by rows giving successive states of cellular automaton generated by "Rule 19" initiated with a single ON (black) cell.

Offset 0, canonical program `A266155.P15383333705459464585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266155 (n : ℕ) : ℤ :=
  A266155.P15383333705459464585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266176.P15973943140520790239

`A266668(n)-Δ[A016116(n)²]`
-/

namespace A266176.P15973943140520790239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266668 n - (f1 (n + 1) - f1 n)

end

end A266176.P15973943140520790239

noncomputable section

/-- A266176: Decimal representation of the n-th iteration of the "Rule 5" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266176.P15973943140520790239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266176 (n : ℕ) : ℤ :=
  A266176.P15973943140520790239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266718.P2106620432007152276

`(2-A165326(n))*A266461(n)`
-/

namespace A266718.P2106620432007152276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A165326 n) * A266461 n

end

end A266718.P2106620432007152276

noncomputable section

/-- A266718: Decimal representation of the n-th iteration of the "Rule 59" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266718.P2106620432007152276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266718 (n : ℕ) : ℤ :=
  A266718.P2106620432007152276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267044.P17562880071829113964

`A267538(n)-a(n-1)` with `a(0)=1`
-/

namespace A267044.P17562880071829113964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267538 n - a (n - 1)

end

end A267044.P17562880071829113964

noncomputable section

/-- A267044: Binary representation of the middle column of the "Rule 91" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267044.P17562880071829113964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267044 (n : ℕ) : ℤ :=
  A267044.P17562880071829113964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268317.P13150400514428310603

`a(A268318(n-1))+1` with `a(0)=0`
-/

namespace A268317.P13150400514428310603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A268318 (n - 1)).toNat + 1

end

end A268317.P13150400514428310603

noncomputable section

/-- A268317: Irregular triangle read by rows: T(n,k) gives the columns sum in the table Fib(n+1) X Fib(n), where k = 1..Fib(n), and 1's are assigned to cells on the longest diagonal path.

Offset 0, canonical program `A268317.P13150400514428310603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268317 (n : ℕ) : ℤ :=
  (A268317.P13150400514428310603.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268388.P181920710593903785

`eq[0, A302777(n+2)]+2`
-/

namespace A268388.P181920710593903785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A268388.P181920710593903785

noncomputable section

/-- A268388: "Fermi-Dirac composites": numbers k for which A064547(k) > 1.

Offset 1, canonical program `A268388.P181920710593903785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268388 (n : ℕ) : ℤ :=
  (A268388.P181920710593903785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268438.P6453878173920205538

`A269940(n)*A357013(n)`
-/

namespace A268438.P6453878173920205538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269940 n * A357013 n

end

end A268438.P6453878173920205538

noncomputable section

/-- A268438: Triangle read by rows, T(n,k) = (-1)^k*(2*n)!*P[n,k](n/(n+1)) where P is the P-transform, for n>=0 and 0<=k<=n.

Offset 0, canonical program `A268438.P6453878173920205538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A268438 (n : ℕ) : ℤ :=
  A268438.P6453878173920205538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A268438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268440.P17355036467535128514

`A094527(n)*A269940(n)`
-/

namespace A268440.P17355036467535128514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A269940 n

end

end A268440.P17355036467535128514

noncomputable section

/-- A268440: Triangle read by rows, T(n,k) = C(2*n,n+k)*Sum_{m=0..k} (-1)^(m+k)*C(n+k,n+m)* Stirling1(n+m,m), for n>=0 and 0<=k<=n.

Offset 0, canonical program `A268440.P17355036467535128514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A268440 (n : ℕ) : ℤ :=
  A268440.P17355036467535128514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A268440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269160.P5728616991785596865

`A387312(2*n)`
-/

namespace A269160.P5728616991785596865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387312 (2 * n)

end

end A269160.P5728616991785596865

noncomputable section

/-- A269160: Formula for Wolfram's Rule 30 cellular automaton: a(n) = n XOR (2n OR 4n).

Offset 0, canonical program `A269160.P5728616991785596865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A387312, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269160 (n : ℕ) : ℤ :=
  A269160.P5728616991785596865.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A387312, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269454.P4242820123996942999

`p?[A294091(n+1)]`
-/

namespace A269454.P4242820123996942999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269454.P4242820123996942999

noncomputable section

/-- A269454: Safe primes that are not congruent to -1 mod 8.

Offset 1, canonical program `A269454.P4242820123996942999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1126 terms. -/
def A269454 (n : ℕ) : ℤ :=
  A269454.P4242820123996942999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1126 terms. -/
def A269454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270088.P5283542168159360007

`abs(or(8, -A273767(n)))`
-/

namespace A270088.P5283542168159360007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 8 (-A273767 n)|

end

end A270088.P5283542168159360007

noncomputable section

/-- A270088: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270088.P5283542168159360007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A270088 (n : ℕ) : ℤ :=
  A270088.P5283542168159360007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A270088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270130.P16178713870882663809

`-or(4, -A273767(n))`
-/

namespace A270130.P16178713870882663809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 4 (-A273767 n)

end

end A270130.P16178713870882663809

noncomputable section

/-- A270130: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270130.P16178713870882663809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A270130 (n : ℕ) : ℤ :=
  A270130.P16178713870882663809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A270130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270992.P11423849643885823458

`A001221(A063086(n+1))`
-/

namespace A270992.P11423849643885823458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A063086 (n + 1)).toNat

end

end A270992.P11423849643885823458

noncomputable section

/-- A270992: Number of distinct prime divisors of prime(n)+1 and prime(n+1)+1.

Offset 1, canonical program `A270992.P11423849643885823458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270992 (n : ℕ) : ℤ :=
  A270992.P11423849643885823458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271056.P15190929235682603079

`∑[A271054(n)]`
-/

namespace A271056.P15190929235682603079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271056.P15190929235682603079

noncomputable section

/-- A271056: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271056.P15190929235682603079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3159 terms. -/
def A271056 (n : ℕ) : ℤ :=
  A271056.P15190929235682603079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3159 terms. -/
def A271056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271183.P13519153737086807592

`eq[1, A353816(A353816(n)+n)]`
-/

namespace A271183.P13519153737086807592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 (A353816 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271183.P13519153737086807592

noncomputable section

/-- A271183: Löschian numbers (A003136) k such that k + 1 is also Löschian number.

Offset 1, canonical program `A271183.P13519153737086807592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1128 terms. -/
def A271183 (n : ℕ) : ℤ :=
  (A271183.P13519153737086807592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1128 terms. -/
def A271183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271319.P11966031781455970266

`A001221(A060354(n+2))`
-/

namespace A271319.P11966031781455970266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A060354 (n + 2)).toNat

end

end A271319.P11966031781455970266

noncomputable section

/-- A271319: Number of distinct prime factors of the n-th n-gonal number (A060354).

Offset 2, canonical program `A271319.P11966031781455970266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271319 (n : ℕ) : ℤ :=
  A271319.P11966031781455970266.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272171.P16960674483232534523

`A000005(A004736(n+1))`
-/

namespace A272171.P16960674483232534523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004736 (n + 1)).toNat

end

end A272171.P16960674483232534523

noncomputable section

/-- A272171: Triangle read by rows: T(n,k) in which row n lists the first n terms of A000005 in reverse order.

Offset 1, canonical program `A272171.P16960674483232534523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272171 (n : ℕ) : ℤ :=
  A272171.P16960674483232534523.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272171.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272229.P706658860281146822

`eq[A001221(3*n+4), A001221(n+1)]+1`
-/

namespace A272229.P706658860281146822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272229.P706658860281146822

noncomputable section

/-- A272229: Numbers n such that n and 3n+1 have the same number of distinct prime divisors.

Offset 1, canonical program `A272229.P706658860281146822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A272229 (n : ℕ) : ℤ :=
  (A272229.P706658860281146822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A272229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272377.P3912786864071120039

`A000005(A000032(n))`
-/

namespace A272377.P3912786864071120039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000032 n).toNat

end

end A272377.P3912786864071120039

noncomputable section

/-- A272377: Number of positive divisors of A000032(n).

Offset 0, canonical program `A272377.P3912786864071120039`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272377 (n : ℕ) : ℤ :=
  A272377.P3912786864071120039.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272872.P7782579486698380684

`lt[(n+2)%A000005(n+1), 1]+1`
-/

namespace A272872.P7782579486698380684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A272872.P7782579486698380684

noncomputable section

/-- A272872: Numbers k such that k+1 is divisible by number of divisors of k.

Offset 1, canonical program `A272872.P7782579486698380684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272872 (n : ℕ) : ℤ :=
  (A272872.P7782579486698380684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272933.P1769940145584880595

`lt[and(2, n), A353816(n)]`
-/

namespace A272933.P1769940145584880595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272933.P1769940145584880595

noncomputable section

/-- A272933: Numbers of the form x^2 + 12*y^2.

Offset 1, canonical program `A272933.P1769940145584880595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6625 terms. -/
def A272933 (n : ℕ) : ℤ :=
  (A272933.P1769940145584880595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6625 terms. -/
def A272933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273460.P16091352189442865612

`eq[A007954(n+1), A048050(n+1)]+1`
-/

namespace A273460.P16091352189442865612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273460.P16091352189442865612

noncomputable section

/-- A273460: Numbers n such that sum of the divisors of n (except 1 and n) is equal to the product of the digits of n.

Offset 1, canonical program `A273460.P16091352189442865612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A273460 (n : ℕ) : ℤ :=
  (A273460.P16091352189442865612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A273460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274612.P12827660095432405851

`filter[A043489(n+1), A168184(#)]`
-/

namespace A274612.P12827660095432405851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A274612.P12827660095432405851

noncomputable section

/-- A274612: Numbers not divisible by 10 with at least one zero but no two adjacent 0's among its decimal digits.

Offset 1, canonical program `A274612.P12827660095432405851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1539 terms. -/
def A274612 (n : ℕ) : ℤ :=
  A274612.P12827660095432405851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1539 terms. -/
def A274612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274685.P1074266660649065575

`filter[A274397(n+1), A379952(#)]`
-/

namespace A274685.P1074266660649065575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A274685.P1074266660649065575

noncomputable section

/-- A274685: Odd numbers n such that sigma(n) is divisible by 5.

Offset 1, canonical program `A274685.P1074266660649065575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4521 terms. -/
def A274685 (n : ℕ) : ℤ :=
  A274685.P1074266660649065575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4521 terms. -/
def A274685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275202.P2888438390454499260

`A005942(n+2)/2`
-/

namespace A275202.P2888438390454499260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005942 (n + 2) : ℚ) / 2

end

end A275202.P2888438390454499260

noncomputable section

/-- A275202: Subword complexity (number of distinct blocks of length n) of the period doubling sequence A096268.

Offset 1, canonical program `A275202.P2888438390454499260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005942, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275202 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A275202.P2888438390454499260.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005942, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275202.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275367.P11593078130365677386

`A000005(2*(n+1)²)-A000005((n+1)²)`
-/

namespace A275367.P11593078130365677386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1) ^ 2) - A000005 ((n + 1) ^ 2)

end

end A275367.P11593078130365677386

noncomputable section

/-- A275367: Number of odd divisors of n^2.

Offset 1, canonical program `A275367.P11593078130365677386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275367 (n : ℕ) : ℤ :=
  A275367.P11593078130365677386.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275495.P16205694111153463026

`A059851(n+1)-(n+1)%2`
-/

namespace A275495.P16205694111153463026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) - (((n + 1) % 2 : ℕ) : ℤ)

end

end A275495.P16205694111153463026

noncomputable section

/-- A275495: a(n) = Sum_{k=2..n} floor(n/k) - 2*floor(n/(2*k)).

Offset 1, canonical program `A275495.P16205694111153463026`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059851, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275495 (n : ℕ) : ℤ :=
  A275495.P16205694111153463026.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059851, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275495.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275616.P14201198473443466928

`eq[1, gcd(n+1, A001221(n+1))]+1`
-/

namespace A275616.P14201198473443466928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001221 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A275616.P14201198473443466928

noncomputable section

/-- A275616: Numbers k such that k and omega(k) are relatively prime, where omega(n) (A001221) is the number of distinct prime divisors of n.

Offset 1, canonical program `A275616.P14201198473443466928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275616 (n : ℕ) : ℤ :=
  (A275616.P14201198473443466928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276038.P2474071255086564491

`eq[A007954(n), A234959(A051801(n))]`
-/

namespace A276038.P2474071255086564491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234959 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276038.P2474071255086564491

noncomputable section

/-- A276038: Numbers n such that product of digits of n is a power of 6.

Offset 1, canonical program `A276038.P2474071255086564491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A276038 (n : ℕ) : ℤ :=
  (A276038.P2474071255086564491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A276038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276262.P9385478510724947906

`∩[A141849(n+1), A195043(n)]`
-/

namespace A276262.P9385478510724947906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276262.P9385478510724947906

noncomputable section

/-- A276262: Centered 22-gonal primes.

Offset 1, canonical program `A276262.P9385478510724947906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A276262 (n : ℕ) : ℤ :=
  (A276262.P9385478510724947906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A276262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276678.P1507170948591821380

`A000005(A000326(n+1))`
-/

namespace A276678.P1507170948591821380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000326 (n + 1)).toNat

end

end A276678.P1507170948591821380

noncomputable section

/-- A276678: Number of divisors of the n-th pentagonal number.

Offset 1, canonical program `A276678.P1507170948591821380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276678 (n : ℕ) : ℤ :=
  A276678.P1507170948591821380.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276679.P3505518426421667446

`A000005(A000384(n+1))`
-/

namespace A276679.P3505518426421667446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000384 (n + 1)).toNat

end

end A276679.P3505518426421667446

noncomputable section

/-- A276679: Number of divisors of the n-th hexagonal number.

Offset 1, canonical program `A276679.P3505518426421667446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276679 (n : ℕ) : ℤ :=
  A276679.P3505518426421667446.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276679.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276680.P15546991815700362490

`A000005(A000566(n+1))`
-/

namespace A276680.P15546991815700362490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000566 (n + 1)).toNat

end

end A276680.P15546991815700362490

noncomputable section

/-- A276680: Number of divisors of the n-th heptagonal number.

Offset 1, canonical program `A276680.P15546991815700362490`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276680 (n : ℕ) : ℤ :=
  A276680.P15546991815700362490.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276681.P5271611203890390845

`A000005(A000567(n+1))`
-/

namespace A276681.P5271611203890390845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000567 (n + 1)).toNat

end

end A276681.P5271611203890390845

noncomputable section

/-- A276681: Number of divisors of the n-th octagonal number.

Offset 1, canonical program `A276681.P5271611203890390845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276681 (n : ℕ) : ℤ :=
  A276681.P5271611203890390845.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276681.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276682.P14610706334698834383

`A000005(A001106(n+1))`
-/

namespace A276682.P14610706334698834383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001106 (n + 1)).toNat

end

end A276682.P14610706334698834383

noncomputable section

/-- A276682: Number of divisors of the n-th 9-gonal number.

Offset 1, canonical program `A276682.P14610706334698834383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276682 (n : ℕ) : ℤ :=
  A276682.P14610706334698834383.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276683.P1282822124416539506

`A000005(A001107(n+1))`
-/

namespace A276683.P1282822124416539506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001107 (n + 1)).toNat

end

end A276683.P1282822124416539506

noncomputable section

/-- A276683: Number of divisors of the n-th 10-gonal number.

Offset 1, canonical program `A276683.P1282822124416539506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276683 (n : ℕ) : ℤ :=
  A276683.P1282822124416539506.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277194.P2099939740491535609

`Δ[n²-A047809(n)]`
-/

namespace A277194.P2099939740491535609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A047809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277194.P2099939740491535609

noncomputable section

/-- A277194: Number of integers k in range [n^2, ((n+1)^2)-1] for which 4 = the least number of squares that add up to k (A002828).

Offset 0, canonical program `A277194.P2099939740491535609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. -/
def A277194 (n : ℕ) : ℤ :=
  A277194.P2099939740491535609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. -/
def A277194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277216.P4779686101066146694

`A007954(A000203(n+1))`
-/

namespace A277216.P4779686101066146694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A000203 (n + 1)).toNat

end

end A277216.P4779686101066146694

noncomputable section

/-- A277216: Product of decimal digits of sum of divisors of n.

Offset 1, canonical program `A277216.P4779686101066146694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277216 (n : ℕ) : ℤ :=
  A277216.P4779686101066146694.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277216.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277314.P8241262981008711249

`A057526(A129343(n)+1)`
-/

namespace A277314.P8241262981008711249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A129343 n + 1).toNat

end

end A277314.P8241262981008711249

noncomputable section

/-- A277314: Number of nonzero coefficients in Stern polynomial B(n,t).

Offset 0, canonical program `A277314.P8241262981008711249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A277314 (n : ℕ) : ℤ :=
  A277314.P8241262981008711249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A277314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277592.P12084105617845741953

`5*A277599(n+1)`
-/

namespace A277592.P12084105617845741953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A277599 (n + 1)

end

end A277592.P12084105617845741953

noncomputable section

/-- A277592: Numbers k such that k/10^m == 5 mod 10, where 10^m is the greatest power of 10 that divides n.

Offset 1, canonical program `A277592.P12084105617845741953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277592 (n : ℕ) : ℤ :=
  A277592.P12084105617845741953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277692.P7540958945063117141

`A296066(n+1)+A032741(A026741(n))`
-/

namespace A277692.P7540958945063117141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296066 (n + 1) + A032741 (A026741 n).toNat

end

end A277692.P7540958945063117141

noncomputable section

/-- A277692: Mendelsohn-Rodney sequence: number of court balanced tournament designs that are available for a given set of teams n.

Offset 1, canonical program `A277692.P7540958945063117141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277692 (n : ℕ) : ℤ :=
  A277692.P7540958945063117141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277864.P4378495412895518711

`or(1, A277797(n))`
-/

namespace A277864.P4378495412895518711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A277797 n)

end

end A277864.P4378495412895518711

noncomputable section

/-- A277864: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277864.P4378495412895518711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277864 (n : ℕ) : ℤ :=
  A277864.P4378495412895518711.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277933.P1829904161806407735

`or(A273972(A052928(n)), A277918(n))`
-/

namespace A277933.P1829904161806407735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A273972 (A052928 n).toNat) (A277918 n)

end

end A277933.P1829904161806407735

noncomputable section

/-- A277933: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 6", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277933.P1829904161806407735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A277933 (n : ℕ) : ℤ :=
  A277933.P1829904161806407735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A277933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278446.P1895680114426817818

`or(a(n-1), A285543(n))-a(n-1)` with `a(0)=1`
-/

namespace A278446.P1895680114426817818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (A285543 n) - a (n - 1)

end

end A278446.P1895680114426817818

noncomputable section

/-- A278446: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 43", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A278446.P1895680114426817818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A278446 (n : ℕ) : ℤ :=
  A278446.P1895680114426817818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A278446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278491.P3466130709018157541

`record[(A322016(n)+1)*A322015(n+1)]`
-/

namespace A278491.P3466130709018157541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A322016 n + 1) * A322015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278491.P3466130709018157541

noncomputable section

/-- A278491: After a(0)=0, numbers n such that (A002828(1+n) = 1) and (A002828(4+n) = 4).

Offset 0, canonical program `A278491.P3466130709018157541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6145 terms. -/
def A278491 (n : ℕ) : ℤ :=
  A278491.P3466130709018157541.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6145 terms. -/
def A278491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278603.P11848414338915408695

`A065357(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A278603.P11848414338915408695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A065357 (n - 1) + a (n - 1)

end

end A278603.P11848414338915408695

noncomputable section

/-- A278603: A prime mountain: peaks and valleys beyond the origin correspond to prime abscissa (see Comments for precise definition).

Offset 0, canonical program `A278603.P11848414338915408695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278603 (n : ℕ) : ℤ :=
  A278603.P11848414338915408695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278617.P18364928375276200259

`A084360(Δ[n²])`
-/

namespace A278617.P18364928375276200259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278617.P18364928375276200259

noncomputable section

/-- A278617: Number of distinct odd primes less than or equal to 2n-3 that appear as a part in the partitions of 2n into two parts.

Offset 1, canonical program `A278617.P18364928375276200259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278617 (n : ℕ) : ℤ :=
  A278617.P18364928375276200259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278996.P4006759836835331074

`A189715(n+1)-1`
-/

namespace A278996.P4006759836835331074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1) - 1

end

end A278996.P4006759836835331074

noncomputable section

/-- A278996: Numbers of the form (3h+1)*3^(2k)-1 or (3h+2)*3^(2k+1)-1 for h,k in N.

Offset 1, canonical program `A278996.P4006759836835331074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278996 (n : ℕ) : ℤ :=
  A278996.P4006759836835331074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279081.P11202189863760932497

`A000005((n+1)*(n+2)*(n+3)/6)`
-/

namespace A279081.P11202189863760932497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) * (n + 3) : ℚ) / 6)).toNat

end

end A279081.P11202189863760932497

noncomputable section

/-- A279081: Number of divisors of the n-th tetrahedral number.

Offset 1, canonical program `A279081.P11202189863760932497`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279081 (n : ℕ) : ℤ :=
  A279081.P11202189863760932497.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280196.P16878667472138717475

`lt[n, A318828(n+1)+2]+1`
-/

namespace A280196.P16878667472138717475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A280196.P16878667472138717475

noncomputable section

/-- A280196: Numbers n such that a^(n-1) == 1 (mod n^2) has no solutions with 1 < a < n^2-1.

Offset 1, canonical program `A280196.P16878667472138717475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280196 (n : ℕ) : ℤ :=
  (A280196.P16878667472138717475.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280199.P9968655352959598236

`lt[1, A348259(n+1)]+1`
-/

namespace A280199.P9968655352959598236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A280199.P9968655352959598236

noncomputable section

/-- A280199: Numbers n such that a^(n-1) == 1 (mod n^2) has solutions with 1 < a < n^2-1.

Offset 1, canonical program `A280199.P9968655352959598236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280199 (n : ℕ) : ℤ :=
  (A280199.P9968655352959598236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280934.P5201375484770458822

`a(n-1)+4*A000005(n+1)+8` with `a(0)=1, a(1)=1, a(2)=4, a(3)=36`
-/

namespace A280934.P5201375484770458822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 36] fun n a =>
  a (n - 1) + 4 * A000005 (n + 1) + 8

end

end A280934.P5201375484770458822

noncomputable section

/-- A280934: Number of 2 X 2 matrices with all elements in {0,..,n} and (sum of terms) = permanent.

Offset 0, canonical program `A280934.P5201375484770458822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280934 (n : ℕ) : ℤ :=
  A280934.P5201375484770458822.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280934.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A281702.P5613369963216576044

`eq[2, A000095(3*n+2)]+1`
-/

namespace A281702.P5613369963216576044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A281702.P5613369963216576044

noncomputable section

/-- A281702: Numbers k such that A001221(k) = A001221(A000326(k)).

Offset 1, canonical program `A281702.P5613369963216576044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A281702 (n : ℕ) : ℤ :=
  (A281702.P5613369963216576044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A281702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282240.P17605542633411655101

`A052382(A000045(n+1))`
-/

namespace A282240.P17605542633411655101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A000045 (n + 1)).toNat

end

end A282240.P17605542633411655101

noncomputable section

/-- A282240: a(n) = Fibonacci(n) represented in bijective base-9 numeration.

Offset 1, canonical program `A282240.P17605542633411655101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052382, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282240 (n : ℕ) : ℤ :=
  A282240.P17605542633411655101.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052382, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282324.P8074953035641554398

`p?[A030432(n+1)+2]`
-/

namespace A282324.P8074953035641554398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282324.P8074953035641554398

noncomputable section

/-- A282324: Greater of twin primes congruent to 19 (mod 30).

Offset 1, canonical program `A282324.P8074953035641554398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A282324 (n : ℕ) : ℤ :=
  A282324.P8074953035641554398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A282324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282412.P8185400050348961788

`lcm(A282411(n), A284352(n))`
-/

namespace A282412.P8185400050348961788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A282411 n) (A284352 n)

end

end A282412.P8185400050348961788

noncomputable section

/-- A282412: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282412.P8185400050348961788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282412 (n : ℕ) : ℤ :=
  (A282412.P8185400050348961788.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282415.P3467170783009879874

`A278753(n)+Δ[A289404(n)]`
-/

namespace A282415.P3467170783009879874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278753 n + (f1 (n + 1) - f1 n)

end

end A282415.P3467170783009879874

noncomputable section

/-- A282415: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 469", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282415.P3467170783009879874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A282415 (n : ℕ) : ℤ :=
  A282415.P3467170783009879874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A282415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283352.P13054535847704051275

`A000007(n)+A290660(n)-1`
-/

namespace A283352.P13054535847704051275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A290660 n - 1)

end

end A283352.P13054535847704051275

noncomputable section

/-- A283352: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 619", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A283352.P13054535847704051275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A283352 (n : ℕ) : ℤ :=
  A283352.P13054535847704051275.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A283352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283610.P9230607664063654978

`∩[A011537(n+1), A007094(n)]`
-/

namespace A283610.P9230607664063654978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283610.P9230607664063654978

noncomputable section

/-- A283610: Numbers n whose largest decimal digit is 7.

Offset 1, canonical program `A283610.P9230607664063654978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3959 terms. -/
def A283610 (n : ℕ) : ℤ :=
  (A283610.P9230607664063654978.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3959 terms. -/
def A283610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284022.P18172573424355451815

`A095121(n)+1-A273972(n)`
-/

namespace A284022.P18172573424355451815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A273972 n)

end

end A284022.P18172573424355451815

noncomputable section

/-- A284022: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284022.P18172573424355451815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A284022 (n : ℕ) : ℤ :=
  A284022.P18172573424355451815.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A284022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284062.P8258744999605309053

`∩[A011531(n+1), A052382(n+1)]`
-/

namespace A284062.P8258744999605309053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284062.P8258744999605309053

noncomputable section

/-- A284062: Numbers whose smallest decimal digit is 1.

Offset 1, canonical program `A284062.P8258744999605309053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5320 terms. -/
def A284062 (n : ℕ) : ℤ :=
  (A284062.P8258744999605309053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5320 terms. -/
def A284062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284103.P11048966256680687602

`(A284361(n+1)-A284097(n+1))%A116073(n+1)`
-/

namespace A284103.P11048966256680687602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284361 (n + 1) - A284097 (n + 1)) (A116073 (n + 1))

end

end A284103.P11048966256680687602

noncomputable section

/-- A284103: a(n) = Sum_{d|n, d == 4 (mod 5)} d.

Offset 1, canonical program `A284103.P11048966256680687602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284103 (n : ℕ) : ℤ :=
  A284103.P11048966256680687602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284364.P18289447628931741723

`char[A284366(n+1)-1]`
-/

namespace A284364.P18289447628931741723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284366 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284364.P18289447628931741723

noncomputable section

/-- A284364: Fixed point of the morphism 0->1, 1->101010.

Offset 1, canonical program `A284364.P18289447628931741723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284364 (n : ℕ) : ℤ :=
  (A284364.P18289447628931741723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284370.P181059077873080180

`A284753(floor(n/2)+1)+n`
-/

namespace A284370.P181059077873080180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (⌊(n : ℚ) / 2⌋ + 1).toNat + (n : ℤ)

end

end A284370.P181059077873080180

noncomputable section

/-- A284370: Positions of 0 in A284369; complement of A284371.

Offset 1, canonical program `A284370.P181059077873080180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284370 (n : ℕ) : ℤ :=
  A284370.P181059077873080180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284570.P5019316116985626707

`A000005((n+2)²)-A000005((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284570.P5019316116985626707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2) ^ 2) - A000005 ((n + 1) ^ 2)

end

end A284570.P5019316116985626707

noncomputable section

/-- A284570: a(n) = A000005((n+1)^2) - A000005(n^2).

Offset 1, canonical program `A284570.P5019316116985626707`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005((n+2)²)-A000005((n+1)²)` (program `A284570.P5019316116985626707`, by `A284570.P5019316116985626707.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A284570 (n : ℕ) : ℤ :=
  A284570.P5019316116985626707.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005((n+2)²)-A000005((n+1)²)` (program `A284570.P5019316116985626707`, by `A284570.P5019316116985626707.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A284570.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A284791.P2982177250107877844

`A284933(n+1)+A033999(n)`
-/

namespace A284791.P2982177250107877844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (n + 1) + A033999 n

end

end A284791.P2982177250107877844

noncomputable section

/-- A284791: Positions of 1 in A284789; complement of A284790.

Offset 1, canonical program `A284791.P2982177250107877844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284791 (n : ℕ) : ℤ :=
  A284791.P2982177250107877844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284851.P2577468141538468078

`char[A284853(n+1)-1]`
-/

namespace A284851.P2577468141538468078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284853 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284851.P2577468141538468078

noncomputable section

/-- A284851: Fixed point of the morphism 0 -> 01, 1 -> 0100.

Offset 1, canonical program `A284851.P2577468141538468078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284851 (n : ℕ) : ℤ :=
  (A284851.P2577468141538468078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284912.P5087844353214427284

`char[A284914(n+1)-1]`
-/

namespace A284912.P5087844353214427284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284914 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284912.P5087844353214427284

noncomputable section

/-- A284912: Fixed point of the morphism 0 -> 01, 1 -> 1010.

Offset 1, canonical program `A284912.P5087844353214427284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284912 (n : ℕ) : ℤ :=
  (A284912.P5087844353214427284.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284927.P18268349016529181647

`2*A321817(n+1)-A013954(n+1)`
-/

namespace A284927.P18268349016529181647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321817 (n + 1) - A013954 (n + 1)

end

end A284927.P18268349016529181647

noncomputable section

/-- A284927: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^6.

Offset 1, canonical program `A284927.P18268349016529181647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284927 (n : ℕ) : ℤ :=
  A284927.P18268349016529181647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285965.P14704777127460749347

`A285979(n+2)-A000035(n)`
-/

namespace A285965.P14704777127460749347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285979 (n + 2) - A000035 n

end

end A285965.P14704777127460749347

noncomputable section

/-- A285965: Positions of 1 in A285963; complement of A285964.

Offset 1, canonical program `A285965.P14704777127460749347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A285965 (n : ℕ) : ℤ :=
  A285965.P14704777127460749347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A285965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285975.P17423521814547835926

`char[A285977(n+1)-1]`
-/

namespace A285975.P17423521814547835926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285977 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285975.P17423521814547835926

noncomputable section

/-- A285975: {00->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285975.P17423521814547835926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285975 (n : ℕ) : ℤ :=
  (A285975.P17423521814547835926.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285978.P4350401160499057966

`1-char[A285979(n+1)-1]`
-/

namespace A285978.P4350401160499057966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285979 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285978.P4350401160499057966

noncomputable section

/-- A285978: {00->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285978.P4350401160499057966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285978 (n : ℕ) : ℤ :=
  A285978.P4350401160499057966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286052.P8197763076954538338

`and(A014205(n)², A026465(A008619(n)))`
-/

namespace A286052.P8197763076954538338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014205 n ^ 2) (A026465 (A008619 n).toNat)

end

end A286052.P8197763076954538338

noncomputable section

/-- A286052: {101->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286052.P8197763076954538338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286052 (n : ℕ) : ℤ :=
  A286052.P8197763076954538338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286685.P666440380006877132

`A286907(n+1)+A286688(n+1)`
-/

namespace A286685.P666440380006877132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286907 (n + 1) + A286688 (n + 1)

end

end A286685.P666440380006877132

noncomputable section

/-- A286685: {0->01, 1->10}-transform of the Pell word, A171588.

Offset 1, canonical program `A286685.P666440380006877132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286685 (n : ℕ) : ℤ :=
  A286685.P666440380006877132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286804.P16215063288714846442

`char[A286806(n+1)-1]`
-/

namespace A286804.P16215063288714846442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286806 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286804.P16215063288714846442

noncomputable section

/-- A286804: {000->null}-transform of the Pell word, A171588.

Offset 1, canonical program `A286804.P16215063288714846442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286804 (n : ℕ) : ℤ :=
  (A286804.P16215063288714846442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286987.P17283735074823528912

`1-char[A286988(n+1)-1]`
-/

namespace A286987.P17283735074823528912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286988 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286987.P17283735074823528912

noncomputable section

/-- A286987: {111->1}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286987.P17283735074823528912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286987 (n : ℕ) : ℤ :=
  A286987.P17283735074823528912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287072.P6282913887168030122

`2-A287104(A287106(n+1)-n+1)`
-/

namespace A287072.P6282913887168030122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A287104 (A287106 (n + 1) - (n : ℤ) + 1).toNat

end

end A287072.P6282913887168030122

noncomputable section

/-- A287072: Start with 0 and repeatedly substitute 0->01, 1->21, 2->0.

Offset 1, canonical program `A287072.P6282913887168030122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7548 terms. -/
def A287072 (n : ℕ) : ℤ :=
  A287072.P6282913887168030122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7548 terms. -/
def A287072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287191.P3677298343448240747

`lcm(A282003(n), A288699(n))`
-/

namespace A287191.P3677298343448240747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A282003 n) (A288699 n)

end

end A287191.P3677298343448240747

noncomputable section

/-- A287191: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287191.P3677298343448240747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A287191 (n : ℕ) : ℤ :=
  (A287191.P3677298343448240747.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A287191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287453.P9247111651694809918

`A130509(A287454(n+1))`
-/

namespace A287453.P9247111651694809918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130509 (A287454 (n + 1)).toNat

end

end A287453.P9247111651694809918

noncomputable section

/-- A287453: Positions of 1 in A287451.

Offset 1, canonical program `A287453.P9247111651694809918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A287453 (n : ℕ) : ℤ :=
  A287453.P9247111651694809918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A287453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287675.P5352225782856583721

`floor(A287775(n+1)+n/2)`
-/

namespace A287675.P5352225782856583721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A287775 (n + 1) : ℚ) + (n : ℚ) / 2⌋

end

end A287675.P5352225782856583721

noncomputable section

/-- A287675: Positions of 0 in A287674; complement of A287676.

Offset 1, canonical program `A287675.P5352225782856583721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287675 (n : ℕ) : ℤ :=
  A287675.P5352225782856583721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287722.P15445179942749685933

`char[A287724(n+1)-1]`
-/

namespace A287722.P15445179942749685933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287724 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287722.P15445179942749685933

noncomputable section

/-- A287722: {0->1, 1->010}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287722.P15445179942749685933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287722 (n : ℕ) : ℤ :=
  (A287722.P15445179942749685933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287743.P4852823348231064615

`lcm(A286508(n), A287742(n))`
-/

namespace A287743.P4852823348231064615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A286508 n) (A287742 n)

end

end A287743.P4852823348231064615

noncomputable section

/-- A287743: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287743.P4852823348231064615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A287743 (n : ℕ) : ℤ :=
  (A287743.P4852823348231064615.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A287743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287792.P12296564877876071040

`∩[A287802(n+1)+1, A287802(n+1)]`
-/

namespace A287792.P12296564877876071040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287802 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287792.P12296564877876071040

noncomputable section

/-- A287792: Positions of 1 in A287790; complement of A287791.

Offset 1, canonical program `A287792.P12296564877876071040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6910 terms. -/
def A287792 (n : ℕ) : ℤ :=
  (A287792.P12296564877876071040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6910 terms. -/
def A287792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287841.P9496890288063772238

`a(A001221(n+1)-1)+1` with `a(0)=1`
-/

namespace A287841.P9496890288063772238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A001221 (n + 1) - 1).toNat + 1

end

end A287841.P9496890288063772238

noncomputable section

/-- A287841: Number of iterations of number of distinct prime factors (A001221) needed to reach 1 starting at n (n is counted).

Offset 1, canonical program `A287841.P9496890288063772238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287841 (n : ℕ) : ℤ :=
  (A287841.P9496890288063772238.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288167.P9921603873379981045

`char[A288169(n+1)-1]`
-/

namespace A288167.P9921603873379981045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288169 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288167.P9921603873379981045

noncomputable section

/-- A288167: Fixed point of the mapping 00->0010, 1->000, starting with 00.

Offset 1, canonical program `A288167.P9921603873379981045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288167 (n : ℕ) : ℤ :=
  (A288167.P9921603873379981045.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288214.P3478425868225490797

`comp[A288215(n+1)-1]+1`
-/

namespace A288214.P3478425868225490797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288215 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288214.P3478425868225490797

noncomputable section

/-- A288214: Positions of 0 in A288213; complement of A288215.

Offset 1, canonical program `A288214.P3478425868225490797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288214 (n : ℕ) : ℤ :=
  (A288214.P3478425868225490797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288654.P16011546022855144532

`(A000203(n+1)-(n+1)-1)*(3-A001221(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A288654.P16011546022855144532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - (n + 1 : ℤ) - 1) * (3 - A001221 (n + 1))

end

end A288654.P16011546022855144532

noncomputable section

/-- A288654: a(n) = (sigma(n)-n-1)*(3-omega(n)).

Offset 1, canonical program `A288654.P16011546022855144532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288654 (n : ℕ) : ℤ :=
  A288654.P16011546022855144532.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288659.P4636030694225674348

`comp[A288660(n+1)]`
-/

namespace A288659.P4636030694225674348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288659.P4636030694225674348

noncomputable section

/-- A288659: Numbers whose cubes have an odd number of digits.

Offset 1, canonical program `A288659.P4636030694225674348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288659 (n : ℕ) : ℤ :=
  (A288659.P4636030694225674348.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289356.P270311075941156718

`A013632(A002378(n))`
-/

namespace A289356.P270311075941156718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A002378 n).toNat

end

end A289356.P270311075941156718

noncomputable section

/-- A289356: Least number k such that n^2 + n + k is prime.

Offset 0, canonical program `A289356.P270311075941156718`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289356 (n : ℕ) : ℤ :=
  A289356.P270311075941156718.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289413.P7876705002274697040

`p?[A030432(n+1)-4]`
-/

namespace A289413.P7876705002274697040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289413.P7876705002274697040

noncomputable section

/-- A289413: Primes p such that (p,p+4) is a pair of cousin primes and p == 3 (mod 10).

Offset 1, canonical program `A289413.P7876705002274697040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2683 terms. -/
def A289413 (n : ℕ) : ℤ :=
  A289413.P7876705002274697040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2683 terms. -/
def A289413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289506.P11740211383965713094

`∑{d}[n+1, A297109(#)²]`
-/

namespace A289506.P11740211383965713094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297109 d ^ 2

end

end A289506.P11740211383965713094

noncomputable section

/-- A289506: Write n as a product of primes p_{s_1}*p_{s_2}*p_{s_3}*... where p_i denotes the i-th prime; then a(n) = s_1^2 + s_2^2 + s_3^2 + ...

Offset 1, canonical program `A289506.P11740211383965713094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289506 (n : ℕ) : ℤ :=
  A289506.P11740211383965713094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290453.P7648058750055748036

`A290459(n)%3`
-/

namespace A290453.P7648058750055748036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290459 n) 3

end

end A290453.P7648058750055748036

noncomputable section

/-- A290453: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 3.

Offset 0, canonical program `A290453.P7648058750055748036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290453 (n : ℕ) : ℤ :=
  A290453.P7648058750055748036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290454.P12451423406474746362

`A290458(n)%4`
-/

namespace A290454.P12451423406474746362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290458 n) 4

end

end A290454.P12451423406474746362

noncomputable section

/-- A290454: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 4.

Offset 0, canonical program `A290454.P12451423406474746362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290454 (n : ℕ) : ℤ :=
  A290454.P12451423406474746362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290455.P17047082452876889100

`A290460(n)%5`
-/

namespace A290455.P17047082452876889100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290460 n) 5

end

end A290455.P17047082452876889100

noncomputable section

/-- A290455: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 5.

Offset 0, canonical program `A290455.P17047082452876889100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290455 (n : ℕ) : ℤ :=
  A290455.P17047082452876889100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290530.P10450332801809670911

`∪[A039949(n+1), A132232(n+1)]`
-/

namespace A290530.P10450332801809670911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P10450332801809670911

noncomputable section

/-- A290530: Primes congruent to {11, 17} mod 30.

Offset 1, canonical program `A290530.P10450332801809670911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290530 (n : ℕ) : ℤ :=
  (A290530.P10450332801809670911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290857.P5776347625884228293

`A281366(A130543(n)+A008574(n))`
-/

namespace A290857.P5776347625884228293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281366 (A130543 n + A008574 n).toNat

end

end A290857.P5776347625884228293

noncomputable section

/-- A290857: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 1006", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290857.P5776347625884228293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290857 (n : ℕ) : ℤ :=
  A290857.P5776347625884228293.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291292.P8579242565345000571

`3*a(n-1)-A115143(n)` with `a(0)=1, a(1)=1`
-/

namespace A291292.P8579242565345000571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 1) - A115143 n

end

end A291292.P8579242565345000571

noncomputable section

/-- A291292: Necklace Catalan numbers.

Offset 0, canonical program `A291292.P8579242565345000571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A291292 (n : ℕ) : ℤ :=
  A291292.P8579242565345000571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A291292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292438.P17678663792653604288

`A323162(n+1-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A292438.P17678663792653604288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A323162 ((n + 1 : ℤ) - a (n - 1)).toNat

end

end A292438.P17678663792653604288

noncomputable section

/-- A292438: Characteristic function of non-isolated nonprimes.

Offset 0, canonical program `A292438.P17678663792653604288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292438 (n : ℕ) : ℤ :=
  A292438.P17678663792653604288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292586.P8363659162595819801

`A002110(A001221(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292586.P8363659162595819801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A001221 (n + 1)).toNat

end

end A292586.P8363659162595819801

noncomputable section

/-- A292586: a(n) = A002110(A001221(n)) = product of first omega(n) primes.

Offset 1, canonical program `A292586.P8363659162595819801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292586 (n : ℕ) : ℤ :=
  A292586.P8363659162595819801.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292654.P5177288825336380584

`A292649(n+1)-A292663(n+1)+n`
-/

namespace A292654.P5177288825336380584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292649 (n + 1) - A292663 (n + 1) + (n : ℤ)

end

end A292654.P5177288825336380584

noncomputable section

/-- A292654: Rank of n when all the numbers h, j*e, k*Pi, for h>=1, j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292654.P5177288825336380584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292654 (n : ℕ) : ℤ :=
  A292654.P5177288825336380584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293435.P5908272038214602108

`A005086(n+1)-A010056(n+1)`
-/

namespace A293435.P5908272038214602108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (n + 1) - A010056 (n + 1)

end

end A293435.P5908272038214602108

noncomputable section

/-- A293435: a(n) is the number of the proper divisors of n that are Fibonacci numbers (A000045).

Offset 1, canonical program `A293435.P5908272038214602108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005086, A010056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293435 (n : ℕ) : ℤ :=
  A293435.P5908272038214602108.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005086, A010056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293436.P18285162876121790611

`A005092(n+1)-A010056(n+1)*(n+1)`
-/

namespace A293436.P18285162876121790611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005092 (n + 1) - A010056 (n + 1) * (n + 1 : ℤ)

end

end A293436.P18285162876121790611

noncomputable section

/-- A293436: a(n) is the sum of the proper divisors of n that are Fibonacci numbers (A000045).

Offset 1, canonical program `A293436.P18285162876121790611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005092, A010056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293436 (n : ℕ) : ℤ :=
  A293436.P18285162876121790611.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005092, A010056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293436.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293451.P7933704041420674484

`A001826(n+1)-A121262(n)`
-/

namespace A293451.P7933704041420674484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1) - A121262 n

end

end A293451.P7933704041420674484

noncomputable section

/-- A293451: Number of proper divisors of n of the form 4k+1.

Offset 1, canonical program `A293451.P7933704041420674484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293451 (n : ℕ) : ℤ :=
  A293451.P7933704041420674484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294072.P12767756118942820441

`A048785(n+1)-A000005(n+1)`
-/

namespace A294072.P12767756118942820441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) - A000005 (n + 1)

end

end A294072.P12767756118942820441

noncomputable section

/-- A294072: Number of noncube divisors of n^3.

Offset 1, canonical program `A294072.P12767756118942820441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294072 (n : ℕ) : ℤ :=
  A294072.P12767756118942820441.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294072.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294114.P16008360445221424113

`Δ[n*(A002815(n)-n)]`
-/

namespace A294114.P16008360445221424113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002815 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294114.P16008360445221424113

noncomputable section

/-- A294114: Sum of the larger parts of the partitions of 2n into two parts with smaller part prime.

Offset 1, canonical program `A294114.P16008360445221424113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294114 (n : ℕ) : ℤ :=
  A294114.P16008360445221424113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294277.P10908964768847956680

`lt[A001221(n+1), A001221(n+2)]+1`
-/

namespace A294277.P10908964768847956680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A294277.P10908964768847956680

noncomputable section

/-- A294277: Numbers k such that omega(k) < omega(k+1) (where omega(m) = A001221(m), the number of distinct primes dividing m).

Offset 1, canonical program `A294277.P10908964768847956680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294277 (n : ℕ) : ℤ :=
  (A294277.P10908964768847956680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294885.P11553631714397248987

`A004125(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A294885.P11553631714397248987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004125 (n + 1)) (n + 1 : ℤ)

end

end A294885.P11553631714397248987

noncomputable section

/-- A294885: a(n) = A004125(n) mod n = [Sum_{i=1..n} (n mod i)] mod n.

Offset 1, canonical program `A294885.P11553631714397248987`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294885 (n : ℕ) : ℤ :=
  A294885.P11553631714397248987.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295243.P15372038022055432916

`2*A007674(n+1)+1`
-/

namespace A295243.P15372038022055432916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007674 (n + 1) + 1

end

end A295243.P15372038022055432916

noncomputable section

/-- A295243: Sums of two numbers that are both consecutive and squarefree.

Offset 1, canonical program `A295243.P15372038022055432916`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295243 (n : ℕ) : ℤ :=
  A295243.P15372038022055432916.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295305.P11930418778669556276

`A000005(A000203(n+1))-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295305.P11930418778669556276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat - A000005 (n + 1)

end

end A295305.P11930418778669556276

noncomputable section

/-- A295305: a(n) = tau(sigma(n)) - tau(n), where tau is the number of divisors (A000005) and sigma is the sum of divisors of n (A000203).

Offset 1, canonical program `A295305.P11930418778669556276`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000203(n+1))-A000005(n+1)` (program `A295305.P11930418778669556276`, by `A295305.P11930418778669556276.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A295305 (n : ℕ) : ℤ :=
  A295305.P11930418778669556276.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000203(n+1))-A000005(n+1)` (program `A295305.P11930418778669556276`, by `A295305.P11930418778669556276.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A295305.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A296779.P9301073313345564947

`A296819((n+1)²)`
-/

namespace A296779.P9301073313345564947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 ((n + 1) ^ 2)

end

end A296779.P9301073313345564947

noncomputable section

/-- A296779: Detour index of the n X n grid graph.

Offset 1, canonical program `A296779.P9301073313345564947`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296779 (n : ℕ) : ℤ :=
  A296779.P9301073313345564947.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296779.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296780.P16757499617915711286

`A296819((n+1)^3)`
-/

namespace A296780.P16757499617915711286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 ((n + 1) ^ 3)

end

end A296780.P16757499617915711286

noncomputable section

/-- A296780: Detour index of the n X n X n grid graph.

Offset 1, canonical program `A296780.P16757499617915711286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296780 (n : ℕ) : ℤ :=
  A296780.P16757499617915711286.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296780.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296785.P8825007694404590711

`A296819((n+1)!)`
-/

namespace A296785.P8825007694404590711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (Nat.factorial (n + 1))

end

end A296785.P8825007694404590711

noncomputable section

/-- A296785: Detour index for the n-transposition graph.

Offset 1, canonical program `A296785.P8825007694404590711`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296785 (n : ℕ) : ℤ :=
  A296785.P8825007694404590711.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296785.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297030.P9397117529336368470

`∑[A342892(n+1)-A014707(n)]-1`
-/

namespace A297030.P9397117529336368470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342892 (n + 1) - A014707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A297030.P9397117529336368470

noncomputable section

/-- A297030: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-2 digits of n; see Comments.

Offset 1, canonical program `A297030.P9397117529336368470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297030 (n : ℕ) : ℤ :=
  A297030.P9397117529336368470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297039.P12638679154659691886

`A051903(A052992(A179051(n)))`
-/

namespace A297039.P12638679154659691886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A052992 (A179051 n).toNat).toNat

end

end A297039.P12638679154659691886

noncomputable section

/-- A297039: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-11 digits of n; see Comments.

Offset 1, canonical program `A297039.P12638679154659691886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A297039 (n : ℕ) : ℤ :=
  A297039.P12638679154659691886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A297039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297108.P15990807296291497671

`A131577(A297109(n+1))`
-/

namespace A297108.P15990807296291497671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A297109 (n + 1)).toNat

end

end A297108.P15990807296291497671

noncomputable section

/-- A297108: If n is prime(k)^e, e >= 1, then a(n) = 2^(k-1), otherwise 0; Möbius transform of A048675.

Offset 1, canonical program `A297108.P15990807296291497671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A297108 (n : ℕ) : ℤ :=
  A297108.P15990807296291497671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A297108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297883.P5024304067695683050

`A303963(n+1)+A155559(n)`
-/

namespace A297883.P5024304067695683050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303963 (n + 1) + A155559 n

end

end A297883.P5024304067695683050

noncomputable section

/-- A297883: Number of n X 2 0..1 arrays with every element equal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

Offset 1, canonical program `A297883.P5024304067695683050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A297883 (n : ℕ) : ℤ :=
  A297883.P5024304067695683050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A297883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301670.P109821357532827801

`A008579(n)+A313416(n)-A008706(n)`
-/

namespace A301670.P109821357532827801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + (A313416 n - A008706 n)

end

end A301670.P109821357532827801

noncomputable section

/-- A301670: Coordination sequence for node of type V1 in "krr" 2-D tiling (or net).

Offset 0, canonical program `A301670.P109821357532827801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. -/
def A301670 (n : ℕ) : ℤ :=
  A301670.P109821357532827801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. -/
def A301670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301680.P14799534742576707918

`A310503(n)-A063524(A004526(n))`
-/

namespace A301680.P14799534742576707918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A063524 (A004526 n).toNat

end

end A301680.P14799534742576707918

noncomputable section

/-- A301680: Coordination sequence for node of type V2 in "krn" 2-D tiling (or net).

Offset 0, canonical program `A301680.P14799534742576707918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A301680 (n : ℕ) : ℤ :=
  A301680.P14799534742576707918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A301680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301707.P6059089496890772417

`(n+1)*A034387(n+1)`
-/

namespace A301707.P6059089496890772417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034387 (n + 1)

end

end A301707.P6059089496890772417

noncomputable section

/-- A301707: a(n) = n * Sum_{k prime<=n} k.

Offset 1, canonical program `A301707.P6059089496890772417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301707 (n : ℕ) : ℤ :=
  A301707.P6059089496890772417.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A301712.P15404367670106466828

`A315061(n)+Δ[A011858(n)]`
-/

namespace A301712.P15404367670106466828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + (f1 (n + 1) - f1 n)

end

end A301712.P15404367670106466828

noncomputable section

/-- A301712: Coordination sequence for node of type V1 in "usm" 2-D tiling (or net).

Offset 0, canonical program `A301712.P15404367670106466828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A301712 (n : ℕ) : ℤ :=
  A301712.P15404367670106466828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A301712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301713.P9976292229456665362

`∑[A315061(n)+Δ[A011858(n)]]`
-/

namespace A301713.P9976292229456665362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301713.P9976292229456665362

noncomputable section

/-- A301713: Partial sums of A301712.

Offset 0, canonical program `A301713.P9976292229456665362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2348 terms. -/
def A301713 (n : ℕ) : ℤ :=
  A301713.P9976292229456665362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2348 terms. -/
def A301713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301722.P11193906374397601992

`A265035(2*n)-A004396(n)`
-/

namespace A301722.P11193906374397601992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (2 * n) - A004396 n

end

end A301722.P11193906374397601992

noncomputable section

/-- A301722: Coordination sequence for node of type V2 in "krb" 2-D tiling (or net).

Offset 0, canonical program `A301722.P11193906374397601992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A301722 (n : ℕ) : ℤ :=
  A301722.P11193906374397601992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A301722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301740.P17223865403902709241

`A005994(n)+A001752(n)+A002621(n)`
-/

namespace A301740.P17223865403902709241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 n + A001752 n + A002621 n

end

end A301740.P17223865403902709241

noncomputable section

/-- A301740: The number of trees with 5 nodes labeled by positive integers, where each tree's label sum is n.

Offset 5, canonical program `A301740.P17223865403902709241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301740 (n : ℕ) : ℤ :=
  A301740.P17223865403902709241.a (n - 5)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301740.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302707.P11643253609130696296

`A001227(1+n)+A000005(2*(n+1))-2`
-/

namespace A302707.P11643253609130696296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (1 + n) + A000005 (2 * (n + 1)) - 2

end

end A302707.P11643253609130696296

noncomputable section

/-- A302707: Number of factors of Chebyshev polynomial S(2*n+1, x) (A049310) over the integers. Factorization is into the minimal integer polynomials C (A187360).

Offset 0, canonical program `A302707.P11643253609130696296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302707 (n : ℕ) : ℤ :=
  A302707.P11643253609130696296.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302707.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A302976.P5479475706883622577

`(A000005(n+1)^(n+1))%((n+1)^A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302976.P5479475706883622577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1) ^ (n + 1)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A000005 (n + 1) : ℤ)))

end

end A302976.P5479475706883622577

noncomputable section

/-- A302976: a(n) = tau(n)^n mod n^tau(n).

Offset 1, canonical program `A302976.P5479475706883622577`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000005(n+1)^(n+1))%((n+1)^A000005(n+1))` (program `A302976.P5479475706883622577`, by `A302976.P5479475706883622577.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A302976 (n : ℕ) : ℤ :=
  A302976.P5479475706883622577.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000005(n+1)^(n+1))%((n+1)^A000005(n+1))` (program `A302976.P5479475706883622577`, by `A302976.P5479475706883622577.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A302976.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A303223.P3139631308333533051

`2*(n+1)*A084360(n+1)`
-/

namespace A303223.P3139631308333533051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A084360 (n + 1))

end

end A303223.P3139631308333533051

noncomputable section

/-- A303223: Sum of the perimeters of the family of rectangles with dimensions p and q such that |q - p| is prime, n = p + q and p < q.

Offset 1, canonical program `A303223.P3139631308333533051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303223 (n : ℕ) : ℤ :=
  A303223.P3139631308333533051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304236.P2045440630624373802

`A000244(A055087(n))*A011973(n)`
-/

namespace A304236.P2045440630624373802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A055087 n).toNat * A011973 n

end

end A304236.P2045440630624373802

noncomputable section

/-- A304236: Triangle T(n,k) = T(n-1,k) + 3*T(n-2,k-1) for k = 0..floor(n/2), with T(0,0) = 1, T(n,k) = 0 for n or k < 0, read by rows.

Offset 0, canonical program `A304236.P2045440630624373802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A304236 (n : ℕ) : ℤ :=
  A304236.P2045440630624373802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A304236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304409.P5645151244127496146

`A000005(n+1)*A007947(n+1)`
-/

namespace A304409.P5645151244127496146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A007947 (n + 1)

end

end A304409.P5645151244127496146

noncomputable section

/-- A304409: If n = Product (p_j^k_j) then a(n) = Product (p_j*(k_j + 1)).

Offset 1, canonical program `A304409.P5645151244127496146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304409 (n : ℕ) : ℤ :=
  A304409.P5645151244127496146.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304409.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304978.P10629053428131485593

`lt[4, A359309(n+5)]+4`
-/

namespace A304978.P10629053428131485593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359309 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 4

end

end A304978.P10629053428131485593

noncomputable section

/-- A304978: Numbers that can be expressed in more than one way as 6xy + x + y with x >= y > 0.

Offset 1, canonical program `A304978.P10629053428131485593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 850 terms. -/
def A304978 (n : ℕ) : ℤ :=
  (A304978.P10629053428131485593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 850 terms. -/
def A304978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305495.P6842332430008839682

`∩[A189637(n+1), A189669(n+1)]`
-/

namespace A305495.P6842332430008839682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305495.P6842332430008839682

noncomputable section

/-- A305495: Positions of 0 in the fixed point of the morphism 0->120, 1->110, 2->100 applied to 1 (as in A305490).

Offset 1, canonical program `A305495.P6842332430008839682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5623 terms. -/
def A305495 (n : ℕ) : ℤ :=
  (A305495.P6842332430008839682.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5623 terms. -/
def A305495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305635.P18163822070093918249

`filter[A175082(n+1), A379952(#)]`
-/

namespace A305635.P18163822070093918249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A305635.P18163822070093918249

noncomputable section

/-- A305635: 1 and odd numbers that are not perfect powers.

Offset 1, canonical program `A305635.P18163822070093918249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A305635 (n : ℕ) : ℤ :=
  A305635.P18163822070093918249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A305635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306198.P7323652723329886433

`A003557(n+1)*A389775(n+1)`
-/

namespace A306198.P7323652723329886433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A389775 (n + 1)

end

end A306198.P7323652723329886433

noncomputable section

/-- A306198: Multiplicative with a(p^e) = p^(e-1)*(p^2 - p - 1).

Offset 1, canonical program `A306198.P7323652723329886433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306198 (n : ℕ) : ℤ :=
  A306198.P7323652723329886433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255178.P1809111956897378111

`∑[A255182(n)]`
-/

namespace A255178.P1809111956897378111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255178.P1809111956897378111

noncomputable section

/-- A255178: Second differences of eighth powers (A001016).

Offset 0, canonical program `A255178.P1809111956897378111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255178 (n : ℕ) : ℤ :=
  A255178.P1809111956897378111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266069.P2566806973001176226

`and(A266461(n), A266607(n))`
-/

namespace A266069.P2566806973001176226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266461 n) (A266607 n)

end

end A266069.P2566806973001176226

noncomputable section

/-- A266069: Decimal representation of the n-th iteration of the "Rule 3" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266069.P2566806973001176226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266069 (n : ℕ) : ℤ :=
  A266069.P2566806973001176226.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267259.P16464707296081217590

`Δ[n²]-A267261(n)`
-/

namespace A267259.P16464707296081217590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267261 n

end

end A267259.P16464707296081217590

noncomputable section

/-- A267259: Number of ON (black) cells in the n-th iteration of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267259.P16464707296081217590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267259 (n : ℕ) : ℤ :=
  A267259.P16464707296081217590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290192.P5553061541143478397

`A290070(n)+A290194(n)-A290073(n)`
-/

namespace A290192.P5553061541143478397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290070 n + (A290194 n - A290073 n)

end

end A290192.P5553061541143478397

noncomputable section

/-- A290192: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290192.P5553061541143478397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290192 (n : ℕ) : ℤ :=
  A290192.P5553061541143478397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293334.P17713616327838257927

`A293335(n)-1`
-/

namespace A293334.P17713616327838257927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293335 n - 1

end

end A293334.P17713616327838257927

noncomputable section

/-- A293334: Greatest integer k such that k/2^n < sqrt(1/5).

Offset 0, canonical program `A293334.P17713616327838257927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293334 (n : ℕ) : ℤ :=
  A293334.P17713616327838257927.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235698.P16093469187567191101

`a(n-1)+A054054(a(n-1))+1` with `a(0)=0`
-/

namespace A235698.P16093469187567191101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A054054 (a (n - 1)).toNat + 1)

end

end A235698.P16093469187567191101

noncomputable section

/-- A235698: a(n+1) = a(n) + (smallest digit of a(n)) + 1, a(0)=0.

Offset 0, canonical program `A235698.P16093469187567191101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4592 terms. -/
def A235698 (n : ℕ) : ℤ :=
  A235698.P16093469187567191101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4592 terms. -/
def A235698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244092.P5012121100547918818

`p?[A002144(n+1)+2*A082074(n+1)]`
-/

namespace A244092.P5012121100547918818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) + 2 * A082074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244092.P5012121100547918818

noncomputable section

/-- A244092: Primes which are the arithmetic mean of two consecutive primes of the form 4n + 1.

Offset 1, canonical program `A244092.P5012121100547918818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A244092 (n : ℕ) : ℤ :=
  A244092.P5012121100547918818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A244092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249345.P5584176250624842080

`A246839(n)-∑[A027868(n)]`
-/

namespace A249345.P5584176250624842080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246839 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249345.P5584176250624842080

noncomputable section

/-- A249345: The exponent of the highest power of 5 dividing the product of the elements on the n-th row of Pascal's triangle.

Offset 0, canonical program `A249345.P5584176250624842080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A249345 (n : ℕ) : ℤ :=
  A249345.P5584176250624842080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A249345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260298.P4761561818638806536

`A000040(eq[A260611(n+1)+1, A000040(n+1)]+1)`
-/

namespace A260298.P4761561818638806536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260611 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A260298.P4761561818638806536

noncomputable section

/-- A260298: Primes p such that hyperfactorial(p-1) == 1 (mod p).

Offset 1, canonical program `A260298.P4761561818638806536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A260298 (n : ℕ) : ℤ :=
  A260298.P4761561818638806536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A260298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260456.P8742662874947804953

`A359794(n+1)%2`
-/

namespace A260456.P8742662874947804953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359794 (n + 1)) 2

end

end A260456.P8742662874947804953

noncomputable section

/-- A260456: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = 1 and midword sequence (0,null,0,null,0,null,...); see Comments.

Offset 1, canonical program `A260456.P8742662874947804953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260456 (n : ℕ) : ℤ :=
  A260456.P8742662874947804953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269399.P17209248092647305028

`eq[3, gcd(3, A001223(n+6))]`
-/

namespace A269399.P17209248092647305028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A001223 (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269399.P17209248092647305028

noncomputable section

/-- A269399: Numbers n for which prime(n+7)-prime(n+6) is a multiple of three.

Offset 1, canonical program `A269399.P17209248092647305028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269399 (n : ℕ) : ℤ :=
  (A269399.P17209248092647305028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274913.P16127943024732483463

`A274912(n)+1`
-/

namespace A274913.P16127943024732483463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274912 n + 1

end

end A274913.P16127943024732483463

noncomputable section

/-- A274913: Square array read by antidiagonals upwards in which each new term is the least positive integer distinct from its neighbors.

Offset 1, canonical program `A274913.P16127943024732483463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274913 (n : ℕ) : ℤ :=
  A274913.P16127943024732483463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284063.P14093468249191505321

`eq[2, A054054(n)]`
-/

namespace A284063.P14093468249191505321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284063.P14093468249191505321

noncomputable section

/-- A284063: Numbers whose smallest decimal digit is 2.

Offset 1, canonical program `A284063.P14093468249191505321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1880 terms. -/
def A284063 (n : ℕ) : ℤ :=
  (A284063.P14093468249191505321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1880 terms. -/
def A284063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284064.P8176096885892359099

`eq[3, A054054(n)]`
-/

namespace A284064.P8176096885892359099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284064.P8176096885892359099

noncomputable section

/-- A284064: Numbers whose smallest decimal digit is 3.

Offset 1, canonical program `A284064.P8176096885892359099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1246 terms. -/
def A284064 (n : ℕ) : ℤ :=
  (A284064.P8176096885892359099.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1246 terms. -/
def A284064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285881.P15118884319307160235

`A013928(n+2)-A285879(n+1)`
-/

namespace A285881.P15118884319307160235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A285879 (n + 1)

end

end A285881.P15118884319307160235

noncomputable section

/-- A285881: Number of even squarefree numbers <= n.

Offset 1, canonical program `A285881.P15118884319307160235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, A285879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285881 (n : ℕ) : ℤ :=
  A285881.P15118884319307160235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, A285879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293332.P17977191221570803940

`A293331(n)+1`
-/

namespace A293332.P17977191221570803940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293331 n + 1

end

end A293332.P17977191221570803940

noncomputable section

/-- A293332: Least integer k such that k/2^n > sqrt(5).

Offset 0, canonical program `A293332.P17977191221570803940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293332 (n : ℕ) : ℤ :=
  A293332.P17977191221570803940.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293332.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293340.P3667538112615828860

`A293339(n)+1`
-/

namespace A293340.P3667538112615828860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293339 n + 1

end

end A293340.P3667538112615828860

noncomputable section

/-- A293340: Least integer k such that k/2^n > 1/e.

Offset 0, canonical program `A293340.P3667538112615828860`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293340 (n : ℕ) : ℤ :=
  A293340.P3667538112615828860.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293433.P6772658230028704912

`A293431(n+1)-A147612(n+1)`
-/

namespace A293433.P6772658230028704912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293431 (n + 1) - A147612 (n + 1)

end

end A293433.P6772658230028704912

noncomputable section

/-- A293433: a(n) is the number of the proper divisors of n that are Jacobsthal numbers (A001045).

Offset 1, canonical program `A293433.P6772658230028704912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147612, A293431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293433 (n : ℕ) : ℤ :=
  A293433.P6772658230028704912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147612, A293431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293433.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293434.P5840825603179684284

`A293432(n+1)-A147612(n+1)*(n+1)`
-/

namespace A293434.P5840825603179684284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293432 (n + 1) - A147612 (n + 1) * (n + 1 : ℤ)

end

end A293434.P5840825603179684284

noncomputable section

/-- A293434: a(n) is the sum of the proper divisors of n that are Jacobsthal numbers (A001045).

Offset 1, canonical program `A293434.P5840825603179684284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147612, A293432, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293434 (n : ℕ) : ℤ :=
  A293434.P5840825603179684284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147612, A293432, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294880.P12752550258716232869

`A294879(n+1)+A294878(n+1)`
-/

namespace A294880.P12752550258716232869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294879 (n + 1) + A294878 (n + 1)

end

end A294880.P12752550258716232869

noncomputable section

/-- A294880: Number of divisors of n that are in Perrin sequence, A001608.

Offset 1, canonical program `A294880.P12752550258716232869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294878, A294879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294880 (n : ℕ) : ℤ :=
  A294880.P12752550258716232869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294878, A294879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295019.P13344954121747378704

`A295009(n+1)²`
-/

namespace A295019.P13344954121747378704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295009 (n + 1) ^ 2

end

end A295019.P13344954121747378704

noncomputable section

/-- A295019: Squares whose largest digit is 9.

Offset 1, canonical program `A295019.P13344954121747378704`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295019 (n : ℕ) : ℤ :=
  A295019.P13344954121747378704.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295019.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304092.P4628530631353138288

`A304091(n+1)+A102460(n+1)`
-/

namespace A304092.P4628530631353138288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304091 (n + 1) + A102460 (n + 1)

end

end A304092.P4628530631353138288

noncomputable section

/-- A304092: Number of Lucas numbers (A000032: 2, 1, 3, 4, 7, 11, ...) dividing n.

Offset 1, canonical program `A304092.P4628530631353138288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102460, A304091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304092 (n : ℕ) : ℤ :=
  A304092.P4628530631353138288.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102460, A304091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304093.P3031202883918209163

`A304091(n+1)-A019426(n)%A000034(n)`
-/

namespace A304093.P3031202883918209163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304091 (n + 1) - Int.tmod (A019426 n) (A000034 n)

end

end A304093.P3031202883918209163

noncomputable section

/-- A304093: a(n) is the number of the proper divisors of n that are Lucas numbers (A000204, with 2 excluded).

Offset 1, canonical program `A304093.P3031202883918209163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304093 (n : ℕ) : ℤ :=
  A304093.P3031202883918209163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305435.P18152213335711284477

`∑{d}[n+1, A057427(#-1)*A209229((n+1)/#-1)]`
-/

namespace A305435.P18152213335711284477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A305435.P18152213335711284477

noncomputable section

/-- A305435: Number of proper divisors of n of the form 2^k + 1 for k >= 0.

Offset 1, canonical program `A305435.P18152213335711284477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305435 (n : ℕ) : ℤ :=
  A305435.P18152213335711284477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239694.P16976564839662586664

`A053829(A000040(n+1))`
-/

namespace A239694.P16976564839662586664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A000040 (n + 1)).toNat

end

end A239694.P16976564839662586664

noncomputable section

/-- A239694: Base 8 sum of digits of prime(n).

Offset 1, canonical program `A239694.P16976564839662586664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239694 (n : ℕ) : ℤ :=
  A239694.P16976564839662586664.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240848.P13107810746749667617

`n+A007953(n)+A055642(n)`
-/

namespace A240848.P13107810746749667617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A007953 n + A055642 n

end

end A240848.P13107810746749667617

noncomputable section

/-- A240848: Sum of n, digitsum(n) and number of digits of n.

Offset 0, canonical program `A240848.P13107810746749667617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240848 (n : ℕ) : ℤ :=
  A240848.P13107810746749667617.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243615.P8785003313074137621

`eq[A007953(n), A070939(n)]`
-/

namespace A243615.P8785003313074137621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243615.P8785003313074137621

noncomputable section

/-- A243615: Numbers n whose digital sum equals the number of binary digits in its binary expansion.

Offset 1, canonical program `A243615.P8785003313074137621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A243615 (n : ℕ) : ℤ :=
  (A243615.P8785003313074137621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A243615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243616.P4113993082893584915

`p?[A007953(n+1)+A000040(n+1)]`
-/

namespace A243616.P4113993082893584915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243616.P4113993082893584915

noncomputable section

/-- A243616: Primes p of the form prime(n) + digitsum(n).

Offset 1, canonical program `A243616.P4113993082893584915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A243616 (n : ℕ) : ℤ :=
  A243616.P4113993082893584915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A243616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245354.P11124633670853891194

`A007953(A024653(n))`
-/

namespace A245354.P11124633670853891194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024653 n).toNat

end

end A245354.P11124633670853891194

noncomputable section

/-- A245354: Sum of digits of n in fractional base 9/5.

Offset 0, canonical program `A245354.P11124633670853891194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245354 (n : ℕ) : ℤ :=
  A245354.P11124633670853891194.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245627.P1916089901175552377

`A007953(11*n)`
-/

namespace A245627.P1916089901175552377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (11 * n)

end

end A245627.P1916089901175552377

noncomputable section

/-- A245627: Base 10 digit sum of 11*n.

Offset 0, canonical program `A245627.P1916089901175552377`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245627 (n : ℕ) : ℤ :=
  A245627.P1916089901175552377.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245802.P6380090416342982397

`eq[0, (n+1)%A053829(n+1)]+1`
-/

namespace A245802.P6380090416342982397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A053829 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245802.P6380090416342982397

noncomputable section

/-- A245802: Numbers that are divisible by the sum of their base 8 digits.

Offset 1, canonical program `A245802.P6380090416342982397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A245802 (n : ℕ) : ℤ :=
  (A245802.P6380090416342982397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A245802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247083.P17136360663830774539

`a(n-1)+A007953(a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A247083.P17136360663830774539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) + A007953 (a (n - 3)).toNat

end

end A247083.P17136360663830774539

noncomputable section

/-- A247083: a(n) = 0 for n <= 0: Starting with n=1, a(n) = 1 + the sum of the digital sums of a(0) through a(n-3).

Offset 0, canonical program `A247083.P17136360663830774539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247083 (n : ℕ) : ℤ :=
  A247083.P17136360663830774539.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249183.P13548390400809222770

`A007088(A249184(n))`
-/

namespace A249183.P13548390400809222770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A249184 n).toNat

end

end A249183.P13548390400809222770

noncomputable section

/-- A249183: a(n) = row n of triangle A249133, concatenated.

Offset 0, canonical program `A249183.P13548390400809222770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A249184, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249183 (n : ℕ) : ℤ :=
  A249183.P13548390400809222770.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A249184, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249183.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249919.P15917977027172728127

`A010371(A007088(n))`
-/

namespace A249919.P15917977027172728127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 (A007088 n).toNat

end

end A249919.P15917977027172728127

noncomputable section

/-- A249919: Number of LCD (liquid-crystal display) segments needed to display n in binary.

Offset 0, canonical program `A249919.P15917977027172728127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249919 (n : ℕ) : ℤ :=
  A249919.P15917977027172728127.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249919.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254278.P17344502935349551101

`record[(n+2)%A187793(n+2)]`
-/

namespace A254278.P17344502935349551101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A187793 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254278.P17344502935349551101

noncomputable section

/-- A254278: Numbers that are smaller than the sum of their deficient divisors.

Offset 1, canonical program `A254278.P17344502935349551101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8454 terms. -/
def A254278 (n : ℕ) : ℤ :=
  A254278.P17344502935349551101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8454 terms. -/
def A254278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257295.P17273272147279927714

`round(A007953(n)/A055642(n))`
-/

namespace A257295.P17273272147279927714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007953 n : ℚ) / (A055642 n : ℚ))

end

end A257295.P17273272147279927714

noncomputable section

/-- A257295: Arithmetic mean of the digits of n, rounded to the nearest integer.

Offset 0, canonical program `A257295.P17273272147279927714`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257295 (n : ℕ) : ℤ :=
  A257295.P17273272147279927714.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257296.P8153982668821683699

`floor(A007953(n)/A055642(n)*10^(A055642(n)-1))`
-/

namespace A257296.P8153982668821683699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007953 n : ℚ) / (A055642 n : ℚ) * (10 : ℚ) ^ (A055642 n - 1 : ℤ)⌋

end

end A257296.P8153982668821683699

noncomputable section

/-- A257296: Arithmetic mean of the digits of n, multiplied by 10^(d-1) and rounded down, where d is the number of digits of n.

Offset 0, canonical program `A257296.P8153982668821683699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257296 (n : ℕ) : ℤ :=
  A257296.P8153982668821683699.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A264663.P2079914734675243927

`A007088(A000108(n))`
-/

namespace A264663.P2079914734675243927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000108 n).toNat

end

end A264663.P2079914734675243927

noncomputable section

/-- A264663: Catalan numbers written in base 2.

Offset 0, canonical program `A264663.P2079914734675243927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264663 (n : ℕ) : ℤ :=
  A264663.P2079914734675243927.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266809.P9129826628413284547

`A007088(A266810(n))`
-/

namespace A266809.P9129826628413284547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266810 n).toNat

end

end A266809.P9129826628413284547

noncomputable section

/-- A266809: Binary representation of the n-th iteration of the "Rule 62" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266809.P9129826628413284547`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A266810, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266809 (n : ℕ) : ℤ :=
  A266809.P9129826628413284547.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A266810, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266809.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267257.P4515086165542725921

`A007088(A267258(n))`
-/

namespace A267257.P4515086165542725921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267258 n).toNat

end

end A267257.P4515086165542725921

noncomputable section

/-- A267257: Binary representation of the middle column of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267257.P4515086165542725921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A267258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267257 (n : ℕ) : ℤ :=
  A267257.P4515086165542725921.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A267258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268227.P16957043161676864909

`A007953((2*n)²)`
-/

namespace A268227.P16957043161676864909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((2 * n) ^ 2)

end

end A268227.P16957043161676864909

noncomputable section

/-- A268227: a(n) = sum of digits of (2n)^2.

Offset 0, canonical program `A268227.P16957043161676864909`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268227 (n : ℕ) : ℤ :=
  A268227.P16957043161676864909.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268228.P13943223951008201596

`A007953((2*n+1)²)`
-/

namespace A268228.P13943223951008201596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((2 * n + 1) ^ 2)

end

end A268228.P13943223951008201596

noncomputable section

/-- A268228: a(n) = sum of digits of (2n + 1)^2.

Offset 0, canonical program `A268228.P13943223951008201596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268228 (n : ℕ) : ℤ :=
  A268228.P13943223951008201596.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268383.P1822048145753504683

`n-A268382(n)`
-/

namespace A268383.P1822048145753504683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268382 n

end

end A268383.P1822048145753504683

noncomputable section

/-- A268383: Least monotonic left inverse of A268412.

Offset 0, canonical program `A268383.P1822048145753504683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268382, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268383 (n : ℕ) : ℤ :=
  A268383.P1822048145753504683.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268382, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268383.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268620.P18422231041694745516

`eq[4, gcd(4, A007953(n))]`
-/

namespace A268620.P18422231041694745516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268620.P18422231041694745516

noncomputable section

/-- A268620: Numbers whose digital sum is a multiple of 4.

Offset 1, canonical program `A268620.P18422231041694745516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A268620 (n : ℕ) : ℤ :=
  (A268620.P18422231041694745516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A268620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269130.P11293985648693636355

`A007088(n)+n`
-/

namespace A269130.P11293985648693636355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n + (n : ℤ)

end

end A269130.P11293985648693636355

noncomputable section

/-- A269130: a(n) = n + (n base 2 regarded as a decimal number).

Offset 0, canonical program `A269130.P11293985648693636355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269130 (n : ℕ) : ℤ :=
  A269130.P11293985648693636355.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269221.P1374925129774373028

`A007953(n)!`
-/

namespace A269221.P1374925129774373028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007953 n).toNat

end

end A269221.P1374925129774373028

noncomputable section

/-- A269221: Factorial of the sum of decimal digits of n.

Offset 0, canonical program `A269221.P1374925129774373028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269221 (n : ℕ) : ℤ :=
  (A269221.P1374925129774373028.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273188.P10817074238036710104

`eq[8, gcd(8, A007953(n))]`
-/

namespace A273188.P10817074238036710104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273188.P10817074238036710104

noncomputable section

/-- A273188: Numbers whose digit sum is divisible by 8.

Offset 1, canonical program `A273188.P10817074238036710104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A273188 (n : ℕ) : ℤ :=
  (A273188.P10817074238036710104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A273188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274340.P5891894812331933496

`A187793(a(n-1))` with `a(0)=19`
-/

namespace A274340.P5891894812331933496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19] fun n a =>
  A187793 (a (n - 1)).toNat

end

end A274340.P5891894812331933496

noncomputable section

/-- A274340: The period 4 sequence of the iterated sum of deficient divisors function (A187793) starting at 19.

Offset 1, canonical program `A274340.P5891894812331933496`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187793, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274340 (n : ℕ) : ℤ :=
  A274340.P5891894812331933496.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187793, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276049.P10431965570969386100

`p?[(n+1)*A294936(n-A294936(n+2)+1)]`
-/

namespace A276049.P10431965570969386100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294936 ((n : ℤ) - A294936 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276049.P10431965570969386100

noncomputable section

/-- A276049: Isolated deficient numbers that are prime.

Offset 1, canonical program `A276049.P10431965570969386100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2649 terms. -/
def A276049 (n : ℕ) : ℤ :=
  A276049.P10431965570969386100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2649 terms. -/
def A276049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278038.P15952078169272648163

`A007088(eq[0, and(n, 2*and(n, 2*n))])`
-/

namespace A278038.P15952078169272648163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * Nat.land n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A278038.P15952078169272648163

noncomputable section

/-- A278038: Binary vectors not containing three consecutive 1's; or, representation of n in the tribonacci base.

Offset 0, canonical program `A278038.P15952078169272648163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278038 (n : ℕ) : ℤ :=
  A278038.P15952078169272648163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280049.P1262711397762833047

`A007088(A003159(n+1))`
-/

namespace A280049.P1262711397762833047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003159 (n + 1)).toNat

end

end A280049.P1262711397762833047

noncomputable section

/-- A280049: Canonical representation of n as a sum of distinct Jacobsthal numbers J(n) (A001045) (see Comments for details); also binary numbers that end in an even number of zeros.

Offset 1, canonical program `A280049.P1262711397762833047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280049 (n : ℕ) : ℤ :=
  A280049.P1262711397762833047.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280637.P11576806203191940515

`A007953(n²+1)`
-/

namespace A280637.P11576806203191940515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n ^ 2 + 1)

end

end A280637.P11576806203191940515

noncomputable section

/-- A280637: Sum of the digits of n^2+1.

Offset 0, canonical program `A280637.P11576806203191940515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280637 (n : ℕ) : ℤ :=
  A280637.P11576806203191940515.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281149.P12904850799090773250

`A007088(A171885(n+1))`
-/

namespace A281149.P12904850799090773250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A171885 (n + 1)).toNat

end

end A281149.P12904850799090773250

noncomputable section

/-- A281149: Elias gamma code (EGC) for n.

Offset 1, canonical program `A281149.P12904850799090773250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A281149 (n : ℕ) : ℤ :=
  A281149.P12904850799090773250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A281149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283997.P17182648528535694112

`A283996(n)-A283998(n)`
-/

namespace A283997.P17182648528535694112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283996 n - A283998 n

end

end A283997.P17182648528535694112

noncomputable section

/-- A283997: a(n) = n XOR A005187(floor(n/2)), where XOR is bitwise-xor (A003987).

Offset 0, canonical program `A283997.P17182648528535694112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283996, A283998, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283997 (n : ℕ) : ℤ :=
  A283997.P17182648528535694112.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283996, A283998, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284820.P16918251575447438407

`eq[char[A284847(n+1)], A000007(n)]`
-/

namespace A284820.P16918251575447438407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284847 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284820.P16918251575447438407

noncomputable section

/-- A284820: Positions of 0 in the {1100->0}-transform of A010060; complement of A284847.

Offset 1, canonical program `A284820.P16918251575447438407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A284820 (n : ℕ) : ℤ :=
  (A284820.P16918251575447438407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A284820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287015.P2593987207787593327

`A007088(A000032(n))`
-/

namespace A287015.P2593987207787593327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000032 n).toNat

end

end A287015.P2593987207787593327

noncomputable section

/-- A287015: Lucas numbers written in base 2.

Offset 0, canonical program `A287015.P2593987207787593327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287015 (n : ℕ) : ℤ :=
  A287015.P2593987207787593327.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291962.P14369896121216324615

`A007088(A002275(n))`
-/

namespace A291962.P14369896121216324615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A002275 n).toNat

end

end A291962.P14369896121216324615

noncomputable section

/-- A291962: Decimal repunits written in base 2.

Offset 0, canonical program `A291962.P14369896121216324615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291962 (n : ℕ) : ℤ :=
  A291962.P14369896121216324615.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293229.P498718017162210645

`a(n-1)+A008966(4*n+3)-A008966(4*n+1)` with `a(0)=0, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293229.P498718017162210645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + (A008966 (4 * n + 3) - A008966 (4 * n + 1))

end

end A293229.P498718017162210645

noncomputable section

/-- A293229: a(0) = 0; and for n > 0, a(n) = a(n-1) + (A008966(4n+3) - A008966(4n+1)).

Offset 0, canonical program `A293229.P498718017162210645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293229 (n : ℕ) : ℤ :=
  A293229.P498718017162210645.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293429.P15331438234440877435

`a(n-1)+A008966(4*n-1)-A008966(4*n+1)` with `a(0)=0, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293429.P15331438234440877435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + (A008966 (4 * n - 1) - A008966 (4 * n + 1))

end

end A293429.P15331438234440877435

noncomputable section

/-- A293429: a(0) = 0; and for n > 0, a(n) = a(n-1) + (A008966(4n-1) - A008966(4n+1)).

Offset 0, canonical program `A293429.P15331438234440877435`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293429 (n : ℕ) : ℤ :=
  A293429.P15331438234440877435.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294886.P14072930957252500369

`A187793(n+1)-A294934(n+1)*(n+1)`
-/

namespace A294886.P14072930957252500369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1) - A294934 (n + 1) * (n + 1 : ℤ)

end

end A294886.P14072930957252500369

noncomputable section

/-- A294886: Sum of deficient proper divisors of n.

Offset 1, canonical program `A294886.P14072930957252500369`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187793, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294886 (n : ℕ) : ℤ :=
  A294886.P14072930957252500369.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187793, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294926.P4076781104688311516

`A080226(n+1)-A294934(n+1)`
-/

namespace A294926.P4076781104688311516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (n + 1) - A294934 (n + 1)

end

end A294926.P4076781104688311516

noncomputable section

/-- A294926: Number of proper divisors of n that are deficient (A005100).

Offset 1, canonical program `A294926.P4076781104688311516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080226, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294926 (n : ℕ) : ℤ :=
  A294926.P4076781104688311516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080226, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294928.P2809866523533724411

`∑{d}[n+1, A057427(#-1)*A294935((n+1)/#)]`
-/

namespace A294928.P2809866523533724411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A294935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294928.P2809866523533724411

noncomputable section

/-- A294928: Number of proper divisors of n that are nonabundant (A263837).

Offset 1, canonical program `A294928.P2809866523533724411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294928 (n : ℕ) : ℤ :=
  A294928.P2809866523533724411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297111.P9451184863548072993

`A005187(n+1)-A300244(n+1)`
-/

namespace A297111.P9451184863548072993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - A300244 (n + 1)

end

end A297111.P9451184863548072993

noncomputable section

/-- A297111: Möbius transform of A005187, where A005187(n) = 2n - (number of 1's in binary representation of n).

Offset 1, canonical program `A297111.P9451184863548072993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300244, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297111 (n : ℕ) : ℤ :=
  A297111.P9451184863548072993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300244, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297111.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306509.P15356614961765278864

`A000005(A007953(n+1))`
-/

namespace A306509.P15356614961765278864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007953 (n + 1)).toNat

end

end A306509.P15356614961765278864

noncomputable section

/-- A306509: a(n) is the number of divisors of the sum of digits of n.

Offset 1, canonical program `A306509.P15356614961765278864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306509 (n : ℕ) : ℤ :=
  A306509.P15356614961765278864.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306509.provenance : SequenceMachineLib.Provenance := .conditional

