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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A320008.P3203933991130046563

`A000120(n)*a(n-A000120(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320008.P3203933991130046563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000120 n * a ((n : ℤ) - A000120 n).toNat

end

end A320008.P3203933991130046563

noncomputable section

/-- A320008: a(0) = 1; for n > 0, a(n) = A000120(n) * a(n-A000120(n)), where A000120(n) is the binary weight of n.

Offset 0, canonical program `A320008.P3203933991130046563`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(n)*a(n-A000120(n))` (program `A320008.P3203933991130046563`, by `A320008.P3203933991130046563.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A320008 (n : ℕ) : ℤ :=
  A320008.P3203933991130046563.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(n)*a(n-A000120(n))` (program `A320008.P3203933991130046563`, by `A320008.P3203933991130046563.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A320008.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A324467.P5582211504245019994

`3*A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324467.P5582211504245019994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000120 n

end

end A324467.P5582211504245019994

noncomputable section

/-- A324467: Three times the binary weight of n: 3*A000120(n).

Offset 0, canonical program `A324467.P5582211504245019994`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*A000120(n)` (program `A324467.P5582211504245019994`, by `A324467.P5582211504245019994.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A324467 (n : ℕ) : ℤ :=
  A324467.P5582211504245019994.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*A000120(n)` (program `A324467.P5582211504245019994`, by `A324467.P5582211504245019994.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A324467.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A326130.P7891050191876259217

`gcd(A000120(n+1), A294898(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326130.P7891050191876259217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (n + 1)) (A294898 (n + 1))

end

end A326130.P7891050191876259217

noncomputable section

/-- A326130: a(n) = gcd(A000120(n), A294898(n)) = gcd(A000120(n), sigma(n)-A005187(n)).

Offset 1, canonical program `A326130.P7891050191876259217`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000120(n+1), A294898(n+1))` (program `A326130.P7891050191876259217`, by `A326130.P7891050191876259217.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A326130 (n : ℕ) : ℤ :=
  (A326130.P7891050191876259217.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000120(n+1), A294898(n+1))` (program `A326130.P7891050191876259217`, by `A326130.P7891050191876259217.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A326130.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A343299.P10274657373919912099

`n+1+A000120(a(n-1))-a(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343299.P10274657373919912099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) + A000120 (a (n - 1)).toNat - a (n - 1)

end

end A343299.P10274657373919912099

noncomputable section

/-- A343299: a(n) = n + A000120(a(n-1)) - a(n-1), with n > 1, a(1) = 1, where A000120(x) is the binary weight of x.

Offset 1, canonical program `A343299.P10274657373919912099`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+A000120(a(n-1))-a(n-1)` (program `A343299.P10274657373919912099`, by `A343299.P10274657373919912099.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A343299 (n : ℕ) : ℤ :=
  A343299.P10274657373919912099.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+A000120(a(n-1))-a(n-1)` (program `A343299.P10274657373919912099`, by `A343299.P10274657373919912099.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A343299.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A306192.P3567604202971775834

`A033286(n+2)-2*A000040(n+2)`
-/

namespace A306192.P3567604202971775834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 2) - 2 * A000040 (n + 2)

end

end A306192.P3567604202971775834

noncomputable section

/-- A306192: a(n) = (n - 1)*prime(n + 1).

Offset 1, canonical program `A306192.P3567604202971775834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306192 (n : ℕ) : ℤ :=
  A306192.P3567604202971775834.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306192.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A307923.P5766135449314183880

`A129348(n+1)/2`
-/

namespace A307923.P5766135449314183880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129348 (n + 1) : ℚ) / 2

end

end A307923.P5766135449314183880

noncomputable section

/-- A307923: Number of (undirected) Hamiltonian cycles in the n-cocktail party graph.

Offset 1, canonical program `A307923.P5766135449314183880`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307923 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307923.P5766135449314183880.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A307936.P4327043822816111677

`A234633(n+1)/2`
-/

namespace A307936.P4327043822816111677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234633 (n + 1) : ℚ) / 2

end

end A307936.P4327043822816111677

noncomputable section

/-- A307936: Numbers of (undirected) Hamiltonian paths in the complete tripartite graph K_{n,n,n}.

Offset 1, canonical program `A307936.P4327043822816111677`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307936 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307936.P4327043822816111677.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308572.P10549258952606173535

`A000045(A100484(n+1))`
-/

namespace A308572.P10549258952606173535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A100484 (n + 1)).toNat

end

end A308572.P10549258952606173535

noncomputable section

/-- A308572: a(n) = Fibonacci(2*prime(n)).

Offset 1, canonical program `A308572.P10549258952606173535`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308572 (n : ℕ) : ℤ :=
  A308572.P10549258952606173535.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309255.P16895856973714802078

`n+1-2^A000120(floor(n/2))`
-/

namespace A309255.P16895856973714802078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (2 : ℚ) ^ (A000120 ⌊(n : ℚ) / 2⌋.toNat : ℤ)

end

end A309255.P16895856973714802078

noncomputable section

/-- A309255: a(n) = n + 1 - Sum_{k=0..n} (Stirling1(n,k) mod 2).

Offset 0, canonical program `A309255.P16895856973714802078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309255 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309255.P16895856973714802078.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309255.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309397.P18176966871018856013

`gcd((n+2)², A001008(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309397.P18176966871018856013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 2) ^ 2 : ℤ) (A001008 (n + 1))

end

end A309397.P18176966871018856013

noncomputable section

/-- A309397: a(n) = gcd(n^2, A001008(n-1)) for n > 1.

Offset 2, canonical program `A309397.P18176966871018856013`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309397 (n : ℕ) : ℤ :=
  (A309397.P18176966871018856013.a (n - 2) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309709.P3577546231232212363

`A000120(A048725(n))`
-/

namespace A309709.P3577546231232212363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048725 n).toNat

end

end A309709.P3577546231232212363

noncomputable section

/-- A309709: Number of binary digits that change when n is multiplied by 4.

Offset 0, canonical program `A309709.P3577546231232212363`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309709 (n : ℕ) : ℤ :=
  A309709.P3577546231232212363.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309709.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309772.P477067059472300331

`lcm(A008864(n+2), A008864(n+1))`
-/

namespace A309772.P477067059472300331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008864 (n + 2)) (A008864 (n + 1))

end

end A309772.P477067059472300331

noncomputable section

/-- A309772: Least common multiple of prime(n+1)+1 and prime(n)+1.

Offset 1, canonical program `A309772.P477067059472300331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309772 (n : ℕ) : ℤ :=
  (A309772.P477067059472300331.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309772.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316297.P7014725534120601013

`A000142(n+1)*A002805(n+1)`
-/

namespace A316297.P7014725534120601013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A002805 (n + 1)

end

end A316297.P7014725534120601013

noncomputable section

/-- A316297: a(n) = n! times the denominator of the n-th harmonic number H(n).

Offset 1, canonical program `A316297.P7014725534120601013`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316297 (n : ℕ) : ℤ :=
  A316297.P7014725534120601013.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316297.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316434.P15371982418303686105

`a(A000720(n+1)-1)+a(A062298(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A316434.P15371982418303686105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A000720 (n + 1) - 1).toNat + a (A062298 (n + 1) - 1).toNat

end

end A316434.P15371982418303686105

noncomputable section

/-- A316434: a(n) = a(pi(n)) + a(n-pi(n)) with a(1) = a(2) = 1.

Offset 1, canonical program `A316434.P15371982418303686105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316434 (n : ℕ) : ℤ :=
  (A316434.P15371982418303686105.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316829.P17960446126874706026

`1-A088917(n)`
-/

namespace A316829.P17960446126874706026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088917 n

end

end A316829.P17960446126874706026

noncomputable section

/-- A316829: Image of 0 under repeated application of the morphism 0 -> 0,1,0, 1 -> 1,1,1.

Offset 0, canonical program `A316829.P17960446126874706026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316829 (n : ℕ) : ℤ :=
  A316829.P17960446126874706026.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316829.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316942.P5991862015660287509

`n+1-a(A000720(n+1)-1)-a(A062298(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A316942.P5991862015660287509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n + 1 : ℤ) - a (A000720 (n + 1) - 1).toNat - a (A062298 (n + 1) - 1).toNat

end

end A316942.P5991862015660287509

noncomputable section

/-- A316942: a(n) = n - a(pi(n)) - a(n-pi(n)) with a(1) = a(2) = 1, where pi = A000720.

Offset 1, canonical program `A316942.P5991862015660287509`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316942 (n : ℕ) : ℤ :=
  A316942.P5991862015660287509.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316942.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A317094.P14704194393009013937

`A000290(n+1)+A002720(n)`
-/

namespace A317094.P14704194393009013937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) + A002720 n

end

end A317094.P14704194393009013937

noncomputable section

/-- A317094: a(n) = (n + 1)^2 + n!*L_n(-1), where L_n(x) is the Laguerre polynomial.

Offset 0, canonical program `A317094.P14704194393009013937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A317094 (n : ℕ) : ℤ :=
  A317094.P14704194393009013937.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A317094.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A317137.P5699483153929860134

`A123387(n+1)-1`
-/

namespace A317137.P5699483153929860134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123387 (n + 1) - 1

end

end A317137.P5699483153929860134

noncomputable section

/-- A317137: a(n) is the number of nonzero triangular numbers <= n-th prime.

Offset 1, canonical program `A317137.P5699483153929860134`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A317137 (n : ℕ) : ℤ :=
  A317137.P5699483153929860134.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A317137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A318199.P14107098161994921365

`floor(A062481(n+1)^(1/(n+1)))`
-/

namespace A318199.P14107098161994921365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062481 (n + 1) : ℝ) ^ (1 / (n + 1 : ℚ) : ℝ)⌋

end

end A318199.P14107098161994921365

noncomputable section

/-- A318199: a(n) is the largest integer m such that m^n <= n^prime(n).

Offset 1, canonical program `A318199.P14107098161994921365`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318199 (n : ℕ) : ℤ :=
  A318199.P14107098161994921365.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319857.P3217448747804554425

`4^n-A034386(n)`
-/

namespace A319857.P3217448747804554425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A034386 n

end

end A319857.P3217448747804554425

noncomputable section

/-- A319857: Difference between 4^n and the product of primes less than or equal to n.

Offset 0, canonical program `A319857.P3217448747804554425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319857 (n : ℕ) : ℤ :=
  A319857.P3217448747804554425.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319880.P15208408059183821800

`A000079(n)-A034386(n)`
-/

namespace A319880.P15208408059183821800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A034386 n

end

end A319880.P15208408059183821800

noncomputable section

/-- A319880: Difference between 2^n and the product of primes less than or equal to n.

Offset 0, canonical program `A319880.P15208408059183821800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319880 (n : ℕ) : ℤ :=
  A319880.P15208408059183821800.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A320059.P12231139820511273363

`A065764(n+1)-A000203(n+1)`
-/

namespace A320059.P12231139820511273363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (n + 1) - A000203 (n + 1)

end

end A320059.P12231139820511273363

noncomputable section

/-- A320059: Sum of divisors of n^2 that do not divide n.

Offset 1, canonical program `A320059.P12231139820511273363`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320059 (n : ℕ) : ℤ :=
  A320059.P12231139820511273363.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A320526.P9336775028650900254

`A000392(n+1)-A056327(n+1)`
-/

namespace A320526.P9336775028650900254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) - A056327 (n + 1)

end

end A320526.P9336775028650900254

noncomputable section

/-- A320526: a(n) is the number of chiral pairs of color patterns (set partitions) in a row of length n using exactly 3 colors (subsets).

Offset 1, canonical program `A320526.P9336775028650900254`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320526 (n : ℕ) : ℤ :=
  A320526.P9336775028650900254.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320526.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324151.P8438879174853104262

`A006480(n)/A000217(n+1)`
-/

namespace A324151.P8438879174853104262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 n : ℚ) / (A000217 (n + 1) : ℚ)

end

end A324151.P8438879174853104262

noncomputable section

/-- A324151: a(n) = (2/((n+1)*(n+2)))*multinomial(3*n;n,n,n).

Offset 0, canonical program `A324151.P8438879174853104262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324151 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324151.P8438879174853104262.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324466.P7130179005898352832

`3*A000120(n)-A000120(3*n)`
-/

namespace A324466.P7130179005898352832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000120 n - A000120 (3 * n)

end

end A324466.P7130179005898352832

noncomputable section

/-- A324466: Exponent of highest power of 2 that divides multinomial(3*n;n,n,n).

Offset 0, canonical program `A324466.P7130179005898352832`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324466 (n : ℕ) : ℤ :=
  A324466.P7130179005898352832.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324466.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324490.P13266007102125180612

`A324487(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324490.P13266007102125180612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324487 (3 * n)

end

end A324490.P13266007102125180612

noncomputable section

/-- A324490: A324487(3*n).

Offset 0, canonical program `A324490.P13266007102125180612`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324490 (n : ℕ) : ℤ :=
  A324490.P13266007102125180612.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325299.P9561970934673763483

`3*A272027(n+1)`
-/

namespace A325299.P9561970934673763483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A272027 (n + 1)

end

end A325299.P9561970934673763483

noncomputable section

/-- A325299: a(n) = 9 * sigma(n).

Offset 1, canonical program `A325299.P9561970934673763483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325299 (n : ℕ) : ℤ :=
  A325299.P9561970934673763483.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326122.P14122226882151815248

`2*A274535(n+1)`
-/

namespace A326122.P14122226882151815248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274535 (n + 1)

end

end A326122.P14122226882151815248

noncomputable section

/-- A326122: a(n) = 10 * sigma(n).

Offset 1, canonical program `A326122.P14122226882151815248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326122 (n : ℕ) : ℤ :=
  A326122.P14122226882151815248.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326143.P176859411368788289

`A326142(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326143.P176859411368788289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326142 (n + 1) - (n + 1 : ℤ)

end

end A326143.P176859411368788289

noncomputable section

/-- A326143: a(n) = A326142(n) - n, where A326142 gives the sum of all other divisors of n except its largest squarefree divisor.

Offset 1, canonical program `A326143.P176859411368788289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326143 (n : ℕ) : ℤ :=
  A326143.P176859411368788289.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326187.P12520565609780871122

`A000203(n+1)-A003557(n+1)`
-/

namespace A326187.P12520565609780871122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A003557 (n + 1)

end

end A326187.P12520565609780871122

noncomputable section

/-- A326187: a(n) = sigma(n) - A003557(n).

Offset 1, canonical program `A326187.P12520565609780871122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326187 (n : ℕ) : ℤ :=
  A326187.P12520565609780871122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326188.P6516130972128088373

`A001065(n+1)-A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326188.P6516130972128088373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A003557 (n + 1)

end

end A326188.P6516130972128088373

noncomputable section

/-- A326188: a(n) = A001065(n) - A003557(n), where A001065(n) = the sum of proper divisors of n, and A003557(n) = n divided by its largest squarefree divisor.

Offset 1, canonical program `A326188.P6516130972128088373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326188 (n : ℕ) : ℤ :=
  A326188.P6516130972128088373.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326188.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326300.P5632815680627957516

`2*A006520(n+1)`
-/

namespace A326300.P5632815680627957516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006520 (n + 1)

end

end A326300.P5632815680627957516

noncomputable section

/-- A326300: Steinhaus sums.

Offset 1, canonical program `A326300.P5632815680627957516`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326300 (n : ℕ) : ℤ :=
  A326300.P5632815680627957516.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326300.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329965.P6279486900008359790

`A093005(n+1)*A329964(n)`
-/

namespace A329965.P6279486900008359790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) * A329964 n

end

end A329965.P6279486900008359790

noncomputable section

/-- A329965: a(n) = ((1+n)*floor(1+n/2))*(n!/floor(1+n/2)!)^2.

Offset 0, canonical program `A329965.P6279486900008359790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329965 (n : ℕ) : ℤ :=
  A329965.P6279486900008359790.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A330349.P4758954018468680973

`A070826(n+2)-2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330349.P4758954018468680973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 2) - (2 ^ n : ℤ)

end

end A330349.P4758954018468680973

noncomputable section

/-- A330349: a(n) = A070826(n+1) - 2^(n-1).

Offset 1, canonical program `A330349.P4758954018468680973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330349 (n : ℕ) : ℤ :=
  A330349.P4758954018468680973.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331322.P7040374156949271354

`(3*n+1)*A006480(n)`
-/

namespace A331322.P7040374156949271354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A006480 n

end

end A331322.P7040374156949271354

noncomputable section

/-- A331322: a(n) = (3*n + 1)!/(n!)^3.

Offset 0, canonical program `A331322.P7040374156949271354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331322 (n : ℕ) : ℤ :=
  A331322.P7040374156949271354.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331353.P18324294681179518771

`A331350(n+1)-2*A331352(n+1)`
-/

namespace A331353.P18324294681179518771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331350 (n + 1) - 2 * A331352 (n + 1)

end

end A331353.P18324294681179518771

noncomputable section

/-- A331353: Number of achiral colorings of the edges (or triangular faces) of a regular 4-dimensional simplex with n available colors.

Offset 1, canonical program `A331353.P18324294681179518771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331353 (n : ℕ) : ℤ :=
  A331353.P18324294681179518771.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331792.P1275125220568158347

`2/(n+2)*A331515(n)`
-/

namespace A331792.P1275125220568158347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A331515 n : ℚ)

end

end A331792.P1275125220568158347

noncomputable section

/-- A331792: Expansion of ((1 - 4*x)/sqrt(1 - 8*x + 4*x^2) - 1)/(6*x^2).

Offset 0, canonical program `A331792.P1275125220568158347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331792 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331792.P1275125220568158347.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331792.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331793.P14389572807940730688

`2/(n+2)*A331516(n)`
-/

namespace A331793.P14389572807940730688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A331516 n : ℚ)

end

end A331793.P14389572807940730688

noncomputable section

/-- A331793: Expansion of ((1 - 5*x)/sqrt(1 - 10*x + 9*x^2) - 1)/(8*x^2).

Offset 0, canonical program `A331793.P14389572807940730688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331793 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331793.P14389572807940730688.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331793.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332026.P7235378850286809144

`A002024(n+1)+A010054(n)+1`
-/

namespace A332026.P7235378850286809144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A010054 n + 1

end

end A332026.P7235378850286809144

noncomputable section

/-- A332026: Savannah problem: number of new possibilities after n weeks.

Offset 1, canonical program `A332026.P7235378850286809144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332026 (n : ℕ) : ℤ :=
  A332026.P7235378850286809144.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332026.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332130.P1056416137744457395

`3*A138148(n)`
-/

namespace A332130.P1056416137744457395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138148 n

end

end A332130.P1056416137744457395

noncomputable section

/-- A332130: a(n) = (10^(2n+1)-1)/3 - 3*10^n.

Offset 0, canonical program `A332130.P1056416137744457395`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332130 (n : ℕ) : ℤ :=
  A332130.P1056416137744457395.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332130.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332170.P8636327312248947799

`7*A138148(n)`
-/

namespace A332170.P8636327312248947799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A138148 n

end

end A332170.P8636327312248947799

noncomputable section

/-- A332170: a(n) = 7*(10^(2n+1)-1)/9 - 7*10^n.

Offset 0, canonical program `A332170.P8636327312248947799`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332170 (n : ℕ) : ℤ :=
  A332170.P8636327312248947799.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332170.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332184.P9540905939236527577

`2*A332142(n)`
-/

namespace A332184.P9540905939236527577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332142 n

end

end A332184.P9540905939236527577

noncomputable section

/-- A332184: a(n) = 8*(10^(2*n+1) - 1)/9 - 4*10^n.

Offset 0, canonical program `A332184.P9540905939236527577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332184 (n : ℕ) : ℤ :=
  A332184.P9540905939236527577.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332849.P5328959665071373614

`A053089(n+1)+A001043(n+1)`
-/

namespace A332849.P5328959665071373614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053089 (n + 1) + A001043 (n + 1)

end

end A332849.P5328959665071373614

noncomputable section

/-- A332849: a(n) = prime(n)^prime(n+1) + prime(n) + prime(n+1).

Offset 1, canonical program `A332849.P5328959665071373614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332849 (n : ℕ) : ℤ :=
  A332849.P5328959665071373614.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332849.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A333196.P6861657637734927549

`A007947(A002805(n+1))`
-/

namespace A333196.P6861657637734927549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A002805 (n + 1)).toNat

end

end A333196.P6861657637734927549

noncomputable section

/-- A333196: Least k such that Sum_{i=1..n} k^n / i is a positive integer.

Offset 1, canonical program `A333196.P6861657637734927549`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A333196 (n : ℕ) : ℤ :=
  A333196.P6861657637734927549.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A333196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A333996.P18309204266803155261

`A256885(n+1)-1`
-/

namespace A333996.P18309204266803155261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256885 (n + 1) - 1

end

end A333996.P18309204266803155261

noncomputable section

/-- A333996: Number of composite numbers in the triangular n X n multiplication table.

Offset 1, canonical program `A333996.P18309204266803155261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A333996 (n : ℕ) : ℤ :=
  A333996.P18309204266803155261.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A333996.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A334085.P4822325986563888454

`gcd(n+1, A034386(n))`
-/

namespace A334085.P4822325986563888454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A034386 n)

end

end A334085.P4822325986563888454

noncomputable section

/-- A334085: GCD of n and the product of all primes < n.

Offset 1, canonical program `A334085.P4822325986563888454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334085 (n : ℕ) : ℤ :=
  (A334085.P4822325986563888454.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A334614.P1750604770928679377

`A065328(n+1)+n+1`
-/

namespace A334614.P1750604770928679377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065328 (n + 1) + (n + 1 : ℤ)

end

end A334614.P1750604770928679377

noncomputable section

/-- A334614: a(n) = pi(prime(n) - n) + n, where pi is the prime counting function.

Offset 1, canonical program `A334614.P1750604770928679377`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334614 (n : ℕ) : ℤ :=
  A334614.P1750604770928679377.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A335023.P1300363051151381981

`A334958(n+2)/A334958(n+1)`
-/

namespace A335023.P1300363051151381981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334958 (n + 2) : ℚ) / (A334958 (n + 1) : ℚ)

end

end A335023.P1300363051151381981

noncomputable section

/-- A335023: Ratios of consecutive terms of A334958.

Offset 1, canonical program `A335023.P1300363051151381981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335023 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335023.P1300363051151381981.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335023.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A335110.P6397140420705515931

`floor((3*n+1)/2)*2^(A000120(floor(n/2))-1)`
-/

namespace A335110.P6397140420705515931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(3 * n + 1 : ℚ) / 2⌋ : ℚ) * (2 : ℚ) ^ (A000120 ⌊(n : ℚ) / 2⌋.toNat - 1 : ℤ)

end

end A335110.P6397140420705515931

noncomputable section

/-- A335110: a(n) = Sum_{k=0..n} (Stirling1(n,k) mod 2) * k.

Offset 0, canonical program `A335110.P6397140420705515931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335110 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335110.P6397140420705515931.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A335616.P11269408438136298047

`A054844(n+1)-A010054(n+1)`
-/

namespace A335616.P11269408438136298047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1) - A010054 (n + 1)

end

end A335616.P11269408438136298047

noncomputable section

/-- A335616: a(n) is twice the number of partitions of n into consecutive parts, minus the number of partitions of n into consecutive parts that contain 1 as a part.

Offset 1, canonical program `A335616.P11269408438136298047`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335616 (n : ℕ) : ℤ :=
  A335616.P11269408438136298047.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335616.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336459.P11657753033956571194

`A336457(A000203(n+1))`
-/

namespace A336459.P11657753033956571194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336457 (A000203 (n + 1)).toNat

end

end A336459.P11657753033956571194

noncomputable section

/-- A336459: a(n) = A065330(sigma(sigma(n))), where A065330 is fully multiplicative with a(2) = a(3) = 1, and a(p) = p for primes p > 3.

Offset 1, canonical program `A336459.P11657753033956571194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336459 (n : ℕ) : ℤ :=
  A336459.P11657753033956571194.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336459.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336551.P8666843674191054020

`A003557(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336551.P8666843674191054020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) - 1

end

end A336551.P8666843674191054020

noncomputable section

/-- A336551: a(n) = A003557(n) - 1.

Offset 1, canonical program `A336551.P8666843674191054020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336551 (n : ℕ) : ℤ :=
  A336551.P8666843674191054020.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336692.P11287356934966048330

`A000120(A088580(n+1))`
-/

namespace A336692.P11287356934966048330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A088580 (n + 1)).toNat

end

end A336692.P11287356934966048330

noncomputable section

/-- A336692: Binary weight of 1+sigma(n).

Offset 1, canonical program `A336692.P11287356934966048330`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336692 (n : ℕ) : ℤ :=
  A336692.P11287356934966048330.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337895.P12478577485542178731

`2*A000389(n+1)+A132366(n)`
-/

namespace A337895.P12478577485542178731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000389 (n + 1) + A132366 n

end

end A337895.P12478577485542178731

noncomputable section

/-- A337895: Number of oriented colorings of the tetrahedral facets (or vertices) of a regular 4-dimensional simplex using n or fewer colors.

Offset 1, canonical program `A337895.P12478577485542178731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337895 (n : ℕ) : ℤ :=
  A337895.P12478577485542178731.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337897.P10101254054845046804

`A128766(n+1)-A337896(n+1)`
-/

namespace A337897.P10101254054845046804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128766 (n + 1) - A337896 (n + 1)

end

end A337897.P10101254054845046804

noncomputable section

/-- A337897: Number of achiral colorings of the 8 triangular faces of a regular octahedron or the 8 vertices of a cube using n or fewer colors.

Offset 1, canonical program `A337897.P10101254054845046804`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337897 (n : ℕ) : ℤ :=
  A337897.P10101254054845046804.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337897.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337898.P7349803077682463069

`2*A198833(n+1)-A047780(n+1)`
-/

namespace A337898.P7349803077682463069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198833 (n + 1) - A047780 (n + 1)

end

end A337898.P7349803077682463069

noncomputable section

/-- A337898: Number of achiral colorings of the 6 square faces of a cube or the 6 vertices of a regular octahedron using n or fewer colors.

Offset 1, canonical program `A337898.P7349803077682463069`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337898 (n : ℕ) : ℤ :=
  A337898.P7349803077682463069.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337898.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337900.P10145934000007285920

`A001791(n+1)²`
-/

namespace A337900.P10145934000007285920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) ^ 2

end

end A337900.P10145934000007285920

noncomputable section

/-- A337900: The number of walks of length 2n on the square lattice that start from the origin (0,0) and end at the vertex (2,0).

Offset 1, canonical program `A337900.P10145934000007285920`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337900 (n : ℕ) : ℤ :=
  A337900.P10145934000007285920.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337962.P3428884001016566755

`A252705(n+1)-A337961(n+1)`
-/

namespace A337962.P3428884001016566755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252705 (n + 1) - A337961 (n + 1)

end

end A337962.P3428884001016566755

noncomputable section

/-- A337962: Number of achiral colorings of the 12 pentagonal faces of a regular dodecahedron or the 12 vertices of a regular icosahedron using n or fewer colors.

Offset 1, canonical program `A337962.P3428884001016566755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337962 (n : ℕ) : ℤ :=
  A337962.P3428884001016566755.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337962.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A338020.P8864971632284096299

`A066643(n+1)-A066643(n)`
-/

namespace A338020.P8864971632284096299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 (n + 1) - A066643 n

end

end A338020.P8864971632284096299

noncomputable section

/-- A338020: a(n) is the number of circles of positive integer area with radii less than n and greater than n - 1.

Offset 1, canonical program `A338020.P8864971632284096299`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338020 (n : ℕ) : ℤ :=
  A338020.P8864971632284096299.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338020.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342281.P11173298735282036811

`A001951(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342281.P11173298735282036811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n + 1)

end

end A342281.P11173298735282036811

noncomputable section

/-- A342281: A bisection of A001951: a(n) = A001951(2*n+1).

Offset 0, canonical program `A342281.P11173298735282036811`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(2*n+1)` (program `A342281.P11173298735282036811`, by `A342281.P11173298735282036811.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342281 (n : ℕ) : ℤ :=
  A342281.P11173298735282036811.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(2*n+1)` (program `A342281.P11173298735282036811`, by `A342281.P11173298735282036811.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342281.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A342915.P10839081578216102488

`gcd(1+n+1, A001615(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342915.P10839081578216102488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 + (n + 1) : ℤ) (A001615 (n + 1))

end

end A342915.P10839081578216102488

noncomputable section

/-- A342915: a(n) = gcd(1+n, A001615(n)), where A001615 is Dedekind psi, n * Product_{p|n, p prime} (1 + 1/p).

Offset 1, canonical program `A342915.P10839081578216102488`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342915 (n : ℕ) : ℤ :=
  (A342915.P10839081578216102488.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342916.P6432996983169765144

`(1+n+1)/gcd(1+n+1, A001615(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342916.P6432996983169765144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (n + 1) : ℚ) / (Int.gcd (1 + (n + 1) : ℤ) (A001615 (n + 1)) : ℚ)

end

end A342916.P6432996983169765144

noncomputable section

/-- A342916: a(n) = (1+n) / gcd(1+n, A001615(n)), where A001615 is Dedekind psi, n * Product_{p|n, p prime} (1 + 1/p).

Offset 1, canonical program `A342916.P6432996983169765144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342916 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342916.P6432996983169765144.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342983.P12634421261340305584

`A001246(n)*A001448(n)`
-/

namespace A342983.P12634421261340305584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n * A001448 n

end

end A342983.P12634421261340305584

noncomputable section

/-- A342983: Number of tree-rooted planar maps with n+1 vertices and n+1 faces.

Offset 0, canonical program `A342983.P12634421261340305584`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342983 (n : ℕ) : ℤ :=
  A342983.P12634421261340305584.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342983.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343256.P13451384529683243788

`A030427(n+2)-A030427(n+1)`
-/

namespace A343256.P13451384529683243788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030427 (n + 2) - A030427 (n + 1)

end

end A343256.P13451384529683243788

noncomputable section

/-- A343256: Difference between prime(Fibonacci(n+1)) and prime(Fibonacci(n)).

Offset 1, canonical program `A343256.P13451384529683243788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343256 (n : ℕ) : ℤ :=
  A343256.P13451384529683243788.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343256.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343539.P6001638168148591677

`A146005(2*n+1)`
-/

namespace A343539.P6001638168148591677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 (2 * n + 1)

end

end A343539.P6001638168148591677

noncomputable section

/-- A343539: a(n) = (2*n+1)*Lucas(2*n+1).

Offset 0, canonical program `A343539.P6001638168148591677`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343539 (n : ℕ) : ℤ :=
  A343539.P6001638168148591677.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343543.P7072821149980665290

`n*A005248(n)`
-/

namespace A343543.P7072821149980665290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005248 n

end

end A343543.P7072821149980665290

noncomputable section

/-- A343543: a(n) = n*Lucas(2*n).

Offset 0, canonical program `A343543.P7072821149980665290`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343543 (n : ℕ) : ℤ :=
  A343543.P7072821149980665290.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344656.P656771413563087314

`10^(n+1)/2-A006880(n+1)`
-/

namespace A344656.P656771413563087314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℚ) / 2 - (A006880 (n + 1) : ℚ)

end

end A344656.P656771413563087314

noncomputable section

/-- A344656: Number of odd composites <= 10^n.

Offset 1, canonical program `A344656.P656771413563087314`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344656 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344656.P656771413563087314.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344695.P9470126833009122734

`gcd(A000203(n+1), A001615(n+1))`
-/

namespace A344695.P9470126833009122734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A001615 (n + 1))

end

end A344695.P9470126833009122734

noncomputable section

/-- A344695: a(n) = gcd(sigma(n), psi(n)), where sigma is the sum of divisors function, A000203, and psi is the Dedekind psi function, A001615.

Offset 1, canonical program `A344695.P9470126833009122734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344695 (n : ℕ) : ℤ :=
  (A344695.P9470126833009122734.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344695.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345340.P16162185247943534130

`2^(n-2)*A097861(n)`
-/

namespace A345340.P16162185247943534130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A097861 n : ℚ)

end

end A345340.P16162185247943534130

noncomputable section

/-- A345340: The number of squares with vertices from the vertices of the n-dimensional hypercube.

Offset 0, canonical program `A345340.P16162185247943534130`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345340.P16162185247943534130.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345889.P5355872161182548140

`A014288(n+2)-1`
-/

namespace A345889.P5355872161182548140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014288 (n + 2) - 1

end

end A345889.P5355872161182548140

noncomputable section

/-- A345889: Number of tilings of an n-cell circular array with rectangular tiles of any size, and where the number of possible colors of a tile is given by the smallest cell covered.

Offset 1, canonical program `A345889.P5355872161182548140`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345889 (n : ℕ) : ℤ :=
  A345889.P5355872161182548140.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346877.P16742217085109088791

`A001065(2*n+1)`
-/

namespace A346877.P16742217085109088791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * n + 1)

end

end A346877.P16742217085109088791

noncomputable section

/-- A346877: Sum of the divisors, except for the largest, of the n-th odd number.

Offset 1, canonical program `A346877.P16742217085109088791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346877 (n : ℕ) : ℤ :=
  A346877.P16742217085109088791.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346877.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348416.P12963142797429791632

`gcd(n+1, A000120(n+1))`
-/

namespace A348416.P12963142797429791632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000120 (n + 1))

end

end A348416.P12963142797429791632

noncomputable section

/-- A348416: For n >= 1; a(n) = gcd(n,w(n)) where w(n) is the binary weight of n, A000120(n).

Offset 1, canonical program `A348416.P12963142797429791632`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348416 (n : ℕ) : ℤ :=
  (A348416.P12963142797429791632.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348416.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349102.P9361818263425834684

`n+1+A171977(n+1)`
-/

namespace A349102.P9361818263425834684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A171977 (n + 1)

end

end A349102.P9361818263425834684

noncomputable section

/-- A349102: Increase the odd part of n to the next greater odd number.

Offset 1, canonical program `A349102.P9361818263425834684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349102 (n : ℕ) : ℤ :=
  A349102.P9361818263425834684.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349102.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349273.P13022226165644958217

`A001227(A006093(n+1))`
-/

namespace A349273.P13022226165644958217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A006093 (n + 1)).toNat

end

end A349273.P13022226165644958217

noncomputable section

/-- A349273: Number of odd divisors of prime(n) - 1.

Offset 1, canonical program `A349273.P13022226165644958217`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349273 (n : ℕ) : ℤ :=
  A349273.P13022226165644958217.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349273.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349440.P4425977258919944592

`(n+1)/A086847(n+1)`
-/

namespace A349440.P4425977258919944592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A086847 (n + 1) : ℚ)

end

end A349440.P4425977258919944592

noncomputable section

/-- A349440: a(n) = n / gcd(A001608(n), n), where A001608 = Perrin sequence.

Offset 1, canonical program `A349440.P4425977258919944592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349440 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349440.P4425977258919944592.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349440.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349660.P9981326327431548497

`A000040(n+1)+A001248(n+2)`
-/

namespace A349660.P9981326327431548497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A001248 (n + 2)

end

end A349660.P9981326327431548497

noncomputable section

/-- A349660: Numbers which are the sum of a prime and the square of the next prime.

Offset 1, canonical program `A349660.P9981326327431548497`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349660 (n : ℕ) : ℤ :=
  A349660.P9981326327431548497.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349660.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350965.P17319960714308467739

`sqrt(6*A138288(n)²-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350965.P17319960714308467739
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (6 * A138288 n ^ 2 - 2 : ℝ)

end

end A350965.P17319960714308467739

noncomputable section

/-- A350965: a(n) = sqrt(6*A138288(n)^2 - 2).

Offset 0, canonical program `A350965.P17319960714308467739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350965 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350965.P17319960714308467739.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350968.P3720301099072039786

`(A350967(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350968.P3720301099072039786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350967 (n + 1) - 1 : ℚ) / 2

end

end A350968.P3720301099072039786

noncomputable section

/-- A350968: a(n) = (A350967(n)-1)/2.

Offset 1, canonical program `A350968.P3720301099072039786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350968 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350968.P3720301099072039786.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350968.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A352851.P861774503886080343

`A001248(n+1)+A000040(n+2)`
-/

namespace A352851.P861774503886080343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A000040 (n + 2)

end

end A352851.P861774503886080343

noncomputable section

/-- A352851: a(n) = prime(n)^2 + prime(n+1).

Offset 1, canonical program `A352851.P861774503886080343`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352851 (n : ℕ) : ℤ :=
  A352851.P861774503886080343.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352851.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353190.P11422691785722745783

`A005408(n)-A001065(n+1)`
-/

namespace A353190.P11422691785722745783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A001065 (n + 1)

end

end A353190.P11422691785722745783

noncomputable section

/-- A353190: a(n) is the (n-1)st odd number minus the sum of the aliquot parts of n.

Offset 1, canonical program `A353190.P11422691785722745783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353190 (n : ℕ) : ℤ :=
  A353190.P11422691785722745783.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356056.P16192935099357345067

`A001951(A137803(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356056.P16192935099357345067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A137803 (n + 1)).toNat

end

end A356056.P16192935099357345067

noncomputable section

/-- A356056: a(n) = A001951(A137803(n)).

Offset 1, canonical program `A356056.P16192935099357345067`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(A137803(n+1))` (program `A356056.P16192935099357345067`, by `A356056.P16192935099357345067.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356056 (n : ℕ) : ℤ :=
  A356056.P16192935099357345067.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(A137803(n+1))` (program `A356056.P16192935099357345067`, by `A356056.P16192935099357345067.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356056.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A356057.P8518808555773698646

`A001951(A137804(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356057.P8518808555773698646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A137804 (n + 1)).toNat

end

end A356057.P8518808555773698646

noncomputable section

/-- A356057: a(n) = A001951(A137804(n)).

Offset 1, canonical program `A356057.P8518808555773698646`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(A137804(n+1))` (program `A356057.P8518808555773698646`, by `A356057.P8518808555773698646.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356057 (n : ℕ) : ℤ :=
  A356057.P8518808555773698646.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(A137804(n+1))` (program `A356057.P8518808555773698646`, by `A356057.P8518808555773698646.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356057.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A356088.P18437978252580480837

`A001951(A022838(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356088.P18437978252580480837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A022838 (n + 1)).toNat

end

end A356088.P18437978252580480837

noncomputable section

/-- A356088: a(n) = A001951(A022838(n)).

Offset 1, canonical program `A356088.P18437978252580480837`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(A022838(n+1))` (program `A356088.P18437978252580480837`, by `A356088.P18437978252580480837.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356088 (n : ℕ) : ℤ :=
  A356088.P18437978252580480837.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(A022838(n+1))` (program `A356088.P18437978252580480837`, by `A356088.P18437978252580480837.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356088.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A356089.P15539664326383864454

`A001951(A054406(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356089.P15539664326383864454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A054406 (n + 1)).toNat

end

end A356089.P15539664326383864454

noncomputable section

/-- A356089: a(n) = A001951(A054406(n)).

Offset 1, canonical program `A356089.P15539664326383864454`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(A054406(n+1))` (program `A356089.P15539664326383864454`, by `A356089.P15539664326383864454.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356089 (n : ℕ) : ℤ :=
  A356089.P15539664326383864454.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(A054406(n+1))` (program `A356089.P15539664326383864454`, by `A356089.P15539664326383864454.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356089.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A356138.P8008051555666440382

`A137803(A001951(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356138.P8008051555666440382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (A001951 (n + 1)).toNat

end

end A356138.P8008051555666440382

noncomputable section

/-- A356138: a(n) = A137803(A001951(n)).

Offset 1, canonical program `A356138.P8008051555666440382`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A137803(A001951(n+1))` (program `A356138.P8008051555666440382`, by `A356138.P8008051555666440382.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356138 (n : ℕ) : ℤ :=
  A356138.P8008051555666440382.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A137803(A001951(n+1))` (program `A356138.P8008051555666440382`, by `A356138.P8008051555666440382.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356138.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A356139.P5837492225789361080

`A137804(A001951(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356139.P5837492225789361080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (A001951 (n + 1)).toNat

end

end A356139.P5837492225789361080

noncomputable section

/-- A356139: a(n) = A137804(A001951(n)).

Offset 1, canonical program `A356139.P5837492225789361080`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A137804(A001951(n+1))` (program `A356139.P5837492225789361080`, by `A356139.P5837492225789361080.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356139 (n : ℕ) : ℤ :=
  A356139.P5837492225789361080.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A137804(A001951(n+1))` (program `A356139.P5837492225789361080`, by `A356139.P5837492225789361080.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356139.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A356180.P8319334063317487091

`A022838(A001951(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356180.P8319334063317487091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A001951 (n + 1)).toNat

end

end A356180.P8319334063317487091

noncomputable section

/-- A356180: a(n) = A022838(A001951(n)).

Offset 1, canonical program `A356180.P8319334063317487091`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A022838(A001951(n+1))` (program `A356180.P8319334063317487091`, by `A356180.P8319334063317487091.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356180 (n : ℕ) : ℤ :=
  A356180.P8319334063317487091.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A022838(A001951(n+1))` (program `A356180.P8319334063317487091`, by `A356180.P8319334063317487091.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356180.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A356181.P7498048710755409494

`A054406(A001951(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356181.P7498048710755409494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (A001951 (n + 1)).toNat

end

end A356181.P7498048710755409494

noncomputable section

/-- A356181: a(n) = A054406(A001951(n)).

Offset 1, canonical program `A356181.P7498048710755409494`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A054406(A001951(n+1))` (program `A356181.P7498048710755409494`, by `A356181.P7498048710755409494.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356181 (n : ℕ) : ℤ :=
  A356181.P7498048710755409494.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A054406(A001951(n+1))` (program `A356181.P7498048710755409494`, by `A356181.P7498048710755409494.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356181.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A356760.P8308903421901114083

`A316275(n)+A316275(n+1)`
-/

namespace A356760.P8308903421901114083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316275 n + A316275 (n + 1)

end

end A356760.P8308903421901114083

noncomputable section

/-- A356760: a(n) = L(2*F(n)) + L(2*F(n+1)), where L(n) is the n-th Lucas number (A000032), and F(n) is the n-th Fibonacci number (A000045).

Offset 0, canonical program `A356760.P8308903421901114083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356760 (n : ℕ) : ℤ :=
  A356760.P8308903421901114083.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356760.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357253.P9603118701941204902

`A007917(A008588(n+1))`
-/

namespace A357253.P9603118701941204902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A008588 (n + 1)).toNat

end

end A357253.P9603118701941204902

noncomputable section

/-- A357253: a(n) is the largest prime < 6*n.

Offset 1, canonical program `A357253.P9603118701941204902`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357253 (n : ℕ) : ℤ :=
  A357253.P9603118701941204902.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357679.P3047207656668672575

`A006094(n+2)+A006094(n+1)`
-/

namespace A357679.P3047207656668672575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2) + A006094 (n + 1)

end

end A357679.P3047207656668672575

noncomputable section

/-- A357679: a(n) = prime(n)*(prime(n-1) + prime(n+1)).

Offset 2, canonical program `A357679.P3047207656668672575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357679 (n : ℕ) : ℤ :=
  A357679.P3047207656668672575.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357679.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358126.P18184850716581158338

`2*A253317(n+1)`
-/

namespace A358126.P18184850716581158338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253317 (n + 1)

end

end A358126.P18184850716581158338

noncomputable section

/-- A358126: Replace 2^k in binary expansion of n with 2^(2^k).

Offset 0, canonical program `A358126.P18184850716581158338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358126 (n : ℕ) : ℤ :=
  A358126.P18184850716581158338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359126.P8935011708423575333

`A000168(n+1)-A000139(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359126.P8935011708423575333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000168 (n + 1) - A000139 n

end

end A359126.P8935011708423575333

noncomputable section

/-- A359126: A000168(n+1) - A000139(n).

Offset 0, canonical program `A359126.P8935011708423575333`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359126 (n : ℕ) : ℤ :=
  A359126.P8935011708423575333.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359498.P209552481815961539

`A219086(n)*A175110(n)`
-/

namespace A359498.P209552481815961539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n * A175110 n

end

end A359498.P209552481815961539

noncomputable section

/-- A359498: a(n) = ((2*n+1)^8 - 1)/32.

Offset 0, canonical program `A359498.P209552481815961539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359498 (n : ℕ) : ℤ :=
  A359498.P209552481815961539.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361028.P3258230745335243271

`A007226(n)*A000108(n)`
-/

namespace A361028.P3258230745335243271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n * A000108 n

end

end A361028.P3258230745335243271

noncomputable section

/-- A361028: a(n) = 2*(3*n)!/(n!*(n+1)!^2).

Offset 0, canonical program `A361028.P3258230745335243271`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361028 (n : ℕ) : ℤ :=
  A361028.P3258230745335243271.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361028.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361264.P6755303600206869457

`A064549(n+1)*A007947(n+1)`
-/

namespace A361264.P6755303600206869457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) * A007947 (n + 1)

end

end A361264.P6755303600206869457

noncomputable section

/-- A361264: Multiplicative with a(p^e) = p^(e + 2), e > 0.

Offset 1, canonical program `A361264.P6755303600206869457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361264 (n : ℕ) : ℤ :=
  A361264.P6755303600206869457.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361462.P2236218584101490089

`A135506(n+1)%4`
-/

namespace A361462.P2236218584101490089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135506 (n + 1)) 4

end

end A361462.P2236218584101490089

noncomputable section

/-- A361462: a(n) = A135506(n) mod 4.

Offset 1, canonical program `A361462.P2236218584101490089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361462 (n : ℕ) : ℤ :=
  A361462.P2236218584101490089.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362516.P4966196509825039487

`2^(2*(n+1)+1)-1-A286188(n+1)`
-/

namespace A362516.P4966196509825039487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * (n + 1) + 1) : ℤ) - 1 - A286188 (n + 1)

end

end A362516.P4966196509825039487

noncomputable section

/-- A362516: Number of vertex cuts in the n-gear graph.

Offset 1, canonical program `A362516.P4966196509825039487`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362516 (n : ℕ) : ℤ :=
  A362516.P4966196509825039487.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362516.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362577.P12384799473361245898

`3*4^(n+1)-4*(n+1)²+2*(n+1)-2+A005248(n+1)-2*A206776(n+1)`
-/

namespace A362577.P12384799473361245898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 4 ^ (n + 1) : ℤ) - (4 * (n + 1) ^ 2 : ℤ) + (2 * (n + 1) : ℤ) - 2 + A005248 (n + 1) - 2 * A206776 (n + 1)

end

end A362577.P12384799473361245898

noncomputable section

/-- A362577: Number of vertex cuts in the n-trapezohedral graph.

Offset 1, canonical program `A362577.P12384799473361245898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362577 (n : ℕ) : ℤ :=
  A362577.P12384799473361245898.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A320758.P14389415916150682477

`A080599(n+2)-A000142(n+2)`
-/

namespace A320758.P14389415916150682477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080599 (n + 2) - A000142 (n + 2)

end

end A320758.P14389415916150682477

noncomputable section

/-- A320758: Number of ordered set partitions of [n] where the maximal block size equals two.

Offset 2, canonical program `A320758.P14389415916150682477`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320758 (n : ℕ) : ℤ :=
  A320758.P14389415916150682477.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A320934.P8100376593685891607

`A124303(n+1)-A056323(n+1)`
-/

namespace A320934.P8100376593685891607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 (n + 1) - A056323 (n + 1)

end

end A320934.P8100376593685891607

noncomputable section

/-- A320934: Number of chiral pairs of color patterns (set partitions) for a row of length n using 4 or fewer colors (subsets).

Offset 1, canonical program `A320934.P8100376593685891607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320934 (n : ℕ) : ℤ :=
  A320934.P8100376593685891607.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320934.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326125.P14524333776348103302

`(n+1)*A000593(n+1)`
-/

namespace A326125.P14524333776348103302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000593 (n + 1)

end

end A326125.P14524333776348103302

noncomputable section

/-- A326125: Expansion of Sum_{k>=1} k^2 * x^k / (1 + x^k)^2.

Offset 1, canonical program `A326125.P14524333776348103302`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326125 (n : ℕ) : ℤ :=
  A326125.P14524333776348103302.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326990.P6670757131686068120

`A000593(n+1)-1`
-/

namespace A326990.P6670757131686068120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - 1

end

end A326990.P6670757131686068120

noncomputable section

/-- A326990: Sum of odd divisors of n that are greater than 1.

Offset 1, canonical program `A326990.P6670757131686068120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326990 (n : ℕ) : ℤ :=
  A326990.P6670757131686068120.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A328487.P33867563993606673

`∑{d}[n+1, A000593(#)*A000593((n+1)/#)]`
-/

namespace A328487.P33867563993606673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328487.P33867563993606673

noncomputable section

/-- A328487: Dirichlet g.f.: zeta(s)^2 * zeta(s-1)^2 * (1 - 2^(1 - s))^2.

Offset 1, canonical program `A328487.P33867563993606673`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328487 (n : ℕ) : ℤ :=
  A328487.P33867563993606673.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329178.P12340181522984070385

`A329227(n+7)-1`
-/

namespace A329178.P12340181522984070385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329227 (n + 7) - 1

end

end A329178.P12340181522984070385

noncomputable section

/-- A329178: Sum of the products of pairs of Padovan numbers which are two apart, starting from A000931(5).

Offset 0, canonical program `A329178.P12340181522984070385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329178 (n : ℕ) : ℤ :=
  A329178.P12340181522984070385.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329178.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A330025.P16976327817596103196

`(-1)^floor(n/5)*A011558(n)`
-/

namespace A330025.P16976327817596103196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 5⌋ : ℤ) * (A011558 n : ℚ)

end

end A330025.P16976327817596103196

noncomputable section

/-- A330025: a(n) = (-1)^floor(n/5) * sign(mod(n, 5)).

Offset 0, canonical program `A330025.P16976327817596103196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330025 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A330025.P16976327817596103196.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332875.P11519112769782522596

`A000002(2*(n+1)-1)+A000002(2*(n+1))`
-/

namespace A332875.P11519112769782522596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * (n + 1) - 1) + A000002 (2 * (n + 1))

end

end A332875.P11519112769782522596

noncomputable section

/-- A332875: Sizes of maximal weakly increasing subsequences of A000002.

Offset 1, canonical program `A332875.P11519112769782522596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332875 (n : ℕ) : ℤ :=
  A332875.P11519112769782522596.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332875.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A333229.P6279008054827789908

`A000002(n+1)+A000002(n+2)`
-/

namespace A333229.P6279008054827789908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) + A000002 (n + 2)

end

end A333229.P6279008054827789908

noncomputable section

/-- A333229: First sums of the Kolakoski sequence A000002.

Offset 1, canonical program `A333229.P6279008054827789908`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A333229 (n : ℕ) : ℤ :=
  A333229.P6279008054827789908.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A333229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A334042.P8126490693138970786

`A035327(A000290(n))`
-/

namespace A334042.P8126490693138970786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A000290 n).toNat

end

end A334042.P8126490693138970786

noncomputable section

/-- A334042: Write n^2 in binary, interchange 0's and 1's, convert back to decimal.

Offset 0, canonical program `A334042.P8126490693138970786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334042 (n : ℕ) : ℤ :=
  A334042.P8126490693138970786.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336696.P16809553901230215827

`A000593(A088580(n+1))`
-/

namespace A336696.P16809553901230215827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A088580 (n + 1)).toNat

end

end A336696.P16809553901230215827

noncomputable section

/-- A336696: Sum of odd divisors of 1+sigma(n).

Offset 1, canonical program `A336696.P16809553901230215827`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336696 (n : ℕ) : ℤ :=
  A336696.P16809553901230215827.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337302.P12856594040456002554

`A000316(floor(n/2))`
-/

namespace A337302.P12856594040456002554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000316 ⌊(n : ℚ) / 2⌋.toNat

end

end A337302.P12856594040456002554

noncomputable section

/-- A337302: Number of X-based filling of diagonals in a diagonal Latin square of order n with the main diagonal in ascending order.

Offset 0, canonical program `A337302.P12856594040456002554`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337302 (n : ℕ) : ℤ :=
  A337302.P12856594040456002554.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337954.P3236094688740596925

`A128767(n+1)-A337955(n+1)`
-/

namespace A337954.P3236094688740596925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128767 (n + 1) - A337955 (n + 1)

end

end A337954.P3236094688740596925

noncomputable section

/-- A337954: Number of chiral pairs of colorings of the 16 tetrahedral facets of a hyperoctahedron or of the 16 vertices of a tesseract.

Offset 1, canonical program `A337954.P3236094688740596925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337954 (n : ℕ) : ℤ :=
  A337954.P3236094688740596925.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346879.P2705901714156670864

`A048050(2*n+1)`
-/

namespace A346879.P2705901714156670864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (2 * n + 1)

end

end A346879.P2705901714156670864

noncomputable section

/-- A346879: Sum of the divisors, except the smallest and the largest, of the n-th odd number.

Offset 1, canonical program `A346879.P2705901714156670864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346879 (n : ℕ) : ℤ :=
  A346879.P2705901714156670864.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346879.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346880.P3202443241792394982

`A048050(2*(n+1))`
-/

namespace A346880.P3202443241792394982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (2 * (n + 1))

end

end A346880.P3202443241792394982

noncomputable section

/-- A346880: Sum of the divisors, except the smallest and the largest, of the n-th positive even number.

Offset 1, canonical program `A346880.P3202443241792394982`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346880 (n : ℕ) : ℤ :=
  A346880.P3202443241792394982.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349932.P7251384286632821414

`(n+1)*A035327(n+1)`
-/

namespace A349932.P7251384286632821414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035327 (n + 1)

end

end A349932.P7251384286632821414

noncomputable section

/-- A349932: Product of n and its binary ones' complement.

Offset 1, canonical program `A349932.P7251384286632821414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349932 (n : ℕ) : ℤ :=
  A349932.P7251384286632821414.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349932.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350634.P17300309054725568699

`(A027434(n+1)²-A082375(n)²)/4`
-/

namespace A350634.P17300309054725568699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027434 (n + 1) ^ 2 - A082375 n ^ 2 : ℚ) / 4

end

end A350634.P17300309054725568699

noncomputable section

/-- A350634: Products of the parts s,t in each partition of k (= 2,3,...) into two parts, ordered by increasing k and then by increasing values of s*t (see example).

Offset 1, canonical program `A350634.P17300309054725568699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350634.P17300309054725568699.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350634.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351830.P4984587301917632845

`abs(A000330(n)-A353295(n))`
-/

namespace A351830.P4984587301917632845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000330 n - A353295 n|

end

end A351830.P4984587301917632845

noncomputable section

/-- A351830: Distance from the n-th square pyramidal number (sum of the first n positive squares) to the nearest square.

Offset 0, canonical program `A351830.P4984587301917632845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351830 (n : ℕ) : ℤ :=
  A351830.P4984587301917632845.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351830.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357754.P3306282147274652731

`2^(n+3)-A056007(n+3)`
-/

namespace A357754.P3306282147274652731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A056007 (n + 3)

end

end A357754.P3306282147274652731

noncomputable section

/-- A357754: a(n) is the largest square with n binary digits.

Offset 3, canonical program `A357754.P3306282147274652731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357754 (n : ℕ) : ℤ :=
  A357754.P3306282147274652731.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359194.P7714065540488624570

`A035327(3*n)`
-/

namespace A359194.P7714065540488624570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (3 * n)

end

end A359194.P7714065540488624570

noncomputable section

/-- A359194: Binary complement of 3*n.

Offset 0, canonical program `A359194.P7714065540488624570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359194 (n : ℕ) : ℤ :=
  A359194.P7714065540488624570.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359374.P13170479000661243617

`1-A359379(n+1)`
-/

namespace A359374.P13170479000661243617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A359379 (n + 1)

end

end A359374.P13170479000661243617

noncomputable section

/-- A359374: Parity of A252463(n).

Offset 1, canonical program `A359374.P13170479000661243617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359374 (n : ℕ) : ℤ :=
  A359374.P13170479000661243617.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359374.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A305994.P8434495600472292787

`A073089(6*n+3)`
-/

namespace A305994.P8434495600472292787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (6 * n + 3)

end

end A305994.P8434495600472292787

noncomputable section

/-- A305994: a(n) = ((A000265(3*n + 1) + 1) mod 4)/2.

Offset 0, canonical program `A305994.P8434495600472292787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305994 (n : ℕ) : ℤ :=
  A305994.P8434495600472292787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306354.P11672414115379192429

`gcd(n+1, A101337(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306354.P11672414115379192429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A101337 (n + 1))

end

end A306354.P11672414115379192429

noncomputable section

/-- A306354: a(n) = gcd(n, A101337(n)).

Offset 1, canonical program `A306354.P11672414115379192429`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306354 (n : ℕ) : ℤ :=
  (A306354.P11672414115379192429.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306354.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A306682.P11360712118956145825

`gcd(A000203(n+1), A187680(n+1))`
-/

namespace A306682.P11360712118956145825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A187680 (n + 1))

end

end A306682.P11360712118956145825

noncomputable section

/-- A306682: a(n) = gcd(sigma(n), pod(n)) where sigma(k) = the sum of the divisors of k (A000203) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A306682.P11360712118956145825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306682 (n : ℕ) : ℤ :=
  (A306682.P11360712118956145825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306682.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A307561.P12180419070007048395

`A024898(eq[1, A024898(n+2)-A024898(n+1)]+1)`
-/

namespace A307561.P12180419070007048395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 2) - A024898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A307561.P12180419070007048395

noncomputable section

/-- A307561: Numbers k such that both 6*k - 1 and 6*k + 5 are prime.

Offset 1, canonical program `A307561.P12180419070007048395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A307561 (n : ℕ) : ℤ :=
  A307561.P12180419070007048395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A307561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307613.P859576868444545900

`A153151(a(n-2)+1)+1` with `a(0)=0, a(1)=1`
-/

namespace A307613.P859576868444545900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A153151 (a (n - 2) + 1).toNat + 1

end

end A307613.P859576868444545900

noncomputable section

/-- A307613: Inverse of the permutation A307485: one odd, two even, four odd, eight even, etc; extended with a(0) = 0.

Offset 0, canonical program `A307613.P859576868444545900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9078 terms. -/
def A307613 (n : ℕ) : ℤ :=
  A307613.P859576868444545900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9078 terms. -/
def A307613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307707.P13403686277569962142

`A004526(A140358(n+1))`
-/

namespace A307707.P13403686277569962142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A140358 (n + 1)).toNat

end

end A307707.P13403686277569962142

noncomputable section

/-- A307707: Lexicographically earliest sequence of nonnegative integers in which, for all k >= 0, there are exactly k pairs of consecutive terms whose sum is k.

Offset 1, canonical program `A307707.P13403686277569962142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307707 (n : ℕ) : ℤ :=
  A307707.P13403686277569962142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308050.P10480352126798774821

`A175851(n+2)+1`
-/

namespace A308050.P10480352126798774821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 2) + 1

end

end A308050.P10480352126798774821

noncomputable section

/-- A308050: a(n) = n - prevprime(n - 1), where prevprime(n) is the largest prime < n.

Offset 4, canonical program `A308050.P10480352126798774821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308050 (n : ℕ) : ℤ :=
  A308050.P10480352126798774821.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308067.P12796114021275495050

`A026923(n+1)-A000217(A002265(n))`
-/

namespace A308067.P12796114021275495050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026923 (n + 1) - A000217 (A002265 n).toNat

end

end A308067.P12796114021275495050

noncomputable section

/-- A308067: Number of integer-sided triangles with perimeter n whose longest side length is odd.

Offset 1, canonical program `A308067.P12796114021275495050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308067 (n : ℕ) : ℤ :=
  A308067.P12796114021275495050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308105.P3201978903205892723

`lt[A101337(n+1), n+1]+1`
-/

namespace A308105.P3201978903205892723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A308105.P3201978903205892723

noncomputable section

/-- A308105: Numbers m such that m is greater than the sum of the k-th powers of its digits, where k is the number of digits of m.

Offset 1, canonical program `A308105.P3201978903205892723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4791 terms. -/
def A308105 (n : ℕ) : ℤ :=
  (A308105.P3201978903205892723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4791 terms. -/
def A308105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308184.P13568587787613628160

`A308183(n+1)+1`
-/

namespace A308184.P13568587787613628160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308183 (n + 1) + 1

end

end A308184.P13568587787613628160

noncomputable section

/-- A308184: S_oo, where S_1 = bc, S_n = S_{n-1} a^n S_{n-1} for n > 1, over the alphabet {a,b,c} = {1,2,3}.

Offset 1, canonical program `A308184.P13568587787613628160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A308184 (n : ℕ) : ℤ :=
  A308184.P13568587787613628160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A308184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308303.P1012122925679025049

`A005044(n+1)-A308066(n+4)`
-/

namespace A308303.P1012122925679025049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A308066 (n + 4)

end

end A308303.P1012122925679025049

noncomputable section

/-- A308303: Number of integer-sided triangles with perimeter n and at least one even side length.

Offset 1, canonical program `A308303.P1012122925679025049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A308066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308303 (n : ℕ) : ℤ :=
  A308303.P1012122925679025049.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A308066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308303.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308360.P14482252966188849651

`A064549(n+1)^(A005361(n+1)/2)`
-/

namespace A308360.P14482252966188849651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℝ) ^ ((A005361 (n + 1) : ℚ) / 2 : ℝ)

end

end A308360.P14482252966188849651

noncomputable section

/-- A308360: Product of positive divisors d of n that are divisible by every prime that divides n.

Offset 1, canonical program `A308360.P14482252966188849651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308360 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308360.P14482252966188849651.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308485.P1992995854308444612

`Δ[A025281(A000040(n+1))]-A000040(n+2)`
-/

namespace A308485.P1992995854308444612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000040 (n + 2)

end

end A308485.P1992995854308444612

noncomputable section

/-- A308485: a(n) is the sum of the integer logs of all integers strictly between prime(n) and prime(n+1).

Offset 1, canonical program `A308485.P1992995854308444612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A308485 (n : ℕ) : ℤ :=
  A308485.P1992995854308444612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A308485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308655.P3064422645470108956

`∑[(A046933(n+1)+1)*(-1)^n]`
-/

namespace A308655.P3064422645470108956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046933 (n + 1) + 1) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308655.P3064422645470108956

noncomputable section

/-- A308655: Alternating partial sums of the prime gaps.

Offset 1, canonical program `A308655.P3064422645470108956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308655 (n : ℕ) : ℤ :=
  A308655.P3064422645470108956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308710.P12110980803160113646

`A000040(n+2)*A011782(A035100(n+2))`
-/

namespace A308710.P12110980803160113646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A011782 (A035100 (n + 2)).toNat

end

end A308710.P12110980803160113646

noncomputable section

/-- A308710: Primitive practical numbers of the form 2^i * prime(k).

Offset 1, canonical program `A308710.P12110980803160113646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A308710 (n : ℕ) : ℤ :=
  A308710.P12110980803160113646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A308710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308822.P1849006694607648440

`n*A026811(n)`
-/

namespace A308822.P1849006694607648440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026811 n

end

end A308822.P1849006694607648440

noncomputable section

/-- A308822: Sum of all the parts in the partitions of n into 5 parts.

Offset 0, canonical program `A308822.P1849006694607648440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308822 (n : ℕ) : ℤ :=
  A308822.P1849006694607648440.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308828.P10471701249719507011

`(n+1)*∏{p}[n+1, #-1/#]/∏{p}[n+1, #+1]*A026741((n+1)/∏{p}[n+1, #])`
-/

namespace A308828.P10471701249719507011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) - 1 / (p : ℚ))) / ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℚ) * (A026741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A308828.P10471701249719507011

noncomputable section

/-- A308828: Number of sequences that include all residues modulo n starting with x_0 = 0 and then x_i given recursively by x_{i+1} = a * x_i + c (mod n) where a and c are integers in the interval [0..n-1].

Offset 1, canonical program `A308828.P10471701249719507011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A308828 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308828.P10471701249719507011.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A308828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309082.P2346780015378476388

`A013937(n+1)-2*A013937(floor((n+1)/8))`
-/

namespace A309082.P2346780015378476388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013937 (n + 1) - 2 * A013937 ⌊(n + 1 : ℚ) / 8⌋.toNat

end

end A309082.P2346780015378476388

noncomputable section

/-- A309082: a(n) = n - floor(n/2^3) + floor(n/3^3) - floor(n/4^3) + ...

Offset 1, canonical program `A309082.P2346780015378476388`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309082 (n : ℕ) : ℤ :=
  A309082.P2346780015378476388.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309124.P14266994735095652977

`∑[A050457(n+1)]`
-/

namespace A309124.P14266994735095652977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309124.P14266994735095652977

noncomputable section

/-- A309124: a(n) = n - 3 * floor(n/3) + 5 * floor(n/5) - 7 * floor(n/7) + ...

Offset 1, canonical program `A309124.P14266994735095652977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309124 (n : ℕ) : ℤ :=
  A309124.P14266994735095652977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309126.P13420984772726904485

`∑[A113061(n+1)]`
-/

namespace A309126.P13420984772726904485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309126.P13420984772726904485

noncomputable section

/-- A309126: a(n) = n + 2^3 * floor(n/2^3) + 3^3 * floor(n/3^3) + 4^3 * floor(n/4^3) + ...

Offset 1, canonical program `A309126.P13420984772726904485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309126 (n : ℕ) : ℤ :=
  A309126.P13420984772726904485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309233.P18125362527876287836

`A236856(n+1)-A236856(n)%A003418(n+1)`
-/

namespace A309233.P18125362527876287836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 (n + 1) - Int.tmod (A236856 n) (A003418 (n + 1))

end

end A309233.P18125362527876287836

noncomputable section

/-- A309233: Lexicographically earliest increasing sequence such that n-th term is divisible by all positive integers up to n.

Offset 1, canonical program `A309233.P18125362527876287836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A309233 (n : ℕ) : ℤ :=
  A309233.P18125362527876287836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A309233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309303.P18394327980956294694

`A005043(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A309303.P18394327980956294694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005043 (n - 1) - a (n - 1)

end

end A309303.P18394327980956294694

noncomputable section

/-- A309303: Expansion of g.f. (sqrt(x+1) - sqrt(1-3*x))/(2*(x+1)^(3/2)).

Offset 0, canonical program `A309303.P18394327980956294694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A309303 (n : ℕ) : ℤ :=
  A309303.P18394327980956294694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A309303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309462.P15642956790934535355

`record[A141073(n+1)+A000035(n)]`
-/

namespace A309462.P15642956790934535355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141073 (n + 1) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309462.P15642956790934535355

noncomputable section

/-- A309462: Limiting row sequence for Pascal-like triangle A140995 (Stepan's triangle with index of asymmetry s = 3).

Offset 0, canonical program `A309462.P15642956790934535355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A309462 (n : ℕ) : ℤ :=
  A309462.P15642956790934535355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A309462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309956.P1524397468370418570

`∏{digits}[A007091(n), #]`
-/

namespace A309956.P1524397468370418570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A309956.P1524397468370418570

noncomputable section

/-- A309956: Product of digits of (n written in base 5).

Offset 0, canonical program `A309956.P1524397468370418570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309956 (n : ℕ) : ℤ :=
  (A309956.P1524397468370418570.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310392.P9158652043196933514

`A136290(n)+A026741(A047513(n+1))`
-/

namespace A310392.P9158652043196933514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 n + A026741 (A047513 (n + 1)).toNat

end

end A310392.P9158652043196933514

noncomputable section

/-- A310392: Coordination sequence Gal.6.366.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310392.P9158652043196933514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A310392 (n : ℕ) : ℤ :=
  A310392.P9158652043196933514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A310392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310409.P15130947317478675071

`A004277(round(n/(1/2+2))+2*n)`
-/

namespace A310409.P15130947317478675071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((n : ℚ) / ((1 : ℚ) / 2 + 2)) + (2 * n : ℤ)).toNat

end

end A310409.P15130947317478675071

noncomputable section

/-- A310409: Coordination sequence Gal.3.19.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310409.P15130947317478675071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. -/
def A310409 (n : ℕ) : ℤ :=
  A310409.P15130947317478675071.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. -/
def A310409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310412.P6181630566762096242

`A004277(A265187(2*n+1))`
-/

namespace A310412.P6181630566762096242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A265187 (2 * n + 1)).toNat

end

end A310412.P6181630566762096242

noncomputable section

/-- A310412: Coordination sequence Gal.5.129.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310412.P6181630566762096242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A310412 (n : ℕ) : ℤ :=
  A310412.P6181630566762096242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A310412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310441.P12169130983515311112

`A310372(n)+Δ[A011860(n)]`
-/

namespace A310441.P12169130983515311112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n + (f1 (n + 1) - f1 n)

end

end A310441.P12169130983515311112

noncomputable section

/-- A310441: Coordination sequence Gal.4.77.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310441.P12169130983515311112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A310441 (n : ℕ) : ℤ :=
  A310441.P12169130983515311112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A310441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310525.P5831325578290002764

`A219529(n)-A128834(n)`
-/

namespace A310525.P5831325578290002764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A128834 n

end

end A310525.P5831325578290002764

noncomputable section

/-- A310525: Coordination sequence Gal.4.74.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310525.P5831325578290002764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310525 (n : ℕ) : ℤ :=
  A310525.P5831325578290002764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311570.P17013553146921247597

`A310518(n)-A201629(n)`
-/

namespace A311570.P17013553146921247597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310518 n - A201629 n

end

end A311570.P17013553146921247597

noncomputable section

/-- A311570: Coordination sequence Gal.3.18.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311570.P17013553146921247597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2604 terms. -/
def A311570 (n : ℕ) : ℤ :=
  A311570.P17013553146921247597.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2604 terms. -/
def A311570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311586.P8330829840369533226

`A004277(A047588(n+1)+n)`
-/

namespace A311586.P8330829840369533226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047588 (n + 1) + (n : ℤ)).toNat

end

end A311586.P8330829840369533226

noncomputable section

/-- A311586: Coordination sequence Gal.4.58.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311586.P8330829840369533226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2558 terms. -/
def A311586 (n : ℕ) : ℤ :=
  A311586.P8330829840369533226.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2558 terms. -/
def A311586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311625.P7066219322900741713

`2*A311501(n)-A008574(n)`
-/

namespace A311625.P7066219322900741713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311501 n - A008574 n

end

end A311625.P7066219322900741713

noncomputable section

/-- A311625: Coordination sequence Gal.5.99.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311625.P7066219322900741713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A311625 (n : ℕ) : ℤ :=
  A311625.P7066219322900741713.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A311625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311958.P8495961817773989589

`round(A311289(n)+n/5)`
-/

namespace A311958.P8495961817773989589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A311289 n : ℚ) + (n : ℚ) / 5)

end

end A311958.P8495961817773989589

noncomputable section

/-- A311958: Coordination sequence Gal.5.53.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311958.P8495961817773989589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A311958 (n : ℕ) : ℤ :=
  A311958.P8495961817773989589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A311958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312140.P16557486338365459525

`A004525(n)+A311843(n)-A004525(A004525(n))`
-/

namespace A312140.P16557486338365459525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A311843 n - A004525 (A004525 n).toNat)

end

end A312140.P16557486338365459525

noncomputable section

/-- A312140: Coordination sequence Gal.4.41.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312140.P16557486338365459525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A312140 (n : ℕ) : ℤ :=
  A312140.P16557486338365459525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A312140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312304.P14380419667614427901

`A008579(n)-A004526(A088440(n))`
-/

namespace A312304.P14380419667614427901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A004526 (A088440 n).toNat

end

end A312304.P14380419667614427901

noncomputable section

/-- A312304: Coordination sequence Gal.3.17.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312304.P14380419667614427901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A312304 (n : ℕ) : ℤ :=
  A312304.P14380419667614427901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A312304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312484.P6638501064243572720

`A311816(n)+Δ[A011862(n)]`
-/

namespace A312484.P6638501064243572720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n + (f1 (n + 1) - f1 n)

end

end A312484.P6638501064243572720

noncomputable section

/-- A312484: Coordination sequence Gal.5.81.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312484.P6638501064243572720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A312484 (n : ℕ) : ℤ :=
  A312484.P6638501064243572720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A312484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312506.P16390298550000536768

`A311843(n)+Δ[A011861(n)]`
-/

namespace A312506.P16390298550000536768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n + (f1 (n + 1) - f1 n)

end

end A312506.P16390298550000536768

noncomputable section

/-- A312506: Coordination sequence Gal.5.109.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312506.P16390298550000536768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A312506 (n : ℕ) : ℤ :=
  A312506.P16390298550000536768.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A312506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312526.P17098405118883711689

`A312065(n)+Δ[A011865(n)]`
-/

namespace A312526.P17098405118883711689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + (f1 (n + 1) - f1 n)

end

end A312526.P17098405118883711689

noncomputable section

/-- A312526: Coordination sequence Gal.6.254.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312526.P17098405118883711689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A312526 (n : ℕ) : ℤ :=
  A312526.P17098405118883711689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A312526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312655.P15954006372491132960

`A301298(n)-A128834(n)`
-/

namespace A312655.P15954006372491132960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A128834 n

end

end A312655.P15954006372491132960

noncomputable section

/-- A312655: Coordination sequence Gal.4.62.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312655.P15954006372491132960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A312655 (n : ℕ) : ℤ :=
  A312655.P15954006372491132960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A312655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312658.P11537774687744647677

`2*A312077(n)-A008574(n)`
-/

namespace A312658.P11537774687744647677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312077 n - A008574 n

end

end A312658.P11537774687744647677

noncomputable section

/-- A312658: Coordination sequence Gal.6.249.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312658.P11537774687744647677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A312658 (n : ℕ) : ℤ :=
  A312658.P11537774687744647677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A312658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312680.P9217351570199122673

`A310411(n)-2*A238470(n)`
-/

namespace A312680.P9217351570199122673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310411 n - 2 * A238470 n

end

end A312680.P9217351570199122673

noncomputable section

/-- A312680: Coordination sequence Gal.4.63.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312680.P9217351570199122673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2394 terms. -/
def A312680 (n : ℕ) : ℤ :=
  A312680.P9217351570199122673.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2394 terms. -/
def A312680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312736.P842124473673064007

`A077814(A004396(n))+A008579(n)`
-/

namespace A312736.P842124473673064007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 (A004396 n).toNat + A008579 n

end

end A312736.P842124473673064007

noncomputable section

/-- A312736: Coordination sequence Gal.5.268.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312736.P842124473673064007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A312736 (n : ℕ) : ℤ :=
  A312736.P842124473673064007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A312736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312974.P7421975159170050839

`A312549(n)-A238468(n)`
-/

namespace A312974.P7421975159170050839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312549 n - A238468 n

end

end A312974.P7421975159170050839

noncomputable section

/-- A312974: Coordination sequence Gal.4.61.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312974.P7421975159170050839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A312974 (n : ℕ) : ℤ :=
  A312974.P7421975159170050839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A312974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312975.P9491113938046766116

`2*A312932(n)-A312893(n)`
-/

namespace A312975.P9491113938046766116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312932 n - A312893 n

end

end A312975.P9491113938046766116

noncomputable section

/-- A312975: Coordination sequence Gal.5.110.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312975.P9491113938046766116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. -/
def A312975 (n : ℕ) : ℤ :=
  A312975.P9491113938046766116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. -/
def A312975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312998.P16096171208213579461

`A312475(n)+∑[A131736(n)]`
-/

namespace A312998.P16096171208213579461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312998.P16096171208213579461

noncomputable section

/-- A312998: Coordination sequence Gal.4.85.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312998.P16096171208213579461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A312998 (n : ℕ) : ℤ :=
  A312998.P16096171208213579461.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A312998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313026.P11714630493594694704

`A312893(n)+Δ[A011862(n)]`
-/

namespace A313026.P11714630493594694704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + (f1 (n + 1) - f1 n)

end

end A313026.P11714630493594694704

noncomputable section

/-- A313026: Coordination sequence Gal.5.54.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313026.P11714630493594694704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A313026 (n : ℕ) : ℤ :=
  A313026.P11714630493594694704.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A313026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313088.P8261115150776480095

`A047513(n+1)+A312890(n)-n`
-/

namespace A313088.P8261115150776480095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + (A312890 n - (n : ℤ))

end

end A313088.P8261115150776480095

noncomputable section

/-- A313088: Coordination sequence Gal.6.120.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313088.P8261115150776480095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A313088 (n : ℕ) : ℤ :=
  A313088.P8261115150776480095.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A313088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313099.P14754823964277209654

`A047273(n+1)+A311426(n)-n`
-/

namespace A313099.P14754823964277209654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + (A311426 n - (n : ℤ))

end

end A313099.P14754823964277209654

noncomputable section

/-- A313099: Coordination sequence Gal.6.259.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313099.P14754823964277209654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313099 (n : ℕ) : ℤ :=
  A313099.P14754823964277209654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313100.P9368663845500705119

`A312932(n)+Δ[A011862(n)]`
-/

namespace A313100.P9368663845500705119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312932 n + (f1 (n + 1) - f1 n)

end

end A313100.P9368663845500705119

noncomputable section

/-- A313100: Coordination sequence Gal.5.100.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313100.P9368663845500705119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A313100 (n : ℕ) : ℤ :=
  A313100.P9368663845500705119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A313100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313110.P8718307215339103209

`A312065(n)+A002264(n+1)`
-/

namespace A313110.P8718307215339103209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A002264 (n + 1)

end

end A313110.P8718307215339103209

noncomputable section

/-- A313110: Coordination sequence Gal.3.13.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313110.P8718307215339103209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. -/
def A313110 (n : ℕ) : ℤ :=
  A313110.P8718307215339103209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. -/
def A313110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313115.P1984220492497243584

`A311501(n)+n-A004525(n)`
-/

namespace A313115.P1984220492497243584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311501 n + ((n : ℤ) - A004525 n)

end

end A313115.P1984220492497243584

noncomputable section

/-- A313115: Coordination sequence Gal.4.43.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313115.P1984220492497243584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. -/
def A313115 (n : ℕ) : ℤ :=
  A313115.P1984220492497243584.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. -/
def A313115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313119.P14327494610439454234

`A086161(n)+A312113(n)-1`
-/

namespace A313119.P14327494610439454234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 n + (A312113 n - 1)

end

end A313119.P14327494610439454234

noncomputable section

/-- A313119: Coordination sequence Gal.6.157.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313119.P14327494610439454234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2388 terms. -/
def A313119 (n : ℕ) : ℤ :=
  A313119.P14327494610439454234.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2388 terms. -/
def A313119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313121.P8292700378048131852

`A250120(n)-A102283(A058992(n+1))`
-/

namespace A313121.P8292700378048131852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A102283 (A058992 (n + 1)).toNat

end

end A313121.P8292700378048131852

noncomputable section

/-- A313121: Coordination sequence Gal.3.25.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313121.P8292700378048131852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A313121 (n : ℕ) : ℤ :=
  A313121.P8292700378048131852.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A313121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313126.P11597078416560143332

`A008706(n)-A128834(A004525(n))`
-/

namespace A313126.P11597078416560143332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A128834 (A004525 n).toNat

end

end A313126.P11597078416560143332

noncomputable section

/-- A313126: Coordination sequence Gal.6.198.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313126.P11597078416560143332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313126 (n : ℕ) : ℤ :=
  A313126.P11597078416560143332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313147.P2022922053315539050

`A310411(n)-A238470(n)`
-/

namespace A313147.P2022922053315539050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310411 n - A238470 n

end

end A313147.P2022922053315539050

noncomputable section

/-- A313147: Coordination sequence Gal.4.63.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313147.P2022922053315539050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313147 (n : ℕ) : ℤ :=
  A313147.P2022922053315539050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313232.P979105180797442420

`A312475(n)+Δ[A011858(n)]`
-/

namespace A313232.P979105180797442420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + (f1 (n + 1) - f1 n)

end

end A313232.P979105180797442420

noncomputable section

/-- A313232: Coordination sequence Gal.3.14.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313232.P979105180797442420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A313232 (n : ℕ) : ℤ :=
  A313232.P979105180797442420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A313232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313237.P14637761332733740404

`A312065(n)+∑[A021913(n)]`
-/

namespace A313237.P14637761332733740404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313237.P14637761332733740404

noncomputable section

/-- A313237: Coordination sequence Gal.6.202.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313237.P14637761332733740404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2398 terms. -/
def A313237 (n : ℕ) : ℤ :=
  A313237.P14637761332733740404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2398 terms. -/
def A313237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313485.P7677676480922091384

`A047424(n+1)+A312890(n)-n`
-/

namespace A313485.P7677676480922091384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A312890 n - (n : ℤ))

end

end A313485.P7677676480922091384

noncomputable section

/-- A313485: Coordination sequence Gal.6.254.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313485.P7677676480922091384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2524 terms. -/
def A313485 (n : ℕ) : ℤ :=
  A313485.P7677676480922091384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2524 terms. -/
def A313485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313506.P8115017678468763868

`abs(A008591(n)-A312077(n))`
-/

namespace A313506.P8115017678468763868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A312077 n|

end

end A313506.P8115017678468763868

noncomputable section

/-- A313506: Coordination sequence Gal.5.114.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313506.P8115017678468763868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2470 terms. -/
def A313506 (n : ℕ) : ℤ :=
  A313506.P8115017678468763868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2470 terms. -/
def A313506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313538.P13622609119361302116

`A312893(n)+A004396(A004396(n))`
-/

namespace A313538.P13622609119361302116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + A004396 (A004396 n).toNat

end

end A313538.P13622609119361302116

noncomputable section

/-- A313538: Coordination sequence Gal.5.110.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313538.P13622609119361302116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. -/
def A313538 (n : ℕ) : ℤ :=
  A313538.P13622609119361302116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. -/
def A313538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313556.P12127503874440300930

`A312890(n)+A004525(n)`
-/

namespace A313556.P12127503874440300930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 n + A004525 n

end

end A313556.P12127503874440300930

noncomputable section

/-- A313556: Coordination sequence Gal.6.132.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313556.P12127503874440300930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A313556 (n : ℕ) : ℤ :=
  A313556.P12127503874440300930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A313556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313561.P3656167571663365839

`A312894(n)+A004525(n)`
-/

namespace A313561.P3656167571663365839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312894 n + A004525 n

end

end A313561.P3656167571663365839

noncomputable section

/-- A313561: Coordination sequence Gal.4.53.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313561.P3656167571663365839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A313561 (n : ℕ) : ℤ :=
  A313561.P3656167571663365839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A313561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313569.P8131727440747983242

`A312896(n)+A004525(n)`
-/

namespace A313569.P8131727440747983242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n + A004525 n

end

end A313569.P8131727440747983242

noncomputable section

/-- A313569: Coordination sequence Gal.6.197.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313569.P8131727440747983242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A313569 (n : ℕ) : ℤ :=
  A313569.P8131727440747983242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A313569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313580.P11382536486156642147

`A312908(n)+A004396(A004396(n))`
-/

namespace A313580.P11382536486156642147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312908 n + A004396 (A004396 n).toNat

end

end A313580.P11382536486156642147

noncomputable section

/-- A313580: Coordination sequence Gal.5.111.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313580.P11382536486156642147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A313580 (n : ℕ) : ℤ :=
  A313580.P11382536486156642147.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A313580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313614.P17499972432936715973

`A312932(n)+A004396(A004396(n))`
-/

namespace A313614.P17499972432936715973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312932 n + A004396 (A004396 n).toNat

end

end A313614.P17499972432936715973

noncomputable section

/-- A313614: Coordination sequence Gal.5.129.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313614.P17499972432936715973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2384 terms. -/
def A313614 (n : ℕ) : ℤ :=
  A313614.P17499972432936715973.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2384 terms. -/
def A313614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313622.P2728153341211532052

`A047263(A311426(n)+1)`
-/

namespace A313622.P2728153341211532052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A311426 n + 1).toNat

end

end A313622.P2728153341211532052

noncomputable section

/-- A313622: Coordination sequence Gal.6.203.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313622.P2728153341211532052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313622 (n : ℕ) : ℤ :=
  A313622.P2728153341211532052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313685.P6300280032503356636

`abs(A008592(n)-(A311501(n)+n))`
-/

namespace A313685.P6300280032503356636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311501 n + (n : ℤ))|

end

end A313685.P6300280032503356636

noncomputable section

/-- A313685: Coordination sequence Gal.4.43.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313685.P6300280032503356636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A313685 (n : ℕ) : ℤ :=
  A313685.P6300280032503356636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A313685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313692.P7381687034045997065

`A047448(n+1)+A312892(n)-n`
-/

namespace A313692.P7381687034045997065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047448 (n + 1) + (A312892 n - (n : ℤ))

end

end A313692.P7381687034045997065

noncomputable section

/-- A313692: Coordination sequence Gal.5.136.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313692.P7381687034045997065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A313692 (n : ℕ) : ℤ :=
  A313692.P7381687034045997065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A313692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313693.P2459513417228491263

`abs(9*n-A311426(n))`
-/

namespace A313693.P2459513417228491263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A311426 n|

end

end A313693.P2459513417228491263

noncomputable section

/-- A313693: Coordination sequence Gal.6.197.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313693.P2459513417228491263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2393 terms. -/
def A313693 (n : ℕ) : ℤ :=
  A313693.P2459513417228491263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2393 terms. -/
def A313693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313720.P17061328062091106116

`A312890(n)+A004396(n)`
-/

namespace A313720.P17061328062091106116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 n + A004396 n

end

end A313720.P17061328062091106116

noncomputable section

/-- A313720: Coordination sequence Gal.6.153.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313720.P17061328062091106116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A313720 (n : ℕ) : ℤ :=
  A313720.P17061328062091106116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A313720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313721.P4481706154216896496

`A312932(2*n)-4*n`
-/

namespace A313721.P4481706154216896496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312932 (2 * n) - (4 * n : ℤ)

end

end A313721.P4481706154216896496

noncomputable section

/-- A313721: Coordination sequence Gal.5.129.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313721.P4481706154216896496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2389 terms. -/
def A313721 (n : ℕ) : ℤ :=
  A313721.P4481706154216896496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2389 terms. -/
def A313721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313726.P1465677854736066315

`A312896(n)+round(2*n/3)`
-/

namespace A313726.P1465677854736066315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A313726.P1465677854736066315

noncomputable section

/-- A313726: Coordination sequence Gal.6.340.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313726.P1465677854736066315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313726 (n : ℕ) : ℤ :=
  A313726.P1465677854736066315.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313745.P10063043799170297099

`abs(A008592(n)-A313722(n))`
-/

namespace A313745.P10063043799170297099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313722 n|

end

end A313745.P10063043799170297099

noncomputable section

/-- A313745: Coordination sequence Gal.6.199.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313745.P10063043799170297099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. -/
def A313745 (n : ℕ) : ℤ :=
  A313745.P10063043799170297099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. -/
def A313745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313746.P691207156092889607

`A312908(n)+A004396(n)`
-/

namespace A313746.P691207156092889607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312908 n + A004396 n

end

end A313746.P691207156092889607

noncomputable section

/-- A313746: Coordination sequence Gal.5.113.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313746.P691207156092889607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A313746 (n : ℕ) : ℤ :=
  A313746.P691207156092889607.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A313746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313747.P13675197079359879746

`A312909(n)+A004396(n)`
-/

namespace A313747.P13675197079359879746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n + A004396 n

end

end A313747.P13675197079359879746

noncomputable section

/-- A313747: Coordination sequence Gal.6.200.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313747.P13675197079359879746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A313747 (n : ℕ) : ℤ :=
  A313747.P13675197079359879746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A313747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313773.P14022306089365674860

`A312932(n)+round(2*n/3)`
-/

namespace A313773.P14022306089365674860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312932 n + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A313773.P14022306089365674860

noncomputable section

/-- A313773: Coordination sequence Gal.5.131.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313773.P14022306089365674860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313773 (n : ℕ) : ℤ :=
  A313773.P14022306089365674860.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313781.P3283423518407474942

`A311426(n)+n`
-/

namespace A313781.P3283423518407474942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311426 n + (n : ℤ)

end

end A313781.P3283423518407474942

noncomputable section

/-- A313781: Coordination sequence Gal.6.617.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313781.P3283423518407474942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313781 (n : ℕ) : ℤ :=
  A313781.P3283423518407474942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313793.P9174122524385542970

`A311501(n)+n`
-/

namespace A313793.P9174122524385542970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311501 n + (n : ℤ)

end

end A313793.P9174122524385542970

noncomputable section

/-- A313793: Coordination sequence Gal.4.134.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313793.P9174122524385542970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A313793 (n : ℕ) : ℤ :=
  A313793.P9174122524385542970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A313793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313811.P15472108025893280203

`2*A313780(n)-A313738(n)`
-/

namespace A313811.P15472108025893280203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313780 n - A313738 n

end

end A313811.P15472108025893280203

noncomputable section

/-- A313811: Coordination sequence Gal.6.649.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313811.P15472108025893280203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A313811 (n : ℕ) : ℤ :=
  A313811.P15472108025893280203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A313811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313826.P9423977663290718791

`abs(A008592(n)-A313635(n))`
-/

namespace A313826.P9423977663290718791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313635 n|

end

end A313826.P9423977663290718791

noncomputable section

/-- A313826: Coordination sequence Gal.4.78.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313826.P9423977663290718791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2374 terms. -/
def A313826 (n : ℕ) : ℤ :=
  A313826.P9423977663290718791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2374 terms. -/
def A313826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313831.P17675149220499265565

`A313722(n)+Δ[A011864(n)]`
-/

namespace A313831.P17675149220499265565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313722 n + (f1 (n + 1) - f1 n)

end

end A313831.P17675149220499265565

noncomputable section

/-- A313831: Coordination sequence Gal.6.328.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313831.P17675149220499265565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313831 (n : ℕ) : ℤ :=
  A313831.P17675149220499265565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313834.P4113290971779129752

`A313730(n)+Δ[A011864(n)]`
-/

namespace A313834.P4113290971779129752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313730 n + (f1 (n + 1) - f1 n)

end

end A313834.P4113290971779129752

noncomputable section

/-- A313834: Coordination sequence Gal.6.616.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313834.P4113290971779129752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A313834 (n : ℕ) : ℤ :=
  A313834.P4113290971779129752.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A313834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313874.P10377049350807380576

`A313722(n)+A008615(A082977(n+1))`
-/

namespace A313874.P10377049350807380576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313722 n + A008615 (A082977 (n + 1)).toNat

end

end A313874.P10377049350807380576

noncomputable section

/-- A313874: Coordination sequence Gal.6.649.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313874.P10377049350807380576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A313874 (n : ℕ) : ℤ :=
  A313874.P10377049350807380576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A313874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313875.P9058260822961243366

`A311843(n)+n`
-/

namespace A313875.P9058260822961243366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n + (n : ℤ)

end

end A313875.P9058260822961243366

noncomputable section

/-- A313875: Coordination sequence Gal.4.134.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313875.P9058260822961243366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313875 (n : ℕ) : ℤ :=
  A313875.P9058260822961243366.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313884.P6047903024451911562

`abs(A008592(n)-A313546(n))`
-/

namespace A313884.P6047903024451911562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313546 n|

end

end A313884.P6047903024451911562

noncomputable section

/-- A313884: Coordination sequence Gal.6.347.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313884.P6047903024451911562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A313884 (n : ℕ) : ℤ :=
  A313884.P6047903024451911562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A313884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313885.P9087473460656170900

`A047513(n+1)+A313703(n)-n`
-/

namespace A313885.P9087473460656170900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + (A313703 n - (n : ℤ))

end

end A313885.P9087473460656170900

noncomputable section

/-- A313885: Coordination sequence Gal.5.308.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313885.P9087473460656170900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A313885 (n : ℕ) : ℤ :=
  A313885.P9087473460656170900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A313885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313916.P11453756357199401341

`A312077(n)+n`
-/

namespace A313916.P11453756357199401341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312077 n + (n : ℤ)

end

end A313916.P11453756357199401341

noncomputable section

/-- A313916: Coordination sequence Gal.5.293.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313916.P11453756357199401341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. -/
def A313916 (n : ℕ) : ℤ :=
  A313916.P11453756357199401341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. -/
def A313916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313952.P3220437394578326099

`A312245(n)+A047588(n+1)`
-/

namespace A313952.P3220437394578326099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312245 n + A047588 (n + 1)

end

end A313952.P3220437394578326099

noncomputable section

/-- A313952: Coordination sequence Gal.4.143.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313952.P3220437394578326099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A313952 (n : ℕ) : ℤ :=
  A313952.P3220437394578326099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A313952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313975.P16343226415888646231

`A312475(n)+n`
-/

namespace A313975.P16343226415888646231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + (n : ℤ)

end

end A313975.P16343226415888646231

noncomputable section

/-- A313975: Coordination sequence Gal.4.145.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313975.P16343226415888646231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A313975 (n : ℕ) : ℤ :=
  A313975.P16343226415888646231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A313975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314055.P1017858823170680272

`A072154(n)+A310411(n)-A004277(n)`
-/

namespace A314055.P1017858823170680272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + (A310411 n - A004277 n)

end

end A314055.P1017858823170680272

noncomputable section

/-- A314055: Coordination sequence Gal.4.143.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314055.P1017858823170680272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A314055 (n : ℕ) : ℤ :=
  A314055.P1017858823170680272.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A314055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314065.P12648711868558918415

`A313613(n)+Δ[A011858(n)]`
-/

namespace A314065.P12648711868558918415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n + (f1 (n + 1) - f1 n)

end

end A314065.P12648711868558918415

noncomputable section

/-- A314065: Coordination sequence Gal.4.143.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314065.P12648711868558918415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A314065 (n : ℕ) : ℤ :=
  A314065.P12648711868558918415.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A314065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314094.P14203817368862660609

`A047263(A312890(n)+1)`
-/

namespace A314094.P14203817368862660609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A312890 n + 1).toNat

end

end A314094.P14203817368862660609

noncomputable section

/-- A314094: Coordination sequence Gal.6.345.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314094.P14203817368862660609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2369 terms. -/
def A314094 (n : ℕ) : ℤ :=
  A314094.P14203817368862660609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2369 terms. -/
def A314094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314099.P18395783485758796748

`A312893(n)+A004396(A042965(n+1))`
-/

namespace A314099.P18395783485758796748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + A004396 (A042965 (n + 1)).toNat

end

end A314099.P18395783485758796748

noncomputable section

/-- A314099: Coordination sequence Gal.5.131.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314099.P18395783485758796748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. -/
def A314099 (n : ℕ) : ℤ :=
  A314099.P18395783485758796748.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. -/
def A314099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314108.P14678985322811750842

`A128834(n-A004525(n))+A008706(n)`
-/

namespace A314108.P14678985322811750842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 ((n : ℤ) - A004525 n).toNat + A008706 n

end

end A314108.P14678985322811750842

noncomputable section

/-- A314108: Coordination sequence Gal.6.198.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314108.P14678985322811750842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A314108 (n : ℕ) : ℤ :=
  A314108.P14678985322811750842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A314108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314110.P11829887775557874322

`A312890(n)+n`
-/

namespace A314110.P11829887775557874322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 n + (n : ℤ)

end

end A314110.P11829887775557874322

noncomputable section

/-- A314110: Coordination sequence Gal.6.200.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314110.P11829887775557874322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A314110 (n : ℕ) : ℤ :=
  A314110.P11829887775557874322.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A314110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314111.P2022816928026981768

`A312892(n)+n`
-/

namespace A314111.P2022816928026981768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312892 n + (n : ℤ)

end

end A314111.P2022816928026981768

noncomputable section

/-- A314111: Coordination sequence Gal.5.289.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314111.P2022816928026981768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2324 terms. -/
def A314111 (n : ℕ) : ℤ :=
  A314111.P2022816928026981768.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2324 terms. -/
def A314111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314112.P8835196921211282987

`A312894(n)+n`
-/

namespace A314112.P8835196921211282987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312894 n + (n : ℤ)

end

end A314112.P8835196921211282987

noncomputable section

/-- A314112: Coordination sequence Gal.4.134.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314112.P8835196921211282987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A314112 (n : ℕ) : ℤ :=
  A314112.P8835196921211282987.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A314112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314124.P13406789306969075082

`A312896(n)+n`
-/

namespace A314124.P13406789306969075082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n + (n : ℤ)

end

end A314124.P13406789306969075082

noncomputable section

/-- A314124: Coordination sequence Gal.6.619.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314124.P13406789306969075082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A314124 (n : ℕ) : ℤ :=
  A314124.P13406789306969075082.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A314124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314125.P17964618951199002530

`A310372(n)+A004525(A004525(n)+n)`
-/

namespace A314125.P17964618951199002530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A314125.P17964618951199002530

noncomputable section

/-- A314125: Coordination sequence Gal.5.312.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314125.P17964618951199002530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A314125 (n : ℕ) : ℤ :=
  A314125.P17964618951199002530.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A314125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314135.P657271170897302408

`A310529(n)+A128834(n)`
-/

namespace A314135.P657271170897302408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310529 n + A128834 n

end

end A314135.P657271170897302408

noncomputable section

/-- A314135: Coordination sequence Gal.6.489.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314135.P657271170897302408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314135 (n : ℕ) : ℤ :=
  A314135.P657271170897302408.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314141.P7118663094909511911

`A312893(n)+A004396(A004396(n)+n)`
-/

namespace A314141.P7118663094909511911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + A004396 (A004396 n + (n : ℤ)).toNat

end

end A314141.P7118663094909511911

noncomputable section

/-- A314141: Coordination sequence Gal.5.290.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314141.P7118663094909511911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314141 (n : ℕ) : ℤ :=
  A314141.P7118663094909511911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314160.P11818790826256901571

`A008458(n)+A311914(n)-A250120(n)`
-/

namespace A314160.P11818790826256901571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A311914 n - A250120 n)

end

end A314160.P11818790826256901571

noncomputable section

/-- A314160: Coordination sequence Gal.6.650.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314160.P11818790826256901571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A314160 (n : ℕ) : ℤ :=
  A314160.P11818790826256901571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A314160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314163.P15135266397834481260

`A312908(n)+A004396(A004396(n)+n)`
-/

namespace A314163.P15135266397834481260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312908 n + A004396 (A004396 n + (n : ℤ)).toNat

end

end A314163.P15135266397834481260

noncomputable section

/-- A314163: Coordination sequence Gal.5.301.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314163.P15135266397834481260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A314163 (n : ℕ) : ℤ :=
  A314163.P15135266397834481260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A314163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314190.P16264638501610305232

`A004525(A004396(n))+2*A313045(n)-A008574(n)`
-/

namespace A314190.P16264638501610305232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (2 * A313045 n - A008574 n)

end

end A314190.P16264638501610305232

noncomputable section

/-- A314190: Coordination sequence Gal.6.651.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314190.P16264638501610305232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A314190 (n : ℕ) : ℤ :=
  A314190.P16264638501610305232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A314190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314194.P5043649871563701470

`A314117(n)+Δ[A011864(n)]`
-/

namespace A314194.P5043649871563701470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314117 n + (f1 (n + 1) - f1 n)

end

end A314194.P5043649871563701470

noncomputable section

/-- A314194: Coordination sequence Gal.6.625.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314194.P5043649871563701470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A314194 (n : ℕ) : ℤ :=
  A314194.P5043649871563701470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A314194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314209.P11294401320322084331

`A074232(A312892(n))`
-/

namespace A314209.P11294401320322084331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (A312892 n).toNat

end

end A314209.P11294401320322084331

noncomputable section

/-- A314209: Coordination sequence Gal.5.293.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314209.P11294401320322084331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2256 terms. -/
def A314209 (n : ℕ) : ℤ :=
  A314209.P11294401320322084331.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2256 terms. -/
def A314209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314211.P14972301941053130044

`A312895(n)+A047263(n+1)`
-/

namespace A314211.P14972301941053130044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n + A047263 (n + 1)

end

end A314211.P14972301941053130044

noncomputable section

/-- A314211: Coordination sequence Gal.6.650.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314211.P14972301941053130044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A314211 (n : ℕ) : ℤ :=
  A314211.P14972301941053130044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A314211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314226.P4583907249877895589

`A313982(n)+A134667(A006370(n))`
-/

namespace A314226.P4583907249877895589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313982 n + A134667 (A006370 n).toNat

end

end A314226.P4583907249877895589

noncomputable section

/-- A314226: Coordination sequence Gal.6.653.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314226.P4583907249877895589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A314226 (n : ℕ) : ℤ :=
  A314226.P4583907249877895589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A314226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314249.P1242883519195604286

`A042965(A311914(n)+1)`
-/

namespace A314249.P1242883519195604286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A311914 n + 1).toNat

end

end A314249.P1242883519195604286

noncomputable section

/-- A314249: Coordination sequence Gal.4.136.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314249.P1242883519195604286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A314249 (n : ℕ) : ℤ :=
  A314249.P1242883519195604286.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A314249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314283.P2718913626275539959

`A314067(n)+A004396(n-A004396(n))`
-/

namespace A314283.P2718913626275539959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314067 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A314283.P2718913626275539959

noncomputable section

/-- A314283: Coordination sequence Gal.5.318.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314283.P2718913626275539959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314283 (n : ℕ) : ℤ :=
  A314283.P2718913626275539959.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314712.P889691669738090391

`A008458(n)+A008576(n)-A311801(n)`
-/

namespace A314712.P889691669738090391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A311801 n)

end

end A314712.P889691669738090391

noncomputable section

/-- A314712: Coordination sequence Gal.6.150.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314712.P889691669738090391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A314712 (n : ℕ) : ℤ :=
  A314712.P889691669738090391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A314712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314827.P16340680457102647112

`abs(A008591(n)-A312948(n))`
-/

namespace A314827.P16340680457102647112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A312948 n|

end

end A314827.P16340680457102647112

noncomputable section

/-- A314827: Coordination sequence Gal.5.53.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314827.P16340680457102647112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2547 terms. -/
def A314827 (n : ℕ) : ℤ :=
  A314827.P16340680457102647112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2547 terms. -/
def A314827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314828.P12558538320936083635

`A312932(2*n)+A312932(n+1)-A312932(2*n+1)`
-/

namespace A314828.P12558538320936083635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312932 (2 * n) + (A312932 (n + 1) - A312932 (2 * n + 1))

end

end A314828.P12558538320936083635

noncomputable section

/-- A314828: Coordination sequence Gal.5.64.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314828.P12558538320936083635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A314828 (n : ℕ) : ℤ :=
  A314828.P12558538320936083635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A314828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314874.P7600466854928953407

`A310372(n)+A102283(n)`
-/

namespace A314874.P7600466854928953407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n + A102283 n

end

end A314874.P7600466854928953407

noncomputable section

/-- A314874: Coordination sequence Gal.3.33.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314874.P7600466854928953407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. -/
def A314874 (n : ℕ) : ℤ :=
  A314874.P7600466854928953407.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. -/
def A314874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314893.P688468552923915457

`abs(A008592(n)-(A312896(n)+n))`
-/

namespace A314893.P688468552923915457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A312896 n + (n : ℤ))|

end

end A314893.P688468552923915457

noncomputable section

/-- A314893: Coordination sequence Gal.6.259.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314893.P688468552923915457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A314893 (n : ℕ) : ℤ :=
  A314893.P688468552923915457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A314893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314894.P7570080516091398476

`abs(A008592(n)-A314117(n))`
-/

namespace A314894.P7570080516091398476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314117 n|

end

end A314894.P7570080516091398476

noncomputable section

/-- A314894: Coordination sequence Gal.6.194.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314894.P7570080516091398476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A314894 (n : ℕ) : ℤ :=
  A314894.P7570080516091398476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A314894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314896.P16109661729483114242

`A311843(n)+A004525(n)`
-/

namespace A314896.P16109661729483114242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n + A004525 n

end

end A314896.P16109661729483114242

noncomputable section

/-- A314896: Coordination sequence Gal.4.53.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314896.P16109661729483114242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314896 (n : ℕ) : ℤ :=
  A314896.P16109661729483114242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314898.P6365992513144619354

`abs(A008591(n)-A312892(n))`
-/

namespace A314898.P6365992513144619354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A312892 n|

end

end A314898.P6365992513144619354

noncomputable section

/-- A314898: Coordination sequence Gal.5.136.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314898.P6365992513144619354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2434 terms. -/
def A314898 (n : ℕ) : ℤ :=
  A314898.P6365992513144619354.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2434 terms. -/
def A314898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314903.P4262956308037847245

`A008706(n)-A128834(n-A004525(n))`
-/

namespace A314903.P4262956308037847245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A128834 ((n : ℤ) - A004525 n).toNat

end

end A314903.P4262956308037847245

noncomputable section

/-- A314903: Coordination sequence Gal.6.339.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314903.P4262956308037847245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A314903 (n : ℕ) : ℤ :=
  A314903.P4262956308037847245.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A314903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314934.P10745395469202390610

`A004396(n)+A313907(n)-A047263(n+1)`
-/

namespace A314934.P10745395469202390610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313907 n - A047263 (n + 1))

end

end A314934.P10745395469202390610

noncomputable section

/-- A314934: Coordination sequence Gal.6.485.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314934.P10745395469202390610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2297 terms. -/
def A314934 (n : ℕ) : ℤ :=
  A314934.P10745395469202390610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2297 terms. -/
def A314934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314943.P18056239451754514052

`A047263(n+1)+A314754(n)-n`
-/

namespace A314943.P18056239451754514052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A314754 n - (n : ℤ))

end

end A314943.P18056239451754514052

noncomputable section

/-- A314943: Coordination sequence Gal.6.321.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314943.P18056239451754514052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A314943 (n : ℕ) : ℤ :=
  A314943.P18056239451754514052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A314943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314953.P5789728208216381140

`A312065(n)+A004525(n)`
-/

namespace A314953.P5789728208216381140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A004525 n

end

end A314953.P5789728208216381140

noncomputable section

/-- A314953: Coordination sequence Gal.6.202.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314953.P5789728208216381140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. -/
def A314953 (n : ℕ) : ℤ :=
  A314953.P5789728208216381140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. -/
def A314953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314954.P14094571028492028664

`A313613(n)-A238470(n)`
-/

namespace A314954.P14094571028492028664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n - A238470 n

end

end A314954.P14094571028492028664

noncomputable section

/-- A314954: Coordination sequence Gal.4.77.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314954.P14094571028492028664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A314954 (n : ℕ) : ℤ :=
  A314954.P14094571028492028664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A314954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314964.P2234795532318655867

`A312113(n)+A004525(n)`
-/

namespace A314964.P2234795532318655867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312113 n + A004525 n

end

end A314964.P2234795532318655867

noncomputable section

/-- A314964: Coordination sequence Gal.6.200.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314964.P2234795532318655867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A314964 (n : ℕ) : ℤ :=
  A314964.P2234795532318655867.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A314964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315018.P17473826540934644098

`A042965(A314830(n)+1-n)`
-/

namespace A315018.P17473826540934644098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A314830 n + (1 - (n : ℤ))).toNat

end

end A315018.P17473826540934644098

noncomputable section

/-- A315018: Coordination sequence Gal.6.193.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315018.P17473826540934644098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A315018 (n : ℕ) : ℤ :=
  A315018.P17473826540934644098.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A315018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315036.P2155873158218205657

`A008706(n)-A062157(A060145(n))`
-/

namespace A315036.P2155873158218205657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A062157 (A060145 n).toNat

end

end A315036.P2155873158218205657

noncomputable section

/-- A315036: Coordination sequence Gal.4.122.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315036.P2155873158218205657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A315036 (n : ℕ) : ℤ :=
  A315036.P2155873158218205657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A315036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315075.P1562562431964152742

`A312065(n)+A004396(n)`
-/

namespace A315075.P1562562431964152742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A004396 n

end

end A315075.P1562562431964152742

noncomputable section

/-- A315075: Coordination sequence Gal.6.350.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315075.P1562562431964152742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A315075 (n : ℕ) : ℤ :=
  A315075.P1562562431964152742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A315075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315173.P10729502057905342118

`2*A314672(n)-A008574(n)`
-/

namespace A315173.P10729502057905342118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314672 n - A008574 n

end

end A315173.P10729502057905342118

noncomputable section

/-- A315173: Coordination sequence Gal.5.99.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315173.P10729502057905342118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A315173 (n : ℕ) : ℤ :=
  A315173.P10729502057905342118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A315173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315178.P17735622215823449936

`A301298(n)+A128834(n)`
-/

namespace A315178.P17735622215823449936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A128834 n

end

end A315178.P17735622215823449936

noncomputable section

/-- A315178: Coordination sequence Gal.4.62.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315178.P17735622215823449936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A315178 (n : ℕ) : ℤ :=
  A315178.P17735622215823449936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A315178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315182.P6624325949262258584

`A314677(n)+A004396(A004525(n))`
-/

namespace A315182.P6624325949262258584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + A004396 (A004525 n).toNat

end

end A315182.P6624325949262258584

noncomputable section

/-- A315182: Coordination sequence Gal.6.155.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315182.P6624325949262258584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. -/
def A315182 (n : ℕ) : ℤ :=
  A315182.P6624325949262258584.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. -/
def A315182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315196.P15202907310307573734

`A314677(n)+A004525(n)`
-/

namespace A315196.P15202907310307573734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + A004525 n

end

end A315196.P15202907310307573734

noncomputable section

/-- A315196: Coordination sequence Gal.6.202.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315196.P15202907310307573734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315196 (n : ℕ) : ℤ :=
  A315196.P15202907310307573734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315204.P2648986548241018869

`A313613(n)+A238469(n)`
-/

namespace A315204.P2648986548241018869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n + A238469 n

end

end A315204.P2648986548241018869

noncomputable section

/-- A315204: Coordination sequence Gal.4.77.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315204.P2648986548241018869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2398 terms. -/
def A315204 (n : ℕ) : ℤ :=
  A315204.P2648986548241018869.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2398 terms. -/
def A315204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315207.P1795837304625364716

`2*A314710(n)-A008574(n)`
-/

namespace A315207.P1795837304625364716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314710 n - A008574 n

end

end A315207.P1795837304625364716

noncomputable section

/-- A315207: Coordination sequence Gal.5.140.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315207.P1795837304625364716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2403 terms. -/
def A315207 (n : ℕ) : ℤ :=
  A315207.P1795837304625364716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2403 terms. -/
def A315207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315237.P212944009581056157

`2*A314776(n)-A008574(n)`
-/

namespace A315237.P212944009581056157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314776 n - A008574 n

end

end A315237.P212944009581056157

noncomputable section

/-- A315237: Coordination sequence Gal.4.128.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315237.P212944009581056157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A315237 (n : ℕ) : ℤ :=
  A315237.P212944009581056157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A315237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315244.P6173037825378904960

`A314830(n)+A004396(A004525(n))`
-/

namespace A315244.P6173037825378904960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314830 n + A004396 (A004525 n).toNat

end

end A315244.P6173037825378904960

noncomputable section

/-- A315244: Coordination sequence Gal.6.156.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315244.P6173037825378904960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315244 (n : ℕ) : ℤ :=
  A315244.P6173037825378904960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315257.P3729255678130448727

`A314677(n)+A004396(n)`
-/

namespace A315257.P3729255678130448727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + A004396 n

end

end A315257.P3729255678130448727

noncomputable section

/-- A315257: Coordination sequence Gal.4.100.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315257.P3729255678130448727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315257 (n : ℕ) : ℤ :=
  A315257.P3729255678130448727.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315311.P11313346348871612592

`round(8*n/5)+A004277(n)+round(8*n/5)`
-/

namespace A315311.P11313346348871612592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5)) + (A004277 n + SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5)))

end

end A315311.P11313346348871612592

noncomputable section

/-- A315311: Coordination sequence Gal.3.51.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315311.P11313346348871612592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A315311 (n : ℕ) : ℤ :=
  A315311.P11313346348871612592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A315311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315318.P4531554765859227187

`A314836(n)+A004396(n)`
-/

namespace A315318.P4531554765859227187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n + A004396 n

end

end A315318.P4531554765859227187

noncomputable section

/-- A315318: Coordination sequence Gal.6.622.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315318.P4531554765859227187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315318 (n : ℕ) : ℤ :=
  A315318.P4531554765859227187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315320.P13791615069991515672

`A315020(n)+A004525(n)`
-/

namespace A315320.P13791615069991515672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315020 n + A004525 n

end

end A315320.P13791615069991515672

noncomputable section

/-- A315320: Coordination sequence Gal.4.135.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315320.P13791615069991515672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A315320 (n : ℕ) : ℤ :=
  A315320.P13791615069991515672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A315320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315322.P14653823716537274216

`A314847(n)+A004396(n)`
-/

namespace A315322.P14653823716537274216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n + A004396 n

end

end A315322.P14653823716537274216

noncomputable section

/-- A315322: Coordination sequence Gal.6.636.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315322.P14653823716537274216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A315322 (n : ℕ) : ℤ :=
  A315322.P14653823716537274216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A315322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315327.P6557635488143845579

`2*A314886(n)-A008574(n)`
-/

namespace A315327.P6557635488143845579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314886 n - A008574 n

end

end A315327.P6557635488143845579

noncomputable section

/-- A315327: Coordination sequence Gal.6.329.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315327.P6557635488143845579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A315327 (n : ℕ) : ℤ :=
  A315327.P6557635488143845579.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A315327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315337.P5965707628135299057

`A312475(n)+2*A004525(n)`
-/

namespace A315337.P5965707628135299057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + 2 * A004525 n

end

end A315337.P5965707628135299057

noncomputable section

/-- A315337: Coordination sequence Gal.4.145.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315337.P5965707628135299057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2286 terms. -/
def A315337 (n : ℕ) : ℤ :=
  A315337.P5965707628135299057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2286 terms. -/
def A315337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315342.P13198042497454481843

`A315061(n)+A004525(n)`
-/

namespace A315342.P13198042497454481843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A004525 n

end

end A315342.P13198042497454481843

noncomputable section

/-- A315342: Coordination sequence Gal.5.303.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315342.P13198042497454481843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A315342 (n : ℕ) : ℤ :=
  A315342.P13198042497454481843.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A315342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315373.P10372235657626568569

`A313660(n)+A244895(n)`
-/

namespace A315373.P10372235657626568569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313660 n + A244895 n

end

end A315373.P10372235657626568569

noncomputable section

/-- A315373: Coordination sequence Gal.4.123.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315373.P10372235657626568569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1743 terms. -/
def A315373 (n : ℕ) : ℤ :=
  A315373.P10372235657626568569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1743 terms. -/
def A315373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315423.P11276488432511767782

`A314040(n)+A238469(n)`
-/

namespace A315423.P11276488432511767782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314040 n + A238469 n

end

end A315423.P11276488432511767782

noncomputable section

/-- A315423: Coordination sequence Gal.5.208.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315423.P11276488432511767782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2334 terms. -/
def A315423 (n : ℕ) : ℤ :=
  A315423.P11276488432511767782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2334 terms. -/
def A315423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315452.P9156352442981607618

`A314096(n)+A238469(n)`
-/

namespace A315452.P9156352442981607618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314096 n + A238469 n

end

end A315452.P9156352442981607618

noncomputable section

/-- A315452: Coordination sequence Gal.4.55.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315452.P9156352442981607618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A315452 (n : ℕ) : ℤ :=
  A315452.P9156352442981607618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A315452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315462.P4447470605433644516

`A128834(A004525(n))+A008706(n)`
-/

namespace A315462.P4447470605433644516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A004525 n).toNat + A008706 n

end

end A315462.P4447470605433644516

noncomputable section

/-- A315462: Coordination sequence Gal.6.339.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315462.P4447470605433644516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315462 (n : ℕ) : ℤ :=
  A315462.P4447470605433644516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315469.P9148809959578598591

`A314672(n)+n`
-/

namespace A315469.P9148809959578598591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n + (n : ℤ)

end

end A315469.P9148809959578598591

noncomputable section

/-- A315469: Coordination sequence Gal.4.134.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315469.P9148809959578598591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2297 terms. -/
def A315469 (n : ℕ) : ℤ :=
  A315469.P9148809959578598591.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2297 terms. -/
def A315469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315471.P13880185677744590695

`A314677(n)+n`
-/

namespace A315471.P13880185677744590695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + (n : ℤ)

end

end A315471.P13880185677744590695

noncomputable section

/-- A315471: Coordination sequence Gal.3.52.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315471.P13880185677744590695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A315471 (n : ℕ) : ℤ :=
  A315471.P13880185677744590695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A315471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315486.P5118934210846291512

`2*A313730(n)-A313045(n)`
-/

namespace A315486.P5118934210846291512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313730 n - A313045 n

end

end A315486.P5118934210846291512

noncomputable section

/-- A315486: Coordination sequence Gal.6.330.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315486.P5118934210846291512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2286 terms. -/
def A315486 (n : ℕ) : ℤ :=
  A315486.P5118934210846291512.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2286 terms. -/
def A315486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315491.P16550082452281729061

`abs(A008592(n)-A313045(n))`
-/

namespace A315491.P16550082452281729061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313045 n|

end

end A315491.P16550082452281729061

noncomputable section

/-- A315491: Coordination sequence Gal.6.625.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315491.P16550082452281729061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A315491 (n : ℕ) : ℤ :=
  A315491.P16550082452281729061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A315491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315505.P9032332142105930141

`A314776(n)+n`
-/

namespace A315505.P9032332142105930141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314776 n + (n : ℤ)

end

end A315505.P9032332142105930141

noncomputable section

/-- A315505: Coordination sequence Gal.3.59.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315505.P9032332142105930141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2253 terms. -/
def A315505 (n : ℕ) : ℤ :=
  A315505.P9032332142105930141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2253 terms. -/
def A315505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315515.P6282386179263163100

`A315253(n)+∑[A021913(n)]`
-/

namespace A315515.P6282386179263163100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315253 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315515.P6282386179263163100

noncomputable section

/-- A315515: Coordination sequence Gal.6.200.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315515.P6282386179263163100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A315515 (n : ℕ) : ℤ :=
  A315515.P6282386179263163100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A315515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315523.P7408499700622556491

`A313703(n)+A004396(n)`
-/

namespace A315523.P7408499700622556491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313703 n + A004396 n

end

end A315523.P7408499700622556491

noncomputable section

/-- A315523: Coordination sequence Gal.5.301.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315523.P7408499700622556491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A315523 (n : ℕ) : ℤ :=
  A315523.P7408499700622556491.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A315523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315536.P12818774156009593680

`A314886(n)+n`
-/

namespace A315536.P12818774156009593680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314886 n + (n : ℤ)

end

end A315536.P12818774156009593680

noncomputable section

/-- A315536: Coordination sequence Gal.5.306.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315536.P12818774156009593680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315536 (n : ℕ) : ℤ :=
  A315536.P12818774156009593680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315614.P3627224471220719691

`2*A314067(n)-A310502(n)`
-/

namespace A315614.P3627224471220719691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314067 n - A310502 n

end

end A315614.P3627224471220719691

noncomputable section

/-- A315614: Coordination sequence Gal.5.318.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315614.P3627224471220719691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A315614 (n : ℕ) : ℤ :=
  A315614.P3627224471220719691.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A315614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315639.P12274877796974282132

`A219529(n)+A128834(n)`
-/

namespace A315639.P12274877796974282132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A128834 n

end

end A315639.P12274877796974282132

noncomputable section

/-- A315639: Coordination sequence Gal.4.74.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315639.P12274877796974282132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315639 (n : ℕ) : ℤ :=
  A315639.P12274877796974282132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315687.P9579488049278104774

`A312890(n)+A047424(n+1)`
-/

namespace A315687.P9579488049278104774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 n + A047424 (n + 1)

end

end A315687.P9579488049278104774

noncomputable section

/-- A315687: Coordination sequence Gal.6.210.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315687.P9579488049278104774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2595 terms. -/
def A315687 (n : ℕ) : ℤ :=
  A315687.P9579488049278104774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2595 terms. -/
def A315687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315698.P7256137343753335272

`A047513(A312892(n)+1)`
-/

namespace A315698.P7256137343753335272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (A312892 n + 1).toNat

end

end A315698.P7256137343753335272

noncomputable section

/-- A315698: Coordination sequence Gal.5.302.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315698.P7256137343753335272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A315698 (n : ℕ) : ℤ :=
  A315698.P7256137343753335272.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A315698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315706.P7813840819616838291

`A314034(n)+A004396(n)`
-/

namespace A315706.P7813840819616838291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314034 n + A004396 n

end

end A315706.P7813840819616838291

noncomputable section

/-- A315706: Coordination sequence Gal.5.294.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315706.P7813840819616838291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. -/
def A315706 (n : ℕ) : ℤ :=
  A315706.P7813840819616838291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. -/
def A315706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315711.P13942884718722138506

`A014682(A315656(n)+A008458(n))`
-/

namespace A315711.P13942884718722138506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315656 n + A008458 n).toNat

end

end A315711.P13942884718722138506

noncomputable section

/-- A315711: Coordination sequence Gal.6.665.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315711.P13942884718722138506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A315711 (n : ℕ) : ℤ :=
  A315711.P13942884718722138506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A315711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315767.P12035328824597699860

`2*A313730(n)-A008574(n)`
-/

namespace A315767.P12035328824597699860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313730 n - A008574 n

end

end A315767.P12035328824597699860

noncomputable section

/-- A315767: Coordination sequence Gal.6.627.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315767.P12035328824597699860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315767 (n : ℕ) : ℤ :=
  A315767.P12035328824597699860.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315818.P9651563668626176741

`A008486(A008574(A008576(n))%A314754(n))`
-/

namespace A315818.P9651563668626176741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A008574 (A008576 n).toNat) (A314754 n)).toNat

end

end A315818.P9651563668626176741

noncomputable section

/-- A315818: Coordination sequence Gal.5.230.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315818.P9651563668626176741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A315818 (n : ℕ) : ℤ :=
  A315818.P9651563668626176741.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A315818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315847.P3242230208927172562

`A301682(n)+A087509(n)`
-/

namespace A315847.P3242230208927172562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301682 n + A087509 n

end

end A315847.P3242230208927172562

noncomputable section

/-- A315847: Coordination sequence Gal.5.232.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315847.P3242230208927172562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A315847 (n : ℕ) : ℤ :=
  A315847.P3242230208927172562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A315847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315972.P13546847080952124926

`A314941(n)-A056594(n+1)`
-/

namespace A315972.P13546847080952124926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314941 n - A056594 (n + 1)

end

end A315972.P13546847080952124926

noncomputable section

/-- A315972: Coordination sequence Gal.3.41.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315972.P13546847080952124926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A315972 (n : ℕ) : ℤ :=
  A315972.P13546847080952124926.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A315972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316358.P13611071404692944280

`∑[A316317(n)]`
-/

namespace A316358.P13611071404692944280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316358.P13611071404692944280

noncomputable section

/-- A316358: Partial sums of A316317.

Offset 0, canonical program `A316358.P13611071404692944280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316358 (n : ℕ) : ℤ :=
  A316358.P13611071404692944280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317044.P1825513557439712356

`comp[A023196(n+1)-(n+2)]+1`
-/

namespace A317044.P1825513557439712356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A317044.P1825513557439712356

noncomputable section

/-- A317044: Numbers k such that A(k+1) = A(k) + 1, where A() = A005100() are the deficient numbers.

Offset 1, canonical program `A317044.P1825513557439712356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317044 (n : ℕ) : ℤ :=
  (A317044.P1825513557439712356.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317187.P12719454024546088027

`∪[A054551(n), A054566(n)]`
-/

namespace A317187.P12719454024546088027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054566 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317187.P12719454024546088027

noncomputable section

/-- A317187: Arrange primes along the square spiral; sequence lists primes on the X-axis.

Offset 1, canonical program `A317187.P12719454024546088027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2910 terms. -/
def A317187 (n : ℕ) : ℤ :=
  (A317187.P12719454024546088027.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2910 terms. -/
def A317187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317203.P3755290457602580711

`dr(gcd(12, A267860(n)))`
-/

namespace A317203.P3755290457602580711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.gcd 12 (A267860 n) : ℤ)

end

end A317203.P3755290457602580711

noncomputable section

/-- A317203: Fixed under the morphism 1 -> 132, 2 -> 1, 3 -> 3, starting with 31.

Offset 1, canonical program `A317203.P3755290457602580711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317203 (n : ℕ) : ℤ :=
  (A317203.P3755290457602580711.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317336.P2580992099563760864

`3*A089013(n)-10`
-/

namespace A317336.P2580992099563760864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A089013 n - 10

end

end A317336.P2580992099563760864

noncomputable section

/-- A317336: a(n) = A317333(n) - 8*n.

Offset 1, canonical program `A317336.P2580992099563760864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317336 (n : ℕ) : ℤ :=
  A317336.P2580992099563760864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317538.P3582582854706966060

`3*n+1-A073089(n+1)`
-/

namespace A317538.P3582582854706966060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A073089 (n + 1)

end

end A317538.P3582582854706966060

noncomputable section

/-- A317538: Indices m for which A317413(m) = 1.

Offset 1, canonical program `A317538.P3582582854706966060`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317538 (n : ℕ) : ℤ :=
  A317538.P3582582854706966060.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317592.P2217105077377467604

`A037213(n²)+99`
-/

namespace A317592.P2217105077377467604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n ^ 2) + 99

end

end A317592.P2217105077377467604

noncomputable section

/-- A317592: Lexicographically first sequence of different terms such that erasing the last two digits of a(n+1) and adding this new reshaped integer to a(n) gives back a(n+1).

Offset 1, canonical program `A317592.P2217105077377467604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A317592 (n : ℕ) : ℤ :=
  A317592.P2217105077377467604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A317592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317951.P14551294525236319355

`abs(A001057(and(7, A198954(n)-1)))`
-/

namespace A317951.P14551294525236319355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (Int.land 7 (A198954 n - 1)).toNat|

end

end A317951.P14551294525236319355

noncomputable section

/-- A317951: An S-automatic sequence for the system S = (a*b*, {a,b}, a

Offset 0, canonical program `A317951.P14551294525236319355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317951 (n : ℕ) : ℤ :=
  A317951.P14551294525236319355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317952.P18212444331799081196

`A062756(n)%4+1`
-/

namespace A317952.P18212444331799081196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062756 n) 4 + 1

end

end A317952.P18212444331799081196

noncomputable section

/-- A317952: Trajectory of 1 under repeated application of the morphism 1->121, 2->232, 3->343, 4->414.

Offset 0, canonical program `A317952.P18212444331799081196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317952 (n : ℕ) : ℤ :=
  A317952.P18212444331799081196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318059.P16582430127559491716

`lcm(n+1, A051027(n+1))/(n+1)`
-/

namespace A318059.P16582430127559491716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A051027 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A318059.P16582430127559491716

noncomputable section

/-- A318059: a(n) is the numerator of sigma(sigma(n))/n.

Offset 1, canonical program `A318059.P16582430127559491716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318059 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318059.P16582430127559491716.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318366.P15355875202424512208

`∑{d}[n+1, A069264(#)*A069513((n+1)/#)]`
-/

namespace A318366.P15355875202424512208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069264 d * A069513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318366.P15355875202424512208

noncomputable section

/-- A318366: a(n) = Sum_{d|n} bigomega(d)*bigomega(n/d).

Offset 1, canonical program `A318366.P15355875202424512208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318366 (n : ℕ) : ℤ :=
  A318366.P15355875202424512208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318367.P16805591933240273274

`∑{d}[n+1, A033286(#)*A033999((n+1)/#-1)]`
-/

namespace A318367.P16805591933240273274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033286 d * A033999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A318367.P16805591933240273274

noncomputable section

/-- A318367: a(n) = Sum_{d|n} (-1)^(n/d+1)*d*prime(d).

Offset 1, canonical program `A318367.P16805591933240273274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318367 (n : ℕ) : ℤ :=
  A318367.P16805591933240273274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318462.P2728153486648592589

`A318460(n+1)+A037213(n+1)`
-/

namespace A318462.P2728153486648592589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318460 (n + 1) + A037213 (n + 1)

end

end A318462.P2728153486648592589

noncomputable section

/-- A318462: a(n) = Sum_{d|n, d < n/d} (d XOR n/d) + {square root of n when n is a square}.

Offset 1, canonical program `A318462.P2728153486648592589`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037213, A318460, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318462 (n : ℕ) : ℤ :=
  A318462.P2728153486648592589.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037213, A318460, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318671.P7199009446582723832

`A010751(A105968(C(val(n+1, 2), 5)))`
-/

namespace A318671.P7199009446582723832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (A105968 (Nat.choose (SequenceMachineLib.valuation (n + 1) 2) 5)).toNat

end

end A318671.P7199009446582723832

noncomputable section

/-- A318671: Numerators of the sequence whose Dirichlet convolution with itself yields A049599, number of (1+e)-divisors of n.

Offset 1, canonical program `A318671.P7199009446582723832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A318671 (n : ℕ) : ℤ :=
  A318671.P7199009446582723832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A318671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318996.P2280365862416764505

`∑{d}[n+1, A001065(n+1)%#]`
-/

namespace A318996.P2280365862416764505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A001065 (n + 1)) (d : ℤ)

end

end A318996.P2280365862416764505

noncomputable section

/-- A318996: a(n) = Sum_{d|n} (sigma(n) mod d).

Offset 1, canonical program `A318996.P2280365862416764505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318996 (n : ℕ) : ℤ :=
  A318996.P2280365862416764505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319028.P8839523077166718591

`abs(A024483(n+2)-A000302(n))`
-/

namespace A319028.P8839523077166718591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024483 (n + 2) - A000302 n|

end

end A319028.P8839523077166718591

noncomputable section

/-- A319028: Number of permutations pi of [n] such that s(pi) avoids the patterns 132 and 321, where s is West's stack-sorting map.

Offset 1, canonical program `A319028.P8839523077166718591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A319028 (n : ℕ) : ℤ :=
  A319028.P8839523077166718591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A319028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319088.P2047469914631572688

`∑[(n+1)*A034718(n+1)]`
-/

namespace A319088.P2047469914631572688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319088.P2047469914631572688

noncomputable section

/-- A319088: a(n) = Sum_{k=1..n} k^2*tau_3(k), where tau_3 is A007425.

Offset 1, canonical program `A319088.P2047469914631572688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319088 (n : ℕ) : ℤ :=
  A319088.P2047469914631572688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319316.P6395468559113761177

`lt[A180017(n), 0]`
-/

namespace A319316.P6395468559113761177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A319316.P6395468559113761177

noncomputable section

/-- A319316: Numbers k such that A090616(k) < A054861(k).

Offset 1, canonical program `A319316.P6395468559113761177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2227 terms. -/
def A319316 (n : ℕ) : ℤ :=
  (A319316.P6395468559113761177.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2227 terms. -/
def A319316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319317.P4293511078946830541

`lt[1, A180017(n)]`
-/

namespace A319317.P4293511078946830541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A319317.P4293511078946830541

noncomputable section

/-- A319317: Numbers k such that A090616(k) > A054861(k).

Offset 1, canonical program `A319317.P4293511078946830541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A319317 (n : ℕ) : ℤ :=
  (A319317.P4293511078946830541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A319317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319423.P11981827917797193009

`∑[A011782(A082375(n))]`
-/

namespace A319423.P11981827917797193009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A082375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319423.P11981827917797193009

noncomputable section

/-- A319423: Indices of records in A175046.

Offset 1, canonical program `A319423.P11981827917797193009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319423 (n : ℕ) : ℤ :=
  A319423.P11981827917797193009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319449.P14170580802697613063

`∑{d}[n+1, A065764(#)*A162397((n+1)/#)]`
-/

namespace A319449.P14170580802697613063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065764 d * A162397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319449.P14170580802697613063

noncomputable section

/-- A319449: Sum of the norm of divisors of n over Eisenstein integers, with associated divisors counted only once.

Offset 1, canonical program `A319449.P14170580802697613063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319449 (n : ℕ) : ℤ :=
  A319449.P14170580802697613063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319497.P5407658520446915927

`A005823(A023717(n)+1)/2`
-/

namespace A319497.P5407658520446915927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (A023717 n + 1).toNat : ℚ) / 2

end

end A319497.P5407658520446915927

noncomputable section

/-- A319497: a(0)=0, a(3*n)=9*a(n), a(3*n+1)=9*a(n)+1, a(3*n+2)=9*a(n)+3.

Offset 0, canonical program `A319497.P5407658520446915927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A319497 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319497.P5407658520446915927.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A319497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319885.P12897512140959124864

`A319373(n+1)+A056594(n)`
-/

namespace A319885.P12897512140959124864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319373 (n + 1) + A056594 n

end

end A319885.P12897512140959124864

noncomputable section

/-- A319885: a(n) = 2*1 - 4*3 + 6*5 - 8*7 + 10*9 - 12*11 + 14*13 - 16*15 + ... - (up to the n-th term).

Offset 1, canonical program `A319885.P12897512140959124864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319885 (n : ℕ) : ℤ :=
  A319885.P12897512140959124864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320094.P14857963571908275776

`∑[A320075(n+1)]`
-/

namespace A320094.P14857963571908275776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320094.P14857963571908275776

noncomputable section

/-- A320094: Number of primitive (=aperiodic) 10-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320094.P14857963571908275776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A320094 (n : ℕ) : ℤ :=
  A320094.P14857963571908275776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A320094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320593.P5739706294827655604

`∑[A029032(n)]-A026811(n)`
-/

namespace A320593.P5739706294827655604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026811 n

end

end A320593.P5739706294827655604

noncomputable section

/-- A320593: Number of partitions of n with five parts in which no part occurs more than twice.

Offset 9, canonical program `A320593.P5739706294827655604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320593 (n : ℕ) : ℤ :=
  A320593.P5739706294827655604.a (n - 9)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320642.P10974864268536120065

`A000120(A005352(n+1))`
-/

namespace A320642.P10974864268536120065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005352 (n + 1)).toNat

end

end A320642.P10974864268536120065

noncomputable section

/-- A320642: Number of 1's in the base-(-2) expansion of -n.

Offset 1, canonical program `A320642.P10974864268536120065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005352, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320642 (n : ℕ) : ℤ :=
  A320642.P10974864268536120065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005352, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320927.P4673491442562324260

`char[A189724(n+1)-2]`
-/

namespace A320927.P4673491442562324260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A320927.P4673491442562324260

noncomputable section

/-- A320927: Concatenation of successive segments generated by the morphism {0 -> {0, 0, 1}, 1 -> {0,1,0}}, starting with 0.

Offset 1, canonical program `A320927.P4673491442562324260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320927 (n : ℕ) : ℤ :=
  (A320927.P4673491442562324260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320928.P14647254000613725565

`floor((A284914(n+1)+n)/2)`
-/

namespace A320928.P14647254000613725565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A284914 (n + 1) + (n : ℤ) : ℚ) / 2⌋

end

end A320928.P14647254000613725565

noncomputable section

/-- A320928: Positions of 0 in A320927.

Offset 1, canonical program `A320928.P14647254000613725565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320928 (n : ℕ) : ℤ :=
  A320928.P14647254000613725565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320929.P17062656815919905450

`A189724(n+2)-1`
-/

namespace A320929.P17062656815919905450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 2) - 1

end

end A320929.P17062656815919905450

noncomputable section

/-- A320929: Positions of 1 in A320927.

Offset 1, canonical program `A320929.P17062656815919905450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A320929 (n : ℕ) : ℤ :=
  A320929.P17062656815919905450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A320929.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A321021.P782050274808834846

`A320486(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A321021.P782050274808834846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A320486 (a (n - 1) + a (n - 2)).toNat

end

end A321021.P782050274808834846

noncomputable section

/-- A321021: a(0)=0, a(1)=1; thereafter a(n) = a(n-2)+a(n-1), keeping just the digits that appear exactly once.

Offset 0, canonical program `A321021.P782050274808834846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A321021 (n : ℕ) : ℤ :=
  A321021.P782050274808834846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A321021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321301.P11310815353529762310

`Δ[∪[A036439(n+1)-2, ∑[n]]]`
-/

namespace A321301.P11310815353529762310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) - 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A321301.P11310815353529762310

noncomputable section

/-- A321301: Lexicographically last sequence of positive integers whose terms can be grouped and summed to produce the natural numbers as well as the prime numbers.

Offset 1, canonical program `A321301.P11310815353529762310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321301 (n : ℕ) : ℤ :=
  A321301.P11310815353529762310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321371.P7279978321700670498

`A194152(n+1)+A001962(n+1)`
-/

namespace A321371.P7279978321700670498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194152 (n + 1) + A001962 (n + 1)

end

end A321371.P7279978321700670498

noncomputable section

/-- A321371: n + [n*r/s] + [n*t/s], where r = 1, s = cos(2*Pi/5), t = sec(2*Pi/5).

Offset 1, canonical program `A321371.P7279978321700670498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321371 (n : ℕ) : ℤ :=
  A321371.P7279978321700670498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321838.P8929523525795990966

`A014495(n+2)+A001405(n)`
-/

namespace A321838.P8929523525795990966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 2) + A001405 n

end

end A321838.P8929523525795990966

noncomputable section

/-- A321838: Number of words w of length n such that each letter of the binary alphabet is used at least once and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

Offset 2, canonical program `A321838.P8929523525795990966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A321838 (n : ℕ) : ℤ :=
  A321838.P8929523525795990966.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A321838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321864.P11419446151730040624

`A321859(A000040(n+1))`
-/

namespace A321864.P11419446151730040624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321859 (A000040 (n + 1)).toNat

end

end A321864.P11419446151730040624

noncomputable section

/-- A321864: a(n) = A321859(prime(n)).

Offset 1, canonical program `A321864.P11419446151730040624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A321864 (n : ℕ) : ℤ :=
  A321864.P11419446151730040624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A321864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321879.P6831331824271311141

`∑[∑{d}[n, A321322(#)]]`
-/

namespace A321879.P6831331824271311141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A321322 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321879.P6831331824271311141

noncomputable section

/-- A321879: Partial sums of the Jordan function J_2(k), for 1 <= k <= n.

Offset 0, canonical program `A321879.P6831331824271311141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321879 (n : ℕ) : ℤ :=
  A321879.P6831331824271311141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321898.P7574936046010051094

`∏{d}[n+1, A297109(#)!]`
-/

namespace A321898.P7574936046010051094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Nat.factorial (A297109 d).toNat

end

end A321898.P7574936046010051094

noncomputable section

/-- A321898: Sum of coefficients of power sums symmetric functions in h(y) * Product_i y_i! where h is homogeneous symmetric functions and y is the integer partition with Heinz number n.

Offset 1, canonical program `A321898.P7574936046010051094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A321898 (n : ℕ) : ℤ :=
  (A321898.P7574936046010051094.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A321898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321959.P7933905322397432424

`A339252(n)-A135035(n)`
-/

namespace A321959.P7933905322397432424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 n - A135035 n

end

end A321959.P7933905322397432424

noncomputable section

/-- A321959: a(n) = [x^n] ((1 - x)*x)/((1 - 2*x)^2*(2*x^2 - 2*x + 1)).

Offset 0, canonical program `A321959.P7933905322397432424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A321959 (n : ℕ) : ℤ :=
  A321959.P7933905322397432424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A321959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321972.P12146900222167262804

`lt[2, A048198(n)]`
-/

namespace A321972.P12146900222167262804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048198 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A321972.P12146900222167262804

noncomputable section

/-- A321972: Numbers k for which A048198(k)=3.

Offset 1, canonical program `A321972.P12146900222167262804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A321972 (n : ℕ) : ℤ :=
  (A321972.P12146900222167262804.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A321972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322017.P11556095073912313263

`A322016(n)+A322015(n-A322016(n))`
-/

namespace A322017.P11556095073912313263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 n + A322015 ((n : ℤ) - A322016 n).toNat

end

end A322017.P11556095073912313263

noncomputable section

/-- A322017: a(0) = 0; for n > 0, if A003188(n) > A003188(n-1) then a(n) = n-1, else if A003188(n+1) < A003188(n) then a(n) = n+1, otherwise a(n) = 0.

Offset 0, canonical program `A322017.P11556095073912313263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322017 (n : ℕ) : ℤ :=
  A322017.P11556095073912313263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322532.P11398704863402622686

`∑[A020915(n+2)-A136409(n)]`
-/

namespace A322532.P11398704863402622686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (n + 2) - A136409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322532.P11398704863402622686

noncomputable section

/-- A322532: Position of 1/2^n in the sequence of all numbers 1/2^m, 1/3^m, 2/3^m arranged in decreasing order.

Offset 1, canonical program `A322532.P11398704863402622686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A322532 (n : ℕ) : ℤ :=
  A322532.P11398704863402622686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A322532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322534.P16082892566407553595

`abs(2-A322533(n+1))`
-/

namespace A322534.P16082892566407553595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A322533 (n + 1)|

end

end A322534.P16082892566407553595

noncomputable section

/-- A322534: Position of 2/3^n in the sequence of all numbers 1/2^m, 1/3^m, 2/3^m arranged in decreasing order.

Offset 1, canonical program `A322534.P16082892566407553595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322534 (n : ℕ) : ℤ :=
  A322534.P16082892566407553595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323139.P7464966325480586250

`A001043(eq[1, gcd(3, A001043(n+1))]+1)`
-/

namespace A323139.P7464966325480586250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A001043 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A323139.P7464966325480586250

noncomputable section

/-- A323139: Integers that are not multiples of 6 and are the sum of two consecutive primes.

Offset 1, canonical program `A323139.P7464966325480586250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4021 terms. -/
def A323139 (n : ℕ) : ℤ :=
  A323139.P7464966325480586250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4021 terms. -/
def A323139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323153.P4915408121958090859

`char[A053813(n+1)-1]`
-/

namespace A323153.P4915408121958090859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323153.P4915408121958090859

noncomputable section

/-- A323153: a(n) = 1 if n is either a prime or a perfect number, 0 otherwise.

Offset 1, canonical program `A323153.P4915408121958090859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323153 (n : ℕ) : ℤ :=
  (A323153.P4915408121958090859.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323186.P15018472701164865408

`∑[∑[2*A266982(n+1)]-n]`
-/

namespace A323186.P15018472701164865408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266982 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323186.P15018472701164865408

noncomputable section

/-- A323186: a(0) = 0, a'(0) = 0, a''(0) = 1, a''(1) = -1, a(n) = a(n-1) + a'(n), a'(n) = a'(n-1) + a''(n), a''(n) = -a''(n-1) if a(n-2) = 0, or else a''(n-1).

Offset 0, canonical program `A323186.P15018472701164865408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A323186 (n : ℕ) : ℤ :=
  A323186.P15018472701164865408.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A323186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323600.P1595981348906691079

`∑{d}[n+1, A323599(#)]`
-/

namespace A323600.P1595981348906691079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323599 d

end

end A323600.P1595981348906691079

noncomputable section

/-- A323600: Dirichlet convolution of sigma with omega.

Offset 1, canonical program `A323600.P1595981348906691079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323600 (n : ℕ) : ℤ :=
  A323600.P1595981348906691079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323703.P15034803060139666769

`2*A144769(n+1)+1`
-/

namespace A323703.P15034803060139666769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144769 (n + 1) + 1

end

end A323703.P15034803060139666769

noncomputable section

/-- A323703: Number of values of (X^3 + X) mod prime(n).

Offset 1, canonical program `A323703.P15034803060139666769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323703 (n : ℕ) : ℤ :=
  A323703.P15034803060139666769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323798.P1669454172771369333

`A002524(n+2)-A020695(n)`
-/

namespace A323798.P1669454172771369333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (n + 2) - A020695 n

end

end A323798.P1669454172771369333

noncomputable section

/-- A323798: Number of permutations p of [n] such that max_{j=1..n} |p(j)-j| = 2.

Offset 2, canonical program `A323798.P1669454172771369333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A323798 (n : ℕ) : ℤ :=
  A323798.P1669454172771369333.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A323798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324224.P10288800048815807789

`A004737(n+1)/A000142(A053615(n))*A214080(n)`
-/

namespace A324224.P10288800048815807789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004737 (n + 1) : ℚ) / (A000142 (A053615 n).toNat : ℚ) * (A214080 n : ℚ)

end

end A324224.P10288800048815807789

noncomputable section

/-- A324224: Total number T(n,k) of 1's in falling diagonals with index k in all n X n permutation matrices divided by |k|!; triangle T(n,k), n>=1, 1-n<=k<=n-1, read by rows.

Offset 1, canonical program `A324224.P10288800048815807789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4829 terms. -/
def A324224 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324224.P10288800048815807789.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4829 terms. -/
def A324224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324225.P13327303718062342744

`A004737(n+1)*A214080(n)`
-/

namespace A324225.P13327303718062342744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A214080 n

end

end A324225.P13327303718062342744

noncomputable section

/-- A324225: Total number T(n,k) of 1's in falling diagonals with index k in all n X n permutation matrices; triangle T(n,k), n>=1, 1-n<=k<=n-1, read by rows.

Offset 1, canonical program `A324225.P13327303718062342744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. -/
def A324225 (n : ℕ) : ℤ :=
  A324225.P13327303718062342744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. -/
def A324225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324400.P18379230745158729541

`∑[A043545(n)]*A043545(n)+2-A000007(n)`
-/

namespace A324400.P18379230745158729541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A043545 n + (2 - A000007 n)

end

end A324400.P18379230745158729541

noncomputable section

/-- A324400: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j) for all i, j >= 1, where f(n) = -1 if n = 2^k and k > 0, and f(n) = n for all other numbers.

Offset 1, canonical program `A324400.P18379230745158729541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324400 (n : ℕ) : ℤ :=
  A324400.P18379230745158729541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324549.P838001861753721853

`A069061(n+1)-A151821(n+1)`
-/

namespace A324549.P838001861753721853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (n + 1) - A151821 (n + 1)

end

end A324549.P838001861753721853

noncomputable section

/-- A324549: a(n) = A324543(2*A000040(n)).

Offset 1, canonical program `A324549.P838001861753721853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A324549 (n : ℕ) : ℤ :=
  A324549.P838001861753721853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A324549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324600.P4691746058931788140

`A000217(A018252(n+1))`
-/

namespace A324600.P4691746058931788140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A018252 (n + 1)).toNat

end

end A324600.P4691746058931788140

noncomputable section

/-- A324600: a(n) = (k(n)*(k(n) + 1))/2 with k = A018252 (nonprime numbers), for n >= 1.

Offset 1, canonical program `A324600.P4691746058931788140`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324600 (n : ℕ) : ℤ :=
  A324600.P4691746058931788140.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324600.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324856.P11416853659660506855

`eq[1, A324848(n+1)]+1`
-/

namespace A324856.P11416853659660506855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324856.P11416853659660506855

noncomputable section

/-- A324856: Numbers divisible by exactly one of their prime indices.

Offset 1, canonical program `A324856.P11416853659660506855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. -/
def A324856 (n : ℕ) : ℤ :=
  (A324856.P11416853659660506855.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. -/
def A324856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325121.P1499457179464283586

`∑{d}[n+1, A000120(A297109(#))]`
-/

namespace A325121.P1499457179464283586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000120 (A297109 d).toNat

end

end A325121.P1499457179464283586

noncomputable section

/-- A325121: Sum of binary digits of the prime indices of n.

Offset 1, canonical program `A325121.P1499457179464283586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325121 (n : ℕ) : ℤ :=
  A325121.P1499457179464283586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325130.P7314425242101421070

`lt[A276935(n+1), 1]+1`
-/

namespace A325130.P7314425242101421070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276935 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325130.P7314425242101421070

noncomputable section

/-- A325130: Numbers in whose prime factorization the exponent of prime(k) is not equal to k for any prime index k.

Offset 1, canonical program `A325130.P7314425242101421070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6897 terms. -/
def A325130 (n : ℕ) : ℤ :=
  (A325130.P7314425242101421070.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6897 terms. -/
def A325130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325181.P17553818438216459321

`A010751(A165775(n))`
-/

namespace A325181.P17553818438216459321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (A165775 n).toNat

end

end A325181.P17553818438216459321

noncomputable section

/-- A325181: Number of integer partitions of n such that the difference between the length of the minimal square containing and the maximal square contained in the Young diagram is 1.

Offset 0, canonical program `A325181.P17553818438216459321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A325181 (n : ℕ) : ℤ :=
  A325181.P17553818438216459321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A325181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325690.P8837899180845504934

`A054925(n)-A211541(n)`
-/

namespace A325690.P8837899180845504934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n - A211541 n

end

end A325690.P8837899180845504934

noncomputable section

/-- A325690: Number of length-3 integer partitions of n whose largest part is not the sum of the other two.

Offset 0, canonical program `A325690.P8837899180845504934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325690 (n : ℕ) : ℤ :=
  A325690.P8837899180845504934.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326050.P4515014402688933711

`A082052(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326050.P4515014402688933711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (n + 1) - (n + 1 : ℤ)

end

end A326050.P4515014402688933711

noncomputable section

/-- A326050: a(n) = A082052(n) - n, where A082052 is the sum of divisors of n that are not of the form 4k+1.

Offset 1, canonical program `A326050.P4515014402688933711`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326050 (n : ℕ) : ℤ :=
  A326050.P4515014402688933711.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326400.P10409424007396242524

`A078708(n+1)-A326399(n+1)`
-/

namespace A326400.P10409424007396242524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (n + 1) - A326399 (n + 1)

end

end A326400.P10409424007396242524

noncomputable section

/-- A326400: Expansion of Sum_{k>=1} k * x^(2*k) / (1 - x^(3*k)).

Offset 1, canonical program `A326400.P10409424007396242524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326400 (n : ℕ) : ℤ :=
  A326400.P10409424007396242524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326504.P9021019185211962238

`A058187(n)-A007590(A028242(n))`
-/

namespace A326504.P9021019185211962238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 n - A007590 (A028242 n).toNat

end

end A326504.P9021019185211962238

noncomputable section

/-- A326504: Number of (binary) max-heaps on n elements from the set {0,1} containing exactly three 0's.

Offset 3, canonical program `A326504.P9021019185211962238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326504 (n : ℕ) : ℤ :=
  A326504.P9021019185211962238.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326692.P17715033095032022352

`eq[1, A326691(n+1)]+1`
-/

namespace A326692.P17715033095032022352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326692.P17715033095032022352

noncomputable section

/-- A326692: Values of k for which the denominator of (Sum_{prime p | k} 1/p - 1/k) is k.

Offset 1, canonical program `A326692.P17715033095032022352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9933 terms. -/
def A326692 (n : ℕ) : ℤ :=
  (A326692.P17715033095032022352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9933 terms. -/
def A326692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327140.P2571828699443447835

`∩[A022853(n+1), A327139(n+1)-1]`
-/

namespace A327140.P2571828699443447835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327140.P2571828699443447835

noncomputable section

/-- A327140: Numbers k such that cos(2k) > cos(2k+2) > cos(2k+4) < cos(2k+6).

Offset 1, canonical program `A327140.P2571828699443447835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5663 terms. -/
def A327140 (n : ℕ) : ℤ :=
  (A327140.P2571828699443447835.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5663 terms. -/
def A327140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327180.P17620113074031336904

`A188068(n+2)*A188068(Δ[n²])`
-/

namespace A327180.P17620113074031336904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 2) * A188068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A327180.P17620113074031336904

noncomputable section

/-- A327180: a(n) = [(2n+1)r] - [(n+1)r] - [nr], where [ ] = floor and r = sqrt(3).

Offset 0, canonical program `A327180.P17620113074031336904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327180 (n : ℕ) : ℤ :=
  A327180.P17620113074031336904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327184.P242452364317620198

`lt[n*A327183(n), n]`
-/

namespace A327184.P242452364317620198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327183 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327184.P242452364317620198

noncomputable section

/-- A327184: Positions of 0's in {A327183(n) : n > 0}.

Offset 1, canonical program `A327184.P242452364317620198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327184 (n : ℕ) : ℤ :=
  (A327184.P242452364317620198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327185.P8897625522565049644

`filter[n+1, A327183(#)]`
-/

namespace A327185.P8897625522565049644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327183 (f1 j) = 1) n)

end

end A327185.P8897625522565049644

noncomputable section

/-- A327185: Positions of 1's in {A327183(n) : n > 0}.

Offset 1, canonical program `A327185.P8897625522565049644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327185 (n : ℕ) : ℤ :=
  (A327185.P8897625522565049644.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327206.P13737605688350455278

`∪[A190337(n+1), A286666(n+1)]`
-/

namespace A327206.P13737605688350455278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327206.P13737605688350455278

noncomputable section

/-- A327206: Positions of 0's in {A327205(n) : n > 0}.

Offset 1, canonical program `A327206.P13737605688350455278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327206 (n : ℕ) : ℤ :=
  (A327206.P13737605688350455278.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327212.P15442459545766502823

`lt[n*A327211(n), n]`
-/

namespace A327212.P15442459545766502823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327211 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327212.P15442459545766502823

noncomputable section

/-- A327212: Positions of 0's in {A327211(n) : n > 0}.

Offset 1, canonical program `A327212.P15442459545766502823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327212 (n : ℕ) : ℤ :=
  (A327212.P15442459545766502823.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327213.P10077086823454871899

`eq[A327211(n), 1]`
-/

namespace A327213.P10077086823454871899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327211 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A327213.P10077086823454871899

noncomputable section

/-- A327213: Positions of 1's in {A327211(n) : n > 0}.

Offset 1, canonical program `A327213.P10077086823454871899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327213 (n : ℕ) : ℤ :=
  (A327213.P10077086823454871899.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327221.P12789019894681935162

`∪[A134860(n+1), A188259(n+1)]`
-/

namespace A327221.P12789019894681935162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327221.P12789019894681935162

noncomputable section

/-- A327221: Positions of 1's in {A327219(k) : n > 0}.

Offset 1, canonical program `A327221.P12789019894681935162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327221 (n : ℕ) : ℤ :=
  (A327221.P12789019894681935162.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327242.P3639755968240283341

`∑{d}[n+1, A038712(#)*A109506((n+1)/#)]`
-/

namespace A327242.P3639755968240283341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A109506 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327242.P3639755968240283341

noncomputable section

/-- A327242: Expansion of Sum_{k>=1} tau(k) * x^k / (1 + x^k)^2, where tau = A000005.

Offset 1, canonical program `A327242.P3639755968240283341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327242 (n : ℕ) : ℤ :=
  A327242.P3639755968240283341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327370.P17973664641611426474

`Δ[A000085(n)-abs(A055634(n))]`
-/

namespace A327370.P17973664641611426474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - |A055634 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327370.P17973664641611426474

noncomputable section

/-- A327370: Number of labeled simple graphs with n vertices and exactly n - 1 endpoints (vertices of degree 1).

Offset 0, canonical program `A327370.P17973664641611426474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A327370 (n : ℕ) : ℤ :=
  A327370.P17973664641611426474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A327370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327462.P4524600871860232679

`A064692(A000040(n+1))`
-/

namespace A327462.P4524600871860232679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A000040 (n + 1)).toNat

end

end A327462.P4524600871860232679

noncomputable section

/-- A327462: Number of holes in decimal expansion of n-th prime.

Offset 1, canonical program `A327462.P4524600871860232679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A327462 (n : ℕ) : ℤ :=
  A327462.P4524600871860232679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A327462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327610.P11674541860616960225

`A056327(n+1)-A000392(A008619(n))`
-/

namespace A327610.P11674541860616960225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056327 (n + 1) - A000392 (A008619 n).toNat

end

end A327610.P11674541860616960225

noncomputable section

/-- A327610: Number of length n reversible string structures that are not palindromic using exactly three different colors.

Offset 1, canonical program `A327610.P11674541860616960225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A327610 (n : ℕ) : ℤ :=
  A327610.P11674541860616960225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A327610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327629.P8323413943727263806

`∑{d}[n+1, #*A010054((n+1)/#)]`
-/

namespace A327629.P8323413943727263806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327629.P8323413943727263806

noncomputable section

/-- A327629: Expansion of Sum_{k>=1} x^(k*(k + 1)/2) / (1 - x^(k*(k + 1)/2))^2.

Offset 1, canonical program `A327629.P8323413943727263806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327629 (n : ℕ) : ℤ :=
  A327629.P8323413943727263806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327755.P13088836366577180608

`record[A056617(n)]`
-/

namespace A327755.P13088836366577180608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327755.P13088836366577180608

noncomputable section

/-- A327755: Odd integers k such that binomial(k-1,(k-1)/2) is coprime to k.

Offset 1, canonical program `A327755.P13088836366577180608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A327755 (n : ℕ) : ℤ :=
  A327755.P13088836366577180608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A327755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327960.P1150811079346032985

`∑{d}[n+1, A007427(#)*A101035((n+1)/#)]`
-/

namespace A327960.P1150811079346032985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327960.P1150811079346032985

noncomputable section

/-- A327960: Dirichlet g.f.: 1 / (zeta(s) * zeta(s-1)^2).

Offset 1, canonical program `A327960.P1150811079346032985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327960 (n : ℕ) : ℤ :=
  A327960.P1150811079346032985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328641.P12624645493984970613

`∑{d}[n+1, A101035(#)]`
-/

namespace A328641.P12624645493984970613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d

end

end A328641.P12624645493984970613

noncomputable section

/-- A328641: Dirichlet g.f.: zeta(s)^2 / zeta(s-1)^2.

Offset 1, canonical program `A328641.P12624645493984970613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328641 (n : ℕ) : ℤ :=
  A328641.P12624645493984970613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328659.P9026826888422614636

`a(n-1)+A035100(n)` with `a(0)=0`
-/

namespace A328659.P9026826888422614636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A035100 n

end

end A328659.P9026826888422614636

noncomputable section

/-- A328659: Partial sums of A035100: number of binary digits of the primes.

Offset 0, canonical program `A328659.P9026826888422614636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328659 (n : ℕ) : ℤ :=
  A328659.P9026826888422614636.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328865.P7576153008617993152

`A087121(n+1)%10`
-/

namespace A328865.P7576153008617993152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087121 (n + 1)) 10

end

end A328865.P7576153008617993152

noncomputable section

/-- A328865: The first repeating term in the trajectory of n under iterations of A329623, or -1 if no such terms exists.

Offset 1, canonical program `A328865.P7576153008617993152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A328865 (n : ℕ) : ℤ :=
  A328865.P7576153008617993152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A328865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328893.P13855104134187477571

`A095112(n)+a(n-1)` with `a(0)=0`
-/

namespace A328893.P13855104134187477571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A095112 n + a (n - 1)

end

end A328893.P13855104134187477571

noncomputable section

/-- A328893: Partial sums of A095112: sum of the Dirichlet convolution of the characteristic function of the prime powers (A069513) with the positive integers (A000027) from 1 to n.

Offset 0, canonical program `A328893.P13855104134187477571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328893 (n : ℕ) : ℤ :=
  A328893.P13855104134187477571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329162.P1152116202471923836

`A198383(n+1)-(n+1)`
-/

namespace A329162.P1152116202471923836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198383 (n + 1) - (n + 1 : ℤ)

end

end A329162.P1152116202471923836

noncomputable section

/-- A329162: a(n) = Sum_{k

Offset 1, canonical program `A329162.P1152116202471923836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A329162 (n : ℕ) : ℤ :=
  A329162.P1152116202471923836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A329162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329199.P13472642438074930869

`A329194(n+1)-A062153(n+1)`
-/

namespace A329199.P13472642438074930869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329194 (n + 1) - A062153 (n + 1)

end

end A329199.P13472642438074930869

noncomputable section

/-- A329199: a(n) = round(log_3(n)).

Offset 1, canonical program `A329199.P13472642438074930869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329199 (n : ℕ) : ℤ :=
  A329199.P13472642438074930869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329347.P9900062964830492735

`∑{d}[n+1, A095112(#)]`
-/

namespace A329347.P9900062964830492735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A095112 d

end

end A329347.P9900062964830492735

noncomputable section

/-- A329347: Dirichlet convolution of the identity function with bigomega.

Offset 1, canonical program `A329347.P9900062964830492735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329347 (n : ℕ) : ℤ :=
  A329347.P9900062964830492735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329355.P12529553447571034160

`A157686(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A329355.P12529553447571034160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A157686 n + 2 * a (n - 1)

end

end A329355.P12529553447571034160

noncomputable section

/-- A329355: The binary expansion of a(n) is the second through n-th terms of A000002 - 1.

Offset 1, canonical program `A329355.P12529553447571034160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A329355 (n : ℕ) : ℤ :=
  A329355.P12529553447571034160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A329355.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A329694.P12771457911509148127

`A248100(A028310(n)+1)+A248100(n)`
-/

namespace A329694.P12771457911509148127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248100 (A028310 n + 1).toNat + A248100 n

end

end A329694.P12771457911509148127

noncomputable section

/-- A329694: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, HH and DU.

Offset 0, canonical program `A329694.P12771457911509148127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A329694 (n : ℕ) : ℤ :=
  A329694.P12771457911509148127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A329694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329725.P14265499663303437373

`A063543(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A329725.P14265499663303437373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A063543 (n + 1) - a (n - 1)

end

end A329725.P14265499663303437373

noncomputable section

/-- A329725: a(1)=0, a(n) = n - (product of nonzero digits of n) - a(n-1).

Offset 1, canonical program `A329725.P14265499663303437373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A329725 (n : ℕ) : ℤ :=
  A329725.P14265499663303437373.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A329725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329826.P16304562123109989385

`A008619(A028250(n+1))+n`
-/

namespace A329826.P16304562123109989385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A028250 (n + 1)).toNat + (n : ℤ)

end

end A329826.P16304562123109989385

noncomputable section

/-- A329826: Beatty sequence for (5+sqrt(17))/4.

Offset 1, canonical program `A329826.P16304562123109989385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3904 terms. -/
def A329826 (n : ℕ) : ℤ :=
  A329826.P16304562123109989385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3904 terms. -/
def A329826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329832.P13015511692577924859

`A056926((A247160(2*n+1)+1)²)`
-/

namespace A329832.P13015511692577924859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((A247160 (2 * n + 1) + 1) ^ 2).toNat

end

end A329832.P13015511692577924859

noncomputable section

/-- A329832: Beatty sequence for (9+sqrt(65))/8.

Offset 1, canonical program `A329832.P13015511692577924859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A329832 (n : ℕ) : ℤ :=
  A329832.P13015511692577924859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A329832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329949.P17854999939394179864

`A269501(A020703(n+2))`
-/

namespace A329949.P17854999939394179864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269501 (A020703 (n + 2)).toNat

end

end A329949.P17854999939394179864

noncomputable section

/-- A329949: Lexicographically earliest sequence of positive numbers such that following proposition is true: a(n) is the number of occurrences of a(n+1) in the sequence so far, up to and including a(n+1).

Offset 1, canonical program `A329949.P17854999939394179864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A329949 (n : ℕ) : ℤ :=
  A329949.P17854999939394179864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A329949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329972.P5707886676465842772

`A010751(∑[A266982(n+1)])`
-/

namespace A329972.P5707886676465842772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329972.P5707886676465842772

noncomputable section

/-- A329972: Y-coordinate of a point moving in a triangular spiral.

Offset 0, canonical program `A329972.P5707886676465842772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329972 (n : ℕ) : ℤ :=
  A329972.P5707886676465842772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330024.P16424949572744117314

`val(A000079(n), A171559(A027870(n)))`
-/

namespace A330024.P16424949572744117314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A171559 (A027870 n).toNat).toNat

end

end A330024.P16424949572744117314

noncomputable section

/-- A330024: a(n) = floor(n/z) where z is the number of zeros in the decimal expansion of 2^n, and a(n)=0 when z=0.

Offset 0, canonical program `A330024.P16424949572744117314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A330024 (n : ℕ) : ℤ :=
  (A330024.P16424949572744117314.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A330024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330169.P8562627954708430707

`A055218(n)-a(n-1)` with `a(0)=1`
-/

namespace A330169.P8562627954708430707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055218 n - a (n - 1)

end

end A330169.P8562627954708430707

noncomputable section

/-- A330169: a(n) is the total area of all closed Deutsch paths of length n.

Offset 2, canonical program `A330169.P8562627954708430707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A330169 (n : ℕ) : ℤ :=
  A330169.P8562627954708430707.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A330169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330176.P3206787331036609517

`A016885(n)-A189461(n+1)`
-/

namespace A330176.P3206787331036609517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A189461 (n + 1)

end

end A330176.P3206787331036609517

noncomputable section

/-- A330176: a(n) = n + floor(nr/t) + floor(ns/t), where r = sqrt(5) - 2, s = sqrt(5) - 1, t = sqrt(5).

Offset 1, canonical program `A330176.P3206787331036609517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330176 (n : ℕ) : ℤ :=
  A330176.P3206787331036609517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330180.P17992768035997716082

`floor(3*A292665(n+1)/2)`
-/

namespace A330180.P17992768035997716082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A292665 (n + 1) : ℚ) / 2⌋

end

end A330180.P17992768035997716082

noncomputable section

/-- A330180: a(n) = n + floor(nr/t) + floor(ns/t), where r = e - 1, s = e, t = e + 1.

Offset 1, canonical program `A330180.P17992768035997716082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330180 (n : ℕ) : ℤ :=
  A330180.P17992768035997716082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330183.P6412283818570804675

`A292641(n+1)+A286323(n+1)`
-/

namespace A330183.P6412283818570804675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292641 (n + 1) + A286323 (n + 1)

end

end A330183.P6412283818570804675

noncomputable section

/-- A330183: a(n) = n + floor(ns/r) + floor(nt/r), where r = sqrt(2) - 1/2, s = sqrt(2), t = sqrt(2) + 1/2.

Offset 1, canonical program `A330183.P6412283818570804675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330183 (n : ℕ) : ℤ :=
  A330183.P6412283818570804675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330185.P3671403461841618346

`A189461(n+1)+1+n`
-/

namespace A330185.P3671403461841618346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189461 (n + 1) + 1 + (n : ℤ)

end

end A330185.P3671403461841618346

noncomputable section

/-- A330185: a(n) = n + floor(n*s/r) + floor(n*t/r), where r = phi - 1/2, s = phi, t = phi + 1/2, and phi is the golden ratio = (1+sqrt(5))/2.

Offset 1, canonical program `A330185.P3671403461841618346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330185 (n : ℕ) : ℤ :=
  A330185.P3671403461841618346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330243.P17106795366346629784

`eq[7, A008952(n)]`
-/

namespace A330243.P17106795366346629784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330243.P17106795366346629784

noncomputable section

/-- A330243: Numbers k such that the first digit of the decimal expansion of 2^k is 7.

Offset 1, canonical program `A330243.P17106795366346629784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2900 terms. -/
def A330243 (n : ℕ) : ℤ :=
  (A330243.P17106795366346629784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2900 terms. -/
def A330243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330322.P9206465895295157789

`∑[A083539(n+1)]`
-/

namespace A330322.P9206465895295157789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P9206465895295157789

noncomputable section

/-- A330322: a(n) = Sum_{i=1..n} sigma(i)*sigma(i+1), where sigma(n) = A000203(n) is the sum of the divisors of n.

Offset 1, canonical program `A330322.P9206465895295157789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330322 (n : ℕ) : ℤ :=
  A330322.P9206465895295157789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330703.P1695831793306337798

`eq[A001615(n+1), A001615(n+3)]+1`
-/

namespace A330703.P1695831793306337798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A330703.P1695831793306337798

noncomputable section

/-- A330703: Numbers k such that psi(k) = psi(k + 2) where psi(k) is the Dedekind psi function (A001615).

Offset 1, canonical program `A330703.P1695831793306337798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A330703 (n : ℕ) : ℤ :=
  (A330703.P1695831793306337798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A330703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330714.P2325719650532797238

`A131851(n)²+A131852(n)²`
-/

namespace A330714.P2325719650532797238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n ^ 2 + A131852 n ^ 2

end

end A330714.P2325719650532797238

noncomputable section

/-- A330714: For any n >= 0 with binary expansion Sum_{k=0..w} b_k * 2^k, let h(n) = Sum_{k=0..w} b_k * i^k (where i denotes the imaginary unit); a(n) is the square of the modulus of h(n).

Offset 0, canonical program `A330714.P2325719650532797238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131851, A131852, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330714 (n : ℕ) : ℤ :=
  A330714.P2325719650532797238.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131851, A131852, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330856.P9754665859077177606

`∑[∑{d}[n+1, #]]-∑{d}[n+1, A026741(#)]`
-/

namespace A330856.P9754665859077177606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f3 n), A026741 d

end

end A330856.P9754665859077177606

noncomputable section

/-- A330856: Total sum of divisors of all the parts in the partitions of n into 2 parts.

Offset 1, canonical program `A330856.P9754665859077177606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330856 (n : ℕ) : ℤ :=
  A330856.P9754665859077177606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331105.P6464673104114462380

`and(-A329278(n), A092323(n+1))`
-/

namespace A331105.P6464673104114462380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A329278 n) (A092323 (n + 1))

end

end A331105.P6464673104114462380

noncomputable section

/-- A331105: T(n,k) = -k*(k+1)/2 mod 2^n; triangle T(n,k), n>=0, 0<=k<=2^n-1, read by rows.

Offset 0, canonical program `A331105.P6464673104114462380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A331105 (n : ℕ) : ℤ :=
  A331105.P6464673104114462380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A331105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331396.P14716828960309401034

`A011782(n+1)*A047665(n+1)`
-/

namespace A331396.P14716828960309401034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A047665 (n + 1)

end

end A331396.P14716828960309401034

noncomputable section

/-- A331396: Number of nonnegative integer matrices with 2 distinct columns and any number of nonzero rows with column sums n and columns in decreasing lexicographic order.

Offset 1, canonical program `A331396.P14716828960309401034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331396 (n : ℕ) : ℤ :=
  A331396.P14716828960309401034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331396.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331419.P8771945988083528217

`A000332(A008619(n))*A060546(n)`
-/

namespace A331419.P8771945988083528217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A008619 n).toNat * A060546 n

end

end A331419.P8771945988083528217

noncomputable section

/-- A331419: a(n) is the number of subsets of {1..n} that contain exactly 4 odd numbers.

Offset 1, canonical program `A331419.P8771945988083528217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 607 terms. -/
def A331419 (n : ℕ) : ℤ :=
  A331419.P8771945988083528217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 607 terms. -/
def A331419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331420.P4102028853693030989

`A000389(A008619(n))*A060546(n)`
-/

namespace A331420.P4102028853693030989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A008619 n).toNat * A060546 n

end

end A331420.P4102028853693030989

noncomputable section

/-- A331420: a(n) is the number of subsets of {1..n} that contain exactly 5 odd numbers.

Offset 1, canonical program `A331420.P4102028853693030989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 597 terms. -/
def A331420 (n : ℕ) : ℤ :=
  A331420.P4102028853693030989.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 597 terms. -/
def A331420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331473.P18366318951218983409

`A001791(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A331473.P18366318951218983409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001791 (n + 1) - a (n - 1)

end

end A331473.P18366318951218983409

noncomputable section

/-- A331473: Alternating sum of (n+1)*A000108(n+1).

Offset 0, canonical program `A331473.P18366318951218983409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A331473 (n : ℕ) : ℤ :=
  A331473.P18366318951218983409.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A331473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332227.P4642368873097000219

`A332226(eq[1, A332226(n+1)%2]+1)`
-/

namespace A332227.P4642368873097000219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332226 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A332227.P4642368873097000219

noncomputable section

/-- A332227: Odd numbers k such that sigma(k) is congruent to 2 modulo 8.

Offset 1, canonical program `A332227.P4642368873097000219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332227 (n : ℕ) : ℤ :=
  A332227.P4642368873097000219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332251.P7170121162283954011

`∑[A131852(A131136(n))]`
-/

namespace A332251.P7170121162283954011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A131136 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332251.P7170121162283954011

noncomputable section

/-- A332251: a(n) is the real part of f(n) defined by f(0) = 0 and f(n+1) = f(n) + i^A000120(n) (where i denotes the imaginary unit). Sequence A332252 gives imaginary parts.

Offset 0, canonical program `A332251.P7170121162283954011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A332251 (n : ℕ) : ℤ :=
  A332251.P7170121162283954011.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A332251.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A332273.P2063564485991035546

`abs(Δ[A216345(A004277(n))])`
-/

namespace A332273.P2063564485991035546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A332273.P2063564485991035546

noncomputable section

/-- A332273: Sizes of maximal weakly decreasing subsequences of A000002.

Offset 1, canonical program `A332273.P2063564485991035546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A332273 (n : ℕ) : ℤ :=
  A332273.P2063564485991035546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A332273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332457.P13672119517976752287

`∩[A332226(n+1), A332456(n+1)]`
-/

namespace A332457.P13672119517976752287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332457.P13672119517976752287

noncomputable section

/-- A332457: Numbers k such that sigma(k) == 2 modulo 8 and sigma(sigma(k)) == 6 modulo 8.

Offset 1, canonical program `A332457.P13672119517976752287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A332457 (n : ℕ) : ℤ :=
  (A332457.P13672119517976752287.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A332457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332476.P8708252217111257633

`2^A086275(n+1)`
-/

namespace A332476.P8708252217111257633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A086275 (n + 1) : ℤ)

end

end A332476.P8708252217111257633

noncomputable section

/-- A332476: The number of unitary divisors of n in Gaussian integers.

Offset 1, canonical program `A332476.P8708252217111257633`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332476 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332476.P8708252217111257633.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332497.P4742121065997566983

`2*A094114(n+1)-A000035(n)`
-/

namespace A332497.P4742121065997566983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094114 (n + 1) - A000035 n

end

end A332497.P4742121065997566983

noncomputable section

/-- A332497: a(n) = x(w+1) where x(0) = 0 and x(k+1) = 2^(k+1)-1-x(k) (resp. x(k)) when d_k = 1 (resp. d_k <> 1) and Sum_{k=0..w} d_k*3^k is the ternary representation of n. Sequence A332498 gives corresponding y's.

Offset 0, canonical program `A332497.P4742121065997566983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A332497 (n : ℕ) : ℤ :=
  A332497.P4742121065997566983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A332497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332602.P15077841748379890722

`dr(C(2, A350962(n)))`
-/

namespace A332602.P15077841748379890722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.choose 2 (A350962 n).toNat : ℤ)

end

end A332602.P15077841748379890722

noncomputable section

/-- A332602: Tridiagonal matrix M read by antidiagonals: main diagonal is 1,2,2,2,2,..., two adjacent diagonals are 1,1,1,1,1,...

Offset 0, canonical program `A332602.P15077841748379890722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A332602 (n : ℕ) : ℤ :=
  (A332602.P15077841748379890722.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A332602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332663.P9658537387938696632

`A124171(n+1)-1`
-/

namespace A332663.P9658537387938696632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124171 (n + 1) - 1

end

end A332663.P9658537387938696632

noncomputable section

/-- A332663: Even bisection of A332662: the x-coordinates of an enumeration of N X N.

Offset 0, canonical program `A332663.P9658537387938696632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332663 (n : ℕ) : ℤ :=
  A332663.P9658537387938696632.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332793.P2046662391934450926

`(n+1)*A067856(n+1)`
-/

namespace A332793.P2046662391934450926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A067856 (n + 1)

end

end A332793.P2046662391934450926

noncomputable section

/-- A332793: a(1) = 1; a(n) = n * Sum_{d|n, d < n} (-1)^(n/d) * a(d) / d.

Offset 1, canonical program `A332793.P2046662391934450926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332793 (n : ℕ) : ℤ :=
  A332793.P2046662391934450926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332801.P14319272458868434347

`A111775(n+1)+n-2-a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A332801.P14319272458868434347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A111775 (n + 1) + ((n : ℤ) - 2 - a (n - 1))

end

end A332801.P14319272458868434347

noncomputable section

/-- A332801: a(n) is the number of even results of n mod k, for 1 < k < n.

Offset 1, canonical program `A332801.P14319272458868434347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A332801 (n : ℕ) : ℤ :=
  A332801.P14319272458868434347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A332801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333172.P6393076482524309599

`∑[A193433(n)]`
-/

namespace A333172.P6393076482524309599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P6393076482524309599

noncomputable section

/-- A333172: a(n) = Sum_{k=0..n} sigma(k^2 + 1), where sigma(k) is the sum of divisors of k (A000203).

Offset 0, canonical program `A333172.P6393076482524309599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333172 (n : ℕ) : ℤ :=
  A333172.P6393076482524309599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333173.P13774738622394836103

`8*A193433(n)`
-/

namespace A333173.P13774738622394836103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A193433 n

end

end A333173.P13774738622394836103

noncomputable section

/-- A333173: a(n) = r_4(n^2 + 1), where r_4(k) is the number of ways of writing k as a sum of 4 squares (A000118).

Offset 0, canonical program `A333173.P13774738622394836103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333173 (n : ℕ) : ℤ :=
  A333173.P13774738622394836103.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333188.P17147979355688188816

`A333186(n+1)-A333187(n+1)`
-/

namespace A333188.P17147979355688188816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333186 (n + 1) - A333187 (n + 1)

end

end A333188.P17147979355688188816

noncomputable section

/-- A333188: a(n) = [2^n csc(1/n)] - [2^n cot(1/n)], where [ ] = floor.

Offset 1, canonical program `A333188.P17147979355688188816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A333188 (n : ℕ) : ℤ :=
  A333188.P17147979355688188816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A333188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333452.P17770839783048357349

`A293322(A004277(n))%4`
-/

namespace A333452.P17770839783048357349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293322 (A004277 n).toNat) 4

end

end A333452.P17770839783048357349

noncomputable section

/-- A333452: Expansion of golden ratio (1 + sqrt(5))/2 in base 4.

Offset 1, canonical program `A333452.P17770839783048357349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A333452 (n : ℕ) : ℤ :=
  A333452.P17770839783048357349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A333452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333644.P1401994057420072058

`∑[A007445(n+1)]`
-/

namespace A333644.P1401994057420072058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333644.P1401994057420072058

noncomputable section

/-- A333644: a(n) = Sum_{k=1..n} floor(n/k) * prime(k).

Offset 1, canonical program `A333644.P1401994057420072058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333644 (n : ℕ) : ℤ :=
  A333644.P1401994057420072058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333688.P7202699584015010532

`∑[A070748(n+1)]`
-/

namespace A333688.P7202699584015010532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333688.P7202699584015010532

noncomputable section

/-- A333688: Partial sums of A070748.

Offset 1, canonical program `A333688.P7202699584015010532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333688 (n : ℕ) : ℤ :=
  A333688.P7202699584015010532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333714.P4434585446613422265

`lt[1/2, A098108(C(2, C(3, n²))+n)]`
-/

namespace A333714.P4434585446613422265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A333714.P4434585446613422265

noncomputable section

/-- A333714: Squares visited by a chess king moving on a square-spiral numbered board where the king moves to the adjacent unvisited square containing the spiral number with the most divisors. In case of a tie it chooses the square with the highest spiral number.

Offset 1, canonical program `A333714.P4434585446613422265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A333714 (n : ℕ) : ℤ :=
  (A333714.P4434585446613422265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A333714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333747.P908360627980820900

`A000040(A008619(n))*A065091(A080513(n))`
-/

namespace A333747.P908360627980820900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008619 n).toNat * A065091 (A080513 n).toNat

end

end A333747.P908360627980820900

noncomputable section

/-- A333747: Numbers that are either the product of two consecutive primes or two primes with a prime in between.

Offset 1, canonical program `A333747.P908360627980820900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333747 (n : ℕ) : ℤ :=
  A333747.P908360627980820900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333750.P13112265574583452252

`∑{e}[A072504(n+1), #]`
-/

namespace A333750.P13112265574583452252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A333750.P13112265574583452252

noncomputable section

/-- A333750: Number of prime power divisors of n that are <= sqrt(n).

Offset 1, canonical program `A333750.P13112265574583452252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333750 (n : ℕ) : ℤ :=
  (A333750.P13112265574583452252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334117.P7213088979993363911

`eq[2, A082898(A093178(n))]`
-/

namespace A334117.P7213088979993363911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082898 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334117.P7213088979993363911

noncomputable section

/-- A334117: Odd numbers with abundancy >= 3/2; that is, numbers m such that sigma(m) >= 3m/2.

Offset 1, canonical program `A334117.P7213088979993363911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1444 terms. -/
def A334117 (n : ℕ) : ℤ :=
  (A334117.P7213088979993363911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1444 terms. -/
def A334117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334143.P15608283684406534922

`A035327(A175329(n+1))`
-/

namespace A334143.P15608283684406534922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A175329 (n + 1)).toNat

end

end A334143.P15608283684406534922

noncomputable section

/-- A334143: a(n) = bitwise NOR of prime(n) and prime(n+1).

Offset 1, canonical program `A334143.P15608283684406534922`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334143 (n : ℕ) : ℤ :=
  A334143.P15608283684406534922.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334573.P12074546961031129650

`∑[A334572(n+2)]`
-/

namespace A334573.P12074546961031129650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334573.P12074546961031129650

noncomputable section

/-- A334573: Partial sums of A334572.

Offset 2, canonical program `A334573.P12074546961031129650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334573 (n : ℕ) : ℤ :=
  A334573.P12074546961031129650.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334608.P16320078294554590226

`Δ[A069271(n)]-A069271(n)`
-/

namespace A334608.P16320078294554590226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A069271 n

end

end A334608.P16320078294554590226

noncomputable section

/-- A334608: a(n) is the total number of down-steps after the final up-step in all 3_1-Dyck paths of length 4*n (n up-steps and 3n down-steps).

Offset 0, canonical program `A334608.P16320078294554590226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A334608 (n : ℕ) : ℤ :=
  A334608.P16320078294554590226.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A334608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334682.P12278974037665394167

`Δ[A002293(n)]`
-/

namespace A334682.P12278974037665394167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334682.P12278974037665394167

noncomputable section

/-- A334682: a(n) is the total number of down-steps after the final up-step in all 3-Dyck paths of length 4*n (n up-steps and 3*n down-steps).

Offset 0, canonical program `A334682.P12278974037665394167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A334682 (n : ℕ) : ℤ :=
  A334682.P12278974037665394167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A334682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334714.P8757616556626411084

`A062298(a(n-1))+A000720(n+1)` with `a(0)=1`
-/

namespace A334714.P8757616556626411084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062298 (a (n - 1)).toNat + A000720 (n + 1)

end

end A334714.P8757616556626411084

noncomputable section

/-- A334714: Partial sums of A335294.

Offset 1, canonical program `A334714.P8757616556626411084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334714 (n : ℕ) : ℤ :=
  A334714.P8757616556626411084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334785.P9600476233071478434

`A002293(n)+A069271(n)-A000038(n)`
-/

namespace A334785.P9600476233071478434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n + (A069271 n - A000038 n)

end

end A334785.P9600476233071478434

noncomputable section

/-- A334785: a(n) is the total number of down steps before the first up step in all 3_2-Dyck paths of length 4*n. A 3_2-Dyck path is a lattice path with steps (1, 3), (1, -1) that starts and ends at y = 0 and stays above the line y = -2.

Offset 0, canonical program `A334785.P9600476233071478434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A334785 (n : ℕ) : ℤ :=
  A334785.P9600476233071478434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A334785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334880.P11930168278696587315

`lt[1, gcd(n, A018252(n+1))]`
-/

namespace A334880.P11930168278696587315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A018252 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334880.P11930168278696587315

noncomputable section

/-- A334880: Numbers k such that gcd(k, k-th composite number) > 1.

Offset 1, canonical program `A334880.P11930168278696587315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A334880 (n : ℕ) : ℤ :=
  (A334880.P11930168278696587315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A334880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334980.P5429576878076949371

`Δ[A337291(n+1)%∑[A006632(n+1)]]`
-/

namespace A334980.P5429576878076949371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006632 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337291 (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334980.P5429576878076949371

noncomputable section

/-- A334980: a(n) is the total number of down steps between the (n-1)-th and n-th up steps in all 3_2-Dyck paths of length 4*n. A 3_2-Dyck path is a lattice path with steps (1, 3), (1, -1) that starts and ends at y = 0 and stays above the line y = -2.

Offset 0, canonical program `A334980.P5429576878076949371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A334980 (n : ℕ) : ℤ :=
  A334980.P5429576878076949371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A334980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334988.P8087044634130120453

`∑{d}[n+1, #*A023533(#)]`
-/

namespace A334988.P8087044634130120453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A023533 d

end

end A334988.P8087044634130120453

noncomputable section

/-- A334988: Sum of tetrahedral numbers dividing n.

Offset 1, canonical program `A334988.P8087044634130120453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A334988 (n : ℕ) : ℤ :=
  A334988.P8087044634130120453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A334988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335262.P797207076152892983

`C(abs(A056951(n+1)), 2)`
-/

namespace A335262.P797207076152892983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A056951 (n + 1)|.toNat 2

end

end A335262.P797207076152892983

noncomputable section

/-- A335262: Triangle of triangular numbers, read by rows, constructed like this: Given a sequence t, start row 0 with t(0). Compute row n for n > 0 by reversing row n-1 and prepending t(n). The sequence t is here chosen as the triangular numbers.

Offset 0, canonical program `A335262.P797207076152892983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335262 (n : ℕ) : ℤ :=
  (A335262.P797207076152892983.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335285.P3875651009046137375

`A007917(xor(1, n-1)%(n+1)+2)`
-/

namespace A335285.P3875651009046137375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (Int.tmod (Int.xor 1 ((n : ℤ) - 1)) (n + 1 : ℤ) + 2).toNat

end

end A335285.P3875651009046137375

noncomputable section

/-- A335285: a(n) is the greatest possible greatest part of any partition of n into prime parts.

Offset 2, canonical program `A335285.P3875651009046137375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A335285 (n : ℕ) : ℤ :=
  A335285.P3875651009046137375.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A335285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335437.P5318909564445238416

`lt[A085384(n+1)², 1]+1`
-/

namespace A335437.P5318909564445238416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A335437.P5318909564445238416

noncomputable section

/-- A335437: Numbers k with a partition into two distinct parts (s,t) such that k | s*t.

Offset 1, canonical program `A335437.P5318909564445238416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335437 (n : ℕ) : ℤ :=
  (A335437.P5318909564445238416.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335714.P6562929556570060848

`2^(n+1)-A206268(n+2)`
-/

namespace A335714.P6562929556570060848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A206268 (n + 2)

end

end A335714.P6562929556570060848

noncomputable section

/-- A335714: The sum of the sizes (positions) of fixed points over all compositions of n.

Offset 1, canonical program `A335714.P6562929556570060848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A335714 (n : ℕ) : ℤ :=
  A335714.P6562929556570060848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A335714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336278.P11475677679489198694

`∑[A334660(n+1)]`
-/

namespace A336278.P11475677679489198694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336278.P11475677679489198694

noncomputable section

/-- A336278: a(n) = Sum_{k=1..n} mu(k)*k^4.

Offset 1, canonical program `A336278.P11475677679489198694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336278 (n : ℕ) : ℤ :=
  A336278.P11475677679489198694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336341.P15542008784946552541

`1/2*A336339(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336341.P15542008784946552541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A336339 (n + 1) : ℚ)

end

end A336341.P15542008784946552541

noncomputable section

/-- A336341: a(n) = (1/2)A336339(n).

Offset 1, canonical program `A336341.P15542008784946552541`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336341 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336341.P15542008784946552541.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336367.P14551895403974588716

`lt[1, gcd(n+1, A001043(n+1))]+1`
-/

namespace A336367.P14551895403974588716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001043 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336367.P14551895403974588716

noncomputable section

/-- A336367: Numbers k such that gcd(k, prime(k) + prime(k+1)) > 1.

Offset 1, canonical program `A336367.P14551895403974588716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6440 terms. -/
def A336367 (n : ℕ) : ℤ :=
  (A336367.P14551895403974588716.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6440 terms. -/
def A336367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336368.P1723893463371060127

`A000040(eq[1, gcd(n+1, A001043(n+1))]+1)`
-/

namespace A336368.P1723893463371060127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001043 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A336368.P1723893463371060127

noncomputable section

/-- A336368: Primes p(n) such that gcd(n, prime(n)+prime(n+1)) = 1.

Offset 1, canonical program `A336368.P1723893463371060127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3560 terms. -/
def A336368 (n : ℕ) : ℤ :=
  A336368.P1723893463371060127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3560 terms. -/
def A336368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336370.P16270598493345441894

`eq[1, gcd(n+2, A001043(n+1))]+2`
-/

namespace A336370.P16270598493345441894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A001043 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A336370.P16270598493345441894

noncomputable section

/-- A336370: Numbers k such that gcd(k, prime(k) + prime(k-1)) = 1.

Offset 1, canonical program `A336370.P16270598493345441894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3574 terms. -/
def A336370 (n : ℕ) : ℤ :=
  (A336370.P16270598493345441894.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3574 terms. -/
def A336370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336373.P12113876277353113999

`A000040(lt[1, gcd(n+2, A001043(n+1))]+2)`
-/

namespace A336373.P12113876277353113999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A001043 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A336373.P12113876277353113999

noncomputable section

/-- A336373: Primes prime(k) such that gcd(k, prime(k)+prime(k-1)) > 1.

Offset 1, canonical program `A336373.P12113876277353113999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6426 terms. -/
def A336373 (n : ℕ) : ℤ :=
  A336373.P12113876277353113999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6426 terms. -/
def A336373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336409.P14643601017741268817

`2*A175191(n+4)`
-/

namespace A336409.P14643601017741268817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175191 (n + 4)

end

end A336409.P14643601017741268817

noncomputable section

/-- A336409: Distance from prime(n) to the nearest odd composite that is < prime(n).

Offset 5, canonical program `A336409.P14643601017741268817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175191, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336409 (n : ℕ) : ℤ :=
  A336409.P14643601017741268817.a (n - 5)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175191, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336590.P1238864265551772819

`eq[1, A299406(n+1)²]+1`
-/

namespace A336590.P1238864265551772819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299406 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336590.P1238864265551772819

noncomputable section

/-- A336590: Numbers k such that k/A008834(k) is squarefree, where A008834(k) is the largest cube dividing k.

Offset 1, canonical program `A336590.P1238864265551772819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336590 (n : ℕ) : ℤ :=
  (A336590.P1238864265551772819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336962.P6344770241996837635

`A003817(n)-A163575(A028310(n))`
-/

namespace A336962.P6344770241996837635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A163575 (A028310 n).toNat

end

end A336962.P6344770241996837635

noncomputable section

/-- A336962: Right-rotate run-lengths of consecutive equal digits in binary representation of n.

Offset 0, canonical program `A336962.P6344770241996837635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A336962 (n : ℕ) : ℤ :=
  A336962.P6344770241996837635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A336962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337004.P1814785080480299496

`or(1, -A175337(n))`
-/

namespace A337004.P1814785080480299496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A175337 n)

end

end A337004.P1814785080480299496

noncomputable section

/-- A337004: Turn sequence of the R5 dragon curve.

Offset 1, canonical program `A337004.P1814785080480299496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3125 terms. -/
def A337004 (n : ℕ) : ℤ :=
  A337004.P1814785080480299496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3125 terms. -/
def A337004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337184.P5712740499508819035

`∩[A034709(n+1), A034837(n+1)]`
-/

namespace A337184.P5712740499508819035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337184.P5712740499508819035

noncomputable section

/-- A337184: Numbers divisible by their first digit and their last digit.

Offset 1, canonical program `A337184.P5712740499508819035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A337184 (n : ℕ) : ℤ :=
  (A337184.P5712740499508819035.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A337184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337250.P13413340909850311773

`lt[0, and(n, A057300(n))]`
-/

namespace A337250.P13413340909850311773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A057300 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337250.P13413340909850311773

noncomputable section

/-- A337250: Numbers having at least one 3 in their representation in base 4.

Offset 1, canonical program `A337250.P13413340909850311773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337250 (n : ℕ) : ℤ :=
  (A337250.P13413340909850311773.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337284.P3408227130784434676

`A337283(n+1)-A107239(n+1)`
-/

namespace A337284.P3408227130784434676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337283 (n + 1) - A107239 (n + 1)

end

end A337284.P3408227130784434676

noncomputable section

/-- A337284: a(n) = Sum_{i=1..n} (i-1)*T(i)^2, where T(i) = A000073(i) is the i-th tribonacci number.

Offset 1, canonical program `A337284.P3408227130784434676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107239, A337283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337284 (n : ℕ) : ℤ :=
  A337284.P3408227130784434676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107239, A337283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337284.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337499.P4185763426435453726

`A128014(n+2)-A126869(n)`
-/

namespace A337499.P4185763426435453726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (n + 2) - A126869 n

end

end A337499.P4185763426435453726

noncomputable section

/-- A337499: a(n) is the number of ballot sequences of length n tied or won by at most 2 votes.

Offset 0, canonical program `A337499.P4185763426435453726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A337499 (n : ℕ) : ℤ :=
  A337499.P4185763426435453726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A337499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337899.P8168504029027537216

`A046023(n+1)-A063842(n)`
-/

namespace A337899.P8168504029027537216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046023 (n + 1) - A063842 n

end

end A337899.P8168504029027537216

noncomputable section

/-- A337899: Number of chiral pairs of colorings of the edges of a regular tetrahedron using n or fewer colors.

Offset 1, canonical program `A337899.P8168504029027537216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337899 (n : ℕ) : ℤ :=
  A337899.P8168504029027537216.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337899.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337909.P8516175673074773938

`A080079(A004761(n+2))`
-/

namespace A337909.P8516175673074773938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A004761 (n + 2)).toNat

end

end A337909.P8516175673074773938

noncomputable section

/-- A337909: Distinct terms of A080079 in the order in which they appear.

Offset 1, canonical program `A337909.P8516175673074773938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004761, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337909 (n : ℕ) : ℤ :=
  A337909.P8516175673074773938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004761, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337978.P4898846273095540524

`1-A337788(n+1)+n`
-/

namespace A337978.P4898846273095540524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A337788 (n + 1) + (n : ℤ)

end

end A337978.P4898846273095540524

noncomputable section

/-- A337978: a(n) = n + pi(n) - pi(n + pi(n)), where pi(n) is the prime count of n (n>=1).

Offset 1, canonical program `A337978.P4898846273095540524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337978 (n : ℕ) : ℤ :=
  A337978.P4898846273095540524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338165.P14176460917609793064

`∑{d}[n+1, A059376(#)*A059376((n+1)/#)]`
-/

namespace A338165.P14176460917609793064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059376 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338165.P14176460917609793064

noncomputable section

/-- A338165: Dirichlet g.f.: (zeta(s-3) / zeta(s))^2.

Offset 1, canonical program `A338165.P14176460917609793064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338165 (n : ℕ) : ℤ :=
  A338165.P14176460917609793064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338165.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A338215.P776974730790204605

`A095117(A062298(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A338215.P776974730790204605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (A062298 (n + 1)).toNat

end

end A338215.P776974730790204605

noncomputable section

/-- A338215: a(n) = A095117(A062298(n)).

Offset 1, canonical program `A338215.P776974730790204605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338215 (n : ℕ) : ℤ :=
  A338215.P776974730790204605.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338220.P9611528444237174458

`eq[0, A258712(n)]`
-/

namespace A338220.P9611528444237174458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338220.P9611528444237174458

noncomputable section

/-- A338220: Numbers k such that the Motzkin number A001006(k) is divisible by 5.

Offset 1, canonical program `A338220.P9611528444237174458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A338220 (n : ℕ) : ℤ :=
  (A338220.P9611528444237174458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A338220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338248.P2390189251566135484

`A053985(lt[n, A088442(n)])`
-/

namespace A338248.P2390189251566135484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A338248.P2390189251566135484

noncomputable section

/-- A338248: Nonnegative values in A053985, in order of appearance.

Offset 0, canonical program `A338248.P2390189251566135484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5462 terms. -/
def A338248 (n : ℕ) : ℤ :=
  A338248.P2390189251566135484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5462 terms. -/
def A338248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338251.P8103799796019811085

`A317050(record[n%A088442(n)])`
-/

namespace A338251.P8103799796019811085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A088442 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338251.P8103799796019811085

noncomputable section

/-- A338251: Nonnegative values in A317050, in order of appearance.

Offset 0, canonical program `A338251.P8103799796019811085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5462 terms. -/
def A338251 (n : ℕ) : ℤ :=
  A338251.P8103799796019811085.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5462 terms. -/
def A338251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338252.P13657671363942222121

`-A317050(A053754(n+1))`
-/

namespace A338252.P13657671363942222121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A317050 (A053754 (n + 1)).toNat

end

end A338252.P13657671363942222121

noncomputable section

/-- A338252: Nonpositive values in A317050, in order of appearance and negated.

Offset 0, canonical program `A338252.P13657671363942222121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053754, A317050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338252 (n : ℕ) : ℤ :=
  A338252.P13657671363942222121.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053754, A317050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338284.P11673069137575542411

`A171621(xor(1, n+2))+2`
-/

namespace A338284.P11673069137575542411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171621 (Nat.xor 1 (n + 2)) + 2

end

end A338284.P11673069137575542411

noncomputable section

/-- A338284: a(n) is the smallest nonsquare m such that the second partial quotient in the continued fraction for sqrt(m) equals n.

Offset 1, canonical program `A338284.P11673069137575542411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338284 (n : ℕ) : ℤ :=
  A338284.P11673069137575542411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338375.P18091747463959896222

`A125059(Δ[n²])`
-/

namespace A338375.P18091747463959896222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125059 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A338375.P18091747463959896222

noncomputable section

/-- A338375: Number of digits in (2n)! / (2^n * n!).

Offset 1, canonical program `A338375.P18091747463959896222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A338375 (n : ℕ) : ℤ :=
  A338375.P18091747463959896222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A338375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338467.P13892057425327448766

`A008347(n)+or(1, n)`
-/

namespace A338467.P13892057425327448766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n + (Nat.lor 1 n : ℤ)

end

end A338467.P13892057425327448766

noncomputable section

/-- A338467: a(n+1) = prime(n) + 2*n - a(n). a(1) = 1.

Offset 1, canonical program `A338467.P13892057425327448766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338467 (n : ℕ) : ℤ :=
  A338467.P13892057425327448766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338506.P3325007894870132421

`A100587(n+1)+1`
-/

namespace A338506.P3325007894870132421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100587 (n + 1) + 1

end

end A338506.P3325007894870132421

noncomputable section

/-- A338506: a(n) is the number of subsets of divisors of n.

Offset 1, canonical program `A338506.P3325007894870132421`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338506 (n : ℕ) : ℤ :=
  A338506.P3325007894870132421.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338506.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338547.P6553117471732932713

`∑{d}[n+1, A007427(#)*A321543((n+1)/#)]`
-/

namespace A338547.P6553117471732932713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A321543 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338547.P6553117471732932713

noncomputable section

/-- A338547: a(n) = n^2 * Sum_{d|n} (-1)^(n/d + 1) * mu(d) / d^2.

Offset 1, canonical program `A338547.P6553117471732932713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338547 (n : ℕ) : ℤ :=
  A338547.P6553117471732932713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338548.P7895902691056002045

`∑{d}[n+1, A007427(#)*A138503((n+1)/#)]`
-/

namespace A338548.P7895902691056002045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A138503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338548.P7895902691056002045

noncomputable section

/-- A338548: a(n) = n^3 * Sum_{d|n} (-1)^(n/d + 1) * mu(d) / d^3.

Offset 1, canonical program `A338548.P7895902691056002045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338548 (n : ℕ) : ℤ :=
  A338548.P7895902691056002045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338690.P145908305422629450

`∑{d}[n+1, A209615(#)]`
-/

namespace A338690.P145908305422629450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209615 d

end

end A338690.P145908305422629450

noncomputable section

/-- A338690: Inverse Moebius transform of A209615.

Offset 1, canonical program `A338690.P145908305422629450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338690 (n : ℕ) : ℤ :=
  A338690.P145908305422629450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338803.P379957158439633844

`∏{digits}[A007091(n), A000792(#)]`
-/

namespace A338803.P379957158439633844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000792 x).prod

end

end A338803.P379957158439633844

noncomputable section

/-- A338803: Product of the nonzero digits of (n written in base 5).

Offset 0, canonical program `A338803.P379957158439633844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338803 (n : ℕ) : ℤ :=
  A338803.P379957158439633844.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338848.P15958169668733079484

`A039966(n)*A062756(n)!`
-/

namespace A338848.P15958169668733079484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n * (Nat.factorial (A062756 n).toNat : ℤ)

end

end A338848.P15958169668733079484

noncomputable section

/-- A338848: Number of compositions (ordered partitions) of n into distinct powers of 3.

Offset 0, canonical program `A338848.P15958169668733079484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039966, A062756, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338848 (n : ℕ) : ℤ :=
  A338848.P15958169668733079484.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039966, A062756, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339355.P11064836581817046298

`∑[A072819(floor(n/2)+2)]`
-/

namespace A339355.P11064836581817046298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 (⌊(n : ℚ) / 2⌋ + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339355.P11064836581817046298

noncomputable section

/-- A339355: Maximum number of copies of a 12345 permutation pattern in an alternating (or zig-zag) permutation of length n + 7.

Offset 1, canonical program `A339355.P11064836581817046298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339355 (n : ℕ) : ℤ :=
  A339355.P11064836581817046298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339549.P346144717263522426

`∏{d}[n+1, A000120(#)]`
-/

namespace A339549.P346144717263522426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000120 d

end

end A339549.P346144717263522426

noncomputable section

/-- A339549: a(n) is the product of the binary weights (A000120) of the divisors of n.

Offset 1, canonical program `A339549.P346144717263522426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339549 (n : ℕ) : ℤ :=
  A339549.P346144717263522426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339814.P8159572788568852315

`val(A332382(n+1)-1, 2)`
-/

namespace A339814.P8159572788568852315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A332382 (n + 1) - 1).toNat 2

end

end A339814.P8159572788568852315

noncomputable section

/-- A339814: The exponent of the highest power of 2 dividing (A019565(2n) - 1).

Offset 1, canonical program `A339814.P8159572788568852315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A339814 (n : ℕ) : ℤ :=
  (A339814.P8159572788568852315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A339814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339824.P1254150227714300282

`1-A339052(n)`
-/

namespace A339824.P1254150227714300282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A339052 n

end

end A339824.P1254150227714300282

noncomputable section

/-- A339824: Even bisection of the infinite Fibonacci word A003849.

Offset 0, canonical program `A339824.P1254150227714300282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339824 (n : ℕ) : ℤ :=
  A339824.P1254150227714300282.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339825.P14699190543231876115

`1-A339051(n+1)`
-/

namespace A339825.P14699190543231876115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A339051 (n + 1)

end

end A339825.P14699190543231876115

noncomputable section

/-- A339825: Odd bisection of the infinite Fibonacci word A003849.

Offset 0, canonical program `A339825.P14699190543231876115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339825 (n : ℕ) : ℤ :=
  A339825.P14699190543231876115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339916.P17032178087067500628

`record[∑{d}[n+1, A131575(#)]]`
-/

namespace A339916.P17032178087067500628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A131575 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339916.P17032178087067500628

noncomputable section

/-- A339916: The sum of 2^((d-1)/2) over all divisors of 2n+1.

Offset 0, canonical program `A339916.P17032178087067500628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A339916 (n : ℕ) : ℤ :=
  A339916.P17032178087067500628.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A339916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340128.P13371639642349448018

`A033286(n+1)%A065091(n+1)`
-/

namespace A340128.P13371639642349448018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033286 (n + 1)) (A065091 (n + 1))

end

end A340128.P13371639642349448018

noncomputable section

/-- A340128: a(n) = (n*prime(n)) mod prime(n+1).

Offset 1, canonical program `A340128.P13371639642349448018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340128 (n : ℕ) : ℤ :=
  A340128.P13371639642349448018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340152.P12975233211975297466

`eq[A113061(n+1), A113061(n+2)]+1`
-/

namespace A340152.P12975233211975297466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340152.P12975233211975297466

noncomputable section

/-- A340152: Numbers k such that k and k+1 are both cubefree numbers (A004709).

Offset 1, canonical program `A340152.P12975233211975297466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340152 (n : ℕ) : ℤ :=
  (A340152.P12975233211975297466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340172.P10637103934445995388

`Δ[A340171(n)]-A340171(A182834(n+1))`
-/

namespace A340172.P10637103934445995388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A340171 (A182834 (n + 1)).toNat

end

end A340172.P10637103934445995388

noncomputable section

/-- A340172: List of Y-coordinates of point moving along one of the arms of a counterclockwise double square spiral; A340171 gives X-coordinates.

Offset 0, canonical program `A340172.P10637103934445995388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A340172 (n : ℕ) : ℤ :=
  A340172.P10637103934445995388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A340172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340569.P1345233823651597892

`or(A011782(n), A307768(n))-A001405(n)`
-/

namespace A340569.P1345233823651597892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 n) (A307768 n) - A001405 n

end

end A340569.P1345233823651597892

noncomputable section

/-- A340569: Total number of consecutive triples matching the pattern 123 in all faro permutations of length n.

Offset 0, canonical program `A340569.P1345233823651597892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A340569 (n : ℕ) : ℤ :=
  A340569.P1345233823651597892.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A340569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340709.P15672028804283203266

`A093545(A342131(n))`
-/

namespace A340709.P15672028804283203266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 (A342131 n).toNat

end

end A340709.P15672028804283203266

noncomputable section

/-- A340709: Let k = n/2 + floor(n/4) if n is even, otherwise (3n+1)/2; then a(n) = A093545(k).

Offset 0, canonical program `A340709.P15672028804283203266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093545, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340709 (n : ℕ) : ℤ :=
  A340709.P15672028804283203266.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093545, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340709.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340718.P5164710603548811233

`lt[A055945(n), 1]`
-/

namespace A340718.P5164710603548811233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A340718.P5164710603548811233

noncomputable section

/-- A340718: a(n) is the least k such that A340717(k) = n.

Offset 0, canonical program `A340718.P5164710603548811233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4224 terms. -/
def A340718 (n : ℕ) : ℤ :=
  (A340718.P5164710603548811233.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4224 terms. -/
def A340718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340760.P7898734539021318041

`Δ[A308733(abs(1-n))]`
-/

namespace A340760.P7898734539021318041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308733 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340760.P7898734539021318041

noncomputable section

/-- A340760: Number of partitions of n into 4 parts whose largest 3 parts have the same parity.

Offset 0, canonical program `A340760.P7898734539021318041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1587 terms. -/
def A340760 (n : ℕ) : ℤ :=
  A340760.P7898734539021318041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1587 terms. -/
def A340760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340767.P5650621943417437149

`A340764(6*n+5)`
-/

namespace A340767.P5650621943417437149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (6 * n + 5)

end

end A340767.P5650621943417437149

noncomputable section

/-- A340767: Number of primes p <= 6*n + 5 that are congruent to 2 modulo 3.

Offset 0, canonical program `A340767.P5650621943417437149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340764, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340767 (n : ℕ) : ℤ :=
  A340767.P5650621943417437149.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340764, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340781.P3679915960738657885

`(n*A065091(n+1))%A000040(n+1)`
-/

namespace A340781.P3679915960738657885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A065091 (n + 1)) (A000040 (n + 1))

end

end A340781.P3679915960738657885

noncomputable section

/-- A340781: a(n) = (n - 1)*prime(n + 1) mod prime(n).

Offset 1, canonical program `A340781.P3679915960738657885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340781 (n : ℕ) : ℤ :=
  A340781.P3679915960738657885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340867.P16024206652267673641

`A008347(n)%4`
-/

namespace A340867.P16024206652267673641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008347 n) 4

end

end A340867.P16024206652267673641

noncomputable section

/-- A340867: a(n) = (prime(n) - a(n-1)) mod 4; a(0)=0.

Offset 0, canonical program `A340867.P16024206652267673641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340867 (n : ℕ) : ℤ :=
  A340867.P16024206652267673641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341642.P2700734323703374879

`A267866(n)*A341591(n+1)`
-/

namespace A341642.P2700734323703374879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267866 n * A341591 (n + 1)

end

end A341642.P2700734323703374879

noncomputable section

/-- A341642: Number of strictly superior prime divisors of n.

Offset 1, canonical program `A341642.P2700734323703374879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341642 (n : ℕ) : ℤ :=
  A341642.P2700734323703374879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341732.P13236215540058293646

`∪[A128634(n+1)+A001453(n+2), A128634(n+2)]`
-/

namespace A341732.P13236215540058293646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128634 (n + 1) + A001453 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128634 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341732.P13236215540058293646

noncomputable section

/-- A341732: Row 2 of array in A341731.

Offset 4, canonical program `A341732.P13236215540058293646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A341732 (n : ℕ) : ℤ :=
  (A341732.P13236215540058293646.a (n - 4) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A341732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341765.P1181486014391266501

`3-A039701(n+3)`
-/

namespace A341765.P1181486014391266501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A039701 (n + 3)

end

end A341765.P1181486014391266501

noncomputable section

/-- A341765: Consider gaps between successive odd primes from 3 up to prime(n+2). Let k1 be number of gaps congruent to 2 (mod 6) and let k2 be number of gaps congruent to 4 (mod 6). Then a(n) = k1 - k2.

Offset 1, canonical program `A341765.P1181486014391266501`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341765 (n : ℕ) : ℤ :=
  A341765.P1181486014391266501.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341765.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341772.P16346253428948690978

`∑{d}[n+1, #*A321322((n+1)/#)]`
-/

namespace A341772.P16346253428948690978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P16346253428948690978

noncomputable section

/-- A341772: a(n) = Sum_{d|n} phi(d) * J_2(n/d).

Offset 1, canonical program `A341772.P16346253428948690978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341772 (n : ℕ) : ℤ :=
  A341772.P16346253428948690978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341832.P3740722404065052856

`∑{d}[n+1, A007427(#)*A247343((n+1)/#)]`
-/

namespace A341832.P3740722404065052856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341832.P3740722404065052856

noncomputable section

/-- A341832: Dirichlet g.f.: 1 / zeta(s)^6.

Offset 1, canonical program `A341832.P3740722404065052856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341832 (n : ℕ) : ℤ :=
  A341832.P3740722404065052856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341928.P6771407352622616690

`Δ[A341208(n+1)]`
-/

namespace A341928.P6771407352622616690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341928.P6771407352622616690

noncomputable section

/-- A341928: a(n) = F(n+4) * F(n+2) + 7 * (-1)^n where F(n) = A000045(n) are the Fibonacci numbers.

Offset 1, canonical program `A341928.P6771407352622616690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A341928 (n : ℕ) : ℤ :=
  A341928.P6771407352622616690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A341928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342121.P4889699748064811771

`abs(A055945(n+1)%(n+1-A055945(n+1)))`
-/

namespace A342121.P4889699748064811771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A055945 (n + 1)) ((n + 1 : ℤ) - A055945 (n + 1))|

end

end A342121.P4889699748064811771

noncomputable section

/-- A342121: a(n) is the remainder when the larger of n and its binary reverse is divided by the smaller.

Offset 1, canonical program `A342121.P4889699748064811771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342121 (n : ℕ) : ℤ :=
  A342121.P4889699748064811771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342123.P16507529077351676722

`-(-(n+1)%(n+1-A055945(n+1)))`
-/

namespace A342123.P16507529077351676722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-(n + 1 : ℤ)) ((n + 1 : ℤ) - A055945 (n + 1))

end

end A342123.P16507529077351676722

noncomputable section

/-- A342123: a(n) is the remainder when n is divided by its binary reverse.

Offset 1, canonical program `A342123.P16507529077351676722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342123 (n : ℕ) : ℤ :=
  A342123.P16507529077351676722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342126.P13514066496315759723

`n-A087734(n)`
-/

namespace A342126.P13514066496315759723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A087734 n

end

end A342126.P13514066496315759723

noncomputable section

/-- A342126: The binary expansion of a(n) corresponds to that of n where all the 1's have been replaced by 0's except in the first run of 1's.

Offset 0, canonical program `A342126.P13514066496315759723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087734, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342126 (n : ℕ) : ℤ :=
  A342126.P13514066496315759723.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087734, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342126.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342138.P3175785008254554819

`∑[or(A103452(n), A122553(n))]`
-/

namespace A342138.P3175785008254554819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103452 n) (A122553 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342138.P3175785008254554819

noncomputable section

/-- A342138: Array T(n,k) = (n+k)*(3*n+3*k-5)/2 + (3*k+1), read by ascending antidiagonals.

Offset 0, canonical program `A342138.P3175785008254554819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342138 (n : ℕ) : ℤ :=
  A342138.P3175785008254554819.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342173.P15269056441343780265

`A308495(n+1)-2`
-/

namespace A342173.P15269056441343780265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308495 (n + 1) - 2

end

end A342173.P15269056441343780265

noncomputable section

/-- A342173: a(n) = Sum_{j=1..n-1} floor(prime(n)/prime(j)).

Offset 1, canonical program `A342173.P15269056441343780265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A308495, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342173 (n : ℕ) : ℤ :=
  A342173.P15269056441343780265.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A308495, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342173.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A342285.P10112151938194424123

`A298026(record[A153152(A004273(n))])`
-/

namespace A342285.P10112151938194424123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342285.P10112151938194424123

noncomputable section

/-- A342285: Coordination sequence with respect to the central vertex of a dodecagon-based tiling of the plane by copies of a certain Goldberg quadrilateral tile.

Offset 0, canonical program `A342285.P10112151938194424123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A342285 (n : ℕ) : ℤ :=
  A342285.P10112151938194424123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A342285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342380.P14192390627142983996

`A000225(n)-(A057427(A130496(n))+A055795(n+1))`
-/

namespace A342380.P14192390627142983996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (A057427 (A130496 n).toNat + A055795 (n + 1))

end

end A342380.P14192390627142983996

noncomputable section

/-- A342380: Expansion of e.g.f. (exp(x)-1)*(exp(x) - x^4/24 - x^3/6 - x^2/2 - x - 1).

Offset 0, canonical program `A342380.P14192390627142983996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A342380 (n : ℕ) : ℤ :=
  A342380.P14192390627142983996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A342380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343005.P12079463249334117776

`A274010(n+2)-1`
-/

namespace A343005.P12079463249334117776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (n + 2) - 1

end

end A343005.P12079463249334117776

noncomputable section

/-- A343005: a(n) is the number of dihedral symmetries D_{2m} (m >= 3) that configurations of n non-overlapping equal circles can possess.

Offset 2, canonical program `A343005.P12079463249334117776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343005 (n : ℕ) : ℤ :=
  A343005.P12079463249334117776.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343107.P13830559437863902822

`eq[1, A188169(n+1)]+1`
-/

namespace A343107.P13830559437863902822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343107.P13830559437863902822

noncomputable section

/-- A343107: Numbers having exactly 1 divisor of the form 8*k + 1, that is, numbers with no divisor of the form 8*k + 1 other than 1.

Offset 1, canonical program `A343107.P13830559437863902822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3983 terms. -/
def A343107 (n : ℕ) : ℤ :=
  (A343107.P13830559437863902822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3983 terms. -/
def A343107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343108.P3085708699721612716

`eq[0, A188170(n+1)]+1`
-/

namespace A343108.P3085708699721612716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343108.P3085708699721612716

noncomputable section

/-- A343108: Numbers having no divisor of the form 8*k + 3.

Offset 1, canonical program `A343108.P3085708699721612716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3465 terms. -/
def A343108 (n : ℕ) : ℤ :=
  (A343108.P3085708699721612716.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3465 terms. -/
def A343108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343111.P1889951364348391382

`eq[2, A188169(n+1)]+1`
-/

namespace A343111.P1889951364348391382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343111.P1889951364348391382

noncomputable section

/-- A343111: Numbers having exactly 2 divisors of the form 8*k + 1, that is, numbers with exactly 1 divisor of the form 8*k + 1 other than 1.

Offset 1, canonical program `A343111.P1889951364348391382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4468 terms. -/
def A343111 (n : ℕ) : ℤ :=
  (A343111.P1889951364348391382.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4468 terms. -/
def A343111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343112.P14825827213365996688

`eq[1, A188170(n+1)]+1`
-/

namespace A343112.P14825827213365996688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343112.P14825827213365996688

noncomputable section

/-- A343112: Numbers having exactly 1 divisor of the form 8*k + 3.

Offset 1, canonical program `A343112.P14825827213365996688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2960 terms. -/
def A343112 (n : ℕ) : ℤ :=
  (A343112.P14825827213365996688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2960 terms. -/
def A343112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343396.P11070715344476014144

`∑[A008615(n)]-A049822(n+1)`
-/

namespace A343396.P11070715344476014144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049822 (n + 1)

end

end A343396.P11070715344476014144

noncomputable section

/-- A343396: Number of partitions of n into 3 parts [r,s,t] such that r <= s <= t where at least 1 part does not divide any larger part.

Offset 1, canonical program `A343396.P11070715344476014144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A343396 (n : ℕ) : ℤ :=
  A343396.P11070715344476014144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A343396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343497.P14728271527669368307

`∑{d}[n+1, #*A059376((n+1)/#)]`
-/

namespace A343497.P14728271527669368307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P14728271527669368307

noncomputable section

/-- A343497: a(n) = Sum_{k=1..n} gcd(k, n)^3.

Offset 1, canonical program `A343497.P14728271527669368307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343497 (n : ℕ) : ℤ :=
  A343497.P14728271527669368307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343498.P3977255890582142715

`∑{d}[n+1, #*A059377((n+1)/#)]`
-/

namespace A343498.P3977255890582142715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343498.P3977255890582142715

noncomputable section

/-- A343498: a(n) = Sum_{k=1..n} gcd(k, n)^4.

Offset 1, canonical program `A343498.P3977255890582142715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343498 (n : ℕ) : ℤ :=
  A343498.P3977255890582142715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343499.P1780454562911944393

`∑{d}[n+1, #*A059378((n+1)/#)]`
-/

namespace A343499.P1780454562911944393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A059378 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343499.P1780454562911944393

noncomputable section

/-- A343499: a(n) = Sum_{k=1..n} gcd(k, n)^5.

Offset 1, canonical program `A343499.P1780454562911944393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343499 (n : ℕ) : ℤ :=
  A343499.P1780454562911944393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343508.P14207009559735720220

`∑{d}[n+1, #*A069091((n+1)/#)]`
-/

namespace A343508.P14207009559735720220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A069091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343508.P14207009559735720220

noncomputable section

/-- A343508: a(n) = Sum_{k=1..n} gcd(k, n)^6.

Offset 1, canonical program `A343508.P14207009559735720220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343508 (n : ℕ) : ℤ :=
  A343508.P14207009559735720220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343509.P11098241970355354886

`∑{d}[n+1, #*A069092((n+1)/#)]`
-/

namespace A343509.P11098241970355354886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A069092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343509.P11098241970355354886

noncomputable section

/-- A343509: a(n) = Sum_{k=1..n} gcd(k, n)^7.

Offset 1, canonical program `A343509.P11098241970355354886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343509 (n : ℕ) : ℤ :=
  A343509.P11098241970355354886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343513.P14017701848191456005

`∑{d}[n+1, A000537(#)*A063453((n+1)/#)]`
-/

namespace A343513.P14017701848191456005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000537 d * A063453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343513.P14017701848191456005

noncomputable section

/-- A343513: a(n) = Sum_{k=1..n} (k/gcd(n, k))^3.

Offset 1, canonical program `A343513.P14017701848191456005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A343513 (n : ℕ) : ℤ :=
  A343513.P14017701848191456005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A343513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343518.P2640785958522770130

`∑{d}[n+1, #*A117109((n+1)/#)]`
-/

namespace A343518.P2640785958522770130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A117109 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343518.P2640785958522770130

noncomputable section

/-- A343518: a(n) = Sum_{1 <= x_1 <= x_2 <= x_3 <= x_4 <= n} gcd(x_1, x_2, x_3 , x_4, n).

Offset 1, canonical program `A343518.P2640785958522770130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343518 (n : ℕ) : ℤ :=
  A343518.P2640785958522770130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343810.P16791698285145293433

`4*A007089(n)`
-/

namespace A343810.P16791698285145293433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007089 n

end

end A343810.P16791698285145293433

noncomputable section

/-- A343810: Numbers that contain only the digits 0,4,8. Permutable multiples of 4: numbers k such that every permutation of the digits of k is a multiple of 4.

Offset 0, canonical program `A343810.P16791698285145293433`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343810 (n : ℕ) : ℤ :=
  A343810.P16791698285145293433.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344043.P16115602336690169425

`∑{d}[n+1, #*A361147((n+1)/#)]`
-/

namespace A344043.P16115602336690169425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A361147 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344043.P16115602336690169425

noncomputable section

/-- A344043: a(n) = n * Sum_{d|n} sigma(d)^3 / d.

Offset 1, canonical program `A344043.P16115602336690169425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344043 (n : ℕ) : ℤ :=
  A344043.P16115602336690169425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344132.P10624915225018026174

`∑{d}[n+1, #*A070919((n+1)/#)]`
-/

namespace A344132.P10624915225018026174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A070919 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344132.P10624915225018026174

noncomputable section

/-- A344132: a(n) = Sum_{i|n, j|n, k|n} gcd(i,j,k).

Offset 1, canonical program `A344132.P10624915225018026174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344132 (n : ℕ) : ℤ :=
  A344132.P10624915225018026174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344134.P1833307381121386491

`∑{d}[n+1, #*A070919(#)]`
-/

namespace A344134.P1833307381121386491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A070919 d

end

end A344134.P1833307381121386491

noncomputable section

/-- A344134: a(n) = Sum_{i|n, j|n, k|n} lcm(i,j,k).

Offset 1, canonical program `A344134.P1833307381121386491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344134 (n : ℕ) : ℤ :=
  A344134.P1833307381121386491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344138.P12772707692205614439

`∑{d}[n+1, #*A070920((n+1)/#)]`
-/

namespace A344138.P12772707692205614439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A070920 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344138.P12772707692205614439

noncomputable section

/-- A344138: a(n) = Sum_{x_1|n, x_2|n, x_3|n, x_4|n} gcd(x_1,x_2,x_3,x_4).

Offset 1, canonical program `A344138.P12772707692205614439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344138 (n : ℕ) : ℤ :=
  A344138.P12772707692205614439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344139.P12302863342557908566

`∑{d}[n+1, #*A070921((n+1)/#)]`
-/

namespace A344139.P12302863342557908566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A070921 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344139.P12302863342557908566

noncomputable section

/-- A344139: a(n) = Sum_{x_1|n, x_2|n, x_3|n, x_4|n, x_5|n} gcd(x_1,x_2,x_3,x_4,x_5).

Offset 1, canonical program `A344139.P12302863342557908566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344139 (n : ℕ) : ℤ :=
  A344139.P12302863342557908566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344228.P8348614878831773513

`A001700(n)+Δ[2*A110609(n)]`
-/

namespace A344228.P8348614878831773513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + (f1 (n + 1) - f1 n)

end

end A344228.P8348614878831773513

noncomputable section

/-- A344228: a(n) = binomial(2*n,n)*(2*n+1)/2+n*binomial(2*n-2,n)+(n-1)*binomial(2*n-2,n+1).

Offset 1, canonical program `A344228.P8348614878831773513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A344228 (n : ℕ) : ℤ :=
  A344228.P8348614878831773513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A344228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344300.P14345726006822671542

`A321543(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A344300.P14345726006822671542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A344300.P14345726006822671542

noncomputable section

/-- A344300: Expansion of Sum_{k>=1} (-1)^(k+1) * k^2 * x^(k^2) / (1 - x^(k^2)).

Offset 1, canonical program `A344300.P14345726006822671542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344300 (n : ℕ) : ℤ :=
  A344300.P14345726006822671542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344312.P5749535805421170525

`eq[0, Δ[A049419(n+1)]]+1`
-/

namespace A344312.P5749535805421170525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344312.P5749535805421170525

noncomputable section

/-- A344312: Number k such that k and k+1 have the same number of exponential divisors (A049419).

Offset 1, canonical program `A344312.P5749535805421170525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3948 terms. -/
def A344312 (n : ℕ) : ℤ :=
  (A344312.P5749535805421170525.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3948 terms. -/
def A344312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344442.P16917334550170264371

`A332844(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344442.P16917334550170264371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332844 (n + 1) - (n + 1 : ℤ)

end

end A344442.P16917334550170264371

noncomputable section

/-- A344442: a(n) = A332844(n) - n.

Offset 1, canonical program `A344442.P16917334550170264371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344442 (n : ℕ) : ℤ :=
  A344442.P16917334550170264371.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344892.P11384229101159648878

`A007090(A006288(n))`
-/

namespace A344892.P11384229101159648878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A006288 n).toNat

end

end A344892.P11384229101159648878

noncomputable section

/-- A344892: Loxton-van der Poorten sequence: base-4 representation contains only -1, 0, +1, converted to ordinary base-4 digits 0,1,2,3.

Offset 0, canonical program `A344892.P11384229101159648878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006288, A007090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344892 (n : ℕ) : ℤ :=
  A344892.P11384229101159648878.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006288, A007090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345021.P12098449152776448699

`val(A126567(n), 2)`
-/

namespace A345021.P12098449152776448699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A126567 n).toNat 2

end

end A345021.P12098449152776448699

noncomputable section

/-- A345021: a(n) is the result of replacing 2's by 0's in the hereditary base-2 expansion of n.

Offset 0, canonical program `A345021.P12098449152776448699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A345021 (n : ℕ) : ℤ :=
  (A345021.P12098449152776448699.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A345021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345108.P2496597667974495190

`(n+1)*2^(n+1)-A178965(n+1)`
-/

namespace A345108.P2496597667974495190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 2 ^ (n + 1) : ℤ) - A178965 (n + 1)

end

end A345108.P2496597667974495190

noncomputable section

/-- A345108: a(n) = Sum_{k=1..n} 2^(n - floor(n/k)).

Offset 1, canonical program `A345108.P2496597667974495190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A345108 (n : ℕ) : ℤ :=
  A345108.P2496597667974495190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A345108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345110.P5506348573002949858

`A217657(A008592(n)+dr(n-A217657(n)))`
-/

namespace A345110.P5506348573002949858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A008592 n + (SequenceMachineLib.digitalRoot ((n : ℤ) - A217657 n) : ℤ)).toNat

end

end A345110.P5506348573002949858

noncomputable section

/-- A345110: a(n) is n rotated one place to the left or, equivalently, n with the most significant digit moved to the least significant place, omitting leading zeros.

Offset 0, canonical program `A345110.P5506348573002949858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A345110 (n : ℕ) : ℤ :=
  A345110.P5506348573002949858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A345110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345284.P18352795406097472761

`∑{p}[n+1, A034386(#)]`
-/

namespace A345284.P18352795406097472761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A034386 p

end

end A345284.P18352795406097472761

noncomputable section

/-- A345284: a(n) = Sum_{p|n, p prime} (p #).

Offset 1, canonical program `A345284.P18352795406097472761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A345284 (n : ℕ) : ℤ :=
  A345284.P18352795406097472761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A345284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345290.P12313205594087297286

`A022290(A063695(n))-A022290(A063694(n))`
-/

namespace A345290.P12313205594087297286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A063695 n).toNat - A022290 (A063694 n).toNat

end

end A345290.P12313205594087297286

noncomputable section

/-- A345290: a(n) is obtained by replacing 2^k in binary expansion of n with Fibonacci(-k-2).

Offset 0, canonical program `A345290.P12313205594087297286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345290 (n : ℕ) : ℤ :=
  A345290.P12313205594087297286.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345290.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345367.P10545880049763385947

`∑[A002293(n)]`
-/

namespace A345367.P10545880049763385947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P10545880049763385947

noncomputable section

/-- A345367: a(n) = Sum_{k=0..n} binomial(4*k,k) / (3*k + 1).

Offset 0, canonical program `A345367.P10545880049763385947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A345367 (n : ℕ) : ℤ :=
  A345367.P10545880049763385947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A345367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345671.P18289345079455578265

`A205591(2*n+1)/A205592(2*(n+1))`
-/

namespace A345671.P18289345079455578265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205591 (2 * n + 1) : ℚ) / (A205592 (2 * (n + 1)) : ℚ)

end

end A345671.P18289345079455578265

noncomputable section

/-- A345671: Inverse permutation to A344792.

Offset 1, canonical program `A345671.P18289345079455578265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A345671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345671.P18289345079455578265.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A345671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346012.P12715492418463311471

`A000120(∑{e}[n+1, #-1]^A000120(7*n+8))`
-/

namespace A346012.P12715492418463311471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ) : ℚ) ^ (A000120 (7 * n + 8) : ℤ))).toNat

end

end A346012.P12715492418463311471

noncomputable section

/-- A346012: a(n) is the numerator of A346009(n)/A346010(n) - A001221(n)/2.

Offset 1, canonical program `A346012.P12715492418463311471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A346012 (n : ℕ) : ℤ :=
  A346012.P12715492418463311471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A346012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346308.P15982199701162537741

`∩[A001951(n+1), floor(n*sqrt(3))]`
-/

namespace A346308.P15982199701162537741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346308.P15982199701162537741

noncomputable section

/-- A346308: Intersection of Beatty sequences for sqrt(2) and sqrt(3).

Offset 1, canonical program `A346308.P15982199701162537741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5772 terms. -/
def A346308 (n : ℕ) : ℤ :=
  (A346308.P15982199701162537741.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5772 terms. -/
def A346308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346513.P12699743083685003027

`abs(Δ[A056570(n)])`
-/

namespace A346513.P12699743083685003027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A346513.P12699743083685003027

noncomputable section

/-- A346513: a(n) = Fibonacci(n+1)^3 - Fibonacci(n)^3.

Offset 0, canonical program `A346513.P12699743083685003027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A346513 (n : ℕ) : ℤ :=
  A346513.P12699743083685003027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A346513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346657.P14082968289212320522

`comp[A055471(n+1)-1]+1`
-/

namespace A346657.P14082968289212320522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A346657.P14082968289212320522

noncomputable section

/-- A346657: Numbers that are not divisible by the product of their nonzero digits.

Offset 1, canonical program `A346657.P14082968289212320522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346657 (n : ℕ) : ℤ :=
  (A346657.P14082968289212320522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346680.P11721256151507285597

`A002293(n)-a(n-1)` with `a(0)=1`
-/

namespace A346680.P11721256151507285597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002293 n - a (n - 1)

end

end A346680.P11721256151507285597

noncomputable section

/-- A346680: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(4*k,k) / (3*k + 1).

Offset 0, canonical program `A346680.P11721256151507285597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A346680 (n : ℕ) : ℤ :=
  A346680.P11721256151507285597.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A346680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347030.P7928469100957179067

`∑[A067856(n+1)]`
-/

namespace A347030.P7928469100957179067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347030.P7928469100957179067

noncomputable section

/-- A347030: a(n) = 1 + Sum_{k=2..n} (-1)^k * a(floor(n/k)).

Offset 1, canonical program `A347030.P7928469100957179067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347030 (n : ℕ) : ℤ :=
  A347030.P7928469100957179067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347159.P4391116051064256813

`∑{p}[A072504(n+1), #^3]`
-/

namespace A347159.P4391116051064256813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 3

end

end A347159.P4391116051064256813

noncomputable section

/-- A347159: Sum of cubes of distinct prime divisors of n that are <= sqrt(n).

Offset 1, canonical program `A347159.P4391116051064256813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347159 (n : ℕ) : ℤ :=
  (A347159.P4391116051064256813.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347160.P12328861730165408120

`∑{p}[A072504(n+1), #^4]`
-/

namespace A347160.P12328861730165408120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 4

end

end A347160.P12328861730165408120

noncomputable section

/-- A347160: Sum of 4th powers of distinct prime divisors of n that are <= sqrt(n).

Offset 1, canonical program `A347160.P12328861730165408120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347160 (n : ℕ) : ℤ :=
  (A347160.P12328861730165408120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347291.P14200828636263259697

`∏{e}[n+1, ceil(2/#)]*A003557(n+1)`
-/

namespace A347291.P14200828636263259697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ⌈2 / (Nat.factorization (f1 n) p : ℚ)⌉) * A003557 (n + 1)

end

end A347291.P14200828636263259697

noncomputable section

/-- A347291: Multiplicative function defined by a(p) = 2 and a(p^k) = p^(k-1) for k >= 2.

Offset 1, canonical program `A347291.P14200828636263259697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347291 (n : ℕ) : ℤ :=
  A347291.P14200828636263259697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347342.P3644044205542841526

`A000040(n+1)%A038605(n+1)`
-/

namespace A347342.P3644044205542841526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A038605 (n + 1))

end

end A347342.P3644044205542841526

noncomputable section

/-- A347342: a(n) = prime(n) mod floor(prime(n) / n).

Offset 1, canonical program `A347342.P3644044205542841526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347342 (n : ℕ) : ℤ :=
  A347342.P3644044205542841526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347481.P12391842532662398562

`A302603(n+2)+∑[2^(n+1)]`
-/

namespace A347481.P12391842532662398562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302603 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A347481.P12391842532662398562

noncomputable section

/-- A347481: Number of total dominating sets in the n-dipyramidal graph.

Offset 1, canonical program `A347481.P12391842532662398562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A347481 (n : ℕ) : ℤ :=
  A347481.P12391842532662398562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A347481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347586.P6878572311121842152

`A055104(n)-∑[A008615(n)]`
-/

namespace A347586.P6878572311121842152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055104 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347586.P6878572311121842152

noncomputable section

/-- A347586: Number of partitions of n into at most 4 distinct parts.

Offset 0, canonical program `A347586.P6878572311121842152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347586 (n : ℕ) : ℤ :=
  A347586.P6878572311121842152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347697.P9868901146358314070

`∑[char[∑[A137688(n+1)]]]`
-/

namespace A347697.P9868901146358314070
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347697.P9868901146358314070

noncomputable section

/-- A347697: a(n) = max_{k <= n} A347696(k).

Offset 0, canonical program `A347697.P9868901146358314070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A347697 (n : ℕ) : ℤ :=
  (A347697.P9868901146358314070.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A347697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347737.P5866675298143105702

`A006463(n+1)-A060831(n)`
-/

namespace A347737.P5866675298143105702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 (n + 1) - A060831 n

end

end A347737.P5866675298143105702

noncomputable section

/-- A347737: Zero together with the partial sums of A238005.

Offset 0, canonical program `A347737.P5866675298143105702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347737 (n : ℕ) : ℤ :=
  A347737.P5866675298143105702.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347737.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347861.P5929995848693885535

`A215602(n)%A000032(n+2)`
-/

namespace A347861.P5929995848693885535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215602 n) (A000032 (n + 2))

end

end A347861.P5929995848693885535

noncomputable section

/-- A347861: a(n) = A000032(n)*A000032(n+1) mod A000032(n+2).

Offset 0, canonical program `A347861.P5929995848693885535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A347861 (n : ℕ) : ℤ :=
  A347861.P5929995848693885535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A347861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347941.P10466142874207117207

`A131737(A086161(n))+1`
-/

namespace A347941.P10466142874207117207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A086161 n).toNat + 1

end

end A347941.P10466142874207117207

noncomputable section

/-- A347941: For sets of n random points in the real plane, a(n) is an upper bound for the minimal number of nearest neighbors.

Offset 2, canonical program `A347941.P10466142874207117207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347941 (n : ℕ) : ℤ :=
  A347941.P10466142874207117207.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348018.P14022618652793817197

`A217038((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A348018.P14022618652793817197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A348018.P14022618652793817197

noncomputable section

/-- A348018: a(n) is the index of A064549(n) = n * Product_{p prime|n} p in the sequence of powerful numbers (A001694).

Offset 1, canonical program `A348018.P14022618652793817197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A348018 (n : ℕ) : ℤ :=
  A348018.P14022618652793817197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A348018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348230.P11435748801159920124

`∑[A348229(n)]`
-/

namespace A348230.P11435748801159920124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348230.P11435748801159920124

noncomputable section

/-- A348230: Partial sums of A348229.

Offset 0, canonical program `A348230.P11435748801159920124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348230 (n : ℕ) : ℤ :=
  A348230.P11435748801159920124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348238.P5407423033407331285

`∑[A348236(n)]`
-/

namespace A348238.P5407423033407331285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348238.P5407423033407331285

noncomputable section

/-- A348238: Partial sums of A348236.

Offset 0, canonical program `A348238.P5407423033407331285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348238 (n : ℕ) : ℤ :=
  A348238.P5407423033407331285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348239.P18203730916746657209

`∑[A348237(n)]`
-/

namespace A348239.P18203730916746657209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348239.P18203730916746657209

noncomputable section

/-- A348239: Partial sums of A348237.

Offset 0, canonical program `A348239.P18203730916746657209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348239 (n : ℕ) : ℤ :=
  A348239.P18203730916746657209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348388.P14390426255970003515

`ceil(A122196(n+1)/A122197(n+1))`
-/

namespace A348388.P14390426255970003515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A122196 (n + 1) : ℚ) / (A122197 (n + 1) : ℚ)⌉

end

end A348388.P14390426255970003515

noncomputable section

/-- A348388: Irregular triangle read by rows: T(n, k) = floor((n-k)/k), for k = 1, 2, ..., floor(n/2) and n >= 2.

Offset 2, canonical program `A348388.P14390426255970003515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348388 (n : ℕ) : ℤ :=
  A348388.P14390426255970003515.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348405.P16510536186273555448

`A139797(n)+(-1)^n`
-/

namespace A348405.P16510536186273555448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139797 n + (-1) ^ n

end

end A348405.P16510536186273555448

noncomputable section

/-- A348405: a(0) = 1, a(n) + a(n+1) = round(2^n/9), n >= 0.

Offset 0, canonical program `A348405.P16510536186273555448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A348405 (n : ℕ) : ℤ :=
  A348405.P16510536186273555448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A348405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348636.P17645639586115979662

`A265316(n+1)+1`
-/

namespace A348636.P17645639586115979662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265316 (n + 1) + 1

end

end A348636.P17645639586115979662

noncomputable section

/-- A348636: Greedy Cantor's Dust Partition.

Offset 1, canonical program `A348636.P17645639586115979662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348636 (n : ℕ) : ℤ :=
  A348636.P17645639586115979662.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348636.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A348689.P458289713267582867

`Δ[A160664(n)-A000203(n+2)]`
-/

namespace A348689.P458289713267582867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - A000203 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348689.P458289713267582867

noncomputable section

/-- A348689: a(n) = sigma(n) + sigma(n+1) - sigma(n+2), where sigma is the sum of divisors.

Offset 1, canonical program `A348689.P458289713267582867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348689 (n : ℕ) : ℤ :=
  A348689.P458289713267582867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348774.P5425050507885369493

`A006005(Δ[n²])+1`
-/

namespace A348774.P5425050507885369493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A348774.P5425050507885369493

noncomputable section

/-- A348774: A348773(2*n+1).

Offset 0, canonical program `A348774.P5425050507885369493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A348774 (n : ℕ) : ℤ :=
  A348774.P5425050507885369493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A348774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348919.P10211732213500185262

`A308266(n)+a(n-1)` with `a(0)=0`
-/

namespace A348919.P10211732213500185262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A308266 n + a (n - 1)

end

end A348919.P10211732213500185262

noncomputable section

/-- A348919: Sum of the middle parts of the partitions of k into 3 parts for all 0 <= k <= n.

Offset 0, canonical program `A348919.P10211732213500185262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348919 (n : ℕ) : ℤ :=
  A348919.P10211732213500185262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349201.P17480398757070551637

`(A140106(n+1)²+n)*A008619(n)`
-/

namespace A349201.P17480398757070551637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140106 (n + 1) ^ 2 + (n : ℤ)) * A008619 n

end

end A349201.P17480398757070551637

noncomputable section

/-- A349201: a(n) = [x^n] ((x^2*(1 + 3*x + x^2 - 2*x^3 + 3*x^4 + x^5 - x^6))/((-1 + x)^4 *(1 + x)^3)).

Offset 1, canonical program `A349201.P17480398757070551637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349201 (n : ℕ) : ℤ :=
  A349201.P17480398757070551637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349315.P10053096381514176344

`gcd(a(n-1)+1, A247223(n²))` with `a(0)=1`
-/

namespace A349315.P10053096381514176344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) (A247223 (n ^ 2))

end

end A349315.P10053096381514176344

noncomputable section

/-- A349315: Ordinal transform of A348674.

Offset 0, canonical program `A349315.P10053096381514176344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A349315 (n : ℕ) : ℤ :=
  (A349315.P10053096381514176344.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A349315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349372.P5844012535782128724

`∑{d}[n+1, A349371(#)]`
-/

namespace A349372.P5844012535782128724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349371 d

end

end A349372.P5844012535782128724

noncomputable section

/-- A349372: Dirichlet convolution of Kimberling's paraphrase, A003602, with tau (number of divisors, A000005).

Offset 1, canonical program `A349372.P5844012535782128724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349372 (n : ℕ) : ℤ :=
  A349372.P5844012535782128724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349394.P210516795435731064

`A003557(n+1)*A069513(n+1)`
-/

namespace A349394.P210516795435731064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A069513 (n + 1)

end

end A349394.P210516795435731064

noncomputable section

/-- A349394: a(p^e) = p^(e-1) for prime powers, a(n) = 0 for all other n; Dirichlet convolution of A003415 (arithmetic derivative of n) with A055615 (Dirichlet inverse of n).

Offset 1, canonical program `A349394.P210516795435731064`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349394 (n : ℕ) : ℤ :=
  A349394.P210516795435731064.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349554.P15839873787135527783

`A054108(n+1)+4*(-1)^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349554.P15839873787135527783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054108 (n + 1) + 4 * (-1) ^ (n + 1)

end

end A349554.P15839873787135527783

noncomputable section

/-- A349554: a(n) = A054108(n) + 4*(-1)^n.

Offset 1, canonical program `A349554.P15839873787135527783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349554 (n : ℕ) : ℤ :=
  A349554.P15839873787135527783.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349606.P7513340450088457348

`∑{d}[n+1, A000120(#)*A000120((n+1)/#)]`
-/

namespace A349606.P7513340450088457348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000120 d * A000120 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349606.P7513340450088457348

noncomputable section

/-- A349606: Dirichlet convolution of the binary digital sum function (A000120) with itself.

Offset 1, canonical program `A349606.P7513340450088457348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349606 (n : ℕ) : ℤ :=
  A349606.P7513340450088457348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349895.P2845120770672316916

`A087811(n+1)-or(A000035(n), A106466(n))`
-/

namespace A349895.P2845120770672316916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) - Int.lor (A000035 n) (A106466 n)

end

end A349895.P2845120770672316916

noncomputable section

/-- A349895: Length of the longest self avoiding walk through a grid such that either x or y is changed by +1 or -1 in each step, and with 0 <= y, 0 <= x <= y, x + y <= n starting at (0,0) and terminating at (x,y) = (n,0).

Offset 0, canonical program `A349895.P2845120770672316916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349895 (n : ℕ) : ℤ :=
  A349895.P2845120770672316916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349913.P3840109067347682984

`A001227(n+1)+A327276(n+1)`
-/

namespace A349913.P3840109067347682984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + A327276 (n + 1)

end

end A349913.P3840109067347682984

noncomputable section

/-- A349913: Sum of A001227 (the number of odd divisors function) and its Dirichlet inverse.

Offset 1, canonical program `A349913.P3840109067347682984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327276, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349913 (n : ℕ) : ℤ :=
  A349913.P3840109067347682984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327276, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350173.P3741203223829685710

`(A001748(n+1)/3)^((n+1)%2+1)`
-/

namespace A350173.P3741203223829685710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001748 (n + 1) : ℚ) / 3) ^ ((n + 1) % 2 + 1)

end

end A350173.P3741203223829685710

noncomputable section

/-- A350173: Write the square of 1st prime, then the 2nd prime, then the square of 3rd prime, alternately squaring or not.

Offset 1, canonical program `A350173.P3741203223829685710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350173 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350173.P3741203223829685710.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350253.P8487770623195509252

`A129982(A214684(n+1)+2*n)`
-/

namespace A350253.P8487770623195509252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (A214684 (n + 1) + (2 * n : ℤ)).toNat

end

end A350253.P8487770623195509252

noncomputable section

/-- A350253: a(n) = A000045(n)^A000045(n+1) mod A000045(n+2).

Offset 0, canonical program `A350253.P8487770623195509252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A350253 (n : ℕ) : ℤ :=
  A350253.P8487770623195509252.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A350253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350327.P15746075285235179687

`ceil(A299264(n)/A001844(n))`
-/

namespace A350327.P15746075285235179687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299264 n : ℚ) / (A001844 n : ℚ)⌉

end

end A350327.P15746075285235179687

noncomputable section

/-- A350327: Maximum domination number of connected graphs with n vertices and minimum degree 2.

Offset 3, canonical program `A350327.P15746075285235179687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350327 (n : ℕ) : ℤ :=
  A350327.P15746075285235179687.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350414.P11254448810084278629

`A055017(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A350414.P11254448810084278629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055017 (a (n - 1)).toNat + a (n - 1)

end

end A350414.P11254448810084278629

noncomputable section

/-- A350414: a(1)=1; for n > 1, a(n) = a(n-1) + (sum of odd-indexed digits of a(n-1)) - (sum of even-indexed digits of a(n-1)).

Offset 1, canonical program `A350414.P11254448810084278629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350414 (n : ℕ) : ℤ :=
  A350414.P11254448810084278629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350551.P17714853893457588206

`A094706(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A350551.P17714853893457588206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A094706 (n - 1) - a (n - 1)

end

end A350551.P17714853893457588206

noncomputable section

/-- A350551: Convolution of Jacobsthal numbers and Pell numbers.

Offset 0, canonical program `A350551.P17714853893457588206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A350551 (n : ℕ) : ℤ :=
  A350551.P17714853893457588206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A350551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350678.P4865955700587187956

`∑[A185381(n)]`
-/

namespace A350678.P4865955700587187956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350678.P4865955700587187956

noncomputable section

/-- A350678: Partial sums of A185381.

Offset 0, canonical program `A350678.P4865955700587187956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A350678 (n : ℕ) : ℤ :=
  A350678.P4865955700587187956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A350678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350690.P8053654287965355630

`record[gcd(n+1, A063477(n+1))]`
-/

namespace A350690.P8053654287965355630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A063477 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350690.P8053654287965355630

noncomputable section

/-- A350690: Numbers k that divide the sum of divisors of Fibonacci(k).

Offset 1, canonical program `A350690.P8053654287965355630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A350690 (n : ℕ) : ℤ :=
  (A350690.P8053654287965355630.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A350690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351300.P11599062728590218467

`A069095(n+1)/A059378(n+1)`
-/

namespace A351300.P11599062728590218467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069095 (n + 1) : ℚ) / (A059378 (n + 1) : ℚ)

end

end A351300.P11599062728590218467

noncomputable section

/-- A351300: a(n) = n^5 * Product_{p|n, p prime} (1 + 1/p^5).

Offset 1, canonical program `A351300.P11599062728590218467`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059378, A069095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351300 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351300.P11599062728590218467.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059378, A069095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351315.P14474847983282266353

`∑{d}[n+1, A010806(A037213(#))]`
-/

namespace A351315.P14474847983282266353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010806 (A037213 d).toNat

end

end A351315.P14474847983282266353

noncomputable section

/-- A351315: Sum of the 9th powers of the square divisors of n.

Offset 1, canonical program `A351315.P14474847983282266353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351315 (n : ℕ) : ℤ :=
  A351315.P14474847983282266353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351369.P13114883691127630999

`∑{p}[n+1, A033286(#)]`
-/

namespace A351369.P13114883691127630999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033286 p

end

end A351369.P13114883691127630999

noncomputable section

/-- A351369: a(n) = Sum_{p|n, p prime} p * prime(p).

Offset 1, canonical program `A351369.P13114883691127630999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351369 (n : ℕ) : ℤ :=
  A351369.P13114883691127630999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352031.P2060575896999822082

`A051000(n+1)-(n+1)^3*A000035(n+1)`
-/

namespace A352031.P2060575896999822082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051000 (n + 1) - ((n + 1) ^ 3 : ℤ) * A000035 (n + 1)

end

end A352031.P2060575896999822082

noncomputable section

/-- A352031: Sum of the cubes of the odd proper divisors of n.

Offset 1, canonical program `A352031.P2060575896999822082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352031 (n : ℕ) : ℤ :=
  A352031.P2060575896999822082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352031.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352449.P2406120621837797886

`and(n, A133179(n))`
-/

namespace A352449.P2406120621837797886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A133179 n)

end

end A352449.P2406120621837797886

noncomputable section

/-- A352449: 2^k appears in the binary expansion of a(n) iff 2^k appears in the binary expansion of n and k AND n = k (where AND denotes the bitwise AND operator).

Offset 0, canonical program `A352449.P2406120621837797886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A352449 (n : ℕ) : ℤ :=
  A352449.P2406120621837797886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A352449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352997.P7877165416529509533

`eq[1, ∑{e}[A352996(n+2), #]]+2`
-/

namespace A352997.P7877165416529509533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352996 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A352997.P7877165416529509533

noncomputable section

/-- A352997: Numbers k such that A352996(k) is prime.

Offset 1, canonical program `A352997.P7877165416529509533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1328 terms. -/
def A352997 (n : ℕ) : ℤ :=
  (A352997.P7877165416529509533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1328 terms. -/
def A352997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353024.P9978356076092781004

`A350174((n+1)²)`
-/

namespace A353024.P9978356076092781004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 ((n + 1) ^ 2)

end

end A353024.P9978356076092781004

noncomputable section

/-- A353024: Largest k such that A007504(k) <= n^2.

Offset 1, canonical program `A353024.P9978356076092781004`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353024 (n : ℕ) : ℤ :=
  A353024.P9978356076092781004.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353036.P3388281851575775907

`record[2*n+1-A055945(n+1)]`
-/

namespace A353036.P3388281851575775907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A055945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353036.P3388281851575775907

noncomputable section

/-- A353036: Records in A119435.

Offset 1, canonical program `A353036.P3388281851575775907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A353036 (n : ℕ) : ℤ :=
  A353036.P3388281851575775907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A353036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353078.P2808149922824200265

`∑{d}[n+1, A065091(#)]`
-/

namespace A353078.P2808149922824200265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065091 d

end

end A353078.P2808149922824200265

noncomputable section

/-- A353078: Inverse Moebius transform of odd primes.

Offset 1, canonical program `A353078.P2808149922824200265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353078 (n : ℕ) : ℤ :=
  A353078.P2808149922824200265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353143.P8420748734297639025

`A007090(A002275(n))`
-/

namespace A353143.P8420748734297639025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A002275 n).toNat

end

end A353143.P8420748734297639025

noncomputable section

/-- A353143: Decimal repunits written in base 4.

Offset 0, canonical program `A353143.P8420748734297639025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353143 (n : ℕ) : ℤ :=
  A353143.P8420748734297639025.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353144.P5147909990281384543

`A007091(A002275(n))`
-/

namespace A353144.P5147909990281384543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A002275 n).toNat

end

end A353144.P5147909990281384543

noncomputable section

/-- A353144: Decimal repunits written in base 5.

Offset 0, canonical program `A353144.P5147909990281384543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353144 (n : ℕ) : ℤ :=
  A353144.P5147909990281384543.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353144.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353157.P4330905322786453850

`A060973(3*n+1)-n`
-/

namespace A353157.P4330905322786453850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (3 * n + 1) - (n : ℤ)

end

end A353157.P4330905322786453850

noncomputable section

/-- A353157: a(n) is the distance from n to the nearest integer whose binary expansion has no common 1-bits with that of n.

Offset 0, canonical program `A353157.P4330905322786453850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A353157 (n : ℕ) : ℤ :=
  A353157.P4330905322786453850.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A353157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353179.P15255588477754131034

`A052038(A000040(n+1))`
-/

namespace A353179.P15255588477754131034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A000040 (n + 1)).toNat

end

end A353179.P15255588477754131034

noncomputable section

/-- A353179: a(n) is the first nonzero digit in the decimal expansion of 1/prime(n).

Offset 1, canonical program `A353179.P15255588477754131034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A353179 (n : ℕ) : ℤ :=
  A353179.P15255588477754131034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A353179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353551.P17926714260761727250

`∑[A048785(n)]`
-/

namespace A353551.P17926714260761727250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353551.P17926714260761727250

noncomputable section

/-- A353551: a(n) = Sum_{k=1..n} tau(k^3), where tau is the number of divisors function A000005.

Offset 0, canonical program `A353551.P17926714260761727250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353551 (n : ℕ) : ℤ :=
  A353551.P17926714260761727250.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353557.P3482545693705023104

`A059841(A095112(n+1))`
-/

namespace A353557.P3482545693705023104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A095112 (n + 1)).toNat

end

end A353557.P3482545693705023104

noncomputable section

/-- A353557: a(n) = 1 if n is an odd number with an even number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A353557.P3482545693705023104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095112, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353557 (n : ℕ) : ℤ :=
  A353557.P3482545693705023104.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095112, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353628.P1094902956190282200

`A001001(n+1)%2`
-/

namespace A353628.P1094902956190282200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001001 (n + 1)) 2

end

end A353628.P1094902956190282200

noncomputable section

/-- A353628: Parity of A001001(n), where A001001(n) = Sum_{d|n} d*sigma(d).

Offset 1, canonical program `A353628.P1094902956190282200`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353628 (n : ℕ) : ℤ :=
  A353628.P1094902956190282200.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353906.P15322443910608635693

`A055017(n+1)^A055642(n+1)`
-/

namespace A353906.P15322443910608635693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055017 (n + 1) : ℚ) ^ (A055642 (n + 1) : ℤ)

end

end A353906.P15322443910608635693

noncomputable section

/-- A353906: a(n) is the {alternating sum of the digits of n} raised to the power {number of digits of n}.

Offset 1, canonical program `A353906.P15322443910608635693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055017, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353906 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353906.P15322443910608635693.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055017, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354034.P58261609399976325

`A059841(n)+A098108(n)`
-/

namespace A354034.P58261609399976325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A098108 n

end

end A354034.P58261609399976325

noncomputable section

/-- A354034: a(n) = 1 if n is an even number or a square, otherwise 0.

Offset 0, canonical program `A354034.P58261609399976325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354034 (n : ℕ) : ℤ :=
  A354034.P58261609399976325.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354098.P8617954858712711501

`lt[0, A354097(n+1)]+1`
-/

namespace A354098.P8617954858712711501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354098.P8617954858712711501

noncomputable section

/-- A354098: Numbers k such that the cototient of k (= k-phi(k)) is a multiple of 4.

Offset 1, canonical program `A354098.P8617954858712711501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354098 (n : ℕ) : ℤ :=
  (A354098.P8617954858712711501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354356.P6972406899638248837

`record[(n+1)*A354355(n+1)]`
-/

namespace A354356.P6972406899638248837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354356.P6972406899638248837

noncomputable section

/-- A354356: Numbers k such that sigma(k) is 3-smooth (has no larger prime factors than 3).

Offset 1, canonical program `A354356.P6972406899638248837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1213 terms. -/
def A354356 (n : ℕ) : ℤ :=
  A354356.P6972406899638248837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1213 terms. -/
def A354356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354812.P524993802197872541

`A016813(A001748(n+5))-1`
-/

namespace A354812.P524993802197872541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A001748 (n + 5)).toNat - 1

end

end A354812.P524993802197872541

noncomputable section

/-- A354812: Positions of +2's in A346242.

Offset 1, canonical program `A354812.P524993802197872541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A354812 (n : ℕ) : ℤ :=
  A354812.P524993802197872541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A354812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354924.P17452870257802639278

`A010055(A026741(n+1))`
-/

namespace A354924.P17452870257802639278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A026741 (n + 1)).toNat

end

end A354924.P17452870257802639278

noncomputable section

/-- A354924: a(n) = 1 if A047994(n) is equal to A344005(n), otherwise 0.

Offset 1, canonical program `A354924.P17452870257802639278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354924 (n : ℕ) : ℤ :=
  A354924.P17452870257802639278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354996.P15206134778227489401

`round(A072504(n+1)/A020723(n))`
-/

namespace A354996.P15206134778227489401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072504 (n + 1) : ℚ) / (A020723 n : ℚ))

end

end A354996.P15206134778227489401

noncomputable section

/-- A354996: a(n) = 1 if n > A034699(n)^2, otherwise 0, where A034699(n) is the largest prime power factor of n.

Offset 1, canonical program `A354996.P15206134778227489401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354996 (n : ℕ) : ℤ :=
  A354996.P15206134778227489401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355275.P3750325120269682961

`lt[3/acot(n), 9^A062756(n)]`
-/

namespace A355275.P3750325120269682961
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 / SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A062756 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A355275.P3750325120269682961

noncomputable section

/-- A355275: Numbers having more odd than even digits when written in base 3.

Offset 1, canonical program `A355275.P3750325120269682961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A355275 (n : ℕ) : ℤ :=
  (A355275.P3750325120269682961.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A355275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355711.P17709382275087969844

`∩[A355710(n+1)-1, A355710(n+1)]`
-/

namespace A355711.P17709382275087969844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355710 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355711.P17709382275087969844

noncomputable section

/-- A355711: Starts of runs of 3 consecutive numbers with the same number of 5-smooth divisors.

Offset 1, canonical program `A355711.P17709382275087969844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1618 terms. -/
def A355711 (n : ℕ) : ℤ :=
  (A355711.P17709382275087969844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1618 terms. -/
def A355711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355938.P18025129743815674598

`A080339(A065764(n+1))`
-/

namespace A355938.P18025129743815674598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A065764 (n + 1)).toNat

end

end A355938.P18025129743815674598

noncomputable section

/-- A355938: a(n) = 1 if sigma(n^2) is a noncomposite, otherwise 0.

Offset 1, canonical program `A355938.P18025129743815674598`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355938 (n : ℕ) : ℤ :=
  A355938.P18025129743815674598.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355938.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356043.P17373567186682368949

`∑[A321140(n+1)]`
-/

namespace A356043.P17373567186682368949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356043.P17373567186682368949

noncomputable section

/-- A356043: a(n) = Sum_{k=1..n} sigma_3(k) * floor(n/k).

Offset 1, canonical program `A356043.P17373567186682368949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356043 (n : ℕ) : ℤ :=
  A356043.P17373567186682368949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356052.P15498316879302581903

`∩[A001951(n+1), comp[A137804(n+1)]]`
-/

namespace A356052.P15498316879302581903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A356052.P15498316879302581903

noncomputable section

/-- A356052: Intersection of A001951 and A137803.

Offset 1, canonical program `A356052.P15498316879302581903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A356052 (n : ℕ) : ℤ :=
  (A356052.P15498316879302581903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A356052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356053.P9081293707320961175

`∩[A137804(n+1), A001951(n)]`
-/

namespace A356053.P9081293707320961175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356053.P9081293707320961175

noncomputable section

/-- A356053: Intersection of A001951 and A137804.

Offset 1, canonical program `A356053.P9081293707320961175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4721 terms. -/
def A356053 (n : ℕ) : ℤ :=
  (A356053.P9081293707320961175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4721 terms. -/
def A356053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356249.P5630374803264959714

`A064603(n+1)-3*A356125(n+1)+3*A319086(n+1)`
-/

namespace A356249.P5630374803264959714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064603 (n + 1) - 3 * A356125 (n + 1) + 3 * A319086 (n + 1)

end

end A356249.P5630374803264959714

noncomputable section

/-- A356249: a(n) = Sum_{k=1..n} (k * floor(n/k))^3.

Offset 1, canonical program `A356249.P5630374803264959714`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064603, A319086, A356125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356249 (n : ℕ) : ℤ :=
  A356249.P5630374803264959714.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064603, A319086, A356125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356296.P6882871510415539984

`A217737(n+1)²%(n+1)`
-/

namespace A356296.P6882871510415539984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217737 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A356296.P6882871510415539984

noncomputable section

/-- A356296: a(n) = Fibonacci(n)^2 mod n.

Offset 1, canonical program `A356296.P6882871510415539984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356296 (n : ℕ) : ℤ :=
  A356296.P6882871510415539984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356352.P18088137796280476194

`gcd(a(A035327(n)), A000120(n))` with `a(0)=0`
-/

namespace A356352.P18088137796280476194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (a (A035327 n).toNat : ℤ) (A000120 n)

end

end A356352.P18088137796280476194

noncomputable section

/-- A356352: a(n) = GCD of run lengths in binary expansion of n.

Offset 0, canonical program `A356352.P18088137796280476194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356352 (n : ℕ) : ℤ :=
  (A356352.P18088137796280476194.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356474.P13740467552798713999

`∏{p}[A006093(n+1), #-1]`
-/

namespace A356474.P13740467552798713999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A356474.P13740467552798713999

noncomputable section

/-- A356474: a(n) = phi(rad(prime(n)-1)), where phi = A000010 and rad = A007947.

Offset 1, canonical program `A356474.P13740467552798713999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356474 (n : ℕ) : ℤ :=
  A356474.P13740467552798713999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356644.P10888177438195276063

`2^(2*(n+1))-A286183(n+1)-1`
-/

namespace A356644.P10888177438195276063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * (n + 1)) : ℤ) - A286183 (n + 1) - 1

end

end A356644.P10888177438195276063

noncomputable section

/-- A356644: Number of vertex cuts in the n-antiprism graph.

Offset 1, canonical program `A356644.P10888177438195276063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356644 (n : ℕ) : ℤ :=
  A356644.P10888177438195276063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356830.P9176712600671338645

`2^(2*(n+1))-A286182(n+1)-1`
-/

namespace A356830.P9176712600671338645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * (n + 1)) : ℤ) - A286182 (n + 1) - 1

end

end A356830.P9176712600671338645

noncomputable section

/-- A356830: Number of vertex cuts in the n-prism graph.

Offset 1, canonical program `A356830.P9176712600671338645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356830 (n : ℕ) : ℤ :=
  A356830.P9176712600671338645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356830.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356852.P6348023218238720434

`A055642(A245920(n)+A053738(n+1))`
-/

namespace A356852.P6348023218238720434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A245920 n + A053738 (n + 1)).toNat

end

end A356852.P6348023218238720434

noncomputable section

/-- A356852: Minimum over all order two bases for the interval [1, n] of the maximum number of ways some number in the interval [1, n] can be written as a sum of at most two elements of the basis.

Offset 1, canonical program `A356852.P6348023218238720434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A356852 (n : ℕ) : ℤ :=
  A356852.P6348023218238720434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A356852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356868.P9460549106714125296

`(n+1)*A033286(n+1)`
-/

namespace A356868.P9460549106714125296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033286 (n + 1)

end

end A356868.P9460549106714125296

noncomputable section

/-- A356868: a(n) = n^2 * prime(n).

Offset 1, canonical program `A356868.P9460549106714125296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356868 (n : ℕ) : ℤ :=
  A356868.P9460549106714125296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357143.P9618217690361557058

`A101337(A007091(n+1))`
-/

namespace A357143.P9618217690361557058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A007091 (n + 1)).toNat

end

end A357143.P9618217690361557058

noncomputable section

/-- A357143: a(n) is sum of the base-5 digits of n each raised to the number of digits of n in base 5.

Offset 1, canonical program `A357143.P9618217690361557058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A357143 (n : ℕ) : ℤ :=
  A357143.P9618217690361557058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A357143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357283.P17984273283071694433

`∑[A027556(abs(1-n))]`
-/

namespace A357283.P17984273283071694433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357283.P17984273283071694433

noncomputable section

/-- A357283: a(n) = number of subsets S of {1,2,...,n} having more than 1 element such that (sum of least two elements of S) < max(S).

Offset 0, canonical program `A357283.P17984273283071694433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A357283 (n : ℕ) : ℤ :=
  A357283.P17984273283071694433.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A357283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357292.P7346233877380800263

`A357291(n)+A211540(n)`
-/

namespace A357292.P7346233877380800263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357291 n + A211540 n

end

end A357292.P7346233877380800263

noncomputable section

/-- A357292: a(n) = number of subsets S of {1,2,...,n} having more than 2 elements such that (sum of least two elements of S) = difference between greatest two elements of S.

Offset 0, canonical program `A357292.P7346233877380800263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A357292 (n : ℕ) : ℤ :=
  A357292.P7346233877380800263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A357292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358206.P4991857009677086862

`A000064(floor(n/2))`
-/

namespace A358206.P4991857009677086862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000064 ⌊(n : ℚ) / 2⌋.toNat

end

end A358206.P4991857009677086862

noncomputable section

/-- A358206: Number of ways of making change for n cents using coins of 1, 2, 4, 10 and 20 cents.

Offset 0, canonical program `A358206.P4991857009677086862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358206 (n : ℕ) : ℤ :=
  A358206.P4991857009677086862.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358551.P14086074353940531701

`A072643(n)+1`
-/

namespace A358551.P14086074353940531701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 n + 1

end

end A358551.P14086074353940531701

noncomputable section

/-- A358551: Number of nodes in the ordered rooted tree with binary encoding A014486(n).

Offset 1, canonical program `A358551.P14086074353940531701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358551 (n : ℕ) : ℤ :=
  A358551.P14086074353940531701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358565.P3225092960581356260

`A358548(n+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A358565.P3225092960581356260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358548 (n + 2) : ℚ) / 6

end

end A358565.P3225092960581356260

noncomputable section

/-- A358565: a(n) = A358548(n) / 6.

Offset 2, canonical program `A358565.P3225092960581356260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358565 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A358565.P3225092960581356260.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358565.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358591.P6447892904110936173

`A002457(A289207(n+1))-A026641(n)`
-/

namespace A358591.P6447892904110936173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (A289207 (n + 1)).toNat - A026641 n

end

end A358591.P6447892904110936173

noncomputable section

/-- A358591: Number of 2n-node rooted trees whose height, number of leaves, and number of internal (non-leaf) nodes are all equal.

Offset 1, canonical program `A358591.P6447892904110936173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A358591 (n : ℕ) : ℤ :=
  A358591.P6447892904110936173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A358591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358817.P6080470734846673490

`eq[A351656(n+1), A351656(n+2)]+1`
-/

namespace A358817.P6080470734846673490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351656 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358817.P6080470734846673490

noncomputable section

/-- A358817: Numbers k such that A046660(k) = A046660(k+1).

Offset 1, canonical program `A358817.P6080470734846673490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3655 terms. -/
def A358817 (n : ℕ) : ℤ :=
  (A358817.P6080470734846673490.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3655 terms. -/
def A358817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359217.P5863385716239077035

`A180714(floor(n/2))`
-/

namespace A359217.P5863385716239077035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 ⌊(n : ℚ) / 2⌋.toNat

end

end A359217.P5863385716239077035

noncomputable section

/-- A359217: Y-coordinates of a point moving along a counterclockwise undulating spiral on a square grid.

Offset 0, canonical program `A359217.P5863385716239077035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359217 (n : ℕ) : ℤ :=
  A359217.P5863385716239077035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359233.P5724937657241569467

`A001876(5*(n+1)-1)`
-/

namespace A359233.P5724937657241569467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (5 * (n + 1) - 1)

end

end A359233.P5724937657241569467

noncomputable section

/-- A359233: Number of divisors of 5*n-1 of form 5*k+1.

Offset 1, canonical program `A359233.P5724937657241569467`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359233 (n : ℕ) : ℤ :=
  A359233.P5724937657241569467.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359233.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359236.P3437243268273933549

`A001876(5*(n+1)-2)`
-/

namespace A359236.P3437243268273933549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (5 * (n + 1) - 2)

end

end A359236.P3437243268273933549

noncomputable section

/-- A359236: Number of divisors of 5*n-2 of form 5*k+1.

Offset 1, canonical program `A359236.P3437243268273933549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359236 (n : ℕ) : ℤ :=
  A359236.P3437243268273933549.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359237.P15086799658931664347

`A001876(5*(n+1)-3)`
-/

namespace A359237.P15086799658931664347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (5 * (n + 1) - 3)

end

end A359237.P15086799658931664347

noncomputable section

/-- A359237: Number of divisors of 5*n-3 of form 5*k+1.

Offset 1, canonical program `A359237.P15086799658931664347`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359237 (n : ℕ) : ℤ :=
  A359237.P15086799658931664347.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359237.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359238.P351552953664112486

`A001876(5*(n+1)-4)`
-/

namespace A359238.P351552953664112486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (5 * (n + 1) - 4)

end

end A359238.P351552953664112486

noncomputable section

/-- A359238: Number of divisors of 5*n-4 of form 5*k+1.

Offset 1, canonical program `A359238.P351552953664112486`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359238 (n : ℕ) : ℤ :=
  A359238.P351552953664112486.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359244.P5355870828912035672

`A001877(5*(n+1)-4)`
-/

namespace A359244.P5355870828912035672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (5 * (n + 1) - 4)

end

end A359244.P5355870828912035672

noncomputable section

/-- A359244: Number of divisors of 5*n-4 of form 5*k+2.

Offset 1, canonical program `A359244.P5355870828912035672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359244 (n : ℕ) : ℤ :=
  A359244.P5355870828912035672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359244.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359269.P15675269131847707264

`A001877(5*(n+1)-2)`
-/

namespace A359269.P15675269131847707264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (5 * (n + 1) - 2)

end

end A359269.P15675269131847707264

noncomputable section

/-- A359269: Number of divisors of 5*n-2 of form 5*k+2.

Offset 1, canonical program `A359269.P15675269131847707264`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359269 (n : ℕ) : ℤ :=
  A359269.P15675269131847707264.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359269.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359270.P1071821864642019531

`A001878(5*(n+1)-3)`
-/

namespace A359270.P1071821864642019531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (5 * (n + 1) - 3)

end

end A359270.P1071821864642019531

noncomputable section

/-- A359270: Number of divisors of 5*n-3 of form 5*k+3.

Offset 1, canonical program `A359270.P1071821864642019531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001878, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359270 (n : ℕ) : ℤ :=
  A359270.P1071821864642019531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001878, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359287.P3521570525725454335

`A001877(5*(n+1)-1)`
-/

namespace A359287.P3521570525725454335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (5 * (n + 1) - 1)

end

end A359287.P3521570525725454335

noncomputable section

/-- A359287: Number of divisors of 5*n-1 of form 5*k+2.

Offset 1, canonical program `A359287.P3521570525725454335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359287 (n : ℕ) : ℤ :=
  A359287.P3521570525725454335.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359288.P14820786524220264044

`A001878(5*(n+1)-1)`
-/

namespace A359288.P14820786524220264044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (5 * (n + 1) - 1)

end

end A359288.P14820786524220264044

noncomputable section

/-- A359288: Number of divisors of 5*n-1 of form 5*k+3.

Offset 1, canonical program `A359288.P14820786524220264044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001878, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359288 (n : ℕ) : ℤ :=
  A359288.P14820786524220264044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001878, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359445.P18211126488119010067

`∩[A051448(n+1)-1, A051448(n+1)]`
-/

namespace A359445.P18211126488119010067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051448 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359445.P18211126488119010067

noncomputable section

/-- A359445: Numbers k such that the sums (with multiplicity) of prime factors of k and k+1 are both squares.

Offset 1, canonical program `A359445.P18211126488119010067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A359445 (n : ℕ) : ℤ :=
  (A359445.P18211126488119010067.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A359445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359536.P8223662673911763191

`∑[A089013(n)]`
-/

namespace A359536.P8223662673911763191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359536.P8223662673911763191

noncomputable section

/-- A359536: a(n) is the size of the largest subset of {0,1,...,n} such that the sum of two (not necessarily distinct) elements is never a power of 2.

Offset 0, canonical program `A359536.P8223662673911763191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A359536 (n : ℕ) : ℤ :=
  A359536.P8223662673911763191.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A359536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359768.P14447887237205191764

`A000035(A075255(n+1))`
-/

namespace A359768.P14447887237205191764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A075255 (n + 1)).toNat

end

end A359768.P14447887237205191764

noncomputable section

/-- A359768: a(n) = 1 if the parity of n and that of sopfr(n) differ, otherwise 0. Here sopfr is the sum of prime factors (with repetition).

Offset 1, canonical program `A359768.P14447887237205191764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359768 (n : ℕ) : ℤ :=
  A359768.P14447887237205191764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359768.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360048.P11948513160128016268

`∑[A343773(n)]`
-/

namespace A360048.P11948513160128016268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360048.P11948513160128016268

noncomputable section

/-- A360048: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(n+1,2*k+1) * Catalan(k).

Offset 0, canonical program `A360048.P11948513160128016268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A360048 (n : ℕ) : ℤ :=
  A360048.P11948513160128016268.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A360048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360124.P4749655470974638796

`4*A088827(n+1)`
-/

namespace A360124.P4749655470974638796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A088827 (n + 1)

end

end A360124.P4749655470974638796

noncomputable section

/-- A360124: Numbers k such that A360121(k) is odd, but A347389(k) is even.

Offset 1, canonical program `A360124.P4749655470974638796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 759 terms. -/
def A360124 (n : ℕ) : ℤ :=
  A360124.P4749655470974638796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 759 terms. -/
def A360124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360273.P611309196020639949

`∑[A032357(n)]`
-/

namespace A360273.P611309196020639949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360273.P611309196020639949

noncomputable section

/-- A360273: a(n) = Sum_{k=0..floor(n/2)} Catalan(n-2*k).

Offset 0, canonical program `A360273.P611309196020639949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A360273 (n : ℕ) : ℤ :=
  A360273.P611309196020639949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A360273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360588.P3385288427672600605

`A052749(n)+A052760(n)/2`
-/

namespace A360588.P3385288427672600605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052749 n : ℚ) + (A052760 n : ℚ) / 2

end

end A360588.P3385288427672600605

noncomputable section

/-- A360588: Expansion of e.g.f. (exp(x)-1)^2*(x+x^2/2).

Offset 0, canonical program `A360588.P3385288427672600605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A360588 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360588.P3385288427672600605.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A360588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360724.P5922808255912750807

`∑[A060973(n+1)-A053646(n+1)]`
-/

namespace A360724.P5922808255912750807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (n + 1) - A053646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360724.P5922808255912750807

noncomputable section

/-- A360724: Hajnal's recurrence: a(2n) = a(n) + 3*a(n-1); a(2n+1) = 3*a(n) + a(n-1), with initial values a(0) = 0, a(1) = 1.

Offset 0, canonical program `A360724.P5922808255912750807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360724 (n : ℕ) : ℤ :=
  A360724.P5922808255912750807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360734.P10496701500562311752

`A045344(n+1)*A046933(n+1)+2`
-/

namespace A360734.P10496701500562311752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) * A046933 (n + 1) + 2

end

end A360734.P10496701500562311752

noncomputable section

/-- A360734: The number of regions into which the plane is divided by a hypotrochoid with parameters R = d = prime(n+1) and r = prime(n).

Offset 1, canonical program `A360734.P10496701500562311752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360734 (n : ℕ) : ℤ :=
  A360734.P10496701500562311752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360926.P4629588072312420784

`A248232(n+1)-A028310(n)`
-/

namespace A360926.P4629588072312420784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248232 (n + 1) - A028310 n

end

end A360926.P4629588072312420784

noncomputable section

/-- A360926: Smallest number of moves needed to win Integer Lunar Lander with a starting position of (n,n).

Offset 0, canonical program `A360926.P4629588072312420784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A360926 (n : ℕ) : ℤ :=
  A360926.P4629588072312420784.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A360926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360996.P18226206419198246505

`A005361(n+1)*A082476(n+1)`
-/

namespace A360996.P18226206419198246505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A082476 (n + 1)

end

end A360996.P18226206419198246505

noncomputable section

/-- A360996: Multiplicative with a(p^e) = 5*e, p prime and e > 0.

Offset 1, canonical program `A360996.P18226206419198246505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A082476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360996 (n : ℕ) : ℤ :=
  A360996.P18226206419198246505.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A082476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360996.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361024.P7432656464654402567

`A361023(n+1)-A324903(n+1)`
-/

namespace A361024.P7432656464654402567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361023 (n + 1) - A324903 (n + 1)

end

end A361024.P7432656464654402567

noncomputable section

/-- A361024: a(n) = 1 if n and sigma(n) have equal 2-adic valuations, otherwise 0, where sigma is the sum of divisors function.

Offset 1, canonical program `A361024.P7432656464654402567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324903, A361023, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361024 (n : ℕ) : ℤ :=
  A361024.P7432656464654402567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324903, A361023, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361114.P14671921688782388975

`1-A361113(n+1)`
-/

namespace A361114.P14671921688782388975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361113 (n + 1)

end

end A361114.P14671921688782388975

noncomputable section

/-- A361114: a(n)=1 if A361102(n) is odd, otherwise 0.

Offset 0, canonical program `A361114.P14671921688782388975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361114 (n : ℕ) : ℤ :=
  A361114.P14671921688782388975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361115.P7604483962719695336

`1-A361102(n+1)²%3`
-/

namespace A361115.P7604483962719695336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A361102 (n + 1) ^ 2) 3

end

end A361115.P7604483962719695336

noncomputable section

/-- A361115: a(n)=1 if A361102(n) is divisible by 3, otherwise 0.

Offset 0, canonical program `A361115.P7604483962719695336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361115 (n : ℕ) : ℤ :=
  A361115.P7604483962719695336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361265.P11907308521798501536

`A005361(n+1)*A064549(n+1)`
-/

namespace A361265.P11907308521798501536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A064549 (n + 1)

end

end A361265.P11907308521798501536

noncomputable section

/-- A361265: Multiplicative with a(p^e) = e * p^(e + 1), e > 0.

Offset 1, canonical program `A361265.P11907308521798501536`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361265 (n : ℕ) : ℤ :=
  A361265.P11907308521798501536.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361271.P3303767422937233497

`A351704(n)-1`
-/

namespace A361271.P3303767422937233497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351704 n - 1

end

end A361271.P3303767422937233497

noncomputable section

/-- A361271: Number of 1342-avoiding odd Grassmannian permutations of size n.

Offset 0, canonical program `A361271.P3303767422937233497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361271 (n : ℕ) : ℤ :=
  A361271.P3303767422937233497.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361460.P12226711080690228128

`A000007(A135506(n+1)-1)`
-/

namespace A361460.P12226711080690228128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A135506 (n + 1) - 1).toNat

end

end A361460.P12226711080690228128

noncomputable section

/-- A361460: a(n) = 1 if A135504(n+1) = 2 * A135504(n), otherwise 0.

Offset 1, canonical program `A361460.P12226711080690228128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361460 (n : ℕ) : ℤ :=
  A361460.P12226711080690228128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361461.P11308028786561172249

`eq[1, A135506(n+1)]+1`
-/

namespace A361461.P11308028786561172249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361461.P11308028786561172249

noncomputable section

/-- A361461: Numbers k such that x(k+1) = 2 * x(k), when x(1)=1 and x(n) = x(n-1) + lcm(x(n-1),n), i.e., x(n) = A135504(n).

Offset 1, canonical program `A361461.P11308028786561172249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361461 (n : ℕ) : ℤ :=
  (A361461.P11308028786561172249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361691.P14342143922485954219

`A279061(7*(n+1)-1)`
-/

namespace A361691.P14342143922485954219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 1)

end

end A361691.P14342143922485954219

noncomputable section

/-- A361691: Number of divisors of 7*n-1 of form 7*k+1.

Offset 1, canonical program `A361691.P14342143922485954219`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361691 (n : ℕ) : ℤ :=
  A361691.P14342143922485954219.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361691.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361706.P5557153493187756588

`∑{d}[n+1, A007445(#)]`
-/

namespace A361706.P5557153493187756588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007445 d

end

end A361706.P5557153493187756588

noncomputable section

/-- A361706: Inverse Moebius transform applied twice to primes.

Offset 1, canonical program `A361706.P5557153493187756588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361706 (n : ℕ) : ℤ :=
  A361706.P5557153493187756588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361708.P9997575083813706434

`∑{d}[n+1, A018252(#)]`
-/

namespace A361708.P9997575083813706434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018252 d

end

end A361708.P9997575083813706434

noncomputable section

/-- A361708: Inverse Moebius transform of nonprimes.

Offset 1, canonical program `A361708.P9997575083813706434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361708 (n : ℕ) : ℤ :=
  A361708.P9997575083813706434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361794.P451113387851091999

`∑{d}[n+1, #*A037213(#)]`
-/

namespace A361794.P451113387851091999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A037213 d

end

end A361794.P451113387851091999

noncomputable section

/-- A361794: Sum of the cubes d^3 of the divisors d satisfying d^2|n.

Offset 1, canonical program `A361794.P451113387851091999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361794 (n : ℕ) : ℤ :=
  A361794.P451113387851091999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362358.P8778076653575427930

`A055017(A000045(n))`
-/

namespace A362358.P8778076653575427930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A000045 n).toNat

end

end A362358.P8778076653575427930

noncomputable section

/-- A362358: Alternating sum of digits of the Fibonacci numbers, with a plus sign for the last digit.

Offset 0, canonical program `A362358.P8778076653575427930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362358 (n : ℕ) : ℤ :=
  A362358.P8778076653575427930.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362358.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362421.P15476662405559426444

`A049419(n+2)*A069513(n+2)`
-/

namespace A362421.P15476662405559426444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 2) * A069513 (n + 2)

end

end A362421.P15476662405559426444

noncomputable section

/-- A362421: Number of nonisomorphic vector spaces consisting of n elements.

Offset 2, canonical program `A362421.P15476662405559426444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A362421 (n : ℕ) : ℤ :=
  A362421.P15476662405559426444.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A362421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362596.P425571288444165629

`A258431(n)-A276666(n)`
-/

namespace A362596.P425571288444165629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258431 n - A276666 n

end

end A362596.P425571288444165629

noncomputable section

/-- A362596: Number of parking functions of size n avoiding the patterns 213 and 321.

Offset 0, canonical program `A362596.P425571288444165629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A362596 (n : ℕ) : ℤ :=
  A362596.P425571288444165629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A362596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362680.P16293648216085454390

`2*A058183(n+1)-A055642(n+1)`
-/

namespace A362680.P16293648216085454390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058183 (n + 1) - A055642 (n + 1)

end

end A362680.P16293648216085454390

noncomputable section

/-- A362680: a(n) is the number of decimal digits in A173426(n).

Offset 1, canonical program `A362680.P16293648216085454390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, A058183, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362680 (n : ℕ) : ℤ :=
  A362680.P16293648216085454390.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, A058183, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362683.P14326268890355957891

`A055225(n+1)+A359103(n+1)`
-/

namespace A362683.P14326268890355957891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055225 (n + 1) + A359103 (n + 1)

end

end A362683.P14326268890355957891

noncomputable section

/-- A362683: Expansion of Sum_{k>0} (1/(1 - k*x^k)^2 - 1).

Offset 1, canonical program `A362683.P14326268890355957891`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362683 (n : ℕ) : ℤ :=
  A362683.P14326268890355957891.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362845.P17536639591038917226

`A279061(7*(n+1)-2)`
-/

namespace A362845.P17536639591038917226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 2)

end

end A362845.P17536639591038917226

noncomputable section

/-- A362845: Number of divisors of 7*n-2 of form 7*k+1.

Offset 1, canonical program `A362845.P17536639591038917226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362845 (n : ℕ) : ℤ :=
  A362845.P17536639591038917226.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362845.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A362869.P8462852470761902271

`A008795(n)+A001859(n)`
-/

namespace A362869.P8462852470761902271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n + A001859 n

end

end A362869.P8462852470761902271

noncomputable section

/-- A362869: a(n) is equal to the number of cells in one octant of the octagon of unit squares with side equal n.

Offset 1, canonical program `A362869.P8462852470761902271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362869 (n : ℕ) : ℤ :=
  A362869.P8462852470761902271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362952.P3443947303999604863

`A284280(5*(n+1)-1)`
-/

namespace A362952.P3443947303999604863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (5 * (n + 1) - 1)

end

end A362952.P3443947303999604863

noncomputable section

/-- A362952: Sum of divisors of 5*n-1 of form 5*k+2.

Offset 1, canonical program `A362952.P3443947303999604863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362952 (n : ℕ) : ℤ :=
  A362952.P3443947303999604863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363025.P16048530436688451139

`A284280(5*(n+1)-2)`
-/

namespace A363025.P16048530436688451139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (5 * (n + 1) - 2)

end

end A363025.P16048530436688451139

noncomputable section

/-- A363025: Sum of divisors of 5*n-2 of form 5*k+2.

Offset 1, canonical program `A363025.P16048530436688451139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363025 (n : ℕ) : ℤ :=
  A363025.P16048530436688451139.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363025.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363026.P15677157071995467369

`A284280(5*(n+1)-3)`
-/

namespace A363026.P15677157071995467369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (5 * (n + 1) - 3)

end

end A363026.P15677157071995467369

noncomputable section

/-- A363026: Sum of divisors of 5*n-3 of form 5*k+2.

Offset 1, canonical program `A363026.P15677157071995467369`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363026 (n : ℕ) : ℤ :=
  A363026.P15677157071995467369.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363027.P4064144166879926127

`A284280(5*n+1)`
-/

namespace A363027.P4064144166879926127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (5 * n + 1)

end

end A363027.P4064144166879926127

noncomputable section

/-- A363027: Sum of divisors of 5*n-4 of form 5*k+2.

Offset 1, canonical program `A363027.P4064144166879926127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363027 (n : ℕ) : ℤ :=
  A363027.P4064144166879926127.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363027.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363060.P4728981238833991095

`eq[5, A008952(n)]`
-/

namespace A363060.P4728981238833991095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363060.P4728981238833991095

noncomputable section

/-- A363060: Numbers k such that 5 is the first digit of 2^k.

Offset 1, canonical program `A363060.P4728981238833991095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3958 terms. -/
def A363060 (n : ℕ) : ℤ :=
  (A363060.P4728981238833991095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3958 terms. -/
def A363060.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363514.P8280304186650269992

`A078181(3*(n+1)-1)`
-/

namespace A363514.P8280304186650269992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (3 * (n + 1) - 1)

end

end A363514.P8280304186650269992

noncomputable section

/-- A363514: Sum of divisors of 3*n-1 of form 3*k+1.

Offset 1, canonical program `A363514.P8280304186650269992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363514 (n : ℕ) : ℤ :=
  A363514.P8280304186650269992.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363514.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363691.P18289426642684890876

`∩[2*n+1, A363690(n+1)]`
-/

namespace A363691.P18289426642684890876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363691.P18289426642684890876

noncomputable section

/-- A363691: Odd numbers k such that A246600(k) = 2.

Offset 1, canonical program `A363691.P18289426642684890876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4908 terms. -/
def A363691 (n : ℕ) : ℤ :=
  (A363691.P18289426642684890876.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4908 terms. -/
def A363691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363806.P10301958111429027824

`A279061(2*(n+1))-A279061((n+1)/2^val(n+1, 2))`
-/

namespace A363806.P10301958111429027824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (2 * (n + 1)) - A279061 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A363806.P10301958111429027824

noncomputable section

/-- A363806: Number of divisors of n of the form 7*k + 4.

Offset 1, canonical program `A363806.P10301958111429027824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363806 (n : ℕ) : ℤ :=
  A363806.P10301958111429027824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363820.P3566701227845072726

`A014181(n+2)-10`
-/

namespace A363820.P3566701227845072726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014181 (n + 2) - 10

end

end A363820.P3566701227845072726

noncomputable section

/-- A363820: Moving the rightmost digit of a number to place it furthest to the left adds 9 to the number.

Offset 1, canonical program `A363820.P3566701227845072726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 890 terms. -/
def A363820 (n : ℕ) : ℤ :=
  A363820.P3566701227845072726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 890 terms. -/
def A363820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363850.P5431407368653199520

`A279061(7*(n+1)-3)`
-/

namespace A363850.P5431407368653199520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 3)

end

end A363850.P5431407368653199520

noncomputable section

/-- A363850: Number of divisors of 7*n-3 of form 7*k+1.

Offset 1, canonical program `A363850.P5431407368653199520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363850 (n : ℕ) : ℤ :=
  A363850.P5431407368653199520.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363851.P18079601526359170687

`A279061(7*(n+1)-4)`
-/

namespace A363851.P18079601526359170687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 4)

end

end A363851.P18079601526359170687

noncomputable section

/-- A363851: Number of divisors of 7*n-4 of form 7*k+1.

Offset 1, canonical program `A363851.P18079601526359170687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363851 (n : ℕ) : ℤ :=
  A363851.P18079601526359170687.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363851.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363852.P10747940263163511164

`A279061(7*(n+1)-5)`
-/

namespace A363852.P10747940263163511164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 5)

end

end A363852.P10747940263163511164

noncomputable section

/-- A363852: Number of divisors of 7*n-5 of form 7*k+1.

Offset 1, canonical program `A363852.P10747940263163511164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363852 (n : ℕ) : ℤ :=
  A363852.P10747940263163511164.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363853.P8524164086728163721

`A279061(7*(n+1)-6)`
-/

namespace A363853.P8524164086728163721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 6)

end

end A363853.P8524164086728163721

noncomputable section

/-- A363853: Number of divisors of 7*n-6 of form 7*k+1.

Offset 1, canonical program `A363853.P8524164086728163721`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363853 (n : ℕ) : ℤ :=
  A363853.P8524164086728163721.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363855.P11323486377278081280

`A363805(7*(n+1)-3)`
-/

namespace A363855.P11323486377278081280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * (n + 1) - 3)

end

end A363855.P11323486377278081280

noncomputable section

/-- A363855: Number of divisors of 7*n-3 of form 7*k+6.

Offset 1, canonical program `A363855.P11323486377278081280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363855 (n : ℕ) : ℤ :=
  A363855.P11323486377278081280.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363859.P12984899488609813938

`A363805(7*(n+1)-1)`
-/

namespace A363859.P12984899488609813938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * (n + 1) - 1)

end

end A363859.P12984899488609813938

noncomputable section

/-- A363859: Number of divisors of 7*n-1 of the form 7*k+2.

Offset 1, canonical program `A363859.P12984899488609813938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363859 (n : ℕ) : ℤ :=
  A363859.P12984899488609813938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363859.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363877.P10617050833663862106

`A363805(7*(n+1)-2)`
-/

namespace A363877.P10617050833663862106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * (n + 1) - 2)

end

end A363877.P10617050833663862106

noncomputable section

/-- A363877: Number of divisors of 7*n-2 of form 7*k+3.

Offset 1, canonical program `A363877.P10617050833663862106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363877 (n : ℕ) : ℤ :=
  A363877.P10617050833663862106.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363880.P7390810091035147557

`A363805(7*n+1)`
-/

namespace A363880.P7390810091035147557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * n + 1)

end

end A363880.P7390810091035147557

noncomputable section

/-- A363880: Number of divisors of 7*n-6 of form 7*k+3.

Offset 1, canonical program `A363880.P7390810091035147557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363880 (n : ℕ) : ℤ :=
  A363880.P7390810091035147557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363887.P10568387131501644855

`A363805(7*(n+1)-5)`
-/

namespace A363887.P10568387131501644855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * (n + 1) - 5)

end

end A363887.P10568387131501644855

noncomputable section

/-- A363887: Number of divisors of 7*n-5 of form 7*k+3.

Offset 1, canonical program `A363887.P10568387131501644855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363887 (n : ℕ) : ℤ :=
  A363887.P10568387131501644855.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363889.P3675962826148467053

`A078181(3*n+1)`
-/

namespace A363889.P3675962826148467053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (3 * n + 1)

end

end A363889.P3675962826148467053

noncomputable section

/-- A363889: Sum of divisors of 3*n-2 of form 3*k+1.

Offset 1, canonical program `A363889.P3675962826148467053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363889 (n : ℕ) : ℤ :=
  A363889.P3675962826148467053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363889.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A307533.P10396454960199393413

`p?[n*A001221(n+2)-n]`
-/

namespace A307533.P10396454960199393413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307533.P10396454960199393413

noncomputable section

/-- A307533: Primes p such that p+2 has exactly two distinct prime factors.

Offset 1, canonical program `A307533.P10396454960199393413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. -/
def A307533 (n : ℕ) : ℤ :=
  A307533.P10396454960199393413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. -/
def A307533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308084.P16471058516571801432

`A000217(n)*A000005(n+1)/2`
-/

namespace A308084.P16471058516571801432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n * A000005 (n + 1) : ℚ) / 2

end

end A308084.P16471058516571801432

noncomputable section

/-- A308084: a(n) = n*(n-1)*d(n)/4, where d(n)=A000005(n) is the number of divisors of n.

Offset 1, canonical program `A308084.P16471058516571801432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308084 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308084.P16471058516571801432.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308084.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308366.P9519360865088964469

`A333824(n+1)+A333824(n+1)-A055225(n+1)`
-/

namespace A308366.P9519360865088964469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333824 (n + 1) + (A333824 (n + 1) - A055225 (n + 1))

end

end A308366.P9519360865088964469

noncomputable section

/-- A308366: Expansion of Sum_{k>=1} (-1)^(k+1)*k*x^k/(1 - k*x^k).

Offset 1, canonical program `A308366.P9519360865088964469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A308366 (n : ℕ) : ℤ :=
  A308366.P9519360865088964469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A308366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309099.P12982382643255885800

`A028310(n)+∑[A325459(n)]`
-/

namespace A309099.P12982382643255885800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309099.P12982382643255885800

noncomputable section

/-- A309099: Number of partitions of n avoiding the partition (4,3,1).

Offset 0, canonical program `A309099.P12982382643255885800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309099 (n : ℕ) : ℤ :=
  A309099.P12982382643255885800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309127.P10252397170693859739

`∑[A300909(n+1)]`
-/

namespace A309127.P10252397170693859739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309127.P10252397170693859739

noncomputable section

/-- A309127: a(n) = n + 2^4 * floor(n/2^4) + 3^4 * floor(n/3^4) + 4^4 * floor(n/4^4) + ...

Offset 1, canonical program `A309127.P10252397170693859739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309127 (n : ℕ) : ℤ :=
  A309127.P10252397170693859739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309788.P3499531923763128304

`∏{digits}[A007095(n), #]`
-/

namespace A309788.P3499531923763128304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A309788.P3499531923763128304

noncomputable section

/-- A309788: Product of digits of (n written in base 9).

Offset 0, canonical program `A309788.P3499531923763128304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309788 (n : ℕ) : ℤ :=
  (A309788.P3499531923763128304.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309959.P7879829919331343568

`∏{digits}[A007094(n), #]`
-/

namespace A309959.P7879829919331343568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A309959.P7879829919331343568

noncomputable section

/-- A309959: Product of digits of (n written in base 8).

Offset 0, canonical program `A309959.P7879829919331343568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309959 (n : ℕ) : ℤ :=
  (A309959.P7879829919331343568.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310238.P14225451294816343544

`A047263(n+1)+A312948(n)-n-A057354(2*n+1)`
-/

namespace A310238.P14225451294816343544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A312948 n - (n : ℤ)) - A057354 (2 * n + 1)

end

end A310238.P14225451294816343544

noncomputable section

/-- A310238: Coordination sequence Gal.4.7.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310238.P14225451294816343544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2686 terms. -/
def A310238 (n : ℕ) : ℤ :=
  A310238.P14225451294816343544.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2686 terms. -/
def A310238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310341.P11035500024239819754

`A312289(n)-2*A238468(n)`
-/

namespace A310341.P11035500024239819754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n - 2 * A238468 n

end

end A310341.P11035500024239819754

noncomputable section

/-- A310341: Coordination sequence Gal.6.527.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310341.P11035500024239819754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. -/
def A310341 (n : ℕ) : ℤ :=
  A310341.P11035500024239819754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. -/
def A310341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310355.P6495167572357082007

`A313416(n)-A008612(A057979(n))`
-/

namespace A310355.P6495167572357082007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313416 n - A008612 (A057979 n).toNat

end

end A310355.P6495167572357082007

noncomputable section

/-- A310355: Coordination sequence Gal.6.478.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310355.P6495167572357082007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. -/
def A310355 (n : ℕ) : ℤ :=
  A310355.P6495167572357082007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. -/
def A310355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310368.P16178457141432640460

`2*A312892(n)-A008574(n)`
-/

namespace A310368.P16178457141432640460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312892 n - A008574 n

end

end A310368.P16178457141432640460

noncomputable section

/-- A310368: Coordination sequence Gal.6.230.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310368.P16178457141432640460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A310368 (n : ℕ) : ℤ :=
  A310368.P16178457141432640460.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A310368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310369.P267865594556305958

`2*A312893(n)-A008574(n)`
-/

namespace A310369.P267865594556305958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312893 n - A008574 n

end

end A310369.P267865594556305958

noncomputable section

/-- A310369: Coordination sequence Gal.5.64.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310369.P267865594556305958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A310369 (n : ℕ) : ℤ :=
  A310369.P267865594556305958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A310369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310370.P11121117059766069442

`2*A312894(n)-A008574(n)`
-/

namespace A310370.P11121117059766069442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312894 n - A008574 n

end

end A310370.P11121117059766069442

noncomputable section

/-- A310370: Coordination sequence Gal.5.109.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310370.P11121117059766069442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A310370 (n : ℕ) : ℤ :=
  A310370.P11121117059766069442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A310370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310371.P8576713789504372691

`2*A314117(n)-A008486(2*n)`
-/

namespace A310371.P8576713789504372691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314117 n - A008486 (2 * n)

end

end A310371.P8576713789504372691

noncomputable section

/-- A310371: Coordination sequence Gal.6.258.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310371.P8576713789504372691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A310371 (n : ℕ) : ℤ :=
  A310371.P8576713789504372691.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A310371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310373.P7906756891214118992

`A312890(n)+A002264(n+1)`
-/

namespace A310373.P7906756891214118992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 n + A002264 (n + 1)

end

end A310373.P7906756891214118992

noncomputable section

/-- A310373: Coordination sequence Gal.6.150.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310373.P7906756891214118992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A310373 (n : ℕ) : ℤ :=
  A310373.P7906756891214118992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A310373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310410.P13699142073105713236

`A004525(n)+A310393(n)-A004396(A004525(n))`
-/

namespace A310410.P13699142073105713236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310393 n - A004396 (A004525 n).toNat)

end

end A310410.P13699142073105713236

noncomputable section

/-- A310410: Coordination sequence Gal.6.344.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310410.P13699142073105713236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A310410 (n : ℕ) : ℤ :=
  A310410.P13699142073105713236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A310410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310413.P8448103510463690505

`abs(A008592(n)-A315307(n))`
-/

namespace A310413.P8448103510463690505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315307 n|

end

end A310413.P8448103510463690505

noncomputable section

/-- A310413: Coordination sequence Gal.6.323.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310413.P8448103510463690505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A310413 (n : ℕ) : ℤ :=
  A310413.P8448103510463690505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A310413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310444.P14454380161380560796

`A310400(n)+Δ[A011865(n)]`
-/

namespace A310444.P14454380161380560796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310400 n + (f1 (n + 1) - f1 n)

end

end A310444.P14454380161380560796

noncomputable section

/-- A310444: Coordination sequence Gal.6.340.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310444.P14454380161380560796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A310444 (n : ℕ) : ℤ :=
  A310444.P14454380161380560796.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A310444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310470.P16306028969988817199

`A004396(n)+A310393(n)-A004525(A004396(n))`
-/

namespace A310470.P16306028969988817199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A310393 n - A004525 (A004396 n).toNat)

end

end A310470.P16306028969988817199

noncomputable section

/-- A310470: Coordination sequence Gal.6.349.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310470.P16306028969988817199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2354 terms. -/
def A310470 (n : ℕ) : ℤ :=
  A310470.P16306028969988817199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2354 terms. -/
def A310470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310501.P8756319467982132797

`2*A313045(n)-A008574(n)`
-/

namespace A310501.P8756319467982132797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313045 n - A008574 n

end

end A310501.P8756319467982132797

noncomputable section

/-- A310501: Coordination sequence Gal.6.328.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310501.P8756319467982132797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A310501 (n : ℕ) : ℤ :=
  A310501.P8756319467982132797.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A310501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310532.P5875053090626175182

`A004277(A047263(n+1)+A312948(n)-n-A004277(n))`
-/

namespace A310532.P5875053090626175182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047263 (n + 1) + (A312948 n - (n : ℤ)) - A004277 n).toNat

end

end A310532.P5875053090626175182

noncomputable section

/-- A310532: Coordination sequence Gal.6.333.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310532.P5875053090626175182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3572 terms. -/
def A310532 (n : ℕ) : ℤ :=
  A310532.P5875053090626175182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3572 terms. -/
def A310532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310546.P18242339710196559366

`2*A313321(n)-A008579(n)`
-/

namespace A310546.P18242339710196559366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313321 n - A008579 n

end

end A310546.P18242339710196559366

noncomputable section

/-- A310546: Coordination sequence Gal.4.128.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310546.P18242339710196559366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A310546 (n : ℕ) : ℤ :=
  A310546.P18242339710196559366.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A310546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311196.P10875495913881152623

`A312896(n)-A004525(n-A004396(n))`
-/

namespace A311196.P10875495913881152623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A311196.P10875495913881152623

noncomputable section

/-- A311196: Coordination sequence Gal.6.115.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311196.P10875495913881152623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2544 terms. -/
def A311196 (n : ℕ) : ℤ :=
  A311196.P10875495913881152623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2544 terms. -/
def A311196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311225.P6004467747735077688

`2*A313738(n)-A008458(n)`
-/

namespace A311225.P6004467747735077688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313738 n - A008458 n

end

end A311225.P6004467747735077688

noncomputable section

/-- A311225: Coordination sequence Gal.6.216.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311225.P6004467747735077688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A311225 (n : ℕ) : ℤ :=
  A311225.P6004467747735077688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A311225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311257.P2429482415252635039

`A312909(n)-A002264(n+1)`
-/

namespace A311257.P2429482415252635039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n - A002264 (n + 1)

end

end A311257.P2429482415252635039

noncomputable section

/-- A311257: Coordination sequence Gal.6.115.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311257.P2429482415252635039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2640 terms. -/
def A311257 (n : ℕ) : ℤ :=
  A311257.P2429482415252635039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2640 terms. -/
def A311257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311344.P9479283837272976184

`A312908(n)-A004396(n-A004396(n))`
-/

namespace A311344.P9479283837272976184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312908 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A311344.P9479283837272976184

noncomputable section

/-- A311344: Coordination sequence Gal.5.95.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311344.P9479283837272976184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A311344 (n : ℕ) : ℤ :=
  A311344.P9479283837272976184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A311344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311440.P4540242096253642842

`A312077(n)-A002266(n+2)`
-/

namespace A311440.P4540242096253642842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312077 n - A002266 (n + 2)

end

end A311440.P4540242096253642842

noncomputable section

/-- A311440: Coordination sequence Gal.5.50.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311440.P4540242096253642842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A311440 (n : ℕ) : ℤ :=
  A311440.P4540242096253642842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A311440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311458.P16823108361581684520

`A312932(n)-A004396(n-A004396(n))`
-/

namespace A311458.P16823108361581684520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312932 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A311458.P16823108361581684520

noncomputable section

/-- A311458: Coordination sequence Gal.5.95.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311458.P16823108361581684520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2591 terms. -/
def A311458 (n : ℕ) : ℤ :=
  A311458.P16823108361581684520.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2591 terms. -/
def A311458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311552.P8027257067959777641

`abs(A008591(n)-A312077(n))-A253262(n)`
-/

namespace A311552.P8027257067959777641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A312077 n| - A253262 n

end

end A311552.P8027257067959777641

noncomputable section

/-- A311552: Coordination sequence Gal.5.55.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311552.P8027257067959777641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A311552 (n : ℕ) : ℤ :=
  A311552.P8027257067959777641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A311552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311647.P14916477301133084637

`A265035(2*n)-A047448(n+1)`
-/

namespace A311647.P14916477301133084637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (2 * n) - A047448 (n + 1)

end

end A311647.P14916477301133084637

noncomputable section

/-- A311647: Coordination sequence Gal.4.85.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311647.P14916477301133084637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2536 terms. -/
def A311647 (n : ℕ) : ℤ :=
  A311647.P14916477301133084637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2536 terms. -/
def A311647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311804.P3844052546151158521

`A313045(n)-A004396(A313045(n)-A008574(n))`
-/

namespace A311804.P3844052546151158521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313045 n - A004396 (A313045 n - A008574 n).toNat

end

end A311804.P3844052546151158521

noncomputable section

/-- A311804: Coordination sequence Gal.6.216.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311804.P3844052546151158521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A311804 (n : ℕ) : ℤ :=
  A311804.P3844052546151158521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A311804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311806.P6784156394519599598

`A312065(n)-Δ[A011867(n)]`
-/

namespace A311806.P6784156394519599598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n - (f1 (n + 1) - f1 n)

end

end A311806.P6784156394519599598

noncomputable section

/-- A311806: Coordination sequence Gal.4.60.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311806.P6784156394519599598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. -/
def A311806 (n : ℕ) : ℤ :=
  A311806.P6784156394519599598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. -/
def A311806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311924.P16580113682883245312

`A314847(n)-A004396(A004525(n))`
-/

namespace A311924.P16580113682883245312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n - A004396 (A004525 n).toNat

end

end A311924.P16580113682883245312

noncomputable section

/-- A311924: Coordination sequence Gal.6.118.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311924.P16580113682883245312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A311924 (n : ℕ) : ℤ :=
  A311924.P16580113682883245312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A311924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312927.P540762951115705510

`A313045(n)-Δ[A011864(n)]`
-/

namespace A312927.P540762951115705510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313045 n - (f1 (n + 1) - f1 n)

end

end A312927.P540762951115705510

noncomputable section

/-- A312927: Coordination sequence Gal.6.149.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312927.P540762951115705510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A312927 (n : ℕ) : ℤ :=
  A312927.P540762951115705510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A312927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312930.P2955828828530391935

`A313045(n)-A254011(A004280(n+1))`
-/

namespace A312930.P2955828828530391935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313045 n - A254011 (A004280 (n + 1)).toNat

end

end A312930.P2955828828530391935

noncomputable section

/-- A312930: Coordination sequence Gal.5.190.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312930.P2955828828530391935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A312930 (n : ℕ) : ℤ :=
  A312930.P2955828828530391935.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A312930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313076.P9761117632768940615

`A311964(n)+∑[A022003(n)]`
-/

namespace A313076.P9761117632768940615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313076.P9761117632768940615

noncomputable section

/-- A313076: Coordination sequence Gal.6.156.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313076.P9761117632768940615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A313076 (n : ℕ) : ℤ :=
  A313076.P9761117632768940615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A313076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313103.P6719779738666640190

`A311475(n)+∑[gcd(2, ∑[n+1])]%(n+1)`
-/

namespace A313103.P6719779738666640190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)

end

end A313103.P6719779738666640190

noncomputable section

/-- A313103: Coordination sequence Gal.6.260.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313103.P6719779738666640190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A313103 (n : ℕ) : ℤ :=
  A313103.P6719779738666640190.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A313103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313290.P4481954043169253142

`A301697(n)-A128834(A004525(n))`
-/

namespace A313290.P4481954043169253142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A128834 (A004525 n).toNat

end

end A313290.P4481954043169253142

noncomputable section

/-- A313290: Coordination sequence Gal.6.208.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313290.P4481954043169253142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A313290 (n : ℕ) : ℤ :=
  A313290.P4481954043169253142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A313290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313572.P9539295002485330705

`A047263(A313738(n)+1-n)`
-/

namespace A313572.P9539295002485330705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A313738 n + (1 - (n : ℤ))).toNat

end

end A313572.P9539295002485330705

noncomputable section

/-- A313572: Coordination sequence Gal.6.250.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313572.P9539295002485330705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A313572 (n : ℕ) : ℤ :=
  A313572.P9539295002485330705.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A313572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313658.P17289676240428697378

`A314754(n)+A002264(A002264(n+1)+n+1)`
-/

namespace A313658.P17289676240428697378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314754 n + A002264 (A002264 (n + 1) + (n + 1 : ℤ)).toNat

end

end A313658.P17289676240428697378

noncomputable section

/-- A313658: Coordination sequence Gal.6.363.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313658.P17289676240428697378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2343 terms. -/
def A313658 (n : ℕ) : ℤ :=
  A313658.P17289676240428697378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2343 terms. -/
def A313658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313688.P17375100154566226301

`abs(9*n-A311475(n))`
-/

namespace A313688.P17375100154566226301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A311475 n|

end

end A313688.P17375100154566226301

noncomputable section

/-- A313688: Coordination sequence Gal.6.151.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313688.P17375100154566226301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A313688 (n : ℕ) : ℤ :=
  A313688.P17375100154566226301.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A313688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313702.P4952802704360513873

`abs(A008592(n)-A313774(n))`
-/

namespace A313702.P4952802704360513873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313774 n|

end

end A313702.P4952802704360513873

noncomputable section

/-- A313702: Coordination sequence Gal.6.337.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313702.P4952802704360513873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A313702 (n : ℕ) : ℤ :=
  A313702.P4952802704360513873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A313702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313770.P11892598208290406591

`A313873(n)-A008624(A093178(n))`
-/

namespace A313770.P11892598208290406591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313873 n - A008624 (A093178 n).toNat

end

end A313770.P11892598208290406591

noncomputable section

/-- A313770: Coordination sequence Gal.3.44.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313770.P11892598208290406591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2306 terms. -/
def A313770 (n : ℕ) : ℤ :=
  A313770.P11892598208290406591.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2306 terms. -/
def A313770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313789.P14929352302420444219

`A311475(n)+n`
-/

namespace A313789.P14929352302420444219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + (n : ℤ)

end

end A313789.P14929352302420444219

noncomputable section

/-- A313789: Coordination sequence Gal.6.208.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313789.P14929352302420444219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313789 (n : ℕ) : ℤ :=
  A313789.P14929352302420444219.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313888.P2302443241268542950

`A004525(A313907(n)+A313892(n))`
-/

namespace A313888.P2302443241268542950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313907 n + A313892 n).toNat

end

end A313888.P2302443241268542950

noncomputable section

/-- A313888: Coordination sequence Gal.5.311.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313888.P2302443241268542950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 938 terms. -/
def A313888 (n : ℕ) : ℤ :=
  A313888.P2302443241268542950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 938 terms. -/
def A313888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313957.P3646171935266098749

`A315020(n)+A004523(A145569(n))`
-/

namespace A313957.P3646171935266098749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315020 n + A004523 (A145569 n).toNat

end

end A313957.P3646171935266098749

noncomputable section

/-- A313957: Coordination sequence Gal.5.312.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313957.P3646171935266098749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A313957 (n : ℕ) : ℤ :=
  A313957.P3646171935266098749.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A313957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314022.P5759349393798454835

`A310393(n)+A004525(A004396(n))`
-/

namespace A314022.P5759349393798454835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310393 n + A004525 (A004396 n).toNat

end

end A314022.P5759349393798454835

noncomputable section

/-- A314022: Coordination sequence Gal.6.203.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314022.P5759349393798454835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314022 (n : ℕ) : ℤ :=
  A314022.P5759349393798454835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314026.P8836136784884511113

`A310397(n)+A004525(A004525(n))`
-/

namespace A314026.P8836136784884511113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310397 n + A004525 (A004525 n).toNat

end

end A314026.P8836136784884511113

noncomputable section

/-- A314026: Coordination sequence Gal.5.130.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314026.P8836136784884511113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. -/
def A314026 (n : ℕ) : ℤ :=
  A314026.P8836136784884511113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. -/
def A314026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314028.P2289077075418662032

`A310393(n)+A004396(A004525(n))`
-/

namespace A314028.P2289077075418662032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310393 n + A004396 (A004525 n).toNat

end

end A314028.P2289077075418662032

noncomputable section

/-- A314028: Coordination sequence Gal.6.198.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314028.P2289077075418662032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A314028 (n : ℕ) : ℤ :=
  A314028.P2289077075418662032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A314028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314048.P6753169348479549005

`A310393(n)+A004525(n)`
-/

namespace A314048.P6753169348479549005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310393 n + A004525 n

end

end A314048.P6753169348479549005

noncomputable section

/-- A314048: Coordination sequence Gal.6.618.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314048.P6753169348479549005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A314048 (n : ℕ) : ℤ :=
  A314048.P6753169348479549005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A314048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314056.P914995745377123050

`A310397(n)+A004525(n)`
-/

namespace A314056.P914995745377123050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310397 n + A004525 n

end

end A314056.P914995745377123050

noncomputable section

/-- A314056: Coordination sequence Gal.4.135.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314056.P914995745377123050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2291 terms. -/
def A314056 (n : ℕ) : ℤ :=
  A314056.P914995745377123050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2291 terms. -/
def A314056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314060.P2827960434284084605

`A310400(n)+A004525(n)`
-/

namespace A314060.P2827960434284084605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310400 n + A004525 n

end

end A314060.P2827960434284084605

noncomputable section

/-- A314060: Coordination sequence Gal.6.636.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314060.P2827960434284084605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A314060 (n : ℕ) : ℤ :=
  A314060.P2827960434284084605.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A314060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314091.P13894877024748748489

`A315688(n)-A004525(n)`
-/

namespace A314091.P13894877024748748489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315688 n - A004525 n

end

end A314091.P13894877024748748489

noncomputable section

/-- A314091: Coordination sequence Gal.6.153.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314091.P13894877024748748489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A314091 (n : ℕ) : ℤ :=
  A314091.P13894877024748748489.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A314091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314142.P8377752906736418581

`A310393(n)+A004396(n)`
-/

namespace A314142.P8377752906736418581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310393 n + A004396 n

end

end A314142.P8377752906736418581

noncomputable section

/-- A314142: Coordination sequence Gal.6.636.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314142.P8377752906736418581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. -/
def A314142 (n : ℕ) : ℤ :=
  A314142.P8377752906736418581.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. -/
def A314142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314168.P3129182609195580782

`A315654(n)-A128834(A102899(n))`
-/

namespace A314168.P3129182609195580782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315654 n - A128834 (A102899 n).toNat

end

end A314168.P3129182609195580782

noncomputable section

/-- A314168: Coordination sequence Gal.4.138.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314168.P3129182609195580782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2151 terms. -/
def A314168 (n : ℕ) : ℤ :=
  A314168.P3129182609195580782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2151 terms. -/
def A314168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314221.P2473284069897015570

`A314149(n)+Δ[A011864(n)]`
-/

namespace A314221.P2473284069897015570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314149 n + (f1 (n + 1) - f1 n)

end

end A314221.P2473284069897015570

noncomputable section

/-- A314221: Coordination sequence Gal.6.641.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314221.P2473284069897015570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2018 terms. -/
def A314221 (n : ℕ) : ℤ :=
  A314221.P2473284069897015570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2018 terms. -/
def A314221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314228.P14559526308353507399

`A314674(n)+A008458(n)%A072154(n)`
-/

namespace A314228.P14559526308353507399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n + Int.tmod (A008458 n) (A072154 n)

end

end A314228.P14559526308353507399

noncomputable section

/-- A314228: Coordination sequence Gal.6.650.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314228.P14559526308353507399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314228 (n : ℕ) : ℤ :=
  A314228.P14559526308353507399.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314233.P17207204264519935212

`A301697(n)+A128834(n-A004525(n))`
-/

namespace A314233.P17207204264519935212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n + A128834 ((n : ℤ) - A004525 n).toNat

end

end A314233.P17207204264519935212

noncomputable section

/-- A314233: Coordination sequence Gal.6.208.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314233.P17207204264519935212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A314233 (n : ℕ) : ℤ :=
  A314233.P17207204264519935212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A314233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314458.P17842328892750460290

`A265035(2*n)-record[A283971(n)]`
-/

namespace A314458.P17842328892750460290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (2 * n) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314458.P17842328892750460290

noncomputable section

/-- A314458: Coordination sequence Gal.3.40.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314458.P17842328892750460290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A314458 (n : ℕ) : ℤ :=
  A314458.P17842328892750460290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A314458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314770.P11227293715083121856

`A311475(n)+A004525(n)`
-/

namespace A314770.P11227293715083121856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + A004525 n

end

end A314770.P11227293715083121856

noncomputable section

/-- A314770: Coordination sequence Gal.6.195.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314770.P11227293715083121856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314770 (n : ℕ) : ℤ :=
  A314770.P11227293715083121856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314848.P640167569373594197

`A314692(n)+Δ[A011862(n)]`
-/

namespace A314848.P640167569373594197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314692 n + (f1 (n + 1) - f1 n)

end

end A314848.P640167569373594197

noncomputable section

/-- A314848: Coordination sequence Gal.5.110.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314848.P640167569373594197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A314848 (n : ℕ) : ℤ :=
  A314848.P640167569373594197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A314848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314947.P4377398531179062134

`A311475(n)+A004396(n)`
-/

namespace A314947.P4377398531179062134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + A004396 n

end

end A314947.P4377398531179062134

noncomputable section

/-- A314947: Coordination sequence Gal.6.198.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314947.P4377398531179062134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A314947 (n : ℕ) : ℤ :=
  A314947.P4377398531179062134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A314947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315064.P9576319934094353441

`A311964(n)+A004396(n)`
-/

namespace A315064.P9576319934094353441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n + A004396 n

end

end A315064.P9576319934094353441

noncomputable section

/-- A315064: Coordination sequence Gal.6.347.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315064.P9576319934094353441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A315064 (n : ℕ) : ℤ :=
  A315064.P9576319934094353441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A315064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315175.P18372680328209174901

`A313487(n)+A238469(n)`
-/

namespace A315175.P18372680328209174901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313487 n + A238469 n

end

end A315175.P18372680328209174901

noncomputable section

/-- A315175: Coordination sequence Gal.4.42.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315175.P18372680328209174901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A315175 (n : ℕ) : ℤ :=
  A315175.P18372680328209174901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A315175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315202.P8684854495543598751

`2*A314707(n)-A008574(n)`
-/

namespace A315202.P8684854495543598751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314707 n - A008574 n

end

end A315202.P8684854495543598751

noncomputable section

/-- A315202: Coordination sequence Gal.6.194.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315202.P8684854495543598751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2427 terms. -/
def A315202 (n : ℕ) : ℤ :=
  A315202.P8684854495543598751.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2427 terms. -/
def A315202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315258.P8038339213485428245

`abs(A008592(n)-A310459(n))`
-/

namespace A315258.P8038339213485428245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310459 n|

end

end A315258.P8038339213485428245

noncomputable section

/-- A315258: Coordination sequence Gal.6.260.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315258.P8038339213485428245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A315258 (n : ℕ) : ℤ :=
  A315258.P8038339213485428245.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A315258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315401.P16146776874325016812

`2*A313487(n)-A312895(n)`
-/

namespace A315401.P16146776874325016812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313487 n - A312895 n

end

end A315401.P16146776874325016812

noncomputable section

/-- A315401: Coordination sequence Gal.4.63.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315401.P16146776874325016812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2398 terms. -/
def A315401 (n : ℕ) : ℤ :=
  A315401.P16146776874325016812.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2398 terms. -/
def A315401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315409.P16904544439805105745

`A313533(n)+A004396(A004525(n))`
-/

namespace A315409.P16904544439805105745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313533 n + A004396 (A004525 n).toNat

end

end A315409.P16904544439805105745

noncomputable section

/-- A315409: Coordination sequence Gal.6.195.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315409.P16904544439805105745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. -/
def A315409 (n : ℕ) : ℤ :=
  A315409.P16904544439805105745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. -/
def A315409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315411.P3780549554269215954

`A313480(n)+A004525(n)`
-/

namespace A315411.P3780549554269215954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + A004525 n

end

end A315411.P3780549554269215954

noncomputable section

/-- A315411: Coordination sequence Gal.4.78.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315411.P3780549554269215954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315411 (n : ℕ) : ℤ :=
  A315411.P3780549554269215954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315482.P9070662695746242756

`A313533(n)+A004396(n)`
-/

namespace A315482.P9070662695746242756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313533 n + A004396 n

end

end A315482.P9070662695746242756

noncomputable section

/-- A315482: Coordination sequence Gal.6.347.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315482.P9070662695746242756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A315482 (n : ℕ) : ℤ :=
  A315482.P9070662695746242756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A315482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315490.P6677223779923503323

`A314148(n)+A238469(n)`
-/

namespace A315490.P6677223779923503323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314148 n + A238469 n

end

end A315490.P6677223779923503323

noncomputable section

/-- A315490: Coordination sequence Gal.4.141.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315490.P6677223779923503323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2253 terms. -/
def A315490 (n : ℕ) : ℤ :=
  A315490.P6677223779923503323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2253 terms. -/
def A315490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315617.P12466770115023157684

`A008486(A314692(n)-A008576(n))`
-/

namespace A315617.P12466770115023157684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A314692 n - A008576 n).toNat

end

end A315617.P12466770115023157684

noncomputable section

/-- A315617: Coordination sequence Gal.3.37.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315617.P12466770115023157684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. -/
def A315617 (n : ℕ) : ℤ :=
  A315617.P12466770115023157684.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. -/
def A315617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315632.P5421260199961384495

`2*A313480(n)-A008574(n)`
-/

namespace A315632.P5421260199961384495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313480 n - A008574 n

end

end A315632.P5421260199961384495

noncomputable section

/-- A315632: Coordination sequence Gal.5.112.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315632.P5421260199961384495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A315632 (n : ℕ) : ℤ :=
  A315632.P5421260199961384495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A315632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315655.P15726535845934391746

`A103517(A315709(n)-A016777(n))`
-/

namespace A315655.P15726535845934391746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315709 n - A016777 n).toNat

end

end A315655.P15726535845934391746

noncomputable section

/-- A315655: Coordination sequence Gal.6.644.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315655.P15726535845934391746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315655 (n : ℕ) : ℤ :=
  A315655.P15726535845934391746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315769.P6576571063026310288

`Δ[A267528(n+1)]*A301716(A026741(n))`
-/

namespace A315769.P6576571063026310288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A301716 (A026741 n).toNat

end

end A315769.P6576571063026310288

noncomputable section

/-- A315769: Coordination sequence Gal.6.370.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315769.P6576571063026310288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2237 terms. -/
def A315769 (n : ℕ) : ℤ :=
  A315769.P6576571063026310288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2237 terms. -/
def A315769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316315.P14367970576419321925

`eq[1, A053832(A007954(n))]`
-/

namespace A316315.P14367970576419321925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316315.P14367970576419321925

noncomputable section

/-- A316315: Numbers k such that the product of digits of k is a power of 12.

Offset 1, canonical program `A316315.P14367970576419321925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A316315 (n : ℕ) : ℤ :=
  (A316315.P14367970576419321925.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A316315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316341.P9571797849802737273

`A012245(a(n-2)+n)` with `a(0)=0, a(1)=1`
-/

namespace A316341.P9571797849802737273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A012245 (a (n - 2) + (n : ℤ)).toNat

end

end A316341.P9571797849802737273

noncomputable section

/-- A316341: Characteristic function of the factorials 1!, 2!, 3!, ...

Offset 0, canonical program `A316341.P9571797849802737273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316341 (n : ℕ) : ℤ :=
  A316341.P9571797849802737273.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317331.P16205827188817232498

`4*(n+1)+A014577(n)-1`
-/

namespace A317331.P16205827188817232498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + A014577 n - 1

end

end A317331.P16205827188817232498

noncomputable section

/-- A317331: Indices m for which A058304(m) = 1.

Offset 1, canonical program `A317331.P16205827188817232498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014577, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317331 (n : ℕ) : ℤ :=
  A317331.P16205827188817232498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014577, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318459.P16245640249373000386

`gcd(n+1, A009213(n+1))`
-/

namespace A318459.P16245640249373000386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A009213 (n + 1))

end

end A318459.P16245640249373000386

noncomputable section

/-- A318459: a(n) = gcd(n, tau(n), phi(n)), where tau = A000005 and phi = A000010.

Offset 1, canonical program `A318459.P16245640249373000386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009213, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318459 (n : ℕ) : ℤ :=
  (A318459.P16245640249373000386.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009213, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318519.P15155889368844815815

`A000005(n+1)*A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318519.P15155889368844815815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A003557 (n + 1)

end

end A318519.P15155889368844815815

noncomputable section

/-- A318519: a(n) = A000005(n) * A003557(n).

Offset 1, canonical program `A318519.P15155889368844815815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318519 (n : ℕ) : ℤ :=
  A318519.P15155889368844815815.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318519.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A318677.P9620612550096439051

`(A000203(n+1)-A061020(n+1))/2`
-/

namespace A318677.P9620612550096439051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A061020 (n + 1) : ℚ) / 2

end

end A318677.P9620612550096439051

noncomputable section

/-- A318677: Sum of divisors of n that have an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A318677.P9620612550096439051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318677 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318677.P9620612550096439051.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318682.P18272625824702856181

`∑[-A359154(n+1)]`
-/

namespace A318682.P18272625824702856181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A359154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P18272625824702856181

noncomputable section

/-- A318682: a(n) is the number of odd values minus the number of even values of the integer log of all positive integers up to and including n.

Offset 1, canonical program `A318682.P18272625824702856181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318682 (n : ℕ) : ℤ :=
  A318682.P18272625824702856181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319069.P492491038514716107

`a(n-A000005(n-1))+a(n-A000005(n))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319069.P492491038514716107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ((n : ℤ) - A000005 (n - 1)).toNat + a ((n : ℤ) - A000005 n).toNat

end

end A319069.P492491038514716107

noncomputable section

/-- A319069: a(1) = a(2) = 1; a(n) = a(n-A000005(n-1)) + a(n-A000005(n-2)) for n > 2.

Offset 1, canonical program `A319069.P492491038514716107`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-A000005(n-1))+a(n-A000005(n))` (program `A319069.P492491038514716107`, by `A319069.P492491038514716107.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A319069 (n : ℕ) : ℤ :=
  (A319069.P492491038514716107.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-A000005(n-1))+a(n-A000005(n))` (program `A319069.P492491038514716107`, by `A319069.P492491038514716107.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A319069.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A319434.P4760502082362804090

`A001462(A001462(A001462(n+1)+n+1)+n+1)`
-/

namespace A319434.P4760502082362804090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A001462 (A001462 (n + 1) + (n : ℤ) + 1).toNat + (n : ℤ) + 1).toNat

end

end A319434.P4760502082362804090

noncomputable section

/-- A319434: Take Golomb's sequence A001462 and shorten all the runs by 1.

Offset 1, canonical program `A319434.P4760502082362804090`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319434 (n : ℕ) : ℤ :=
  A319434.P4760502082362804090.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320009.P8165997606206648601

`A000005(n)*a(n-A000005(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320009.P8165997606206648601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 n * a ((n : ℤ) - A000005 n).toNat

end

end A320009.P8165997606206648601

noncomputable section

/-- A320009: a(0) = 1; for n > 0, a(n) = A000005(n) * a(n-A000005(n)), where A000005(n) gives the number of divisors of n.

Offset 0, canonical program `A320009.P8165997606206648601`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n)*a(n-A000005(n))` (program `A320009.P8165997606206648601`, by `A320009.P8165997606206648601.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A320009 (n : ℕ) : ℤ :=
  A320009.P8165997606206648601.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n)*a(n-A000005(n))` (program `A320009.P8165997606206648601`, by `A320009.P8165997606206648601.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A320009.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A320016.P9484917779302080425

`A000005(n+1)*a(A000005(n+1)-1)` with `a(0)=1, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320016.P9484917779302080425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000005 (n + 1) * a (A000005 (n + 1) - 1).toNat

end

end A320016.P9484917779302080425

noncomputable section

/-- A320016: a(1) = a(2) = 1; for n > 2, a(n) = A000005(n) * a(A000005(n)), where A000005(n) gives the number of divisors of n.

Offset 1, canonical program `A320016.P9484917779302080425`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*a(A000005(n+1)-1)` (program `A320016.P9484917779302080425`, by `A320016.P9484917779302080425.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A320016 (n : ℕ) : ℤ :=
  A320016.P9484917779302080425.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*a(A000005(n+1)-1)` (program `A320016.P9484917779302080425`, by `A320016.P9484917779302080425.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A320016.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A320089.P17205569349605145303

`∑[A295506(n+1)]`
-/

namespace A320089.P17205569349605145303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320089.P17205569349605145303

noncomputable section

/-- A320089: Number of primitive (=aperiodic) 5-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320089.P17205569349605145303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A320089 (n : ℕ) : ℤ :=
  A320089.P17205569349605145303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A320089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320090.P3982417970067129547

`∑[A320071(n+1)]`
-/

namespace A320090.P3982417970067129547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320090.P3982417970067129547

noncomputable section

/-- A320090: Number of primitive (=aperiodic) 6-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320090.P3982417970067129547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A320090 (n : ℕ) : ℤ :=
  A320090.P3982417970067129547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A320090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320091.P8454268686105646961

`∑[A320072(n+1)]`
-/

namespace A320091.P8454268686105646961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320091.P8454268686105646961

noncomputable section

/-- A320091: Number of primitive (=aperiodic) 7-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320091.P8454268686105646961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A320091 (n : ℕ) : ℤ :=
  A320091.P8454268686105646961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A320091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320092.P5508118192219672210

`∑[A320073(n+1)]`
-/

namespace A320092.P5508118192219672210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320092.P5508118192219672210

noncomputable section

/-- A320092: Number of primitive (=aperiodic) 8-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320092.P5508118192219672210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A320092 (n : ℕ) : ℤ :=
  A320092.P5508118192219672210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A320092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320093.P7933028962227537936

`∑[A320074(n+1)]`
-/

namespace A320093.P7933028962227537936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320093.P7933028962227537936

noncomputable section

/-- A320093: Number of primitive (=aperiodic) 9-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320093.P7933028962227537936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A320093 (n : ℕ) : ℤ :=
  A320093.P7933028962227537936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A320093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320357.P6511477533894783325

`a(n-1)+a(n-A000005(n))` with `a(0)=1, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320357.P6511477533894783325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + a ((n : ℤ) - A000005 n).toNat

end

end A320357.P6511477533894783325

noncomputable section

/-- A320357: a(0)=1; a(1)=1; for n >= 2, a(n) = a(n-1) + a(n-A000005(n)).

Offset 0, canonical program `A320357.P6511477533894783325`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-A000005(n))` (program `A320357.P6511477533894783325`, by `A320357.P6511477533894783325.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A320357 (n : ℕ) : ℤ :=
  (A320357.P6511477533894783325.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-A000005(n))` (program `A320357.P6511477533894783325`, by `A320357.P6511477533894783325.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A320357.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A320827.P3304668886705030181

`3*a(n-1)-A115143(n)-A115143(n)` with `a(0)=-1, a(1)=1, a(2)=1`
-/

namespace A320827.P3304668886705030181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1] fun n a =>
  3 * a (n - 1) - A115143 n - A115143 n

end

end A320827.P3304668886705030181

noncomputable section

/-- A320827: G.f.: -sqrt(1 - 4*x)*(2*x - 1)/(3*x - 1).

Offset 0, canonical program `A320827.P3304668886705030181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A320827 (n : ℕ) : ℤ :=
  A320827.P3304668886705030181.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A320827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321020.P11417234065740984579

`gcd(2, A001462(n+1))`
-/

namespace A321020.P11417234065740984579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001462 (n + 1))

end

end A321020.P11417234065740984579

noncomputable section

/-- A321020: A hybrid of Kolakoski's sequence A000002 and Golomb's sequence A001462: if A001462(n) is odd replace it with 1, if even with 2.

Offset 1, canonical program `A321020.P11417234065740984579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321020 (n : ℕ) : ℤ :=
  (A321020.P11417234065740984579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321020.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A321193.P431441058952180868

`2*(lt[A001221(2*(n+1)), 3]+1)`
-/

namespace A321193.P431441058952180868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A321193.P431441058952180868

noncomputable section

/-- A321193: Even numbers with no more than one odd prime factor, not counting multiplicity.

Offset 1, canonical program `A321193.P431441058952180868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321193 (n : ℕ) : ℤ :=
  (A321193.P431441058952180868.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321303.P1336627139751283311

`floor(sqrt((n+1)^11)*A000005(n+1))`
-/

namespace A321303.P1336627139751283311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1) ^ 11 : ℝ) * (A000005 (n + 1) : ℝ)⌋

end

end A321303.P1336627139751283311

noncomputable section

/-- A321303: a(n) = floor(d(n) * n^(11/2)) where d(n) is the number of divisors of n.

Offset 1, canonical program `A321303.P1336627139751283311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321303 (n : ℕ) : ℤ :=
  A321303.P1336627139751283311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321577.P6866558407066734621

`A000051(A015910(n+1))*A057427(n)`
-/

namespace A321577.P6866558407066734621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A015910 (n + 1)).toNat * A057427 n

end

end A321577.P6866558407066734621

noncomputable section

/-- A321577: a(n) = F_n mod M_n, where F_n = 2^(2^n) + 1 and M_n = 2^n - 1.

Offset 1, canonical program `A321577.P6866558407066734621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. -/
def A321577 (n : ℕ) : ℤ :=
  A321577.P6866558407066734621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. -/
def A321577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321578.P6125892634772298071

`A350174(A000040(n+1))`
-/

namespace A321578.P6125892634772298071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A000040 (n + 1)).toNat

end

end A321578.P6125892634772298071

noncomputable section

/-- A321578: a(n) is the maximum value of k such that A007504(k) <= prime(n).

Offset 1, canonical program `A321578.P6125892634772298071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A321578 (n : ℕ) : ℤ :=
  A321578.P6125892634772298071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A321578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321856.P5955438199754994366

`A340764(n+1)-A340763(n+1)`
-/

namespace A321856.P5955438199754994366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (n + 1) - A340763 (n + 1)

end

end A321856.P5955438199754994366

noncomputable section

/-- A321856: Number of primes of the form 3*m + 2 <= n minus number of primes of the form 3*m + 1 <= n.

Offset 1, canonical program `A321856.P5955438199754994366`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340763, A340764, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321856 (n : ℕ) : ℤ :=
  A321856.P5955438199754994366.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340763, A340764, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321858.P17327657512236204005

`A321863(∑[∏{p}[n+1, C(#, n)%2]])`
-/

namespace A321858.P17327657512236204005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321863 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321858.P17327657512236204005

noncomputable section

/-- A321858: a(n) = Pi(12,5)(n) + Pi(12,7)(n) - Pi(12,1)(n) - Pi(12,11)(n) where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

Offset 1, canonical program `A321858.P17327657512236204005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321858 (n : ℕ) : ℤ :=
  A321858.P17327657512236204005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322328.P406640115135084941

`A005361(n+1)*4^A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322328.P406640115135084941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) * (4 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A322328.P406640115135084941

noncomputable section

/-- A322328: a(n) = A005361(n) * 4^A001221(n) for n > 0.

Offset 1, canonical program `A322328.P406640115135084941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322328 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322328.P406640115135084941.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322996.P14040631771689512486

`(a(n-A000005(n))+1)*char[2*n]` with `a(0)=0`
-/

namespace A322996.P14040631771689512486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ((n : ℤ) - A000005 n).toNat + 1) * (if ∃ j, f1 j = n then 1 else 0)

end

end A322996.P14040631771689512486

noncomputable section

/-- A322996: Number of iterations of A049820(x) = x - A000005(x) needed to reach an odd number or zero, when starting from x = n.

Offset 0, canonical program `A322996.P14040631771689512486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322996 (n : ℕ) : ℤ :=
  (A322996.P14040631771689512486.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323440.P16881956477857398071

`eq[1, A324852(n+1)]+1`
-/

namespace A323440.P16881956477857398071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323440.P16881956477857398071

noncomputable section

/-- A323440: Numbers divisible by exactly one of their distinct prime indices.

Offset 1, canonical program `A323440.P16881956477857398071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323440 (n : ℕ) : ℤ :=
  (A323440.P16881956477857398071.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324128.P7917423845990385646

`2*A324129(n)`
-/

namespace A324128.P7917423845990385646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324129 n

end

end A324128.P7917423845990385646

noncomputable section

/-- A324128: a(n) = 2*n*Fibonacci(n) + (-1)^n + 1.

Offset 0, canonical program `A324128.P7917423845990385646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324128 (n : ℕ) : ℤ :=
  A324128.P7917423845990385646.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324465.P3700891872518322350

`A008486(A000120(n))-A324468(n+1)`
-/

namespace A324465.P3700891872518322350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A000120 n).toNat - A324468 (n + 1)

end

end A324465.P3700891872518322350

noncomputable section

/-- A324465: Exponent of highest power of 2 that divides A324152(n).

Offset 0, canonical program `A324465.P3700891872518322350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324465 (n : ℕ) : ℤ :=
  A324465.P3700891872518322350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324771.P13594597293343037890

`lt[n%2, A324852(n+1)]+1`
-/

namespace A324771.P13594597293343037890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A324771.P13594597293343037890

noncomputable section

/-- A324771: Numbers divisible by at least one of their prime indices > 1.

Offset 1, canonical program `A324771.P13594597293343037890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324771 (n : ℕ) : ℤ :=
  (A324771.P13594597293343037890.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324846.P15694583912219771153

`lt[A324852(n+1), 1]+1`
-/

namespace A324846.P15694583912219771153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A324846.P15694583912219771153

noncomputable section

/-- A324846: Positive integers divisible by none of their prime indices.

Offset 1, canonical program `A324846.P15694583912219771153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324846 (n : ℕ) : ℤ :=
  (A324846.P15694583912219771153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324847.P1887708991502220252

`lt[0, A324852(n+2)]+2`
-/

namespace A324847.P1887708991502220252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A324847.P1887708991502220252

noncomputable section

/-- A324847: Numbers divisible by at least one of their prime indices.

Offset 1, canonical program `A324847.P1887708991502220252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324847 (n : ℕ) : ℤ :=
  (A324847.P1887708991502220252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324849.P3412447664398633879

`eq[n%2, A324852(n+1)]+1`
-/

namespace A324849.P3412447664398633879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324849.P3412447664398633879

noncomputable section

/-- A324849: Positive integers divisible by none of their prime indices > 1.

Offset 1, canonical program `A324849.P3412447664398633879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324849 (n : ℕ) : ℤ :=
  (A324849.P3412447664398633879.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325392.P6786933458347630188

`∑{d}[n+1, A008480(#)*A154955((n+1)/#)]`
-/

namespace A325392.P6786933458347630188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008480 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325392.P6786933458347630188

noncomputable section

/-- A325392: Number of permutations of the multiset of prime factors of n whose first part is not 2.

Offset 1, canonical program `A325392.P6786933458347630188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325392 (n : ℕ) : ℤ :=
  A325392.P6786933458347630188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325498.P3599496736860101709

`Δ[A036668(n+1)]`
-/

namespace A325498.P3599496736860101709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325498.P3599496736860101709

noncomputable section

/-- A325498: Difference sequence of A036668.

Offset 1, canonical program `A325498.P3599496736860101709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325498 (n : ℕ) : ℤ :=
  A325498.P3599496736860101709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325938.P14006727487049740035

`A001221(n+1)^A000005(n+1)`
-/

namespace A325938.P14006727487049740035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A325938.P14006727487049740035

noncomputable section

/-- A325938: a(n) = omega(n)^tau(n), where omega=A001221 and tau=A000005.

Offset 1, canonical program `A325938.P14006727487049740035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325938 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325938.P14006727487049740035.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325938.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325943.P7234983070192388028

`floor((n+2)/A001221(n+2))`
-/

namespace A325943.P7234983070192388028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A001221 (n + 2) : ℚ)⌋

end

end A325943.P7234983070192388028

noncomputable section

/-- A325943: a(n) = floor(n / omega(n)) where omega = A001221.

Offset 2, canonical program `A325943.P7234983070192388028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325943 (n : ℕ) : ℤ :=
  A325943.P7234983070192388028.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327750.P8221723074471810655

`eq[A007954(A230099(n)), A051801(n)]`
-/

namespace A327750.P8221723074471810655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327750.P8221723074471810655

noncomputable section

/-- A327750: Numbers without zero digits such that after adding the product of its digits to it, a number with the same product of digits is obtained.

Offset 1, canonical program `A327750.P8221723074471810655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A327750 (n : ℕ) : ℤ :=
  (A327750.P8221723074471810655.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A327750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328782.P8610872461080156173

`∩[A011540(n+1), A328781(n+1)]`
-/

namespace A328782.P8610872461080156173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328782.P8610872461080156173

noncomputable section

/-- A328782: Integers k such that k and k^2 contain the same number > 0 of digits zero in their decimal expansion.

Offset 1, canonical program `A328782.P8610872461080156173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A328782 (n : ℕ) : ℤ :=
  (A328782.P8610872461080156173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A328782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329116.P11887441733358969952

`A255175(abs(1-n))`
-/

namespace A329116.P11887441733358969952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255175 |1 - (n : ℤ)|.toNat

end

end A329116.P11887441733358969952

noncomputable section

/-- A329116: Successively count to (-1)^(n+1)*n (n = 0, 1, 2, ... ).

Offset 0, canonical program `A329116.P11887441733358969952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329116 (n : ℕ) : ℤ :=
  A329116.P11887441733358969952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329269.P8670205406742667654

`∪[A005123(n+1), ∑[n]]`
-/

namespace A329269.P8670205406742667654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A329269.P8670205406742667654

noncomputable section

/-- A329269: Integers k such that 8*k + 1 is a prime or a square.

Offset 1, canonical program `A329269.P8670205406742667654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329269 (n : ℕ) : ℤ :=
  (A329269.P8670205406742667654.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329624.P3166854944000482372

`A000005(A108411(floor((n+1)/5)))`
-/

namespace A329624.P3166854944000482372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A108411 ⌊(n + 1 : ℚ) / 5⌋.toNat).toNat

end

end A329624.P3166854944000482372

noncomputable section

/-- A329624: Number of iterations of A329623 for starting value n before a repeated value appears, or -1 if this never happens.

Offset 1, canonical program `A329624.P3166854944000482372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A329624 (n : ℕ) : ℤ :=
  A329624.P3166854944000482372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A329624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329717.P10453135452585466116

`n+1+A001221(n+1)*(-1)^A001221(n+1)`
-/

namespace A329717.P10453135452585466116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (A001221 (n + 1) : ℚ) * (-1 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A329717.P10453135452585466116

noncomputable section

/-- A329717: a(n) is n (plus or minus) the number of distinct primes dividing n according to parity (even or odd).

Offset 1, canonical program `A329717.P10453135452585466116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329717 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A329717.P10453135452585466116.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329845.P11380483740008412877

`comp[A329846(n+1)-1]+1`
-/

namespace A329845.P11380483740008412877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329846 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329845.P11380483740008412877

noncomputable section

/-- A329845: Beatty sequence for (3+sqrt(29))/5.

Offset 1, canonical program `A329845.P11380483740008412877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329845 (n : ℕ) : ℤ :=
  (A329845.P11380483740008412877.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330125.P3362564348567139348

`eq[2, A000005(A101337(n+1))]+1`
-/

namespace A330125.P3362564348567139348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A101337 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330125.P3362564348567139348

noncomputable section

/-- A330125: Positive integers whose digit-power sum is a prime.

Offset 1, canonical program `A330125.P3362564348567139348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. -/
def A330125 (n : ℕ) : ℤ :=
  (A330125.P3362564348567139348.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. -/
def A330125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330197.P9026178766442840738

`C(n+3, 3)-A320577(n+3)`
-/

namespace A330197.P9026178766442840738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - A320577 (n + 3)

end

end A330197.P9026178766442840738

noncomputable section

/-- A330197: Number of scalene triangles whose vertices are the vertices of a regular n-gon.

Offset 3, canonical program `A330197.P9026178766442840738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320577, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330197 (n : ℕ) : ℤ :=
  A330197.P9026178766442840738.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320577, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330197.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331194.P6979775353615167908

`eq[(n+1)%10, A001221(n+1)]+1`
-/

namespace A331194.P6979775353615167908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331194.P6979775353615167908

noncomputable section

/-- A331194: Numbers whose last digit is the number of their distinct prime factors.

Offset 1, canonical program `A331194.P6979775353615167908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4880 terms. -/
def A331194 (n : ℕ) : ℤ :=
  (A331194.P6979775353615167908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4880 terms. -/
def A331194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331635.P6175707136444989633

`lt[(n+1)%A339965(n+1), 1]+1`
-/

namespace A331635.P6175707136444989633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A339965 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A331635.P6175707136444989633

noncomputable section

/-- A331635: Numbers m such that -m^2 == m (mod sigma(m)) where sigma = A000203.

Offset 1, canonical program `A331635.P6175707136444989633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A331635 (n : ℕ) : ℤ :=
  (A331635.P6175707136444989633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A331635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332654.P10679004288047729511

`∑{d}[n+1, A053818(#)]`
-/

namespace A332654.P10679004288047729511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053818 d

end

end A332654.P10679004288047729511

noncomputable section

/-- A332654: a(n) = Sum_{k=1..n} (k/gcd(n, k))^2.

Offset 1, canonical program `A332654.P10679004288047729511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332654 (n : ℕ) : ℤ :=
  A332654.P10679004288047729511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334490.P3091106705763769539

`∑{d}[n+1, A009194(#)]`
-/

namespace A334490.P3091106705763769539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A009194 d

end

end A334490.P3091106705763769539

noncomputable section

/-- A334490: a(n) = Sum_{d|n} gcd(d, sigma(d)).

Offset 1, canonical program `A334490.P3091106705763769539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334490 (n : ℕ) : ℤ :=
  A334490.P3091106705763769539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334491.P9359923496953105000

`∏{d}[n+1, A009194(#)]`
-/

namespace A334491.P9359923496953105000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009194 d

end

end A334491.P9359923496953105000

noncomputable section

/-- A334491: a(n) = Product_{d|n} gcd(d, sigma(d)).

Offset 1, canonical program `A334491.P9359923496953105000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334491 (n : ℕ) : ℤ :=
  A334491.P9359923496953105000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334762.P2089914015141951317

`ceil((n+1)/A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334762.P2089914015141951317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A000005 (n + 1) : ℚ)⌉

end

end A334762.P2089914015141951317

noncomputable section

/-- A334762: a(n) = ceiling (n / A000005(n)).

Offset 1, canonical program `A334762.P2089914015141951317`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)/A000005(n+1))` (program `A334762.P2089914015141951317`, by `A334762.P2089914015141951317.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A334762 (n : ℕ) : ℤ :=
  A334762.P2089914015141951317.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)/A000005(n+1))` (program `A334762.P2089914015141951317`, by `A334762.P2089914015141951317.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A334762.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A334954.P6871016967396285998

`A337360(n+1)/A000203(n+1)`
-/

namespace A334954.P6871016967396285998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337360 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A334954.P6871016967396285998

noncomputable section

/-- A334954: a(n) is 1 plus the number of divisors of n.

Offset 1, canonical program `A334954.P6871016967396285998`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337360, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334954 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A334954.P6871016967396285998.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337360, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334954.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335447.P7231323323693740438

`A008480(n+1)-1`
-/

namespace A335447.P7231323323693740438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - 1

end

end A335447.P7231323323693740438

noncomputable section

/-- A335447: Number of (1,2)-matching permutations of the prime indices of n.

Offset 1, canonical program `A335447.P7231323323693740438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335447 (n : ℕ) : ℤ :=
  A335447.P7231323323693740438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335510.P6829116680428803615

`A008480(n+1)-A335511(n+1)`
-/

namespace A335510.P6829116680428803615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A335511 (n + 1)

end

end A335510.P6829116680428803615

noncomputable section

/-- A335510: Number of (1,1,1)-matching permutations of the prime indices of n.

Offset 1, canonical program `A335510.P6829116680428803615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335510 (n : ℕ) : ℤ :=
  A335510.P6829116680428803615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335665.P13969876994009969227

`∏{d}[n+1, gcd(#, A336040(#)+n)]`
-/

namespace A335665.P13969876994009969227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A336040 d + (n : ℤ))

end

end A335665.P13969876994009969227

noncomputable section

/-- A335665: Product of the refactorable divisors of n.

Offset 1, canonical program `A335665.P13969876994009969227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335665 (n : ℕ) : ℤ :=
  (A335665.P13969876994009969227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336063.P8617069619365825511

`lt[A095683(2*A065091(n+1)), A136176(n+1)]+1`
-/

namespace A336063.P8617069619365825511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095683 (2 * A065091 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336063.P8617069619365825511

noncomputable section

/-- A336063: Numbers divisible by the minimal exponent in their prime factorization (A051904).

Offset 1, canonical program `A336063.P8617069619365825511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A336063 (n : ℕ) : ℤ :=
  (A336063.P8617069619365825511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A336063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336105.P2235091896274651277

`A008480(2^(n+1)-1)`
-/

namespace A336105.P2235091896274651277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (2 ^ (n + 1) - 1)

end

end A336105.P2235091896274651277

noncomputable section

/-- A336105: Number of permutations of the prime indices of 2^n - 1.

Offset 1, canonical program `A336105.P2235091896274651277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336105 (n : ℕ) : ℤ :=
  A336105.P2235091896274651277.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336357.P4795503866043282121

`lt[A001221(A000203(n+1)), A001221(n+1)]+1`
-/

namespace A336357.P4795503866043282121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336357.P4795503866043282121

noncomputable section

/-- A336357: Numbers k such that sigma(k) has fewer distinct prime factors than k.

Offset 1, canonical program `A336357.P4795503866043282121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A336357 (n : ℕ) : ℤ :=
  (A336357.P4795503866043282121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A336357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336388.P8538346120847863118

`∑{p}[A009194(n+1), A009194(#)]`
-/

namespace A336388.P8538346120847863118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A009194 p

end

end A336388.P8538346120847863118

noncomputable section

/-- A336388: Number of prime divisors of sigma(n) that divide n; a(1) = 0.

Offset 1, canonical program `A336388.P8538346120847863118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336388 (n : ℕ) : ℤ :=
  A336388.P8538346120847863118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336593.P5264653991249695499

`lt[A351219(n+1)%3, 1]+1`
-/

namespace A336593.P5264653991249695499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351219 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336593.P5264653991249695499

noncomputable section

/-- A336593: Numbers k such that k/A008835(k) is cubeful (A036966), where A008835(k) is the largest 4th power dividing k.

Offset 1, canonical program `A336593.P5264653991249695499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 994 terms. -/
def A336593 (n : ℕ) : ℤ :=
  (A336593.P5264653991249695499.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 994 terms. -/
def A336593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336595.P3949908037576093497

`lt[A000005(n+1)%5, 1]+1`
-/

namespace A336595.P3949908037576093497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336595.P3949908037576093497

noncomputable section

/-- A336595: Numbers whose number of divisors is divisible by 5.

Offset 1, canonical program `A336595.P3949908037576093497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2097 terms. -/
def A336595 (n : ℕ) : ℤ :=
  (A336595.P3949908037576093497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2097 terms. -/
def A336595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336613.P6967408703762427172

`lt[(n+1)%A000005(A000203(n+1)), 1]+1`
-/

namespace A336613.P6967408703762427172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (A000203 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336613.P6967408703762427172

noncomputable section

/-- A336613: Numbers m such that tau(sigma(m)) divides m, where tau(m) is the number of divisors function (A000005) and sigma(m) is the sum of divisors function (A000203).

Offset 1, canonical program `A336613.P6967408703762427172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A336613 (n : ℕ) : ℤ :=
  (A336613.P6967408703762427172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A336613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336691.P11129231366609036283

`A001221(A088580(n+1))`
-/

namespace A336691.P11129231366609036283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A088580 (n + 1)).toNat

end

end A336691.P11129231366609036283

noncomputable section

/-- A336691: Number of distinct prime factors of 1+sigma(n).

Offset 1, canonical program `A336691.P11129231366609036283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336691 (n : ℕ) : ℤ :=
  A336691.P11129231366609036283.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336691.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337174.P2886231547188506159

`floor((A000005(n+1)+1)²/4)`
-/

namespace A337174.P2886231547188506159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000005 (n + 1) + 1) ^ 2 : ℚ) / 4⌋

end

end A337174.P2886231547188506159

noncomputable section

/-- A337174: Number of pairs of divisors of n (d1,d2) such that d1 <= d2 and d1*d2 >= n.

Offset 1, canonical program `A337174.P2886231547188506159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337174 (n : ℕ) : ℤ :=
  A337174.P2886231547188506159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337285.P4738724481920193092

`A337286(n+1)-2*A337283(n+1)+A107239(n+1)`
-/

namespace A337285.P4738724481920193092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337286 (n + 1) - 2 * A337283 (n + 1) + A107239 (n + 1)

end

end A337285.P4738724481920193092

noncomputable section

/-- A337285: a(n) = Sum_{i=1..n} (i-1)^2*T(i)^2, where T(i) = A000073(i) is the i-th tribonacci number.

Offset 1, canonical program `A337285.P4738724481920193092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107239, A337283, A337286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337285 (n : ℕ) : ℤ :=
  A337285.P4738724481920193092.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107239, A337283, A337286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338129.P8432619252608053204

`∪[A080075(n+1), A126646(n)]`
-/

namespace A338129.P8432619252608053204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338129.P8432619252608053204

noncomputable section

/-- A338129: Positive numbers k such that the binary representation of k^k ends with that of k.

Offset 1, canonical program `A338129.P8432619252608053204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338129 (n : ℕ) : ℤ :=
  (A338129.P8432619252608053204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338648.P5515648176150518427

`A000005(n+1)-A083040(n+1)`
-/

namespace A338648.P5515648176150518427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083040 (n + 1)

end

end A338648.P5515648176150518427

noncomputable section

/-- A338648: Number of divisors of n which are greater than 4.

Offset 1, canonical program `A338648.P5515648176150518427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338648 (n : ℕ) : ℤ :=
  A338648.P5515648176150518427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338648.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338881.P16098821748611333482

`∏{digits}[A007094(n), A028310(#)]`
-/

namespace A338881.P16098821748611333482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A338881.P16098821748611333482

noncomputable section

/-- A338881: Product of the nonzero digits of (n written in base 8).

Offset 0, canonical program `A338881.P16098821748611333482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338881 (n : ℕ) : ℤ :=
  A338881.P16098821748611333482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338882.P16077244262081948641

`∏{digits}[A007095(n), A028310(#)]`
-/

namespace A338882.P16077244262081948641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A338882.P16077244262081948641

noncomputable section

/-- A338882: Product of the nonzero digits of (n written in base 9).

Offset 0, canonical program `A338882.P16077244262081948641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338882 (n : ℕ) : ℤ :=
  A338882.P16077244262081948641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339461.P9181294393208732511

`A005086(A002522(n))`
-/

namespace A339461.P9181294393208732511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (A002522 n).toNat

end

end A339461.P9181294393208732511

noncomputable section

/-- A339461: Number of Fibonacci divisors of n^2 + 1.

Offset 0, canonical program `A339461.P9181294393208732511`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339461 (n : ℕ) : ℤ :=
  A339461.P9181294393208732511.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339584.P870826048083044991

`A092606(n+1)+1`
-/

namespace A339584.P870826048083044991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092606 (n + 1) + 1

end

end A339584.P870826048083044991

noncomputable section

/-- A339584: A ternary sequence: a(n) = 1 if n is in A003156, 2 if n is in A003157, 3 if n is in A003158.

Offset 1, canonical program `A339584.P870826048083044991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092606, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339584 (n : ℕ) : ℤ :=
  A339584.P870826048083044991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092606, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339621.P4276796428824883945

`A005092(A002522(n))`
-/

namespace A339621.P4276796428824883945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005092 (A002522 n).toNat

end

end A339621.P4276796428824883945

noncomputable section

/-- A339621: Sum of Fibonacci divisors of n^2 + 1.

Offset 0, canonical program `A339621.P4276796428824883945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339621 (n : ℕ) : ℤ :=
  A339621.P4276796428824883945.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339621.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339889.P1394041266667056392

`lt[A051903(n+1)-3, A001221(n+1)]+1`
-/

namespace A339889.P1394041266667056392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A339889.P1394041266667056392

noncomputable section

/-- A339889: Products of distinct primes or semiprimes.

Offset 1, canonical program `A339889.P1394041266667056392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339889 (n : ℕ) : ℤ :=
  (A339889.P1394041266667056392.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341663.P11008756272771736729

`A000005(A000040(n+1)^3-1)`
-/

namespace A341663.P11008756272771736729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) ^ 3 - 1).toNat

end

end A341663.P11008756272771736729

noncomputable section

/-- A341663: a(n) is the number of divisors of prime(n)^3 - 1.

Offset 1, canonical program `A341663.P11008756272771736729`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341663 (n : ℕ) : ℤ :=
  A341663.P11008756272771736729.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A341700.P6811357210950876321

`A034387(2*(n+1))-A034387(n+1)`
-/

namespace A341700.P6811357210950876321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (2 * (n + 1)) - A034387 (n + 1)

end

end A341700.P6811357210950876321

noncomputable section

/-- A341700: Sum of the primes p satisfying n < p <= 2n.

Offset 1, canonical program `A341700.P6811357210950876321`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341700 (n : ℕ) : ℤ :=
  A341700.P6811357210950876321.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341700.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341880.P3597837637879415614

`6*A000005(n+16)-4*A007425(n+16)+A007426(n+16)-4`
-/

namespace A341880.P3597837637879415614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000005 (n + 16) - 4 * A007425 (n + 16) + A007426 (n + 16) - 4

end

end A341880.P3597837637879415614

noncomputable section

/-- A341880: Number of ordered factorizations of n into 4 factors > 1.

Offset 16, canonical program `A341880.P3597837637879415614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007426, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341880 (n : ℕ) : ℤ :=
  A341880.P3597837637879415614.a (n - 16)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007426, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341882.P15214908650408016804

`15*A000005(n+64)-20*A007425(n+64)+15*A007426(n+64)-6*A061200(n+64)+A034695(n+64)-6`
-/

namespace A341882.P15214908650408016804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A000005 (n + 64) - 20 * A007425 (n + 64) + 15 * A007426 (n + 64) - 6 * A061200 (n + 64) + A034695 (n + 64) - 6

end

end A341882.P15214908650408016804

noncomputable section

/-- A341882: Number of ordered factorizations of n into 6 factors > 1.

Offset 64, canonical program `A341882.P15214908650408016804`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007426, A034695, A061200, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341882 (n : ℕ) : ℤ :=
  A341882.P15214908650408016804.a (n - 64)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007426, A034695, A061200, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343070.P18243399081581127892

`A013632(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A343070.P18243399081581127892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013632 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A343070.P18243399081581127892

noncomputable section

/-- A343070: a(1) = 1, for n > 1, a(n) is the smallest positive integer for which a(n-1) + n + a(n) is a prime.

Offset 1, canonical program `A343070.P18243399081581127892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A343070 (n : ℕ) : ℤ :=
  A343070.P18243399081581127892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A343070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343443.P12415919070870733576

`A000005(A064549(n+1))`
-/

namespace A343443.P12415919070870733576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064549 (n + 1)).toNat

end

end A343443.P12415919070870733576

noncomputable section

/-- A343443: If n = Product (p_j^k_j) then a(n) = Product (k_j + 2), with a(1) = 1.

Offset 1, canonical program `A343443.P12415919070870733576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343443 (n : ℕ) : ℤ :=
  A343443.P12415919070870733576.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343492.P4977235289244464473

`∑{d}[n+1, #*A295506((n+1)/#)]`
-/

namespace A343492.P4977235289244464473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A295506 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343492.P4977235289244464473

noncomputable section

/-- A343492: a(n) = Sum_{k=1..n} 5^(gcd(k, n) - 1).

Offset 1, canonical program `A343492.P4977235289244464473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A343492 (n : ℕ) : ℤ :=
  A343492.P4977235289244464473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A343492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343876.P1859207970509647468

`∑{d}[n+1, (n+1)/#^A157657(#)]`
-/

namespace A343876.P1859207970509647468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) ^ (A157657 d : ℤ)

end

end A343876.P1859207970509647468

noncomputable section

/-- A343876: a(n) = n * Sum_{d|n} d^mu(d).

Offset 1, canonical program `A343876.P1859207970509647468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343876 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343876.P1859207970509647468.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344226.P1394848306979089891

`∑{d}[n+1, (n+1)^A001221(#)/#]`
-/

namespace A344226.P1394848306979089891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A001221 d : ℤ) / (d : ℚ)

end

end A344226.P1394848306979089891

noncomputable section

/-- A344226: a(n) = Sum_{d|n} n^omega(d) / d.

Offset 1, canonical program `A344226.P1394848306979089891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344226 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344226.P1394848306979089891.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344327.P12949124934553649627

`A000005(A000583(n+1))`
-/

namespace A344327.P12949124934553649627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000583 (n + 1)).toNat

end

end A344327.P12949124934553649627

noncomputable section

/-- A344327: Number of divisors of n^4.

Offset 1, canonical program `A344327.P12949124934553649627`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344327 (n : ℕ) : ℤ :=
  A344327.P12949124934553649627.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344328.P5887897113465707472

`A000005(A000584(n+1))`
-/

namespace A344328.P5887897113465707472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000584 (n + 1)).toNat

end

end A344328.P5887897113465707472

noncomputable section

/-- A344328: Number of divisors of n^5.

Offset 1, canonical program `A344328.P5887897113465707472`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344328 (n : ℕ) : ℤ :=
  A344328.P5887897113465707472.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344391.P11217493897690199327

`(n%floor(sqrt(n+1)))!*A011973(n)`
-/

namespace A344391.P11217493897690199327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % Nat.sqrt (n + 1)) : ℤ) * A011973 n

end

end A344391.P11217493897690199327

noncomputable section

/-- A344391: T(n, k) = binomial(n - k, k) * factorial(k), for n >= 0 and 0 <= k <= floor(n/2). Triangle read by rows.

Offset 0, canonical program `A344391.P11217493897690199327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A344391 (n : ℕ) : ℤ :=
  A344391.P11217493897690199327.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A344391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344440.P3915427148233125311

`n+1+A061020(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344440.P3915427148233125311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A061020 (n + 1)

end

end A344440.P3915427148233125311

noncomputable section

/-- A344440: a(n) = n + A061020(n).

Offset 1, canonical program `A344440.P3915427148233125311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344440 (n : ℕ) : ℤ :=
  A344440.P3915427148233125311.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344440.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344441.P17067382042004747526

`A061020(n+1)+abs(A061020(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344441.P17067382042004747526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (n + 1) + |A061020 (n + 1)|

end

end A344441.P17067382042004747526

noncomputable section

/-- A344441: a(n) = A061020(n) + abs(A061020(n)).

Offset 1, canonical program `A344441.P17067382042004747526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344441 (n : ℕ) : ℤ :=
  A344441.P17067382042004747526.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344441.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344508.P1759457213405242040

`(n+1)*∑{d}[n+1, #*A053818((n+1)/#)]`
-/

namespace A344508.P1759457213405242040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A053818 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A344508.P1759457213405242040

noncomputable section

/-- A344508: a(n) = Sum_{k=1..n} k * lcm(k,n).

Offset 1, canonical program `A344508.P1759457213405242040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344508 (n : ℕ) : ℤ :=
  A344508.P1759457213405242040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344809.P4607849316742958979

`A047700(n+1)+49`
-/

namespace A344809.P4607849316742958979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047700 (n + 1) + 49

end

end A344809.P4607849316742958979

noncomputable section

/-- A344809: Numbers that are the sum of six squares in five or more ways.

Offset 1, canonical program `A344809.P4607849316742958979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5268 terms. -/
def A344809 (n : ℕ) : ℤ :=
  A344809.P4607849316742958979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5268 terms. -/
def A344809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345270.P9432890020347198030

`∑{d}[n+1, ((n+1)/#)^A000005(#)]`
-/

namespace A345270.P9432890020347198030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ (A000005 d : ℤ)

end

end A345270.P9432890020347198030

noncomputable section

/-- A345270: a(n) = Sum_{d|n} d^tau(n/d).

Offset 1, canonical program `A345270.P9432890020347198030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345270 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345270.P9432890020347198030.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345273.P4474214577626222600

`∑{d}[n+1, (1-#+n)^A000005(#)]`
-/

namespace A345273.P4474214577626222600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ) + (n : ℤ) : ℚ) ^ (A000005 d : ℤ)

end

end A345273.P4474214577626222600

noncomputable section

/-- A345273: a(n) = Sum_{d|n} (n-d)^tau(d).

Offset 1, canonical program `A345273.P4474214577626222600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A345273 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345273.P4474214577626222600.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A345273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345274.P8715810920332508966

`∑{d}[n+1, (n+1-(n+1)/#)^A000005(#)]`
-/

namespace A345274.P8715810920332508966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) - (n + 1 : ℚ) / (d : ℚ)) ^ (A000005 d : ℤ)

end

end A345274.P8715810920332508966

noncomputable section

/-- A345274: a(n) = Sum_{d|n} (n-d)^tau(n/d).

Offset 1, canonical program `A345274.P8715810920332508966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A345274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345274.P8715810920332508966.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A345274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345355.P18399799280978424985

`∑{p}[n+1, #^A001221((n+1)/#)]`
-/

namespace A345355.P18399799280978424985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat : ℤ)

end

end A345355.P18399799280978424985

noncomputable section

/-- A345355: a(n) = Sum_{p|n, p prime} p^omega(n/p).

Offset 1, canonical program `A345355.P18399799280978424985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345355.P18399799280978424985.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346731.P4075169321817429314

`A055017(A007094(n))`
-/

namespace A346731.P4075169321817429314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A007094 n).toNat

end

end A346731.P4075169321817429314

noncomputable section

/-- A346731: Replace 8^k with (-1)^k in base-8 expansion of n.

Offset 0, canonical program `A346731.P4075169321817429314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A346731 (n : ℕ) : ℤ :=
  A346731.P4075169321817429314.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A346731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346732.P10549336997215937805

`A055017(A007095(n))`
-/

namespace A346732.P10549336997215937805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A007095 n).toNat

end

end A346732.P10549336997215937805

noncomputable section

/-- A346732: Replace 9^k with (-1)^k in base-9 expansion of n.

Offset 0, canonical program `A346732.P10549336997215937805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A346732 (n : ℕ) : ℤ :=
  A346732.P10549336997215937805.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A346732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347088.P10760207860306131150

`A055155(n+1)-A000005(n+1)`
-/

namespace A347088.P10760207860306131150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055155 (n + 1) - A000005 (n + 1)

end

end A347088.P10760207860306131150

noncomputable section

/-- A347088: a(n) = A055155(n) - d(n), where A055155(n) = Sum_{d|n} gcd(d, n/d) and d(n) gives the number of divisors of n.

Offset 1, canonical program `A347088.P10760207860306131150`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347088 (n : ℕ) : ℤ :=
  A347088.P10760207860306131150.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347089.P1921252892406958306

`gcd(A000005(n+1), A055155(n+1))`
-/

namespace A347089.P1921252892406958306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A055155 (n + 1))

end

end A347089.P1921252892406958306

noncomputable section

/-- A347089: a(n) = gcd(A055155(n), d(n)), where A055155(n) = Sum_{d|n} gcd(d, n/d) and d(n) gives the number of divisors of n.

Offset 1, canonical program `A347089.P1921252892406958306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347089 (n : ℕ) : ℤ :=
  (A347089.P1921252892406958306.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347450.P17431101381661842723

`∪[∪[2*(n+1)², (n+1)²], A028260(n+1)]`
-/

namespace A347450.P17431101381661842723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A347450.P17431101381661842723

noncomputable section

/-- A347450: Numbers whose multiset of prime indices has alternating product <= 1.

Offset 1, canonical program `A347450.P17431101381661842723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347450 (n : ℕ) : ℤ :=
  (A347450.P17431101381661842723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349094.P6148105136243127254

`A011782(n+1)-A000005(n+1)`
-/

namespace A349094.P6148105136243127254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A000005 (n + 1)

end

end A349094.P6148105136243127254

noncomputable section

/-- A349094: a(n) = 2^(n-1) - tau(n) where tau(n) is the number of divisors of n.

Offset 1, canonical program `A349094.P6148105136243127254`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349094 (n : ℕ) : ℤ :=
  A349094.P6148105136243127254.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349094.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349214.P5559016243589572811

`A034387(n+1)+A062298(n+1)`
-/

namespace A349214.P5559016243589572811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) + A062298 (n + 1)

end

end A349214.P5559016243589572811

noncomputable section

/-- A349214: a(n) = Sum_{k=1..n} k^c(k), where c is the prime characteristic (A010051).

Offset 1, canonical program `A349214.P5559016243589572811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349214 (n : ℕ) : ℤ :=
  A349214.P5559016243589572811.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349214.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349217.P8454150560353347447

`n*A001221(n+1)+A000005(n+1)`
-/

namespace A349217.P8454150560353347447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (n + 1) + A000005 (n + 1)

end

end A349217.P8454150560353347447

noncomputable section

/-- A349217: a(n) = Sum_{d|n} n^c(d), where c is the prime characteristic (A010051).

Offset 1, canonical program `A349217.P8454150560353347447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349217 (n : ℕ) : ℤ :=
  A349217.P8454150560353347447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349680.P840987634916672054

`n+1+n*A000005(n+1)-A000203(n+1)`
-/

namespace A349680.P840987634916672054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (n : ℤ) * A000005 (n + 1) - A000203 (n + 1)

end

end A349680.P840987634916672054

noncomputable section

/-- A349680: a(n) = Sum_{k=1..n} (n-k)^c(n/k), where c(n) = 1 - ceiling(n) + floor(n).

Offset 1, canonical program `A349680.P840987634916672054`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349680 (n : ℕ) : ℤ :=
  A349680.P840987634916672054.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350090.P16894114005575899078

`A000005(A003215(n))-1`
-/

namespace A350090.P16894114005575899078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003215 n).toNat - 1

end

end A350090.P16894114005575899078

noncomputable section

/-- A350090: a(n) is the number of indices i in the range 0 <= i <= n-1 such that A003215(n) - A003215(i) is an oblong number (A002378), where A003215 are the hex numbers.

Offset 0, canonical program `A350090.P16894114005575899078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350090 (n : ℕ) : ℤ :=
  A350090.P16894114005575899078.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350143.P15329120185866065227

`2*A350146(n+1)-A060831(n+1)`
-/

namespace A350143.P15329120185866065227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350146 (n + 1) - A060831 (n + 1)

end

end A350143.P15329120185866065227

noncomputable section

/-- A350143: a(n) = Sum_{k=1..n} floor(n/(2*k-1))^2.

Offset 1, canonical program `A350143.P15329120185866065227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350143 (n : ℕ) : ℤ :=
  A350143.P15329120185866065227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350526.P1363584205023659516

`n+1+A350527(n+1)`
-/

namespace A350526.P1363584205023659516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A350527 (n + 1)

end

end A350526.P1363584205023659516

noncomputable section

/-- A350526: a(n) = f(n*r)*c(n/r), where f = floor, c = ceiling, and r = golden ratio (A001622).

Offset 1, canonical program `A350526.P1363584205023659516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350526 (n : ℕ) : ℤ :=
  A350526.P1363584205023659516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351439.P4622805423921165504

`A001221(gcd(n+1, A017665(n+1)))`
-/

namespace A351439.P4622805423921165504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (n + 1 : ℤ) (A017665 (n + 1)))

end

end A351439.P4622805423921165504

noncomputable section

/-- A351439: Number of prime factors p of n such that p^(1+valuation(n,p)) divides sigma(n).

Offset 1, canonical program `A351439.P4622805423921165504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351439 (n : ℕ) : ℤ :=
  A351439.P4622805423921165504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351519.P5058596728449047522

`A000005(n+1)+A000720(n+1)-A001221(n+1)`
-/

namespace A351519.P5058596728449047522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000720 (n + 1) - A001221 (n + 1)

end

end A351519.P5058596728449047522

noncomputable section

/-- A351519: a(n) = tau(n) + pi(n) - omega(n).

Offset 1, canonical program `A351519.P5058596728449047522`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351519 (n : ℕ) : ℤ :=
  A351519.P5058596728449047522.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352202.P16382500020271687373

`A111113(n+1)+A000120(n+1)`
-/

namespace A352202.P16382500020271687373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111113 (n + 1) + A000120 (n + 1)

end

end A352202.P16382500020271687373

noncomputable section

/-- A352202: a(n) = binary weight of A115510(n).

Offset 1, canonical program `A352202.P16382500020271687373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A352202 (n : ℕ) : ℤ :=
  A352202.P16382500020271687373.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A352202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352990.P13756720821750131226

`eq[1, A352996(n+2)]+2`
-/

namespace A352990.P13756720821750131226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352996 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A352990.P13756720821750131226

noncomputable section

/-- A352990: Numbers k such that the k-th triangular number == 1 mod the integer log of k.

Offset 1, canonical program `A352990.P13756720821750131226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A352990 (n : ℕ) : ℤ :=
  (A352990.P13756720821750131226.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A352990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353147.P18088385678391061894

`A007094(A002275(n))`
-/

namespace A353147.P18088385678391061894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A002275 n).toNat

end

end A353147.P18088385678391061894

noncomputable section

/-- A353147: Decimal repunits written in base 8.

Offset 0, canonical program `A353147.P18088385678391061894`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353147 (n : ℕ) : ℤ :=
  A353147.P18088385678391061894.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353900.P14141472895883448700

`∑{d}[n+1, #*A355823(#)]`
-/

namespace A353900.P14141472895883448700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A355823 d

end

end A353900.P14141472895883448700

noncomputable section

/-- A353900: a(n) is the sum of divisors of n whose exponents in their prime factorizations are all powers of 2 (A138302).

Offset 1, canonical program `A353900.P14141472895883448700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353900 (n : ℕ) : ℤ :=
  A353900.P14141472895883448700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354715.P10103640764323870773

`record[gcd(n+1, (n-1)%A000005(n+1))]`
-/

namespace A354715.P10103640764323870773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod ((n : ℤ) - 1) (A000005 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354715.P10103640764323870773

noncomputable section

/-- A354715: Numbers k such that the number of divisors of k divides k-2.

Offset 1, canonical program `A354715.P10103640764323870773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354715 (n : ℕ) : ℤ :=
  (A354715.P10103640764323870773.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355140.P14893836911162377731

`round((n+1)/A000005(n+1))`
-/

namespace A355140.P14893836911162377731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000005 (n + 1) : ℚ))

end

end A355140.P14893836911162377731

noncomputable section

/-- A355140: n/d(n) rounded to the nearest integer, where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A355140.P14893836911162377731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355140 (n : ℕ) : ℤ :=
  A355140.P14893836911162377731.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355140.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355684.P3924323782954824562

`∑{d}[n+1, A073184(#)*A355837((n+1)/#)]`
-/

namespace A355684.P3924323782954824562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073184 d * A355837 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355684.P3924323782954824562

noncomputable section

/-- A355684: Dirichlet inverse of A355448.

Offset 1, canonical program `A355684.P3924323782954824562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355684 (n : ℕ) : ℤ :=
  A355684.P3924323782954824562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355937.P16325604427901141177

`A080339(A000005(n+1))`
-/

namespace A355937.P16325604427901141177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A000005 (n + 1)).toNat

end

end A355937.P16325604427901141177

noncomputable section

/-- A355937: a(n) = 1 if the number of divisors of n is a noncomposite, otherwise 0.

Offset 1, canonical program `A355937.P16325604427901141177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355937 (n : ℕ) : ℤ :=
  A355937.P16325604427901141177.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355943.P14069225664471544171

`A000035(n+1)*A361465(n+1)`
-/

namespace A355943.P14069225664471544171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A361465 (n + 1)

end

end A355943.P14069225664471544171

noncomputable section

/-- A355943: a(n) = 1 if n is odd and A064989(sigma(n)) divides A064989(n), otherwise 0, where A064989 is fully multiplicative with a(2) = 1 and a(p) = prevprime(p) for odd primes p, and sigma is the sum of divisors function.

Offset 1, canonical program `A355943.P14069225664471544171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355943 (n : ℕ) : ℤ :=
  A355943.P14069225664471544171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355943.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356068.P11051328716831346612

`A085970(n+1)+1`
-/

namespace A356068.P11051328716831346612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (n + 1) + 1

end

end A356068.P11051328716831346612

noncomputable section

/-- A356068: Number of integers ranging from 1 to n that are not prime-powers (1 is not a prime-power).

Offset 1, canonical program `A356068.P11051328716831346612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356068 (n : ℕ) : ℤ :=
  A356068.P11051328716831346612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357290.P18279799306496443475

`A002662(n)-A357291(n+1)`
-/

namespace A357290.P18279799306496443475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n - A357291 (n + 1)

end

end A357290.P18279799306496443475

noncomputable section

/-- A357290: a(n) = number of subsets S of {1,2,...,n} having more than 2 elements such that (sum of least two elements of S) > difference between greatest two elements of S.

Offset 0, canonical program `A357290.P18279799306496443475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A357290 (n : ℕ) : ℤ :=
  A357290.P18279799306496443475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A357290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357714.P11822585714675304720

`ceil(sqrt(n+1)-3/2)+A000005(n+1)`
-/

namespace A357714.P11822585714675304720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n + 1 : ℝ) - ((3 : ℚ) / 2 : ℝ)⌉ + A000005 (n + 1)

end

end A357714.P11822585714675304720

noncomputable section

/-- A357714: a(n) is the number of equations in the set E_{n,b} := {x+2^b*y=n^b, 2^b*x+3^b*y=n^b, ..., k^b*x+(k+1)^b*y=n^b, ..., n^b*x+(n+1)^b*y=n^b} which admit at least one nonnegative integer solution when b is sufficiently large.

Offset 1, canonical program `A357714.P11822585714675304720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357714 (n : ℕ) : ℤ :=
  A357714.P11822585714675304720.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358271.P15830490171704488334

`A007954(A000244(n))`
-/

namespace A358271.P15830490171704488334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A000244 n).toNat

end

end A358271.P15830490171704488334

noncomputable section

/-- A358271: Product of the digits of 3^n.

Offset 0, canonical program `A358271.P15830490171704488334`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358271 (n : ℕ) : ℤ :=
  A358271.P15830490171704488334.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359227.P14181940212976785679

`A001826(4*n+1)`
-/

namespace A359227.P14181940212976785679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (4 * n + 1)

end

end A359227.P14181940212976785679

noncomputable section

/-- A359227: Number of divisors of 4*n-3 of form 4*k+1.

Offset 1, canonical program `A359227.P14181940212976785679`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359227 (n : ℕ) : ℤ :=
  A359227.P14181940212976785679.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359289.P2274514194007927227

`A001826(4*(n+1)-2)`
-/

namespace A359289.P2274514194007927227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (4 * (n + 1) - 2)

end

end A359289.P2274514194007927227

noncomputable section

/-- A359289: Number of divisors of 4*n-2 of form 4*k+1.

Offset 1, canonical program `A359289.P2274514194007927227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359289 (n : ℕ) : ℤ :=
  A359289.P2274514194007927227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359289.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359473.P5174824545835334631

`A209229(A000005(n+1))`
-/

namespace A359473.P5174824545835334631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A000005 (n + 1)).toNat

end

end A359473.P5174824545835334631

noncomputable section

/-- A359473: a(n) = 1 if the number of divisors of n is a power of 2, otherwise 0.

Offset 1, canonical program `A359473.P5174824545835334631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359473 (n : ℕ) : ℤ :=
  A359473.P5174824545835334631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359531.P10907581095316182680

`∑{d}[n+1, A053825(#)*A059841((n+1)/#-1)]`
-/

namespace A359531.P10907581095316182680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053825 d * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A359531.P10907581095316182680

noncomputable section

/-- A359531: a(1) = 1, a(2) = -9; a(n) = -n^3 * Sum_{d|n, d < n} a(d) / d^3.

Offset 1, canonical program `A359531.P10907581095316182680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359531 (n : ℕ) : ℤ :=
  A359531.P10907581095316182680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359579.P14819525977453082377

`A112299(n+1)*A364252(n+1)`
-/

namespace A359579.P14819525977453082377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1) * A364252 (n + 1)

end

end A359579.P14819525977453082377

noncomputable section

/-- A359579: Dirichlet inverse of A336923, where A336923(n) = 1 if sigma(2n) - sigma(n) is a power of 2, otherwise 0.

Offset 1, canonical program `A359579.P14819525977453082377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359579 (n : ℕ) : ℤ :=
  A359579.P14819525977453082377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360902.P6311258266522548843

`eq[A000005(A007947(n+1)), A005361(n+1)]+1`
-/

namespace A360902.P6311258266522548843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360902.P6311258266522548843

noncomputable section

/-- A360902: Numbers with the same number of squarefree divisors and powerful divisors.

Offset 1, canonical program `A360902.P6311258266522548843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A360902 (n : ℕ) : ℤ :=
  (A360902.P6311258266522548843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A360902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361003.P13934684956292861975

`A000005(n+1)+floor(n/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361003.P13934684956292861975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + ⌊(n : ℚ) / 2⌋

end

end A361003.P13934684956292861975

noncomputable section

/-- A361003: a(n) = A000005(n) + floor((n-1)/2).

Offset 1, canonical program `A361003.P13934684956292861975`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+floor(n/2)` (program `A361003.P13934684956292861975`, by `A361003.P13934684956292861975.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A361003 (n : ℕ) : ℤ :=
  A361003.P13934684956292861975.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+floor(n/2)` (program `A361003.P13934684956292861975`, by `A361003.P13934684956292861975.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A361003.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A361393.P16245078394977915268

`comp[∪[A361204(n+1), A001014(n)]]`
-/

namespace A361393.P16245078394977915268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361204 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A361393.P16245078394977915268

noncomputable section

/-- A361393: Positive integers k such that 2*omega(k) > bigomega(k).

Offset 1, canonical program `A361393.P16245078394977915268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361393 (n : ℕ) : ℤ :=
  (A361393.P16245078394977915268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363421.P12311062150934026796

`A363735(n)-A363734(n)`
-/

namespace A363421.P12311062150934026796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363735 n - A363734 n

end

end A363421.P12311062150934026796

noncomputable section

/-- A363421: a(n) = Sum_{k=0..n}(n^[not(k | n)] - n^[k | n]), where '[ ]' denotes the Iverson bracket.

Offset 0, canonical program `A363421.P12311062150934026796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363421 (n : ℕ) : ℤ :=
  A363421.P12311062150934026796.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363831.P3613452849276676331

`A000005(A000129(n+1))`
-/

namespace A363831.P3613452849276676331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000129 (n + 1)).toNat

end

end A363831.P3613452849276676331

noncomputable section

/-- A363831: Number of divisors of A000129(n) (Pell numbers).

Offset 1, canonical program `A363831.P3613452849276676331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363831 (n : ℕ) : ℤ :=
  A363831.P3613452849276676331.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A311420.P358613710613374851

`A004525(n)+A004396(A314149(n))`
-/

namespace A311420.P358613710613374851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + A004396 (A314149 n).toNat

end

end A311420.P358613710613374851

noncomputable section

/-- A311420: Coordination sequence Gal.5.182.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311420.P358613710613374851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A311420 (n : ℕ) : ℤ :=
  A311420.P358613710613374851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A311420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313474.P13131872544688635231

`A004396(A004525(n))+A313533(n)-A004525(n)`
-/

namespace A313474.P13131872544688635231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313533 n - A004525 n)

end

end A313474.P13131872544688635231

noncomputable section

/-- A313474: Coordination sequence Gal.6.118.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313474.P13131872544688635231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A313474 (n : ℕ) : ℤ :=
  A313474.P13131872544688635231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A313474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314669.P15172117768028029009

`A004525(A314707(n))+2*n`
-/

namespace A314669.P15172117768028029009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314707 n).toNat + (2 * n : ℤ)

end

end A314669.P15172117768028029009

noncomputable section

/-- A314669: Coordination sequence Gal.6.216.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314669.P15172117768028029009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314669 (n : ℕ) : ℤ :=
  A314669.P15172117768028029009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329575.P15824134507803159916

`3*A339690(n+1)`
-/

namespace A329575.P15824134507803159916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A339690 (n + 1)

end

end A329575.P15824134507803159916

noncomputable section

/-- A329575: Numbers whose smallest Fermi-Dirac factor is 3.

Offset 1, canonical program `A329575.P15824134507803159916`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329575 (n : ℕ) : ℤ :=
  A329575.P15824134507803159916.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360013.P17771875330007570756

`2*A360015(n+1)`
-/

namespace A360013.P17771875330007570756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A360015 (n + 1)

end

end A360013.P17771875330007570756

noncomputable section

/-- A360013: Numbers whose exponent of 2 in their canonical prime factorization is larger than all the other exponents.

Offset 1, canonical program `A360013.P17771875330007570756`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360013 (n : ℕ) : ℤ :=
  A360013.P17771875330007570756.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360013.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A309513.P14970399749306751666

`3*A069905(n)-A309511(n)`
-/

namespace A309513.P14970399749306751666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A069905 n - A309511 n

end

end A309513.P14970399749306751666

noncomputable section

/-- A309513: Number of even parts in the partitions of n into 3 parts.

Offset 0, canonical program `A309513.P14970399749306751666`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309513 (n : ℕ) : ℤ :=
  A309513.P14970399749306751666.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309983.P4953267736372356844

`2*(A029931(n+1)-A000120(n+1))-A070939(n+1)*(A070939(n+1)-1)/2`
-/

namespace A309983.P4953267736372356844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (A029931 (n + 1) - A000120 (n + 1)) : ℚ) - (A070939 (n + 1) * (A070939 (n + 1) - 1) : ℚ) / 2

end

end A309983.P4953267736372356844

noncomputable section

/-- A309983: Numbers resulting from adding the exponents of 2 associated with the "1" terms of their binary representation and subtracting the exponents of 2 associated with the "0" terms of their binary representation.

Offset 1, canonical program `A309983.P4953267736372356844`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309983 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309983.P4953267736372356844.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309983.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317844.P7793600775375958411

`A300244(n+1)-A001065(n+1)`
-/

namespace A317844.P7793600775375958411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300244 (n + 1) - A001065 (n + 1)

end

end A317844.P7793600775375958411

noncomputable section

/-- A317844: Difference between A294898 and its Möbius transform (A297114).

Offset 1, canonical program `A317844.P7793600775375958411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300244, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317844 (n : ℕ) : ℤ :=
  A317844.P7793600775375958411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300244, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317844.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318472.P17460137329707848954

`2^A318471(n+1)`
-/

namespace A318472.P17460137329707848954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318471 (n + 1) : ℤ)

end

end A318472.P17460137329707848954

noncomputable section

/-- A318472: Multiplicative with a(p^e) = 2^A000045(e).

Offset 1, canonical program `A318472.P17460137329707848954`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318472 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318472.P17460137329707848954.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318476.P1128851833853415664

`2^A318475(n+1)`
-/

namespace A318476.P1128851833853415664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318475 (n + 1) : ℤ)

end

end A318476.P1128851833853415664

noncomputable section

/-- A318476: Multiplicative with a(p^e) = 2^A000108(e).

Offset 1, canonical program `A318476.P1128851833853415664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318476 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318476.P1128851833853415664.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318659.P16805546807903193953

`C(A318451(n+1), C(n, a(n-1)))` with `a(0)=0`
-/

namespace A318659.P16805546807903193953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (A318451 (n + 1)).toNat (Nat.choose n (a (n - 1)))

end

end A318659.P16805546807903193953

noncomputable section

/-- A318659: The 2-adic valuation of A318658.

Offset 1, canonical program `A318659.P16805546807903193953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318659 (n : ℕ) : ℤ :=
  (A318659.P16805546807903193953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318660.P16082632763169505680

`A064988(n+1)%(n+1)`
-/

namespace A318660.P16082632763169505680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064988 (n + 1)) (n + 1 : ℤ)

end

end A318660.P16082632763169505680

noncomputable section

/-- A318660: Remainder when A064988(n) is divided by n.

Offset 1, canonical program `A318660.P16082632763169505680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318660 (n : ℕ) : ℤ :=
  A318660.P16082632763169505680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318668.P14835673339868604603

`gcd(n+1, A064988(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318668.P14835673339868604603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A064988 (n + 1))

end

end A318668.P14835673339868604603

noncomputable section

/-- A318668: a(n) = gcd(n, A064988(n)).

Offset 1, canonical program `A318668.P14835673339868604603`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064988, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318668 (n : ℕ) : ℤ :=
  (A318668.P14835673339868604603.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064988, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319660.P2765349370195988953

`∑{e}[A039957(n+1), #]-1`
-/

namespace A319660.P2765349370195988953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A319660.P2765349370195988953

noncomputable section

/-- A319660: 2-rank of the class group of imaginary quadratic field with discriminant -k, k = A039957(n).

Offset 1, canonical program `A319660.P2765349370195988953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319660 (n : ℕ) : ℤ :=
  A319660.P2765349370195988953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319995.P426129462257340288

`A035218(n+1)-A279060(n+1)`
-/

namespace A319995.P426129462257340288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (n + 1) - A279060 (n + 1)

end

end A319995.P426129462257340288

noncomputable section

/-- A319995: Number of divisors of n of the form 6*k + 5.

Offset 1, canonical program `A319995.P426129462257340288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035218, A279060, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319995 (n : ℕ) : ℤ :=
  A319995.P426129462257340288.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035218, A279060, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319995.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321874.P10299144503015706191

`A304203(A064988(n+1))`
-/

namespace A321874.P10299144503015706191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304203 (A064988 (n + 1)).toNat

end

end A321874.P10299144503015706191

noncomputable section

/-- A321874: If n = Product (p_j^k_j) then a(n) = Product (prime(p_j)^prime(k_j)).

Offset 1, canonical program `A321874.P10299144503015706191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A321874 (n : ℕ) : ℤ :=
  A321874.P10299144503015706191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A321874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322590.P17001618561382303928

`1+A285329(n+1)`
-/

namespace A322590.P17001618561382303928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A285329 (n + 1)

end

end A322590.P17001618561382303928

noncomputable section

/-- A322590: Lexicographically earliest such positive sequence a that a(i) = a(j) => A007947(i) = A007947(j) for all i, j.

Offset 1, canonical program `A322590.P17001618561382303928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322590 (n : ℕ) : ℤ :=
  A322590.P17001618561382303928.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322629.P6289319328343823706

`abs(n+1-A054899(A056143(n)))`
-/

namespace A322629.P6289319328343823706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A054899 (A056143 n).toNat|

end

end A322629.P6289319328343823706

noncomputable section

/-- A322629: For a nonnegative number m with decimal digits (d_1, ..., d_k), let s(m) be the area of the convex hull of the set of points { (i, d_i), i = 1..k }; a(n) = 2 * s(n).

Offset 100, canonical program `A322629.P6289319328343823706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A322629 (n : ℕ) : ℤ :=
  A322629.P6289319328343823706.a (n - 100)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A322629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322981.P14515204632582934980

`A010055(n+1)*A025528(n+1)`
-/

namespace A322981.P14515204632582934980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A025528 (n + 1)

end

end A322981.P14515204632582934980

noncomputable section

/-- A322981: If n is the k-th prime power > 1, a(n) = k, otherwise a(n) = 0.

Offset 1, canonical program `A322981.P14515204632582934980`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, A025528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322981 (n : ℕ) : ℤ :=
  A322981.P14515204632582934980.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, A025528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324392.P14143944522759803113

`∑{d}[n+1, A000079((n+1)%A000120(#))%2]`
-/

namespace A324392.P14143944522759803113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000079 (Int.tmod (n + 1 : ℤ) (A000120 d)).toNat) 2

end

end A324392.P14143944522759803113

noncomputable section

/-- A324392: a(n) is the number of divisors d of n such that A000120(d) divides n, where A000120(d) gives the binary weight of d.

Offset 1, canonical program `A324392.P14143944522759803113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324392 (n : ℕ) : ℤ :=
  A324392.P14143944522759803113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324648.P5203091077092456117

`n+1-A318458(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324648.P5203091077092456117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A318458 (n + 1)

end

end A324648.P5203091077092456117

noncomputable section

/-- A324648: a(n) = n - A318458(n), where A318458(n) is bitwise-AND of n and the sum of proper divisors of n (sigma(n)-n).

Offset 1, canonical program `A324648.P5203091077092456117`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324648 (n : ℕ) : ℤ :=
  A324648.P5203091077092456117.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324648.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324649.P3122999716778518876

`eq[n+1, A318458(n+1)]+1`
-/

namespace A324649.P3122999716778518876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324649.P3122999716778518876

noncomputable section

/-- A324649: Numbers k such that A318458(k) (bitwise-AND of k and sigma(k)-k) is equal to k.

Offset 1, canonical program `A324649.P3122999716778518876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. -/
def A324649 (n : ℕ) : ℤ :=
  (A324649.P3122999716778518876.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. -/
def A324649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324727.P4614541480028550780

`A324726(eq[1, A324726(n+1)%2]+1)`
-/

namespace A324727.P4614541480028550780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324726 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A324727.P4614541480028550780

noncomputable section

/-- A324727: Odd numbers such that 2n is equal to A318466(n), bitor(2*n,sigma(n)), where bitor is A003986.

Offset 1, canonical program `A324727.P4614541480028550780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324727 (n : ℕ) : ℤ :=
  A324727.P4614541480028550780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324966.P17813762556776200563

`∑{p}[n+1, A071986(#)]`
-/

namespace A324966.P17813762556776200563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A071986 p

end

end A324966.P17813762556776200563

noncomputable section

/-- A324966: Number of distinct odd prime indices of n.

Offset 1, canonical program `A324966.P17813762556776200563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324966 (n : ℕ) : ℤ :=
  A324966.P17813762556776200563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326394.P14432854135071990009

`A000005(n+1)-A001822(n+1)`
-/

namespace A326394.P14432854135071990009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001822 (n + 1)

end

end A326394.P14432854135071990009

noncomputable section

/-- A326394: Expansion of Sum_{k>=1} x^k * (1 + x^(2*k)) / (1 - x^(3*k)).

Offset 1, canonical program `A326394.P14432854135071990009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326394 (n : ℕ) : ℤ :=
  A326394.P14432854135071990009.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326395.P13988097051787891098

`A000005(n+1)-A001817(n+1)`
-/

namespace A326395.P13988097051787891098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001817 (n + 1)

end

end A326395.P13988097051787891098

noncomputable section

/-- A326395: Expansion of Sum_{k>=1} x^(2*k) * (1 + x^k) / (1 - x^(3*k)).

Offset 1, canonical program `A326395.P13988097051787891098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326395 (n : ℕ) : ℤ :=
  A326395.P13988097051787891098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326730.P12598629395687838766

`2*A029931(n)-A000120(n)²`
-/

namespace A326730.P12598629395687838766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029931 n - A000120 n ^ 2

end

end A326730.P12598629395687838766

noncomputable section

/-- A326730: Number of iterations of A326729(x) starting at x = n to reach 0.

Offset 0, canonical program `A326730.P12598629395687838766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326730 (n : ℕ) : ℤ :=
  A326730.P12598629395687838766.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327247.P2442435851943604029

`A025528(n+1)-A000523(n+1)`
-/

namespace A327247.P2442435851943604029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 1) - A000523 (n + 1)

end

end A327247.P2442435851943604029

noncomputable section

/-- A327247: Number of odd prime powers <= n (with exponents > 0).

Offset 1, canonical program `A327247.P2442435851943604029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327247 (n : ℕ) : ℤ :=
  A327247.P2442435851943604029.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329354.P424931253356111511

`A180253(n+1)-A323599(n+1)`
-/

namespace A329354.P424931253356111511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180253 (n + 1) - A323599 (n + 1)

end

end A329354.P424931253356111511

noncomputable section

/-- A329354: a(n) = Sum_{d|n} d*omega(d).

Offset 1, canonical program `A329354.P424931253356111511`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180253, A323599, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329354 (n : ℕ) : ℤ :=
  A329354.P424931253356111511.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180253, A323599, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330050.P3795152262848361729

`A203976(floor(n/2)+1)*A329421(n)`
-/

namespace A330050.P3795152262848361729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (⌊(n : ℚ) / 2⌋ + 1).toNat * A329421 n

end

end A330050.P3795152262848361729

noncomputable section

/-- A330050: a(n) = 2*((-1)^n - 1)*(F(n) - 1) - (3*(-1)^n + 7)/2 * F(n+1) + 5*F(n+1)^2.

Offset 0, canonical program `A330050.P3795152262848361729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330050 (n : ℕ) : ℤ :=
  A330050.P3795152262848361729.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330051.P18047981312378530323

`A005013(floor(n/2))*A329421(n)`
-/

namespace A330051.P18047981312378530323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 ⌊(n : ℚ) / 2⌋.toNat * A329421 n

end

end A330051.P18047981312378530323

noncomputable section

/-- A330051: a(n) = 1 + F(2*n+1) - (F(n+4) - (-1)^n*F(n-2))/2 where F=A000045.

Offset 0, canonical program `A330051.P18047981312378530323`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330051 (n : ℕ) : ℤ :=
  A330051.P18047981312378530323.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330945.P16356873730941480727

`comp[A064988(n+1)-1]+1`
-/

namespace A330945.P16356873730941480727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A330945.P16356873730941480727

noncomputable section

/-- A330945: Numbers whose prime indices are not all prime numbers.

Offset 1, canonical program `A330945.P16356873730941480727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330945 (n : ℕ) : ℤ :=
  (A330945.P16356873730941480727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331081.P3947151091375407262

`A331080(n+1)/3`
-/

namespace A331081.P3947151091375407262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331080 (n + 1) : ℚ) / 3

end

end A331081.P3947151091375407262

noncomputable section

/-- A331081: a(n) = Sum_{i=1..n} d_3(i)*d_3(i+1)/3, where d_3(n) = A007425(n).

Offset 1, canonical program `A331081.P3947151091375407262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331081 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331081.P3947151091375407262.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333206.P6668117811611631188

`A054054(n^3)`
-/

namespace A333206.P6668117811611631188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n ^ 3)

end

end A333206.P6668117811611631188

noncomputable section

/-- A333206: a(n) is the least decimal digit of n^3.

Offset 0, canonical program `A333206.P6668117811611631188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333206 (n : ℕ) : ℤ :=
  A333206.P6668117811611631188.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334784.P11044993459707876958

`∑{d}[n+1, A009278(#)]`
-/

namespace A334784.P11044993459707876958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A009278 d

end

end A334784.P11044993459707876958

noncomputable section

/-- A334784: a(n) = Sum_{d|n} lcm(tau(d), sigma(d)).

Offset 1, canonical program `A334784.P11044993459707876958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334784 (n : ℕ) : ℤ :=
  A334784.P11044993459707876958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334806.P16639427483834950340

`∏{d}[n+1, A009278(#)]`
-/

namespace A334806.P16639427483834950340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009278 d

end

end A334806.P16639427483834950340

noncomputable section

/-- A334806: a(n) = Product_{d|n} lcm(tau(d), sigma(d)) where tau(k) is the number of divisors of k (A000005) and sigma(k) is the sum of divisors of k (A000203).

Offset 1, canonical program `A334806.P16639427483834950340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A334806 (n : ℕ) : ℤ :=
  A334806.P16639427483834950340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A334806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336041.P14047434541589637692

`∑{d}[n+1, A336040(#)]`
-/

namespace A336041.P14047434541589637692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A336040 d

end

end A336041.P14047434541589637692

noncomputable section

/-- A336041: Number of refactorable divisors of n.

Offset 1, canonical program `A336041.P14047434541589637692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336041 (n : ℕ) : ℤ :=
  A336041.P14047434541589637692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337030.P11428222574331845450

`A061398(n)+a(n-1)` with `a(0)=0`
-/

namespace A337030.P11428222574331845450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A061398 n + a (n - 1)

end

end A337030.P11428222574331845450

noncomputable section

/-- A337030: a(n) is the number of squarefree composite numbers < prime(n).

Offset 1, canonical program `A337030.P11428222574331845450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337030 (n : ℕ) : ℤ :=
  A337030.P11428222574331845450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337102.P13055801540794420481

`A004526(n+1)-A337101(n+1)`
-/

namespace A337102.P13055801540794420481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A337101 (n + 1)

end

end A337102.P13055801540794420481

noncomputable section

/-- A337102: Number of partitions of n into two positive integer parts (s,t), s<=t, such that the harmonic mean of the smallest and largest part is not an integer.

Offset 1, canonical program `A337102.P13055801540794420481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337102 (n : ℕ) : ℤ :=
  A337102.P13055801540794420481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337102.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338363.P13456070937522587002

`n+1+A056171(n+1)`
-/

namespace A338363.P13456070937522587002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A056171 (n + 1)

end

end A338363.P13456070937522587002

noncomputable section

/-- A338363: a(n) = n + pi(n) - pi(floor(n/2)), where pi = A000720.

Offset 1, canonical program `A338363.P13456070937522587002`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338363 (n : ℕ) : ℤ :=
  A338363.P13456070937522587002.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338692.P11057652021479963878

`eq[1, A209615(n+1)]+1`
-/

namespace A338692.P11057652021479963878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338692.P11057652021479963878

noncomputable section

/-- A338692: Positions of 1's in A209615.

Offset 1, canonical program `A338692.P11057652021479963878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A338692 (n : ℕ) : ℤ :=
  (A338692.P11057652021479963878.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A338692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338894.P18059410456497600823

`A132188((n+1)²)`
-/

namespace A338894.P18059410456497600823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132188 ((n + 1) ^ 2)

end

end A338894.P18059410456497600823

noncomputable section

/-- A338894: Number of ordered pairs (x,y): 1 <= x, y <= n*n, such that x*y is a square.

Offset 1, canonical program `A338894.P18059410456497600823`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338894 (n : ℕ) : ℤ :=
  A338894.P18059410456497600823.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339186.P3764610736503772523

`A339184(n)+A339183(n)`
-/

namespace A339186.P3764610736503772523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339184 n + A339183 n

end

end A339186.P3764610736503772523

noncomputable section

/-- A339186: Total number of nonzero squares in the partitions of n into 2 parts.

Offset 0, canonical program `A339186.P3764610736503772523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339184, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339186 (n : ℕ) : ℤ :=
  A339186.P3764610736503772523.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339184, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340193.P15265675900811841985

`n+1-A340192(n+1)`
-/

namespace A340193.P15265675900811841985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A340192 (n + 1)

end

end A340193.P15265675900811841985

noncomputable section

/-- A340193: a(n) = n - (Sum_{d|n} A063994(d)).

Offset 1, canonical program `A340193.P15265675900811841985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340193 (n : ℕ) : ℤ :=
  A340193.P15265675900811841985.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340193.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340380.P3307386369142021647

`eq[2, A318451(n+1)]+1`
-/

namespace A340380.P3307386369142021647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340380.P3307386369142021647

noncomputable section

/-- A340380: Numbers whose odd part is a squarefree semiprime (A006881); numbers of the form 2^k * p * q, with k >= 0, and distinct odd primes p and q.

Offset 1, canonical program `A340380.P3307386369142021647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340380 (n : ℕ) : ℤ :=
  (A340380.P3307386369142021647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340677.P3063293353114173549

`A007947(n+1)/A099636(n+1)`
-/

namespace A340677.P3063293353114173549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A099636 (n + 1) : ℚ)

end

end A340677.P3063293353114173549

noncomputable section

/-- A340677: a(n) = A007947(n) / gcd(A007947(n), A008472(n)).

Offset 1, canonical program `A340677.P3063293353114173549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340677 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340677.P3063293353114173549.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340678.P9299570965818863783

`A008472(n+1)/A099636(n+1)`
-/

namespace A340678.P9299570965818863783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) / (A099636 (n + 1) : ℚ)

end

end A340678.P9299570965818863783

noncomputable section

/-- A340678: a(n) = A008472(n) / gcd(A007947(n), A008472(n)).

Offset 1, canonical program `A340678.P9299570965818863783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A099636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340678 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340678.P9299570965818863783.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A099636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345220.P5170341548952036932

`∑{d}[n+1, and(1, A036234(#))]`
-/

namespace A345220.P5170341548952036932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A036234 d)

end

end A345220.P5170341548952036932

noncomputable section

/-- A345220: Number of divisors d of n with an even number of primes not exceeding d.

Offset 1, canonical program `A345220.P5170341548952036932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345220 (n : ℕ) : ℤ :=
  A345220.P5170341548952036932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348203.P13239406140819049741

`n+1-A001221(n+1)+A069359(n+1)`
-/

namespace A348203.P13239406140819049741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001221 (n + 1) + A069359 (n + 1)

end

end A348203.P13239406140819049741

noncomputable section

/-- A348203: a(n) = n - omega(n) + n * Sum_{p|n} 1/p.

Offset 1, canonical program `A348203.P13239406140819049741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348203 (n : ℕ) : ℤ :=
  A348203.P13239406140819049741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348219.P15428353027639764716

`A000005(n+1)-A001221(n+1)+A069359(n+1)`
-/

namespace A348219.P15428353027639764716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001221 (n + 1) + A069359 (n + 1)

end

end A348219.P15428353027639764716

noncomputable section

/-- A348219: a(n) = tau(n) - omega(n) + n * Sum_{p|n, p prime} 1/p.

Offset 1, canonical program `A348219.P15428353027639764716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348219 (n : ℕ) : ℤ :=
  A348219.P15428353027639764716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349215.P7117496428552855771

`A000005(n+1)+A008472(n+1)-A001221(n+1)`
-/

namespace A349215.P7117496428552855771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A008472 (n + 1) - A001221 (n + 1)

end

end A349215.P7117496428552855771

noncomputable section

/-- A349215: a(n) = Sum_{d|n} d^c(d), where c is the prime characteristic (A010051).

Offset 1, canonical program `A349215.P7117496428552855771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349215 (n : ℕ) : ℤ :=
  A349215.P7117496428552855771.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349322.P14488046601245516878

`∑{d}[n+1, gcd(#, A336040(#)+n)]`
-/

namespace A349322.P14488046601245516878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A336040 d + (n : ℤ))

end

end A349322.P14488046601245516878

noncomputable section

/-- A349322: a(n) = Sum_{d|n} d^c(d), where c is the characteristic function of refactorable numbers (A336040).

Offset 1, canonical program `A349322.P14488046601245516878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349322 (n : ℕ) : ℤ :=
  (A349322.P14488046601245516878.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349414.P8978213222931106996

`A324245(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349414.P8978213222931106996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324245 n - (n : ℤ)

end

end A349414.P8978213222931106996

noncomputable section

/-- A349414: a(n) = A324245(n) - n.

Offset 0, canonical program `A349414.P8978213222931106996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349414 (n : ℕ) : ℤ :=
  A349414.P8978213222931106996.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349414.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349667.P3842805946856830097

`p?[(4*n+1)*A318451(3*n+1)]`
-/

namespace A349667.P3842805946856830097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A318451 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P3842805946856830097

noncomputable section

/-- A349667: Primes of the form 4*k+1 which are a prime after the Collatz step *3+1 and a maximal reduction by 2.

Offset 1, canonical program `A349667.P3842805946856830097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A349667 (n : ℕ) : ℤ :=
  A349667.P3842805946856830097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A349667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350337.P9833079415363379822

`A008472(n+1)+A076290(n+1)`
-/

namespace A350337.P9833079415363379822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A076290 (n + 1)

end

end A350337.P9833079415363379822

noncomputable section

/-- A350337: Sum of the divisors of n that are prime or the product of 2 (not necessarily distinct) primes.

Offset 1, canonical program `A350337.P9833079415363379822`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A076290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350337 (n : ℕ) : ℤ :=
  A350337.P9833079415363379822.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A076290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350515.P1630091057583403697

`(A349407(n+1)-1)/2`
-/

namespace A350515.P1630091057583403697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349407 (n + 1) - 1 : ℚ) / 2

end

end A350515.P1630091057583403697

noncomputable section

/-- A350515: a(n) = (n-1)/3 if n mod 3 = 1; a(n) = n/2 if n mod 6 = 0 or n mod 6 = 2; a(n) = (3n+1)/2 if n mod 6 = 3 or n mod 6 = 5.

Offset 0, canonical program `A350515.P1630091057583403697`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350515.P1630091057583403697.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351309.P8411118416950263227

`∑{d}[A337101(2*(n+1)), A000583(#²)]`
-/

namespace A351309.P8411118416950263227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000583 (d ^ 2)

end

end A351309.P8411118416950263227

noncomputable section

/-- A351309: Sum of the 4th powers of the square divisors of n.

Offset 1, canonical program `A351309.P8411118416950263227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351309 (n : ℕ) : ℤ :=
  A351309.P8411118416950263227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353237.P4271604717937279072

`2*A353236(n+1)-A000005(n+1)`
-/

namespace A353237.P4271604717937279072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353236 (n + 1) - A000005 (n + 1)

end

end A353237.P4271604717937279072

noncomputable section

/-- A353237: a(n) = Sum_{d|n} (-1)^(d'), where d' is the arithmetic derivative of d (A003415).

Offset 1, canonical program `A353237.P4271604717937279072`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353237 (n : ℕ) : ℤ :=
  A353237.P4271604717937279072.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353237.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353669.P11051102965587005951

`A065043(n+1)-A010052(n+1)`
-/

namespace A353669.P11051102965587005951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A010052 (n + 1)

end

end A353669.P11051102965587005951

noncomputable section

/-- A353669: a(n) = 1 if n is a nonsquare that has an even number of prime factors with multiplicity, otherwise 0.

Offset 1, canonical program `A353669.P11051102965587005951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A065043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353669 (n : ℕ) : ℤ :=
  A353669.P11051102965587005951.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A065043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354181.P5903577744027988900

`lt[1, A035218(A000005(n+1))]+1`
-/

namespace A354181.P5903577744027988900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354181.P5903577744027988900

noncomputable section

/-- A354181: Numbers whose number of divisors is not a 3-smooth number.

Offset 1, canonical program `A354181.P5903577744027988900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2564 terms. -/
def A354181 (n : ℕ) : ℤ :=
  (A354181.P5903577744027988900.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2564 terms. -/
def A354181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358854.P10782469796032889684

`A117804(n+1)-A279766(n)`
-/

namespace A358854.P10782469796032889684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (n + 1) - A279766 n

end

end A358854.P10782469796032889684

noncomputable section

/-- A358854: Number of even digits necessary to write all the numbers from 0 up to n.

Offset 0, canonical program `A358854.P10782469796032889684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117804, A279766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358854 (n : ℕ) : ℤ :=
  A358854.P10782469796032889684.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117804, A279766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359160.P3373714347686738838

`A065043(n+1)*A121262(n)`
-/

namespace A359160.P3373714347686738838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A121262 n

end

end A359160.P3373714347686738838

noncomputable section

/-- A359160: a(n) = 1 if n is a number of the form 4u+1 with an even number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A359160.P3373714347686738838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359160 (n : ℕ) : ℤ :=
  A359160.P3373714347686738838.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359170.P16904216499328120622

`A011655(n+1)*A065043(n+1)`
-/

namespace A359170.P16904216499328120622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) * A065043 (n + 1)

end

end A359170.P16904216499328120622

noncomputable section

/-- A359170: a(n) = 1 if n is not a multiple of 3 and has an even number of prime factors (with multiplicity), otherwise a(n) = 0.

Offset 1, canonical program `A359170.P16904216499328120622`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359170 (n : ℕ) : ℤ :=
  A359170.P16904216499328120622.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359400.P8597808526579173198

`A029931(A035327(n))`
-/

namespace A359400.P8597808526579173198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A035327 n).toNat

end

end A359400.P8597808526579173198

noncomputable section

/-- A359400: Sum of positions of zeros in the reversed binary expansion of n, where positions in a sequence are read starting with 1 from the left.

Offset 0, canonical program `A359400.P8597808526579173198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359400 (n : ℕ) : ℤ :=
  A359400.P8597808526579173198.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362934.P7877997360191221463

`A000982(n+1)-A132188(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362934.P7877997360191221463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) - A132188 (n + 1)

end

end A362934.P7877997360191221463

noncomputable section

/-- A362934: a(n) = A000982(n) - A132188(n).

Offset 1, canonical program `A362934.P7877997360191221463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362934 (n : ℕ) : ℤ :=
  A362934.P7877997360191221463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363171.P9199599291437216858

`eq[1, A294936(A064549(n+1))]+1`
-/

namespace A363171.P9199599291437216858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A064549 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363171.P9199599291437216858

noncomputable section

/-- A363171: Numbers k such that A064549(k) is an abundant number (A005101).

Offset 1, canonical program `A363171.P9199599291437216858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A363171 (n : ℕ) : ℤ :=
  (A363171.P9199599291437216858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A363171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363901.P93164944309145225

`(2*A001817(n+1)+A078181(n+1))/3`
-/

namespace A363901.P93164944309145225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001817 (n + 1) + A078181 (n + 1) : ℚ) / 3

end

end A363901.P93164944309145225

noncomputable section

/-- A363901: Expansion of Sum_{k>0} x^k / (1 - x^(3*k))^2.

Offset 1, canonical program `A363901.P93164944309145225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A078181, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363901.P93164944309145225.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A078181, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363901.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A307629.P2074332402500536225

`A007953(n)*(A055642(n)-1)`
-/

namespace A307629.P2074332402500536225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n * (A055642 n - 1)

end

end A307629.P2074332402500536225

noncomputable section

/-- A307629: Let decimal expansion of n be d_1 d_2 ... d_k; a(n) = Sum_{i=1..k-1} Sum_{j=i+1..k} (d_i + d_j).

Offset 0, canonical program `A307629.P2074332402500536225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307629 (n : ℕ) : ℤ :=
  A307629.P2074332402500536225.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307629.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318450.P8710293957859599944

`2^A318451(n+1)`
-/

namespace A318450.P8710293957859599944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318451 (n + 1) : ℤ)

end

end A318450.P8710293957859599944

noncomputable section

/-- A318450: Denominators of the sequence whose Dirichlet convolution with itself yields A001511, the 2-adic valuation of 2n.

Offset 1, canonical program `A318450.P8710293957859599944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318450 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318450.P8710293957859599944.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318457.P2106186129215435240

`A000203(n+1)-2*A318458(n+1)`
-/

namespace A318457.P2106186129215435240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A318458 (n + 1)

end

end A318457.P2106186129215435240

noncomputable section

/-- A318457: a(n) = n XOR A001065(n), where XOR is bitwise-xor (A003987) and A001065 = sum of proper divisors.

Offset 1, canonical program `A318457.P2106186129215435240`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318457 (n : ℕ) : ℤ :=
  A318457.P2106186129215435240.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318457.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319953.P225455190191675646

`A007088(n+1)+10^A000523(n+1)`
-/

namespace A319953.P225455190191675646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (n + 1) : ℚ) + (10 : ℚ) ^ (A000523 (n + 1) : ℤ)

end

end A319953.P225455190191675646

noncomputable section

/-- A319953: List of binary words of lengths 0, 1, 2, etc., including empty word, each prefixed by a 2.

Offset 0, canonical program `A319953.P225455190191675646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319953 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319953.P225455190191675646.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321070.P3795502805426479328

`A048108(n+1)²`
-/

namespace A321070.P3795502805426479328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1) ^ 2

end

end A321070.P3795502805426479328

noncomputable section

/-- A321070: Squares divisible by more than one cube > 1.

Offset 1, canonical program `A321070.P3795502805426479328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321070 (n : ℕ) : ℤ :=
  A321070.P3795502805426479328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321999.P11799069889241874774

`A007953(n)-A004218(n+1)`
-/

namespace A321999.P11799069889241874774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A004218 (n + 1)

end

end A321999.P11799069889241874774

noncomputable section

/-- A321999: Sum of digits of n minus the number of digits of n.

Offset 0, canonical program `A321999.P11799069889241874774`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004218, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321999 (n : ℕ) : ℤ :=
  A321999.P11799069889241874774.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004218, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A321999.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325560.P10848388262318305869

`∑{d}[A000695(n+1), A151666(#)]`
-/

namespace A325560.P10848388262318305869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A151666 d

end

end A325560.P10848388262318305869

noncomputable section

/-- A325560: a(n) is the number of divisors d of n such that A048720(d,k) = n for some k.

Offset 1, canonical program `A325560.P10848388262318305869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A325560 (n : ℕ) : ℤ :=
  A325560.P10848388262318305869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A325560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327567.P2058715740768295756

`∑{d}[n+1, A008966(2*(n+1)-#)]`
-/

namespace A327567.P2058715740768295756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 (2 * (n + 1) - d)

end

end A327567.P2058715740768295756

noncomputable section

/-- A327567: Number of r X s rectangles with squarefree side lengths such that r <= s, r + s = 2n and r | s.

Offset 1, canonical program `A327567.P2058715740768295756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327567 (n : ℕ) : ℤ :=
  A327567.P2058715740768295756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328882.P7713520551146746960

`n-2^A007953(n)`
-/

namespace A328882.P7713520551146746960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (2 : ℚ) ^ (A007953 n : ℤ)

end

end A328882.P7713520551146746960

noncomputable section

/-- A328882: a(n) = n - 2^(sum of digits of n).

Offset 0, canonical program `A328882.P7713520551146746960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328882 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A328882.P7713520551146746960.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328947.P4451189695784527050

`A007088(eq[0, A007088(n)%7])`
-/

namespace A328947.P4451189695784527050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 n) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328947.P4451189695784527050

noncomputable section

/-- A328947: Numbers formed from decimal digits 0 and/or 1 which are divisible by 7.

Offset 1, canonical program `A328947.P4451189695784527050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4681 terms. -/
def A328947 (n : ℕ) : ℤ :=
  A328947.P4451189695784527050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4681 terms. -/
def A328947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329562.P8238521869436212748

`2^A007953(n)`
-/

namespace A329562.P8238521869436212748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007953 n : ℤ)

end

end A329562.P8238521869436212748

noncomputable section

/-- A329562: a(n) = 2^(sum of digits of n).

Offset 0, canonical program `A329562.P8238521869436212748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329562 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A329562.P8238521869436212748.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335039.P14215204407484269201

`eq[n, and(n, 6*A000695(n)+1)]`
-/

namespace A335039.P14215204407484269201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (6 * A000695 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335039.P14215204407484269201

noncomputable section

/-- A335039: Numbers whose binary representation encodes a (binary) max-heap on elements from the set {0,1} with root at the least significant bit.

Offset 1, canonical program `A335039.P14215204407484269201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A335039 (n : ℕ) : ℤ :=
  (A335039.P14215204407484269201.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A335039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336857.P1709420048949527903

`A007953(A006003(n+1))`
-/

namespace A336857.P1709420048949527903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A006003 (n + 1)).toNat

end

end A336857.P1709420048949527903

noncomputable section

/-- A336857: The digit sum of n*(n^2 + 1)/2.

Offset 1, canonical program `A336857.P1709420048949527903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336857 (n : ℕ) : ℤ :=
  A336857.P1709420048949527903.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336857.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340051.P13897420907592727479

`A007088(round(2*n/3))+C(n, 2)%3`
-/

namespace A340051.P13897420907592727479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat + ((Nat.choose n 2 % 3 : ℕ) : ℤ)

end

end A340051.P13897420907592727479

noncomputable section

/-- A340051: Mixed-radix representation of n where the least significant digit is in base 3 and other digits are in base 2.

Offset 0, canonical program `A340051.P13897420907592727479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340051 (n : ℕ) : ℤ :=
  A340051.P13897420907592727479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342829.P12614251947176065874

`A051885(A007953(n+1))`
-/

namespace A342829.P12614251947176065874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A007953 (n + 1)).toNat

end

end A342829.P12614251947176065874

noncomputable section

/-- A342829: a(n) is the smallest number whose sum of digits is equal to the sum of digits of n.

Offset 1, canonical program `A342829.P12614251947176065874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342829 (n : ℕ) : ℤ :=
  A342829.P12614251947176065874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342829.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343638.P11631486966476190110

`A002264(A007953(A008585(n)))`
-/

namespace A343638.P11631486966476190110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A007953 (A008585 n).toNat).toNat

end

end A343638.P11631486966476190110

noncomputable section

/-- A343638: a(n) = (Sum of decimal digits of 3*n) / 3.

Offset 0, canonical program `A343638.P11631486966476190110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343638 (n : ℕ) : ℤ :=
  A343638.P11631486966476190110.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343639.P5981017411779692145

`A007953(A008591(n))/9`
-/

namespace A343639.P5981017411779692145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (A008591 n).toNat : ℚ) / 9

end

end A343639.P5981017411779692145

noncomputable section

/-- A343639: a(n) = (Sum of digits of 9*n) / 9.

Offset 0, canonical program `A343639.P5981017411779692145`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343639 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343639.P5981017411779692145.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343639.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345663.P364657323894893647

`lt[A001414(n+1)%A007953(n+1), 1]+1`
-/

namespace A345663.P364657323894893647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001414 (n + 1)) (A007953 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A345663.P364657323894893647

noncomputable section

/-- A345663: Numbers k such that A001414(k) is divisible by A007953(k).

Offset 1, canonical program `A345663.P364657323894893647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A345663 (n : ℕ) : ℤ :=
  (A345663.P364657323894893647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A345663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347111.P2851609590327735213

`A007088(n+1)-A007089(n+1)`
-/

namespace A347111.P2851609590327735213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1) - A007089 (n + 1)

end

end A347111.P2851609590327735213

noncomputable section

/-- A347111: a(n) is n in binary rendered as a base-10 number minus n in ternary rendered as a base-10 number.

Offset 1, canonical program `A347111.P2851609590327735213`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A007089, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347111 (n : ℕ) : ℤ :=
  A347111.P2851609590327735213.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A007089, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347111.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349194.P1398837921043225427

`a(A059995(n+1)-1)*A007953(n+1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9`
-/

namespace A349194.P1398837921043225427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 7, 8, 9] fun n a =>
  a (A059995 (n + 1) - 1).toNat * A007953 (n + 1)

end

end A349194.P1398837921043225427

noncomputable section

/-- A349194: a(n) is the product of the sum of the first i digits of n, as i goes from 1 to the total number of digits of n.

Offset 1, canonical program `A349194.P1398837921043225427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349194 (n : ℕ) : ℤ :=
  A349194.P1398837921043225427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353235.P6300891181609655592

`A000005(n+1)-A353236(n+1)`
-/

namespace A353235.P6300891181609655592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353236 (n + 1)

end

end A353235.P6300891181609655592

noncomputable section

/-- A353235: Number of divisors of n whose arithmetic derivative is odd.

Offset 1, canonical program `A353235.P6300891181609655592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353235 (n : ℕ) : ℤ :=
  A353235.P6300891181609655592.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354837.P13891097066587560124

`lt[1, A001057(gcd(n, A007088(n)))]`
-/

namespace A354837.P13891097066587560124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.gcd (n : ℤ) (A007088 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354837.P13891097066587560124

noncomputable section

/-- A354837: Odd numbers k such that gcd(k, A007088(k)) != 1.

Offset 1, canonical program `A354837.P13891097066587560124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A354837 (n : ℕ) : ℤ :=
  (A354837.P13891097066587560124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A354837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354838.P6821527339940627715

`A007088(n+1)/gcd(n+1, A007088(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354838.P6821527339940627715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A007088 (n + 1)) : ℚ)

end

end A354838.P6821527339940627715

noncomputable section

/-- A354838: For n >= 1, a(n) = A007088(n)/gcd(n, A007088(n)).

Offset 1, canonical program `A354838.P6821527339940627715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354838 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A354838.P6821527339940627715.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354926.P5218698462307225601

`A008966(n+1)*A101605(n+1)`
-/

namespace A354926.P5218698462307225601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A101605 (n + 1)

end

end A354926.P5218698462307225601

noncomputable section

/-- A354926: a(n) = 1 if n is a product of three distinct primes, otherwise 0.

Offset 1, canonical program `A354926.P5218698462307225601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A101605, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354926 (n : ℕ) : ℤ :=
  A354926.P5218698462307225601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A101605, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355297.P1889997349875966840

`A007088(n+1)-(n+1)*floor(A007088(n+1)/(n+1))`
-/

namespace A355297.P1889997349875966840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1) - (n + 1 : ℤ) * ⌊(A007088 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A355297.P1889997349875966840

noncomputable section

/-- A355297: a(n) = A007088(n) mod n.

Offset 1, canonical program `A355297.P1889997349875966840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355297 (n : ℕ) : ℤ :=
  A355297.P1889997349875966840.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355297.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355447.P2177856951054736842

`(1-A008966(n+1))*(1-A010055(n+1))`
-/

namespace A355447.P2177856951054736842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008966 (n + 1)) * (1 - A010055 (n + 1))

end

end A355447.P2177856951054736842

noncomputable section

/-- A355447: a(n) = 1 if n is neither squarefree nor prime power, otherwise 0.

Offset 1, canonical program `A355447.P2177856951054736842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355447 (n : ℕ) : ℤ :=
  A355447.P2177856951054736842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359474.P3439923367546427684

`A359471(n+1)-A008966(n+1)`
-/

namespace A359474.P3439923367546427684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359471 (n + 1) - A008966 (n + 1)

end

end A359474.P3439923367546427684

noncomputable section

/-- A359474: a(n) = 1 if the product of exponents in the prime factorization of n is 2, otherwise 0.

Offset 1, canonical program `A359474.P3439923367546427684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A359471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359474 (n : ℕ) : ℤ :=
  A359474.P3439923367546427684.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A359471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361645.P5436970020374288837

`A374356(xor(n, floor(n/2)))`
-/

namespace A361645.P5436970020374288837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374356 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A361645.P5436970020374288837

noncomputable section

/-- A361645: a(n) is the least k such that n appears in the k-th row of triangle A361644.

Offset 0, canonical program `A361645.P5436970020374288837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A361645 (n : ℕ) : ℤ :=
  A361645.P5436970020374288837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A361645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363795.P880079998585685375

`A279061(n+1)-A373336(n+1)`
-/

namespace A363795.P880079998585685375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (n + 1) - A373336 (n + 1)

end

end A363795.P880079998585685375

noncomputable section

/-- A363795: Number of divisors of n of the form 7*k + 2.

Offset 1, canonical program `A363795.P880079998585685375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363795 (n : ℕ) : ℤ :=
  A363795.P880079998585685375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363795.provenance : SequenceMachineLib.Provenance := .conjectured

