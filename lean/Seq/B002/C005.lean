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

/-! ## A294328.P14820372547681711777

`1/9*A294327(n)`
-/

namespace A294328.P14820372547681711777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 9 * (A294327 n : ℚ)

end

end A294328.P14820372547681711777

noncomputable section

/-- A294328: a(n) = ((9*n + 8)*10^n - 8)/81.

Offset 0, canonical program `A294328.P14820372547681711777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294328 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294328.P14820372547681711777.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294486.P9470022151792924540

`A000984(n)*A016754(n)`
-/

namespace A294486.P9470022151792924540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A016754 n

end

end A294486.P9470022151792924540

noncomputable section

/-- A294486: a(n) = binomial(2*n,n) * (2*n+1)^2.

Offset 0, canonical program `A294486.P9470022151792924540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294486 (n : ℕ) : ℤ :=
  A294486.P9470022151792924540.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294486.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295864.P828657620155617513

`A000984(n)*A056040(n)`
-/

namespace A295864.P828657620155617513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A056040 n

end

end A295864.P828657620155617513

noncomputable section

/-- A295864: a(n) = hypergeom([-n, -n], [1], 1) * n! / (floor(n/2)!)^2.

Offset 0, canonical program `A295864.P828657620155617513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295864 (n : ℕ) : ℤ :=
  A295864.P828657620155617513.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295864.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A297708.P854593747947966794`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297708 (n : ℕ) : ℤ :=
  A297708.P854593747947966794.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297708.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A300559.P15332861236027180194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300559 (n : ℕ) : ℤ :=
  A300559.P15332861236027180194.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300559.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A307618.P6895746770853695389

`A000984(n)*A008977(n)`
-/

namespace A307618.P6895746770853695389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A008977 n

end

end A307618.P6895746770853695389

noncomputable section

/-- A307618: A Calabi-Yau period integral: a(n) = C(4*n,2*n)*C(2*n,n)^3.

Offset 0, canonical program `A307618.P6895746770853695389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307618 (n : ℕ) : ℤ :=
  A307618.P6895746770853695389.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309255.P17110586270445091452

`n+1-2^A000120(floor(n/2))`
-/

namespace A309255.P17110586270445091452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) + (1 - (2 : ℚ) ^ (A000120 ⌊(n : ℚ) / 2⌋.toNat : ℤ))

end

end A309255.P17110586270445091452

noncomputable section

/-- A309255: a(n) = n + 1 - Sum_{k=0..n} (Stirling1(n,k) mod 2).

Offset 0, canonical program `A309255.P17110586270445091452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309255 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309255.P17110586270445091452.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309255.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A320008.P3203933991130046563`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320008 (n : ℕ) : ℤ :=
  A320008.P3203933991130046563.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A322938.P744095592749368515

`A001791(n+1)-1`
-/

namespace A322938.P744095592749368515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) - 1

end

end A322938.P744095592749368515

noncomputable section

/-- A322938: a(n) = binomial(2*n + 2, n + 2) - 1.

Offset 0, canonical program `A322938.P744095592749368515`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322938 (n : ℕ) : ℤ :=
  A322938.P744095592749368515.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322938.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A324467.P5582211504245019994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324467 (n : ℕ) : ℤ :=
  A324467.P5582211504245019994.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324467.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A329533.P8658402688666727699

`A000984(n+2)-2*A000984(n+1)+A000984(n)`
-/

namespace A329533.P8658402688666727699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 2) - 2 * A000984 (n + 1) + A000984 n

end

end A329533.P8658402688666727699

noncomputable section

/-- A329533: First differences of A051924, or second differences of Central binomial coefficients A000984.

Offset 0, canonical program `A329533.P8658402688666727699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329533 (n : ℕ) : ℤ :=
  A329533.P8658402688666727699.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329533.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A332190.P3450388084797590206

`9*A138148(n)`
-/

namespace A332190.P3450388084797590206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A138148 n

end

end A332190.P3450388084797590206

noncomputable section

/-- A332190: a(n) = 10^(2n+1) - 1 - 9*10^n.

Offset 0, canonical program `A332190.P3450388084797590206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332190 (n : ℕ) : ℤ :=
  A332190.P3450388084797590206.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332191.P5845772219414210510

`9*A138148(n)+10^n`
-/

namespace A332191.P5845772219414210510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A138148 n + (10 ^ n : ℤ)

end

end A332191.P5845772219414210510

noncomputable section

/-- A332191: a(n) = 10^(2*n+1) - 1 - 8*10^n.

Offset 0, canonical program `A332191.P5845772219414210510`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332191 (n : ℕ) : ℤ :=
  A332191.P5845772219414210510.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332192.P7576915221099269629

`9*A138148(n)+2*10^n`
-/

namespace A332192.P7576915221099269629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A138148 n + (2 * 10 ^ n : ℤ)

end

end A332192.P7576915221099269629

noncomputable section

/-- A332192: a(n) = 10^(2*n+1) - 1 - 7*10^n.

Offset 0, canonical program `A332192.P7576915221099269629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332192 (n : ℕ) : ℤ :=
  A332192.P7576915221099269629.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332193.P6582621100085936854

`9*A138148(n)+3*10^n`
-/

namespace A332193.P6582621100085936854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A138148 n + (3 * 10 ^ n : ℤ)

end

end A332193.P6582621100085936854

noncomputable section

/-- A332193: a(n) = 10^(2n+1) - 1 - 6*10^n.

Offset 0, canonical program `A332193.P6582621100085936854`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332193 (n : ℕ) : ℤ :=
  A332193.P6582621100085936854.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332193.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332194.P1034572506105866844

`9*A138148(n)+4*10^n`
-/

namespace A332194.P1034572506105866844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A138148 n + (4 * 10 ^ n : ℤ)

end

end A332194.P1034572506105866844

noncomputable section

/-- A332194: a(n) = 10^(2*n+1) - 1 - 5*10^n.

Offset 0, canonical program `A332194.P1034572506105866844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332194 (n : ℕ) : ℤ :=
  A332194.P1034572506105866844.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332196.P18253647614395274730

`9*A138148(n)+6*10^n`
-/

namespace A332196.P18253647614395274730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A138148 n + (6 * 10 ^ n : ℤ)

end

end A332196.P18253647614395274730

noncomputable section

/-- A332196: a(n) = 10^(2n+1) - 1 - 3*10^n.

Offset 0, canonical program `A332196.P18253647614395274730`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332196 (n : ℕ) : ℤ :=
  A332196.P18253647614395274730.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332197.P4340004087403755620

`9*A138148(n)+7*10^n`
-/

namespace A332197.P4340004087403755620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A138148 n + (7 * 10 ^ n : ℤ)

end

end A332197.P4340004087403755620

noncomputable section

/-- A332197: a(n) = 10^(2n+1) - 1 - 2*10^n.

Offset 0, canonical program `A332197.P4340004087403755620`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332197 (n : ℕ) : ℤ :=
  A332197.P4340004087403755620.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332197.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A342281.P11173298735282036811`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342281 (n : ℕ) : ℤ :=
  A342281.P11173298735282036811.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342281.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A328882.P7713520551146746960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328882 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A328882.P7713520551146746960.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328882.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A329562.P8238521869436212748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329562 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A329562.P8238521869436212748.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329562.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A341414.P15951645055392298282

`A003893(2*n)`
-/

namespace A341414.P15951645055392298282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 (2 * n)

end

end A341414.P15951645055392298282

noncomputable section

/-- A341414: a(n) = (Fibonacci(n)*Lucas(n)) mod 10.

Offset 0, canonical program `A341414.P15951645055392298282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341414 (n : ℕ) : ℤ :=
  A341414.P15951645055392298282.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341414.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A343638.P11631486966476190110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343638 (n : ℕ) : ℤ :=
  A343638.P11631486966476190110.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343638.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A343639.P5981017411779692145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343639 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343639.P5981017411779692145.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343639.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A288572.P7014901530328764659

`A145064(A028310(n))*A145979(n)`
-/

namespace A288572.P7014901530328764659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A028310 n).toNat * A145979 n

end

end A288572.P7014901530328764659

noncomputable section

/-- A288572: a(n) = smallest positive integer k such that (n^3)^k == 1 mod (n+1)^3.

Offset 1, canonical program `A288572.P7014901530328764659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288572 (n : ℕ) : ℤ :=
  A288572.P7014901530328764659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288687.P14402893457171725233

`A028310(n)+A000431(n+1)`
-/

namespace A288687.P14402893457171725233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A000431 (n + 1)

end

end A288687.P14402893457171725233

noncomputable section

/-- A288687: Number of n-digit biquanimous strings using digits {0,1,2,3}.

Offset 0, canonical program `A288687.P14402893457171725233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A288687 (n : ℕ) : ℤ :=
  A288687.P14402893457171725233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A288687.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A288934.P1390299028950243465

`ceil((A080578(n+1)+n)/2)`
-/

namespace A288934.P1390299028950243465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080578 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A288934.P1390299028950243465

noncomputable section

/-- A288934: Positions of 1 in A288932; complement of A288933.

Offset 1, canonical program `A288934.P1390299028950243465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288934 (n : ℕ) : ℤ :=
  A288934.P1390299028950243465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288934.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A289320.P2991685240031938222

`∏{d}[n+1, A120007(#)²+1]`
-/

namespace A289320.P2991685240031938222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A120007 d ^ 2 + 1)

end

end A289320.P2991685240031938222

noncomputable section

/-- A289320: a(n) = A289310(n)^2 + A289311(n)^2.

Offset 1, canonical program `A289320.P2991685240031938222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289320 (n : ℕ) : ℤ :=
  A289320.P2991685240031938222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289336.P13059549218811230367

`Δ[A160664(n)]/A009223(n+1)`
-/

namespace A289336.P13059549218811230367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A009223 (n + 1) : ℚ)

end

end A289336.P13059549218811230367

noncomputable section

/-- A289336: a(n) = numerator of (sigma(n) / phi(n)).

Offset 1, canonical program `A289336.P13059549218811230367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289336 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A289336.P13059549218811230367.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289422.P10486747953016827996

`A211216(n+9)-A033191(n+9)`
-/

namespace A289422.P10486747953016827996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211216 (n + 9) - A033191 (n + 9)

end

end A289422.P10486747953016827996

noncomputable section

/-- A289422: Number of Dyck paths of semilength n and height exactly 9.

Offset 9, canonical program `A289422.P10486747953016827996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A289422 (n : ℕ) : ℤ :=
  A289422.P10486747953016827996.a (n - 9)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A289422.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A290056.P11864199333908760075

`A188626(n+2)+∑[∑[n-2]]`
-/

namespace A290056.P11864199333908760075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188626 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290056.P11864199333908760075

noncomputable section

/-- A290056: Number of cliques in the n-triangular graph.

Offset 1, canonical program `A290056.P11864199333908760075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A290056 (n : ℕ) : ℤ :=
  A290056.P11864199333908760075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A290056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290090.P16012446043241297722

`∑{d}[n+1, A000120(#%(n+1))%2]`
-/

namespace A290090.P16012446043241297722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000120 (d % (n + 1))) 2

end

end A290090.P16012446043241297722

noncomputable section

/-- A290090: a(n) is the number of proper divisors of n that are odious (A000069).

Offset 1, canonical program `A290090.P16012446043241297722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290090 (n : ℕ) : ℤ :=
  A290090.P16012446043241297722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290125.P16787224858347959595

`A001065(A002024(n+1))-A001065(A004736(n+1))`
-/

namespace A290125.P16787224858347959595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A002024 (n + 1)).toNat - A001065 (A004736 (n + 1)).toNat

end

end A290125.P16787224858347959595

noncomputable section

/-- A290125: Square array read by antidiagonals T(n,k) = sigma(k + n) - sigma(k) - n, with n>=0 and k>=1.

Offset 0, canonical program `A290125.P16787224858347959595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A290125 (n : ℕ) : ℤ :=
  A290125.P16787224858347959595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A290125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290380.P8883395863309505792

`(n+1)*Δ[A086615(n)]`
-/

namespace A290380.P8883395863309505792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A290380.P8883395863309505792

noncomputable section

/-- A290380: Analog of Motzkin sums for Coxeter type D.

Offset 3, canonical program `A290380.P8883395863309505792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A290380 (n : ℕ) : ℤ :=
  A290380.P8883395863309505792.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A290380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290415.P13294576493658578083

`xor(or(n²+1, A000225(n)), A014236(n))`
-/

namespace A290415.P13294576493658578083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.lor (n ^ 2 + 1 : ℤ) (A000225 n)) (A014236 n)

end

end A290415.P13294576493658578083

noncomputable section

/-- A290415: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 785", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290415.P13294576493658578083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A290415 (n : ℕ) : ℤ :=
  A290415.P13294576493658578083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A290415.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A290825.P15737516132095807789

`(A088917(n)+1)*char[A032924(n+1)]`
-/

namespace A290825.P15737516132095807789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088917 n + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290825.P15737516132095807789

noncomputable section

/-- A290825: Least base-3 digit of n.

Offset 0, canonical program `A290825.P15737516132095807789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290825 (n : ℕ) : ℤ :=
  A290825.P15737516132095807789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290993.P4070757531723867054

`A057681(n+1)+A227430(n)-A057681(n)`
-/

namespace A290993.P4070757531723867054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 (n + 1) + (A227430 n - A057681 n)

end

end A290993.P4070757531723867054

noncomputable section

/-- A290993: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S^6.

Offset 0, canonical program `A290993.P4070757531723867054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A290993 (n : ℕ) : ℤ :=
  A290993.P4070757531723867054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A290993.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A291900.P14772207315450596015

`A280098(n+1)-(n+1)`
-/

namespace A291900.P14772207315450596015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280098 (n + 1) - (n + 1 : ℤ)

end

end A291900.P14772207315450596015

noncomputable section

/-- A291900: Sum of the divisors of 24*n - 1, divided by 24, minus n.

Offset 1, canonical program `A291900.P14772207315450596015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291900 (n : ℕ) : ℤ :=
  A291900.P14772207315450596015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291900.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A292051.P4710405735727671808

`A212893(n)-A178946(n+1)`
-/

namespace A292051.P4710405735727671808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212893 n - A178946 (n + 1)

end

end A292051.P4710405735727671808

noncomputable section

/-- A292051: Wiener index of the n X n black bishop graph.

Offset 1, canonical program `A292051.P4710405735727671808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292051 (n : ℕ) : ℤ :=
  A292051.P4710405735727671808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292051.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A292665.P15323345386634199452

`comp[A184590(2*n+1)]+1`
-/

namespace A292665.P15323345386634199452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184590 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A292665.P15323345386634199452

noncomputable section

/-- A292665: Rank of n*(e-1) when all the numbers j*(e-1) and k*(e+1), for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292665.P15323345386634199452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292665 (n : ℕ) : ℤ :=
  (A292665.P15323345386634199452.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292769.P7637608606255069320

`∑[A228947(n+1)+1+n]`
-/

namespace A292769.P7637608606255069320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228947 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P7637608606255069320

noncomputable section

/-- A292769: Partial sums of A051612.

Offset 1, canonical program `A292769.P7637608606255069320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292769 (n : ℕ) : ℤ :=
  A292769.P7637608606255069320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292926.P9248577169796954627

`A006094(n+1)+A000040(n+3)`
-/

namespace A292926.P9248577169796954627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A000040 (n + 3)

end

end A292926.P9248577169796954627

noncomputable section

/-- A292926: a(n) = prime(n)*prime(n+1) + prime(n+2).

Offset 1, canonical program `A292926.P9248577169796954627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292926 (n : ℕ) : ℤ :=
  A292926.P9248577169796954627.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292926.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A293401.P2171145593388991176

`A293400(n)+n²%(n+1)`
-/

namespace A293401.P2171145593388991176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293400 n + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A293401.P2171145593388991176

noncomputable section

/-- A293401: Least integer k such that k/n^2 > (1 + sqrt(5))/2 (the golden ratio).

Offset 0, canonical program `A293401.P2171145593388991176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293401 (n : ℕ) : ℤ :=
  A293401.P2171145593388991176.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293403.P14097951911837784715

`A293400(n)+n²`
-/

namespace A293403.P14097951911837784715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293400 n + (n ^ 2 : ℤ)

end

end A293403.P14097951911837784715

noncomputable section

/-- A293403: Greatest integer k such that k/n^2 < (3 + sqrt(5))/2.

Offset 0, canonical program `A293403.P14097951911837784715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293403 (n : ℕ) : ℤ :=
  A293403.P14097951911837784715.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293419.P2990146564157794437

`A293418(n)+A057427(n)`
-/

namespace A293419.P2990146564157794437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293418 n + A057427 n

end

end A293419.P2990146564157794437

noncomputable section

/-- A293419: a(n) is the least integer k such that k/Fibonacci(n) > sqrt(2).

Offset 0, canonical program `A293419.P2990146564157794437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A293419 (n : ℕ) : ℤ :=
  A293419.P2990146564157794437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A293419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293430.P9658105569072478579

`record[lcm(n+1, A293233(n+1))]`
-/

namespace A293430.P9658105569072478579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A293233 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293430.P9658105569072478579

noncomputable section

/-- A293430: Persistently squarefree numbers for base-2 shifting: Numbers n such that all terms in finite set [n, floor(n/2), floor(n/4), floor(n/8), ..., 1] are squarefree.

Offset 1, canonical program `A293430.P9658105569072478579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. -/
def A293430 (n : ℕ) : ℤ :=
  (A293430.P9658105569072478579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. -/
def A293430.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A293433.P6772658230028704912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293433 (n : ℕ) : ℤ :=
  A293433.P6772658230028704912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293434.P10664616944966136038

`A293432(n+1)%(n+1)`
-/

namespace A293434.P10664616944966136038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293432 (n + 1)) (n + 1 : ℤ)

end

end A293434.P10664616944966136038

noncomputable section

/-- A293434: a(n) is the sum of the proper divisors of n that are Jacobsthal numbers (A001045).

Offset 1, canonical program `A293434.P10664616944966136038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293434 (n : ℕ) : ℤ :=
  A293434.P10664616944966136038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293434.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A294015.P9060703257274913068

`A091818(n+1)+1`
-/

namespace A294015.P9060703257274913068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) + 1

end

end A294015.P9060703257274913068

noncomputable section

/-- A294015: Sum of the even divisors of 2n, minus the (n-1)st odd number.

Offset 1, canonical program `A294015.P9060703257274913068`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091818, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294015 (n : ℕ) : ℤ :=
  A294015.P9060703257274913068.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091818, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294023.P11450607114631831435

`∑[A242096(or(1, n))]`
-/

namespace A294023.P11450607114631831435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P11450607114631831435

noncomputable section

/-- A294023: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the smaller part prime.

Offset 1, canonical program `A294023.P11450607114631831435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294023 (n : ℕ) : ℤ :=
  A294023.P11450607114631831435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294023.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A294083.P5303193915532408117`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294083.P5303193915532408117.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A294650.P3716849885476430440

`(n+1)/gcd(A061020(n+1), n+1)`
-/

namespace A294650.P3716849885476430440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A061020 (n + 1)) (n + 1 : ℤ) : ℚ)

end

end A294650.P3716849885476430440

noncomputable section

/-- A294650: a(n) = denominator(A206369(n))/n.

Offset 1, canonical program `A294650.P3716849885476430440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294650 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294650.P3716849885476430440.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294650.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A295304.P8804302237955418523

`round(sin(atan(A295302(n+1))))`
-/

namespace A295304.P8804302237955418523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A295302 (n + 1) : ℝ)))

end

end A295304.P8804302237955418523

noncomputable section

/-- A295304: a(n) = +1 if sigma(phi(n)) > n, -1 if sigma(phi(n)) < n, and 0 if sigma(phi(n)) = n, where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295304.P8804302237955418523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295304 (n : ℕ) : ℤ :=
  A295304.P8804302237955418523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295304.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A295371.P8193304966236731563

`A168597(n)+Δ[A168597(n)/4]`
-/

namespace A295371.P8193304966236731563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168597 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168597 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A295371.P8193304966236731563

noncomputable section

/-- A295371: a(n) = (1/(2n))*Sum_{k=0..n-1} C(n-1, k)*C(n+k, k)*C(2k, k)*(k+2)*(-3)^(n-1-k).

Offset 1, canonical program `A295371.P8193304966236731563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A295371 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295371.P8193304966236731563.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A295371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295879.P12641130573036917857

`∏{e}[n+1, A158611(#+1)]`
-/

namespace A295879.P12641130573036917857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A158611 (Nat.factorization (f1 n) p + 1)

end

end A295879.P12641130573036917857

noncomputable section

/-- A295879: Multiplicative with a(p) = 1, a(p^e) = prime(e-1) if e > 1.

Offset 1, canonical program `A295879.P12641130573036917857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295879 (n : ℕ) : ℤ :=
  A295879.P12641130573036917857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295925.P15493511409763598570

`A054622(n+2)-A060560(n+2)`
-/

namespace A295925.P15493511409763598570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054622 (n + 2) - A060560 (n + 2)

end

end A295925.P15493511409763598570

noncomputable section

/-- A295925: Number of bilaterally asymmetric 8-hoops with n symbols.

Offset 2, canonical program `A295925.P15493511409763598570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A295925 (n : ℕ) : ℤ :=
  A295925.P15493511409763598570.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A295925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296075.P11175105171194449082

`A074400(n+1)-A007429(n+1)`
-/

namespace A296075.P11175105171194449082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A007429 (n + 1)

end

end A296075.P11175105171194449082

noncomputable section

/-- A296075: Sum of deficiencies of divisors of n.

Offset 1, canonical program `A296075.P11175105171194449082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296075 (n : ℕ) : ℤ :=
  A296075.P11175105171194449082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296075.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A296239.P16154602574454060367

`abs(A087172(a(n-1)+n)-n)` with `a(0)=0`
-/

namespace A296239.P16154602574454060367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |A087172 (a (n - 1) + (n : ℤ)).toNat - (n : ℤ)|

end

end A296239.P16154602574454060367

noncomputable section

/-- A296239: a(n) = distance from n to nearest Fibonacci number.

Offset 0, canonical program `A296239.P16154602574454060367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A296239 (n : ℕ) : ℤ :=
  A296239.P16154602574454060367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A296239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296354.P8428607164020722342

`∑{d}[A011782(A029837(n+1)), A003314(#)+n]`
-/

namespace A296354.P8428607164020722342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A029837 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A003314 d + (n : ℤ))

end

end A296354.P8428607164020722342

noncomputable section

/-- A296354: Official position where binary expansion of n starts in the list of binary numbers in the binary Champernowne sequence A076478.

Offset 0, canonical program `A296354.P8428607164020722342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296354 (n : ℕ) : ℤ :=
  A296354.P8428607164020722342.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296663.P10525781489669147668

`A100071(n+1)-A045621(n)`
-/

namespace A296663.P10525781489669147668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (n + 1) - A045621 n

end

end A296663.P10525781489669147668

noncomputable section

/-- A296663: Row sums of A296664.

Offset 0, canonical program `A296663.P10525781489669147668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A296663 (n : ℕ) : ℤ :=
  A296663.P10525781489669147668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A296663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296771.P8574015642954426721

`A037965(n+1)-A294175(2*n)`
-/

namespace A296771.P8574015642954426721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037965 (n + 1) - A294175 (2 * n)

end

end A296771.P8574015642954426721

noncomputable section

/-- A296771: Row sums of A050157.

Offset 0, canonical program `A296771.P8574015642954426721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A296771 (n : ℕ) : ℤ :=
  A296771.P8574015642954426721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A296771.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A297086.P2157316894102876955

`A063524(A009195(n+1))`
-/

namespace A297086.P2157316894102876955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A009195 (n + 1)).toNat

end

end A297086.P2157316894102876955

noncomputable section

/-- A297086: a(n) = 1 if gcd(n, phi(n)) == 1 otherwise 0.

Offset 1, canonical program `A297086.P2157316894102876955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297086 (n : ℕ) : ℤ :=
  A297086.P2157316894102876955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297086.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A297967.P1604821042262208685

`A000351(n+1)%A273960(n+1)`
-/

namespace A297967.P1604821042262208685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 (n + 1)) (A273960 (n + 1))

end

end A297967.P1604821042262208685

noncomputable section

/-- A297967: a(n) = 5^n mod prime(n).

Offset 1, canonical program `A297967.P1604821042262208685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A297967 (n : ℕ) : ℤ :=
  A297967.P1604821042262208685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A297967.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A298252.P859259455876682479`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298252 (n : ℕ) : ℤ :=
  A298252.P859259455876682479.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A298639.P12281402705215784674

`comp[A298638(n+1)]`
-/

namespace A298639.P12281402705215784674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A298639.P12281402705215784674

noncomputable section

/-- A298639: Numbers k such that the digital sum of k and the digital root of k have the same parity.

Offset 1, canonical program `A298639.P12281402705215784674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298639 (n : ℕ) : ℤ :=
  (A298639.P12281402705215784674.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298639.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A299788.P8869797389046882130

`∏{d}[n+1, #]/gcd(∏{d}[n+1, #], A206032(n+1))`
-/

namespace A299788.P8869797389046882130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Int.gcd ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) (A206032 (n + 1)) : ℚ)

end

end A299788.P8869797389046882130

noncomputable section

/-- A299788: a(n) = denominator of Product_{d|n} (sigma(d)/d) where sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A299788.P8869797389046882130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A299788 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A299788.P8869797389046882130.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A299788.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A300853.P6382502425334761752

`∑{d}[n+1, #*A118209((n+1)/#)]`
-/

namespace A300853.P6382502425334761752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A118209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300853.P6382502425334761752

noncomputable section

/-- A300853: L.g.f.: log(Product_{k>=1} (1 + x^(k^2))) = Sum_{n>=1} a(n)*x^n/n.

Offset 1, canonical program `A300853.P6382502425334761752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300853 (n : ℕ) : ℤ :=
  A300853.P6382502425334761752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300853.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A301560.P16469941488210855980

`A000984(n)-A130380(n)`
-/

namespace A301560.P16469941488210855980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A130380 n

end

end A301560.P16469941488210855980

noncomputable section

/-- A301560: Matching number of the n-odd graph.

Offset 1, canonical program `A301560.P16469941488210855980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A301560 (n : ℕ) : ℤ :=
  A301560.P16469941488210855980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A301560.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A301752.P16734824768978691247

`A131735(A052938(n))+∑[A008620(n)]`
-/

namespace A301752.P16734824768978691247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 (A052938 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301752.P16734824768978691247

noncomputable section

/-- A301752: Clique covering number of the n-triangular grid graph.

Offset 1, canonical program `A301752.P16734824768978691247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301752 (n : ℕ) : ℤ :=
  A301752.P16734824768978691247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301752.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A301975.P361994510138605052

`eq[A054008(n+1), A160550(n+1)]+1`
-/

namespace A301975.P361994510138605052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A301975.P361994510138605052

noncomputable section

/-- A301975: Numbers whose abundance is divisible by its number of divisors.

Offset 1, canonical program `A301975.P361994510138605052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2706 terms. -/
def A301975 (n : ℕ) : ℤ :=
  (A301975.P361994510138605052.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2706 terms. -/
def A301975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302393.P17459900131682349134

`A238411(n+1)+A166515(n)`
-/

namespace A302393.P17459900131682349134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238411 (n + 1) + A166515 n

end

end A302393.P17459900131682349134

noncomputable section

/-- A302393: Number of even parts in the partitions of 3n into 3 parts.

Offset 1, canonical program `A302393.P17459900131682349134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302393 (n : ℕ) : ℤ :=
  A302393.P17459900131682349134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302561.P8347166441381929307

`∑[A092182(n+1)]`
-/

namespace A302561.P8347166441381929307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302561.P8347166441381929307

noncomputable section

/-- A302561: Partial sums of A092182.

Offset 1, canonical program `A302561.P8347166441381929307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302561 (n : ℕ) : ℤ :=
  A302561.P8347166441381929307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302561.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A302660.P1292737769851460668

`A038194(n+1)+A007652(n+1)`
-/

namespace A302660.P1292737769851460668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1) + A007652 (n + 1)

end

end A302660.P1292737769851460668

noncomputable section

/-- A302660: a(n) = (prime(n) mod 9) + (prime(n) mod 10).

Offset 1, canonical program `A302660.P1292737769851460668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007652, A038194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A302660 (n : ℕ) : ℤ :=
  A302660.P1292737769851460668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007652, A038194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A302660.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A302722.P1266589313200144399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A302722 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A302722.P1266589313200144399.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A302722.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302778.P2511600617401471674

`∑[A302777(n+1)]`
-/

namespace A302778.P2511600617401471674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P2511600617401471674

noncomputable section

/-- A302778: Number of "Fermi-Dirac primes" (A050376) <= n.

Offset 1, canonical program `A302778.P2511600617401471674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302778 (n : ℕ) : ℤ :=
  A302778.P2511600617401471674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302778.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A303537.P2582435639910148094

`(A304933(A028310(n))+A304933(n))/A028310(n)`
-/

namespace A303537.P2582435639910148094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304933 (A028310 n).toNat + A304933 n : ℚ) / (A028310 n : ℚ)

end

end A303537.P2582435639910148094

noncomputable section

/-- A303537: Expansion of ((1 + 4*x)/(1 - 4*x))^(1/4).

Offset 0, canonical program `A303537.P2582435639910148094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A303537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A303537.P2582435639910148094.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A303537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303781.P6125466833604398313

`A009191(n+1)-A063524(n)`
-/

namespace A303781.P6125466833604398313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1) - A063524 n

end

end A303781.P6125466833604398313

noncomputable section

/-- A303781: a(2) = 1; for n <> 2, a(n) = gcd(n, A000005(n)), where A000005(n) = number of divisors of n.

Offset 1, canonical program `A303781.P6125466833604398313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303781 (n : ℕ) : ℤ :=
  A303781.P6125466833604398313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303781.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A304092.P1424464690658971350

`A304091(5*(n+1))`
-/

namespace A304092.P1424464690658971350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304091 (5 * (n + 1))

end

end A304092.P1424464690658971350

noncomputable section

/-- A304092: Number of Lucas numbers (A000032: 2, 1, 3, 4, 7, 11, ...) dividing n.

Offset 1, canonical program `A304092.P1424464690658971350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304092 (n : ℕ) : ℤ :=
  A304092.P1424464690658971350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304092.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A304768.P8214500492709220043

`A007947(n+1)*A066636(n+1)`
-/

namespace A304768.P8214500492709220043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A066636 (n + 1)

end

end A304768.P8214500492709220043

noncomputable section

/-- A304768: Augmented integer conjugate of n. a(n) = (1/n) * A007947(n)^(1 + A051903(n)) where A007947 is squarefree kernel and A051903 is maximum prime exponent.

Offset 1, canonical program `A304768.P8214500492709220043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304768 (n : ℕ) : ℤ :=
  A304768.P8214500492709220043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304768.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A305623.P15212273996991512636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056310, A056454, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305623 (n : ℕ) : ℤ :=
  A305623.P15212273996991512636.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056310, A056454, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A306192.P3567604202971775834`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306192 (n : ℕ) : ℤ :=
  A306192.P3567604202971775834.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306354.P11672414115379192429

`gcd(n+1, A101337(n+1))`
-/

namespace A306354.P11672414115379192429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A101337 (n + 1))

end

end A306354.P11672414115379192429

noncomputable section

/-- A306354: a(n) = gcd(n, A101337(n)).

Offset 1, canonical program `A306354.P11672414115379192429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306354 (n : ℕ) : ℤ :=
  (A306354.P11672414115379192429.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306354.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A307466.P4025654233009935254

`∑[A085810(A028310(n))-A166444(n)]`
-/

namespace A307466.P4025654233009935254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (A028310 n).toNat - A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307466.P4025654233009935254

noncomputable section

/-- A307466: Number of Catalan words of length n avoiding the pattern 210.

Offset 0, canonical program `A307466.P4025654233009935254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A307466 (n : ℕ) : ℤ :=
  A307466.P4025654233009935254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A307466.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A307629.P2074332402500536225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307629 (n : ℕ) : ℤ :=
  A307629.P2074332402500536225.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307629.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A308026.P4088782595378032219

`A294473(n+1)+∑[n+1]*A004526(n)`
-/

namespace A308026.P4088782595378032219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294473 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004526 n

end

end A308026.P4088782595378032219

noncomputable section

/-- A308026: a(n) = n*(2*n - 3 - (-1)^n)*(11*n + (-1)^n)/24.

Offset 1, canonical program `A308026.P4088782595378032219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308026 (n : ℕ) : ℤ :=
  A308026.P4088782595378032219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308026.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A308303.P9990498970836018825

`A308066(n+1)+A002620(A008624(n))`
-/

namespace A308303.P9990498970836018825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (n + 1) + A002620 (A008624 n).toNat

end

end A308303.P9990498970836018825

noncomputable section

/-- A308303: Number of integer-sided triangles with perimeter n and at least one even side length.

Offset 1, canonical program `A308303.P9990498970836018825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6112 terms. -/
def A308303 (n : ℕ) : ℤ :=
  A308303.P9990498970836018825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6112 terms. -/
def A308303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308467.P614339597926025515

`A018074(n)²²`
-/

namespace A308467.P614339597926025515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018074 n ^ 2) ^ 2

end

end A308467.P614339597926025515

noncomputable section

/-- A308467: The smallest positive n-digit 4th power.

Offset 1, canonical program `A308467.P614339597926025515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A308467 (n : ℕ) : ℤ :=
  A308467.P614339597926025515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A308467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308473.P15685456513297589926

`floor((A053650(n+1)-n)/2)`
-/

namespace A308473.P15685456513297589926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053650 (n + 1) - (n : ℤ) : ℚ) / 2⌋

end

end A308473.P15685456513297589926

noncomputable section

/-- A308473: Sum of numbers < n which have common prime factors with n.

Offset 1, canonical program `A308473.P15685456513297589926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308473 (n : ℕ) : ℤ :=
  A308473.P15685456513297589926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308473.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A308572.P10549258952606173535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308572 (n : ℕ) : ℤ :=
  A308572.P10549258952606173535.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308572.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A309732.P12414960412287055486

`A308084(n+1)+A034715(n+1)`
-/

namespace A309732.P12414960412287055486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308084 (n + 1) + A034715 (n + 1)

end

end A309732.P12414960412287055486

noncomputable section

/-- A309732: Expansion of Sum_{k>=1} k^2 * x^k/(1 - x^k)^3.

Offset 1, canonical program `A309732.P12414960412287055486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309732 (n : ℕ) : ℤ :=
  A309732.P12414960412287055486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309732.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A317137.P5699483153929860134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317137 (n : ℕ) : ℤ :=
  A317137.P5699483153929860134.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317137.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A317187.P12719454024546088027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2911 terms. -/
def A317187 (n : ℕ) : ℤ :=
  (A317187.P12719454024546088027.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2911 terms. -/
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

/-! ## A317332.P4749212783667228786

`xor(1, A317331(2*(n+1)))`
-/

namespace A317332.P4749212783667228786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A317331 (2 * (n + 1)))

end

end A317332.P4749212783667228786

noncomputable section

/-- A317332: Indices m for which A058304(m) = 8.

Offset 1, canonical program `A317332.P4749212783667228786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317332 (n : ℕ) : ℤ :=
  A317332.P4749212783667228786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317332.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A317538.P13826603660616716033

`3*n+1-A073089(n+1)`
-/

namespace A317538.P13826603660616716033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (1 - A073089 (n + 1))

end

end A317538.P13826603660616716033

noncomputable section

/-- A317538: Indices m for which A317413(m) = 1.

Offset 1, canonical program `A317538.P13826603660616716033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A317538 (n : ℕ) : ℤ :=
  A317538.P13826603660616716033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A317538.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A317844.P7793600775375958411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A300244, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A317844 (n : ℕ) : ℤ :=
  A317844.P7793600775375958411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A300244, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A317844.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A318060.P6031681000613286800

`(n+1)/gcd(n+1, ∑[A111408(n)])`
-/

namespace A318060.P6031681000613286800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A318060.P6031681000613286800

noncomputable section

/-- A318060: a(n) is the denominator of sigma(sigma(n))/n.

Offset 1, canonical program `A318060.P6031681000613286800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318060 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318060.P6031681000613286800.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318060.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A318462.P2728153486648592589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318462 (n : ℕ) : ℤ :=
  A318462.P2728153486648592589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318462.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A318474.P14712221174545639552

`2^A318473(n+1)`
-/

namespace A318474.P14712221174545639552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318473 (n + 1) : ℤ)

end

end A318474.P14712221174545639552

noncomputable section

/-- A318474: Multiplicative with a(p^e) = 2^A000045(e+1).

Offset 1, canonical program `A318474.P14712221174545639552`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318474 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318474.P14712221174545639552.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318474.provenance : SequenceMachineLib.Provenance := .conditional

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
-/

namespace A318668.P14835673339868604603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A064988 (n + 1))

end

end A318668.P14835673339868604603

noncomputable section

/-- A318668: a(n) = gcd(n, A064988(n)).

Offset 1, canonical program `A318668.P14835673339868604603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318668 (n : ℕ) : ℤ :=
  (A318668.P14835673339868604603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318668.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A319087.P11873426032925542692

`∑[A053191(n+1)]`
-/

namespace A319087.P11873426032925542692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P11873426032925542692

noncomputable section

/-- A319087: a(n) = Sum_{k=1..n} k^2*phi(k), where phi is the Euler totient function A000010.

Offset 1, canonical program `A319087.P11873426032925542692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319087 (n : ℕ) : ℤ :=
  A319087.P11873426032925542692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319087.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A319296.P3036293143209303968

`A007429(n+1)%Δ[A160664(n)]`
-/

namespace A319296.P3036293143209303968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007429 (n + 1)) (f1 (n + 1) - f1 n)

end

end A319296.P3036293143209303968

noncomputable section

/-- A319296: a(n) = (Sum_{d|n} sigma(d)) mod sigma(n).

Offset 1, canonical program `A319296.P3036293143209303968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319296 (n : ℕ) : ℤ :=
  A319296.P3036293143209303968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319296.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A319676.P6719959262025814008

`lcm(n+1, A047994(n+1))/(n+1)`
-/

namespace A319676.P6719959262025814008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A047994 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A319676.P6719959262025814008

noncomputable section

/-- A319676: Numerator of A047994(n)/n where A047994 is the unitary totient function.

Offset 1, canonical program `A319676.P6719959262025814008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319676 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319676.P6719959262025814008.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319676.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A319697.P10360673897274092248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A206787, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319697 (n : ℕ) : ℤ :=
  A319697.P10360673897274092248.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A206787, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319697.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A319857.P3217448747804554425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319857 (n : ℕ) : ℤ :=
  A319857.P3217448747804554425.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319857.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A319880.P15208408059183821800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319880 (n : ℕ) : ℤ :=
  A319880.P15208408059183821800.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319880.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A320059.P12231139820511273363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065764, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320059 (n : ℕ) : ℤ :=
  A320059.P12231139820511273363.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065764, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320059.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A320118.P10129926400227826302

`a(A181819(n+1)-1)*A181819(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A320118.P10129926400227826302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A181819 (n + 1) - 1).toNat * A181819 (n + 1)

end

end A320118.P10129926400227826302

noncomputable section

/-- A320118: a(1) = a(2) = 1; for n > 2, a(n) = A181819(n) * a(A181819(n)).

Offset 1, canonical program `A320118.P10129926400227826302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320118 (n : ℕ) : ℤ :=
  A320118.P10129926400227826302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320524.P1105468782905227485

`record[Δ[A081341(A117910(n))]]`
-/

namespace A320524.P1105468782905227485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081341 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320524.P1105468782905227485

noncomputable section

/-- A320524: Number of chiral pairs of a row of n colors using 6 or fewer colors.

Offset 1, canonical program `A320524.P1105468782905227485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A320524 (n : ℕ) : ℤ :=
  A320524.P1105468782905227485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A320524.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A320526.P9336775028650900254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A320526 (n : ℕ) : ℤ :=
  A320526.P9336775028650900254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A320526.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A320900.P17696305435880861285

`A000593(n+1)+A050999(n+1)-(A000203(n+1)+A001157(n+1))/2`
-/

namespace A320900.P17696305435880861285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) + A050999 (n + 1) : ℚ) - (A000203 (n + 1) + A001157 (n + 1) : ℚ) / 2

end

end A320900.P17696305435880861285

noncomputable section

/-- A320900: Expansion of Sum_{k>=1} x^k/(1 + x^k)^3.

Offset 1, canonical program `A320900.P17696305435880861285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A050999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320900.P17696305435880861285.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A050999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320900.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320901.P2796526842798435949

`(4*A000593(n+1)+6*A050999(n+1)+2*A051000(n+1)-2*A000203(n+1)-3*A001157(n+1)-A001158(n+1))/6`
-/

namespace A320901.P2796526842798435949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A000593 (n + 1) + 6 * A050999 (n + 1) + 2 * A051000 (n + 1) - 2 * A000203 (n + 1) - 3 * A001157 (n + 1) - A001158 (n + 1) : ℚ) / 6

end

end A320901.P2796526842798435949

noncomputable section

/-- A320901: Expansion of Sum_{k>=1} x^k/(1 + x^k)^4.

Offset 1, canonical program `A320901.P2796526842798435949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, A050999, A051000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320901.P2796526842798435949.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, A050999, A051000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320901.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A321167.P10161724176455158981

`∏{e}[n+1, A047994(#)]`
-/

namespace A321167.P10161724176455158981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A047994 (Nat.factorization (f1 n) p)

end

end A321167.P10161724176455158981

noncomputable section

/-- A321167: The e-unitary Euler function: a(1) = 1, a(n) = Product uphi(e(i)) for n = Product p(i)^e(i), where uphi is the unitary totient function (A047994).

Offset 1, canonical program `A321167.P10161724176455158981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321167 (n : ℕ) : ℤ :=
  A321167.P10161724176455158981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321174.P8562703371106465789

`-(∑[A321173(n)]+2)`
-/

namespace A321174.P8562703371106465789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A321174.P8562703371106465789

noncomputable section

/-- A321174: a(n) = -2*a(n-1) + a(n-2) + a(n-3), a(0) = -1, a(1) = -4, a(2) = 5.

Offset 0, canonical program `A321174.P8562703371106465789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A321174 (n : ℕ) : ℤ :=
  A321174.P8562703371106465789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A321174.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A321370.P2848080016975336999

`A187339(n+1)+A022839(n+1)`
-/

namespace A321370.P2848080016975336999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187339 (n + 1) + A022839 (n + 1)

end

end A321370.P2848080016975336999

noncomputable section

/-- A321370: n + [n*s/r] + [n*t/r], where r = 1, s = cos(2*Pi/5), t = sec(2*Pi/5).

Offset 1, canonical program `A321370.P2848080016975336999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321370 (n : ℕ) : ℤ :=
  A321370.P2848080016975336999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321372.P8160546771668638215

`A187339(n+1)-A008619(A108598(n+1))`
-/

namespace A321372.P8160546771668638215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187339 (n + 1) - A008619 (A108598 (n + 1)).toNat

end

end A321372.P8160546771668638215

noncomputable section

/-- A321372: n + [n*r/t] + [n*s/t], where r = 1, s = cos(2*Pi/5), t = sec(2*Pi/5).

Offset 1, canonical program `A321372.P8160546771668638215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5528 terms. -/
def A321372 (n : ℕ) : ℤ :=
  A321372.P8160546771668638215.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5528 terms. -/
def A321372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321829.P14830422946865690571

`∑{d}[n+1, A002654(#)*A059378((n+1)/#)]`
-/

namespace A321829.P14830422946865690571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A059378 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321829.P14830422946865690571

noncomputable section

/-- A321829: a(n) = Sum_{d|n, n/d==1 mod 4} d^5 - Sum_{d|n, n/d==3 mod 4} d^5.

Offset 1, canonical program `A321829.P14830422946865690571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321829 (n : ℕ) : ℤ :=
  A321829.P14830422946865690571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321830.P17682808874254868364

`∑{d}[n+1, A002654(#)*A069091((n+1)/#)]`
-/

namespace A321830.P17682808874254868364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A069091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321830.P17682808874254868364

noncomputable section

/-- A321830: a(n) = Sum_{d|n, n/d==1 mod 4} d^6 - Sum_{d|n, n/d==3 mod 4} d^6.

Offset 1, canonical program `A321830.P17682808874254868364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321830 (n : ℕ) : ℤ :=
  A321830.P17682808874254868364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321831.P12423229635950529028

`∑{d}[n+1, A002654(#)*A069092((n+1)/#)]`
-/

namespace A321831.P12423229635950529028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A069092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321831.P12423229635950529028

noncomputable section

/-- A321831: a(n) = Sum_{d|n, n/d==1 mod 4} d^7 - Sum_{d|n, n/d==3 mod 4} d^7.

Offset 1, canonical program `A321831.P12423229635950529028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321831 (n : ℕ) : ℤ :=
  A321831.P12423229635950529028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321832.P3017616455920005884

`∑{d}[n+1, A002654(#)*A069093((n+1)/#)]`
-/

namespace A321832.P3017616455920005884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A069093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321832.P3017616455920005884

noncomputable section

/-- A321832: a(n) = Sum_{d|n, n/d==1 (mod 4)} d^8 - Sum_{d|n, n/d==3 (mod 4)} d^8.

Offset 1, canonical program `A321832.P3017616455920005884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321832 (n : ℕ) : ℤ :=
  A321832.P3017616455920005884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321833.P4727301258101739177

`∑{d}[n+1, A002654(#)*A069094((n+1)/#)]`
-/

namespace A321833.P4727301258101739177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A069094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321833.P4727301258101739177

noncomputable section

/-- A321833: a(n) = Sum_{d|n, n/d==1 mod 4} d^9 - Sum_{d|n, n/d==3 mod 4} d^9.

Offset 1, canonical program `A321833.P4727301258101739177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321833 (n : ℕ) : ℤ :=
  A321833.P4727301258101739177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321834.P3995694141505883219

`∑{d}[n+1, A002654(#)*A069095((n+1)/#)]`
-/

namespace A321834.P3995694141505883219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A069095 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321834.P3995694141505883219

noncomputable section

/-- A321834: a(n) = Sum_{d|n, n/d==1 mod 4} d^10 - Sum_{d|n, n/d==3 mod 4} d^10.

Offset 1, canonical program `A321834.P3995694141505883219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321834 (n : ℕ) : ℤ :=
  A321834.P3995694141505883219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321834.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A321999.P11799069889241874774`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A321999 (n : ℕ) : ℤ :=
  A321999.P11799069889241874774.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A321999.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A322018.P15339692018877451877

`A028310(n)-Δ[and(n, -n)]`
-/

namespace A322018.P15339692018877451877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (f1 (n + 1) - f1 n)

end

end A322018.P15339692018877451877

noncomputable section

/-- A322018: a(n) = A006068(A129760(A003188(n))).

Offset 0, canonical program `A322018.P15339692018877451877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322018 (n : ℕ) : ℤ :=
  A322018.P15339692018877451877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322187.P1965569117878174367

`∑{d}[n+1, A001700(#-1)*A193356((n+1)/#)]`
-/

namespace A322187.P1965569117878174367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001700 (d - 1) * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322187.P1965569117878174367

noncomputable section

/-- A322187: a(n) is the coefficient of x^n*y^n/n in log( Product_{n>=1} 1/(1 - x^(2*n-1) - y^(2*n-1)) ), for n >= 1.

Offset 1, canonical program `A322187.P1965569117878174367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A322187 (n : ℕ) : ℤ :=
  A322187.P1965569117878174367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A322187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322203.P6177819774650873781

`∑{d}[n+1, #*A001700((n+1)/#-1)]`
-/

namespace A322203.P6177819774650873781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A322203.P6177819774650873781

noncomputable section

/-- A322203: a(n) = coefficient of x^n*y^n/n in Sum_{n>=1} -log(1 - (x^n + y^n)), for n >= 1.

Offset 1, canonical program `A322203.P6177819774650873781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A322203 (n : ℕ) : ℤ :=
  A322203.P6177819774650873781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A322203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322504.P2936547908977995018

`∑[A085810(A028310(n))]*A033999(n)`
-/

namespace A322504.P2936547908977995018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A322504.P2936547908977995018

noncomputable section

/-- A322504: a(n) = -4*a(n-1) - 3*a(n-2) + a(n-3), a(0) = 1, a(1) = -2, a(2) = 4.

Offset 0, canonical program `A322504.P2936547908977995018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A322504 (n : ℕ) : ℤ :=
  A322504.P2936547908977995018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A322504.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A322655.P2729433473083164570

`A007429(n+1)/gcd(A007429(n+1), A143348(n+1))`
-/

namespace A322655.P2729433473083164570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) : ℚ) / (Int.gcd (A007429 (n + 1)) (A143348 (n + 1)) : ℚ)

end

end A322655.P2729433473083164570

noncomputable section

/-- A322655: Numerator of (Sum_{d|n} sigma(d)) / sigma(n).

Offset 1, canonical program `A322655.P2729433473083164570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322655 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322655.P2729433473083164570.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322980.P7974162186634940196

`A063524(A009191(n+1))`
-/

namespace A322980.P7974162186634940196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A009191 (n + 1)).toNat

end

end A322980.P7974162186634940196

noncomputable section

/-- A322980: a(n) = 1 if n and d(n) are coprime, 0 otherwise. Here d(n) is the number of divisors of n, A000005.

Offset 1, canonical program `A322980.P7974162186634940196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322980 (n : ℕ) : ℤ :=
  A322980.P7974162186634940196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322980.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A323229.P12587575129899363988

`A001791(n)+1`
-/

namespace A323229.P12587575129899363988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + 1

end

end A323229.P12587575129899363988

noncomputable section

/-- A323229: a(n) = binomial(2*n, n+1) + 1.

Offset 0, canonical program `A323229.P12587575129899363988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A323229 (n : ℕ) : ℤ :=
  A323229.P12587575129899363988.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A323229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323409.P15899352784078456227

`gcd(n+1, A047994(n+1))`
-/

namespace A323409.P15899352784078456227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A047994 (n + 1))

end

end A323409.P15899352784078456227

noncomputable section

/-- A323409: Greatest common divisor of Product (p_i^e_i)-1 and n, when n = Product (p_i^e_i); a(n) = gcd(n, A047994(n)).

Offset 1, canonical program `A323409.P15899352784078456227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323409 (n : ℕ) : ℤ :=
  (A323409.P15899352784078456227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323410.P6068438584219207877

`1-A047994(n+1)+n`
-/

namespace A323410.P6068438584219207877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A047994 (n + 1) + (n : ℤ)

end

end A323410.P6068438584219207877

noncomputable section

/-- A323410: Unitary analog of cototient function A051953: a(n) = n - A047994(n).

Offset 1, canonical program `A323410.P6068438584219207877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323410 (n : ℕ) : ℤ :=
  A323410.P6068438584219207877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323410.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A323845.P11496382381672516873

`A167993(n+1)+A056449(n)`
-/

namespace A323845.P11496382381672516873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (n + 1) + A056449 n

end

end A323845.P11496382381672516873

noncomputable section

/-- A323845: Number of inequivalent height 1 degree n polynomials with nonzero constant term.

Offset 1, canonical program `A323845.P11496382381672516873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A323845 (n : ℕ) : ℤ :=
  A323845.P11496382381672516873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A323845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323988.P12818980749952273049

`A191386(n+2)`
-/

namespace A323988.P12818980749952273049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191386 (n + 2)

end

end A323988.P12818980749952273049

noncomputable section

/-- A323988: a(n) = 2^(n - 1) + binomial(n, floor(n/2))*(n + 1)/2.

Offset 0, canonical program `A323988.P12818980749952273049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A323988 (n : ℕ) : ℤ :=
  A323988.P12818980749952273049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A323988.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A325030.P6646308341091855978

`A206032(n+1)*A266265(n+1)`
-/

namespace A325030.P6646308341091855978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206032 (n + 1) * A266265 (n + 1)

end

end A325030.P6646308341091855978

noncomputable section

/-- A325030: a(n) = Product_{d|n} (sigma(d)*pod(d)) where sigma(k) = the sum of the divisors of k (A000203) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A325030.P6646308341091855978`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325030 (n : ℕ) : ℤ :=
  A325030.P6646308341091855978.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325030.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A325260.P13011178329351078032

`A127002(n+4)+Δ[A267528(n+1)]`
-/

namespace A325260.P13011178329351078032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127002 (n + 4) + (f1 (n + 1) - f1 n)

end

end A325260.P13011178329351078032

noncomputable section

/-- A325260: Number of integer partitions of n whose omega-sequence covers an initial interval of positive integers.

Offset 0, canonical program `A325260.P13011178329351078032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A325260 (n : ℕ) : ℤ :=
  A325260.P13011178329351078032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A325260.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A325937.P15466794868829667649

`Δ[A275495(n+1-n²%(n+1))]`
-/

namespace A325937.P15466794868829667649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275495 (n + 1 - n ^ 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325937.P15466794868829667649

noncomputable section

/-- A325937: Expansion of Sum_{k>=1} (-1)^(k + 1) * x^(2*k) / (1 - x^k).

Offset 1, canonical program `A325937.P15466794868829667649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325937 (n : ℕ) : ℤ :=
  A325937.P15466794868829667649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325964.P15804438111234452342

`floor(1/A073802(n+1))`
-/

namespace A325964.P15804438111234452342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A073802 (n + 1) : ℚ)⌋

end

end A325964.P15804438111234452342

noncomputable section

/-- A325964: a(n) = 1 if n and sigma(n) are relatively prime, 0 otherwise, where sigma(n) = sum of divisors of n, A000203; Characteristic function of A014567.

Offset 1, canonical program `A325964.P15804438111234452342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325964 (n : ℕ) : ℤ :=
  A325964.P15804438111234452342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326130.P15601856292657918526

`gcd(2*n+2-∑{d}[n+1, #], A000120(n+1))`
-/

namespace A326130.P15601856292657918526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))) (A000120 (n + 1))

end

end A326130.P15601856292657918526

noncomputable section

/-- A326130: a(n) = gcd(A000120(n), A294898(n)) = gcd(A000120(n), sigma(n)-A005187(n)).

Offset 1, canonical program `A326130.P15601856292657918526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326130 (n : ℕ) : ℤ :=
  (A326130.P15601856292657918526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326299.P16781375373495828820

`A259368(n+1)-1`
-/

namespace A326299.P16781375373495828820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259368 (n + 1) - 1

end

end A326299.P16781375373495828820

noncomputable section

/-- A326299: a(n) = floor(n*log_2(n)).

Offset 1, canonical program `A326299.P16781375373495828820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326299 (n : ℕ) : ℤ :=
  A326299.P16781375373495828820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326299.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A326804.P10317073462849955706

`floor(exp(A028310(n))/ϕ)`
-/

namespace A326804.P10317073462849955706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A028310 n : ℝ) / Real.goldenRatio⌋

end

end A326804.P10317073462849955706

noncomputable section

/-- A326804: a(n) = floor( Sum_{k>=0} n^(k*Phi) / Gamma(k*Phi + 1) ), where Gamma(x) is Euler's gamma function and Phi = (sqrt(5) + 1)/2 is the golden ratio.

Offset 0, canonical program `A326804.P10317073462849955706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A326804 (n : ℕ) : ℤ :=
  A326804.P10317073462849955706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A326804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326826.P16122372011493243852

`∑{d}[n+1, A007429(#)*A023896((n+1)/#)]`
-/

namespace A326826.P16122372011493243852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A023896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P16122372011493243852

noncomputable section

/-- A326826: a(n) = (1/2) * Sum_{d|n} (sigma_1(d) + sigma_2(d)), where sigma_1 = A000203 and sigma_2 = A001157.

Offset 1, canonical program `A326826.P16122372011493243852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326826 (n : ℕ) : ℤ :=
  A326826.P16122372011493243852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326826.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A327208.P1730275716523796910

`A190669(abs(2*A190669(n+1)-(n+1))+1)`
-/

namespace A327208.P1730275716523796910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190669 (|2 * A190669 (n + 1) - (n + 1 : ℤ)| + 1).toNat

end

end A327208.P1730275716523796910

noncomputable section

/-- A327208: a(n) = [(2n+2)r] - [(n+2)r] - [nr], where [ ] = floor and r = sqrt(3).

Offset 0, canonical program `A327208.P1730275716523796910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327208 (n : ℕ) : ℤ :=
  A327208.P1730275716523796910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327211.P3704459302626108215

`A190843(A190843(n+2)+a(n-1)+n+1)` with `a(0)=0`
-/

namespace A327211.P3704459302626108215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A190843 (A190843 (n + 2) + (a (n - 1) + (n : ℤ)) + 1).toNat

end

end A327211.P3704459302626108215

noncomputable section

/-- A327211: a(n) = [(2n+2)e] - [(n+2)e] - [ne], where [ ] = floor.

Offset 0, canonical program `A327211.P3704459302626108215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327211 (n : ℕ) : ℤ :=
  A327211.P3704459302626108215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327211.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A327278.P10196785768449648792

`∑{d}[n+1, A055615(#)*A067856((n+1)/#)]`
-/

namespace A327278.P10196785768449648792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A067856 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327278.P10196785768449648792

noncomputable section

/-- A327278: a(n) = Sum_{d|n, d odd} d * mu(d) * mu(n/d).

Offset 1, canonical program `A327278.P10196785768449648792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327278 (n : ℕ) : ℤ :=
  A327278.P10196785768449648792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327278.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A327625.P2807763681306950925

`∑{d}[n+1, A195459(#)]`
-/

namespace A327625.P2807763681306950925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A195459 d

end

end A327625.P2807763681306950925

noncomputable section

/-- A327625: Expansion of Sum_{k>=0} x^(3^k) / (1 - x^(3^k))^2.

Offset 1, canonical program `A327625.P2807763681306950925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327625 (n : ℕ) : ℤ :=
  A327625.P2807763681306950925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327625.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A327724.P7746024888287684098

`A071797(n+1)+A000196(n)*A071797(n+1)`
-/

namespace A327724.P7746024888287684098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (n + 1) + A000196 n * A071797 (n + 1)

end

end A327724.P7746024888287684098

noncomputable section

/-- A327724: Product of A003059 and A071797.

Offset 1, canonical program `A327724.P7746024888287684098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327724 (n : ℕ) : ℤ :=
  A327724.P7746024888287684098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327724.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A328202.P11274015948377113960

`A051543(n+1)*A051543(n+2)`
-/

namespace A328202.P11274015948377113960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051543 (n + 1) * A051543 (n + 2)

end

end A328202.P11274015948377113960

noncomputable section

/-- A328202: a(n) is the greatest common divisor of all the numbers in row n of Pascal's triangle excluding 1 and n.

Offset 4, canonical program `A328202.P11274015948377113960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A328202 (n : ℕ) : ℤ :=
  A328202.P11274015948377113960.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A328202.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A328487.P33867563993606673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328487 (n : ℕ) : ℤ :=
  A328487.P33867563993606673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328487.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A328819.P15183558570782667744

`A111862(50*2*(n+1))`
-/

namespace A328819.P15183558570782667744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (50 * (2 * (n + 1)))

end

end A328819.P15183558570782667744

noncomputable section

/-- A328819: Third digit after decimal point of square root of n.

Offset 1, canonical program `A328819.P15183558570782667744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A328819 (n : ℕ) : ℤ :=
  A328819.P15183558570782667744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A328819.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A329153.P12855634014752564158

`A047994(n+1)+a(A047994(n+1)-1)` with `a(0)=0`
-/

namespace A329153.P12855634014752564158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A047994 (n + 1) + a (A047994 (n + 1) - 1).toNat

end

end A329153.P12855634014752564158

noncomputable section

/-- A329153: Sum of the iterated unitary totient function (A047994).

Offset 1, canonical program `A329153.P12855634014752564158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329153 (n : ℕ) : ℤ :=
  A329153.P12855634014752564158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329153.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A329451.P14420224795869764284

`A056847(A008811(n)-A107279(n))`
-/

namespace A329451.P14420224795869764284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A008811 n - A107279 n).toNat

end

end A329451.P14420224795869764284

noncomputable section

/-- A329451: Maximum number of pieces that can be captured during one move on an n X n board according to the international draughts capture rules.

Offset 0, canonical program `A329451.P14420224795869764284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A329451 (n : ℕ) : ℤ :=
  A329451.P14420224795869764284.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A329451.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A329488.P13593593723293850257

`A152152(n+1)²`
-/

namespace A329488.P13593593723293850257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152152 (n + 1) ^ 2

end

end A329488.P13593593723293850257

noncomputable section

/-- A329488: a(n) = A001350(n)^4.

Offset 1, canonical program `A329488.P13593593723293850257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A329488 (n : ℕ) : ℤ :=
  A329488.P13593593723293850257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A329488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329601.P6549303936913395908

`∏{p}[A181819(n+1), #]`
-/

namespace A329601.P6549303936913395908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A329601.P6549303936913395908

noncomputable section

/-- A329601: The squarefree kernel of Product prime(e(i)), when n = Product prime(i)^e(i).

Offset 1, canonical program `A329601.P6549303936913395908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329601 (n : ℕ) : ℤ :=
  (A329601.P6549303936913395908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329601.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A329825.P3850344957510260985

`ceil((A171984(n+1)+A008585(n))/4)`
-/

namespace A329825.P3850344957510260985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171984 (n + 1) + A008585 n : ℚ) / 4⌉

end

end A329825.P3850344957510260985

noncomputable section

/-- A329825: Beatty sequence for (3+sqrt(17))/4.

Offset 1, canonical program `A329825.P3850344957510260985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329825 (n : ℕ) : ℤ :=
  A329825.P3850344957510260985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329825.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A330184.P18338956507869684487

`floor(6*A292640(n+1)/4)`
-/

namespace A330184.P18338956507869684487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * A292640 (n + 1) : ℚ) / 4⌋

end

end A330184.P18338956507869684487

noncomputable section

/-- A330184: a(n) = n + floor(nr/t) + floor(ns/t), where r = sqrt(2) - 1/2, s = sqrt(2), t = sqrt(2) + 1/2.

Offset 1, canonical program `A330184.P18338956507869684487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330184 (n : ℕ) : ℤ :=
  A330184.P18338956507869684487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330184.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A330214.P15194411891903116594

`A000027(A059543(n+1)+A059541(n+1))`
-/

namespace A330214.P15194411891903116594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A059543 (n + 1) + A059541 (n + 1)).toNat

end

end A330214.P15194411891903116594

noncomputable section

/-- A330214: a(n) = n + floor(nr/s) + floor(nt/s), where r = log(2), s = 1, t = log(3).

Offset 1, canonical program `A330214.P15194411891903116594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330214 (n : ℕ) : ℤ :=
  A330214.P15194411891903116594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330214.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A330324.P8826282452159673930

`∑[A330323(n+1)]`
-/

namespace A330324.P8826282452159673930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330324.P8826282452159673930

noncomputable section

/-- A330324: a(n) = Sum_{i=1..n} Moebius(i)*Moebius(i+1), where Moebius(n) = A008683(n).

Offset 1, canonical program `A330324.P8826282452159673930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330324 (n : ℕ) : ℤ :=
  A330324.P8826282452159673930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330324.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A330714.P2325719650532797238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330714 (n : ℕ) : ℤ :=
  A330714.P2325719650532797238.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330714.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A331792.P1275125220568158347`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331792 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331792.P1275125220568158347.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331792.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A331793.P14389572807940730688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331793 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331793.P14389572807940730688.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331793.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A332448.P11306355244273946482

`A332447(∑{d}[n+1, #])`
-/

namespace A332448.P11306355244273946482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332447 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A332448.P11306355244273946482

noncomputable section

/-- A332448: a(n) = A007814(A087808(sigma(n))).

Offset 1, canonical program `A332448.P11306355244273946482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332448 (n : ℕ) : ℤ :=
  A332448.P11306355244273946482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332448.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A332457.P13672119517976752287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A332457 (n : ℕ) : ℤ :=
  (A332457.P13672119517976752287.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A332457.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A332849.P5328959665071373614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, A053089, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332849 (n : ℕ) : ℤ :=
  A332849.P5328959665071373614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, A053089, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332849.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A333564.P1871723781350363972

`(A000984(n+1)-A026641(n+1))*A000079(n+1)`
-/

namespace A333564.P1871723781350363972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) - A026641 (n + 1)) * A000079 (n + 1)

end

end A333564.P1871723781350363972

noncomputable section

/-- A333564: a(n) = [x^n] ( c(x)/c(-x) )^n, where c(x) = (1 - sqrt( 1 - 4*x))/(2*x) is the o.g.f. of the Catalan numbers A000108.

Offset 1, canonical program `A333564.P1871723781350363972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A333564 (n : ℕ) : ℤ :=
  A333564.P1871723781350363972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A333564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333576.P11836017096323049674

`ceil((n+1)/2*A047994(n+1))`
-/

namespace A333576.P11836017096323049674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * (A047994 (n + 1) : ℚ)⌉

end

end A333576.P11836017096323049674

noncomputable section

/-- A333576: a(1) = 1; thereafter a(n) = n * uphi(n) / 2.

Offset 1, canonical program `A333576.P11836017096323049674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333576 (n : ℕ) : ℤ :=
  A333576.P11836017096323049674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333576.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A333645.P13636423254639746421

`∑{d}[n+1, A047994(#)]`
-/

namespace A333645.P13636423254639746421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047994 d

end

end A333645.P13636423254639746421

noncomputable section

/-- A333645: a(n) = Sum_{d|n} uphi(d).

Offset 1, canonical program `A333645.P13636423254639746421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333645 (n : ℕ) : ℤ :=
  A333645.P13636423254639746421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333645.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A333695.P11755395087226046441

`lcm(n+1, A057660(n+1))/(n+1)`
-/

namespace A333695.P11755395087226046441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A057660 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A333695.P11755395087226046441

noncomputable section

/-- A333695: Numerators of coefficients in expansion of Sum_{k>=1} phi(k) * log(1/(1 - x^k)).

Offset 1, canonical program `A333695.P11755395087226046441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333695 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333695.P11755395087226046441.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333696.P5461163465730719669

`(n+1)/gcd(n+1, A057660(n+1))`
-/

namespace A333696.P5461163465730719669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A057660 (n + 1)) : ℚ)

end

end A333696.P5461163465730719669

noncomputable section

/-- A333696: Denominators of coefficients in expansion of Sum_{k>=1} phi(k) * log(1/(1 - x^k)).

Offset 1, canonical program `A333696.P5461163465730719669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333696 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333696.P5461163465730719669.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333696.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A333884.P2427626243253661782

`(A048766(n)+1)^3-n`
-/

namespace A333884.P2427626243253661782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048766 n + 1) ^ 3 - (n : ℤ)

end

end A333884.P2427626243253661782

noncomputable section

/-- A333884: Difference between smallest cube > n and n.

Offset 0, canonical program `A333884.P2427626243253661782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333884 (n : ℕ) : ℤ :=
  A333884.P2427626243253661782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334172.P15112562064051135258

`A334143(n+1)+A175330(n+1)`
-/

namespace A334172.P15112562064051135258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334143 (n + 1) + A175330 (n + 1)

end

end A334172.P15112562064051135258

noncomputable section

/-- A334172: Bitwise XNOR of prime(n) and prime(n + 1).

Offset 1, canonical program `A334172.P15112562064051135258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334172 (n : ℕ) : ℤ :=
  A334172.P15112562064051135258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334210.P14190534064000335262

`A008333(n+1)-A008864(n+1)`
-/

namespace A334210.P14190534064000335262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008333 (n + 1) - A008864 (n + 1)

end

end A334210.P14190534064000335262

noncomputable section

/-- A334210: a(n) = sigma(prime(n) + 1) - sigma(prime(n)).

Offset 1, canonical program `A334210.P14190534064000335262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008333, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334210 (n : ℕ) : ℤ :=
  A334210.P14190534064000335262.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008333, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334210.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334698.P17453282906277666117

`A334697(n+1)+4*(n+1)`
-/

namespace A334698.P17453282906277666117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334697 (n + 1) + (4 * (n + 1) : ℤ)

end

end A334698.P17453282906277666117

noncomputable section

/-- A334698: a(n) is the total number of points (both boundary and interior points) in the n-th figure shown in A255011 (meaning the figure with 4n points on the perimeter), where the interior points are counted with multiplicity.

Offset 1, canonical program `A334698.P17453282906277666117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334698 (n : ℕ) : ℤ :=
  A334698.P17453282906277666117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334698.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A334992.P5220326445913978837

`and(a(n-1)-A052899(n+1), A052899(n+1))` with `a(0)=1`
-/

namespace A334992.P5220326445913978837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (a (n - 1) - A052899 (n + 1)) (A052899 (n + 1))

end

end A334992.P5220326445913978837

noncomputable section

/-- A334992: a(n) is the smallest number larger than a(n-1) whose a(i)-th binary digit is 0 for all i

Offset 1, canonical program `A334992.P5220326445913978837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A334992 (n : ℕ) : ℤ :=
  A334992.P5220326445913978837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A334992.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A335711.P9401535491849578910

`A193530(n+3)-1`
-/

namespace A335711.P9401535491849578910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193530 (n + 3) - 1

end

end A335711.P9401535491849578910

noncomputable section

/-- A335711: The number of free polyominoes of width 2 and height n.

Offset 2, canonical program `A335711.P9401535491849578910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A335711 (n : ℕ) : ℤ :=
  A335711.P9401535491849578910.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A335711.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A336861.P8738973867974602370

`∑[A267598(n)]-1`
-/

namespace A336861.P8738973867974602370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A336861.P8738973867974602370

noncomputable section

/-- A336861: a(n) = ceiling((n-1-sqrt(n+1))/2).

Offset 1, canonical program `A336861.P8738973867974602370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336861 (n : ℕ) : ℤ :=
  A336861.P8738973867974602370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336861.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A337102.P14846779223761283063

`ceil(n/2-A337101(n+1))`
-/

namespace A337102.P14846779223761283063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A337101 (n + 1) : ℚ)⌉

end

end A337102.P14846779223761283063

noncomputable section

/-- A337102: Number of partitions of n into two positive integer parts (s,t), s<=t, such that the harmonic mean of the smallest and largest part is not an integer.

Offset 1, canonical program `A337102.P14846779223761283063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337102 (n : ℕ) : ℤ :=
  A337102.P14846779223761283063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337140.P18050210650349249115

`∪[A009003(n+1), A065502(n+1)]`
-/

namespace A337140.P18050210650349249115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337140.P18050210650349249115

noncomputable section

/-- A337140: Numbers m = a + b with a and b positive integers whose product a*b = k^2 is a square.

Offset 1, canonical program `A337140.P18050210650349249115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337140 (n : ℕ) : ℤ :=
  (A337140.P18050210650349249115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337140.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A337392.P8733583556961632594

`abs(5*A077973(2*n+3))`
-/

namespace A337392.P8733583556961632594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * A077973 (2 * n + 3)|

end

end A337392.P8733583556961632594

noncomputable section

/-- A337392: Minimum m such that the convergence speed of m^^m is equal to n >= 2, where A317905(n) represents the convergence speed of m^^m (and m = A067251(n), the n-th non-multiple of 10).

Offset 2, canonical program `A337392.P8733583556961632594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A337392 (n : ℕ) : ℤ :=
  A337392.P8733583556961632594.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A337392.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A337899.P8168504029027537216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337899 (n : ℕ) : ℤ :=
  A337899.P8168504029027537216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337937.P8490915834701454344

`A195459(comp[3*n])`
-/

namespace A337937.P8490915834701454344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A337937.P8490915834701454344

noncomputable section

/-- A337937: a(n) = Euler totient function phi = A000010 evaluated at N(n) = floor((3*n-1)/2) = A001651(n), for n >= 1.

Offset 1, canonical program `A337937.P8490915834701454344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A337937 (n : ℕ) : ℤ :=
  A337937.P8490915834701454344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A337937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337938.P14082378837235000955

`abs(A038760(n+3)%(2^n))`
-/

namespace A337938.P14082378837235000955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A038760 (n + 3)) (2 ^ n : ℤ)|

end

end A337938.P14082378837235000955

noncomputable section

/-- A337938: Irregular triangle read by rows: T(n, k) gives the primitive period of the sequence {k (Modd n)}_{k >= 0}, for n >= 1.

Offset 1, canonical program `A337938.P14082378837235000955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A337938 (n : ℕ) : ℤ :=
  A337938.P14082378837235000955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A337938.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A338321.P18088504988754627717

`A052938(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A338321.P18088504988754627717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  A052938 n + a (n - 3)

end

end A338321.P18088504988754627717

noncomputable section

/-- A338321: Trace of complement matrix for polynomial triangle centers of degree n (on the Nagel line).

Offset 1, canonical program `A338321.P18088504988754627717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338321 (n : ℕ) : ℤ :=
  A338321.P18088504988754627717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338321.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A339356.P15711006392106729220

`∑[A339355(A109613(n)+1)]`
-/

namespace A339356.P15711006392106729220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339355 (A109613 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339356.P15711006392106729220

noncomputable section

/-- A339356: Maximum number of copies of a 123456 permutation pattern in an alternating (or zig-zag) permutation of length n + 9.

Offset 1, canonical program `A339356.P15711006392106729220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339356 (n : ℕ) : ℤ :=
  A339356.P15711006392106729220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339356.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A339610.P2300221392478852020

`A001595(n)+A094588(n)+1`
-/

namespace A339610.P2300221392478852020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n + (A094588 n + 1)

end

end A339610.P2300221392478852020

noncomputable section

/-- A339610: Expansion of x*(2 - x - x^2 - 2*x^3)/(1 - x - x^2)^2.

Offset 1, canonical program `A339610.P2300221392478852020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A339610 (n : ℕ) : ℤ :=
  A339610.P2300221392478852020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A339610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339748.P7979296839224307889

`A234959(n+1)+A054895(A234959(n+1))`
-/

namespace A339748.P7979296839224307889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234959 (n + 1) + A054895 (A234959 (n + 1)).toNat

end

end A339748.P7979296839224307889

noncomputable section

/-- A339748: a(n) = (6^(valuation(n, 6) + 1) - 1) / 5.

Offset 1, canonical program `A339748.P7979296839224307889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339748 (n : ℕ) : ℤ :=
  A339748.P7979296839224307889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339748.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A340130.P6254279685817032561

`∑[∑[A331390(n+1)]]`
-/

namespace A340130.P6254279685817032561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331390 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340130.P6254279685817032561

noncomputable section

/-- A340130: Number of convex polygons on the lines of a triangular grid with edge length n.

Offset 1, canonical program `A340130.P6254279685817032561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340130 (n : ℕ) : ℤ :=
  A340130.P6254279685817032561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340130.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A340193.P8403142317804915887

`1-A340192(n+1)+n`
-/

namespace A340193.P8403142317804915887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A340192 (n + 1) + (n : ℤ)

end

end A340193.P8403142317804915887

noncomputable section

/-- A340193: a(n) = n - (Sum_{d|n} A063994(d)).

Offset 1, canonical program `A340193.P8403142317804915887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340193 (n : ℕ) : ℤ :=
  A340193.P8403142317804915887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340199.P9854872093273862447

`A337418(n+3)+A081657(n+1)`
-/

namespace A340199.P9854872093273862447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337418 (n + 3) + A081657 (n + 1)

end

end A340199.P9854872093273862447

noncomputable section

/-- A340199: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 3) missing two edges, where the two removed edges are not incident to the same vertex in the 3-point set and are also not incident to the same vertex in the other set.

Offset 3, canonical program `A340199.P9854872093273862447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A340199 (n : ℕ) : ℤ :=
  A340199.P9854872093273862447.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A340199.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A340461.P6681321627490658166

`2*A295302(n+1)+1+n`
-/

namespace A340461.P6681321627490658166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295302 (n + 1) + 1 + (n : ℤ)

end

end A340461.P6681321627490658166

noncomputable section

/-- A340461: a(n) = 2*sigma(phi(n)) - n.

Offset 1, canonical program `A340461.P6681321627490658166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340461 (n : ℕ) : ℤ :=
  A340461.P6681321627490658166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340461.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A340632.P7486341260096181790

`or(n, A122155(n))`
-/

namespace A340632.P7486341260096181790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A122155 n)

end

end A340632.P7486341260096181790

noncomputable section

/-- A340632: a(n) in binary is a run of 1-bits from the most significant 1-bit of n down to the least significant 1-bit of n, inclusive.

Offset 0, canonical program `A340632.P7486341260096181790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340632 (n : ℕ) : ℤ :=
  A340632.P7486341260096181790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340632.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A340850.P2468868924359023232

`∑{d}[n+1, A055615(#)*A057660((n+1)/#)]`
-/

namespace A340850.P2468868924359023232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340850.P2468868924359023232

noncomputable section

/-- A340850: Dirichlet g.f.: Sum_{n>0} a(n)/n^s = zeta(s) * zeta(s-2) / (zeta(s-1))^2.

Offset 1, canonical program `A340850.P2468868924359023232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340850 (n : ℕ) : ℤ :=
  A340850.P2468868924359023232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340850.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A341042.P16520850623905686050

`∏{p}[n+1, #*val(n+1, #)]/A004277(val(n+1, 2))`
-/

namespace A341042.P16520850623905686050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℚ) / (A004277 (SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A341042.P16520850623905686050

noncomputable section

/-- A341042: Multiplicative projection of odd part of n.

Offset 1, canonical program `A341042.P16520850623905686050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341042 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A341042.P16520850623905686050.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341178.P17104699675163153674

`eq[11, A070635(A028310(n))]`
-/

namespace A341178.P17104699675163153674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341178.P17104699675163153674

noncomputable section

/-- A341178: Numbers that when divided by the sum of their digits leave 11 as remainder.

Offset 1, canonical program `A341178.P17104699675163153674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A341178 (n : ℕ) : ℤ :=
  (A341178.P17104699675163153674.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A341178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341179.P12941946526386532136

`eq[12, A070635(A028310(n))]`
-/

namespace A341179.P12941946526386532136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341179.P12941946526386532136

noncomputable section

/-- A341179: Numbers that when divided by the sum of their digits leave 12 as remainder.

Offset 1, canonical program `A341179.P12941946526386532136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A341179 (n : ℕ) : ℤ :=
  (A341179.P12941946526386532136.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A341179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341180.P9443771648264716755

`eq[13, A070635(A028310(n))]`
-/

namespace A341180.P9443771648264716755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341180.P9443771648264716755

noncomputable section

/-- A341180: Numbers that when divided by the sum of their digits leave 13 as remainder.

Offset 1, canonical program `A341180.P9443771648264716755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A341180 (n : ℕ) : ℤ :=
  (A341180.P9443771648264716755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A341180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341181.P18393765208184896138

`eq[14, A070635(A028310(n))]`
-/

namespace A341181.P18393765208184896138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341181.P18393765208184896138

noncomputable section

/-- A341181: Numbers that when divided by the sum of their digits leave 14 as remainder.

Offset 1, canonical program `A341181.P18393765208184896138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A341181 (n : ℕ) : ℤ :=
  (A341181.P18393765208184896138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A341181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341182.P4357023591188978830

`eq[15, A070635(A028310(n))]`
-/

namespace A341182.P4357023591188978830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341182.P4357023591188978830

noncomputable section

/-- A341182: Numbers that when divided by the sum of their digits leave 15 as remainder.

Offset 1, canonical program `A341182.P4357023591188978830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A341182 (n : ℕ) : ℤ :=
  (A341182.P4357023591188978830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A341182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341186.P12014664352116713879

`eq[16, A070635(A028310(n))]`
-/

namespace A341186.P12014664352116713879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341186.P12014664352116713879

noncomputable section

/-- A341186: Numbers that when divided by the sum of their digits leave 16 as remainder.

Offset 1, canonical program `A341186.P12014664352116713879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A341186 (n : ℕ) : ℤ :=
  (A341186.P12014664352116713879.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A341186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341187.P15450679487401580348

`eq[17, A070635(A028310(n))]`
-/

namespace A341187.P15450679487401580348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341187.P15450679487401580348

noncomputable section

/-- A341187: Numbers that when divided by the sum of their digits leave 17 as remainder.

Offset 1, canonical program `A341187.P15450679487401580348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A341187 (n : ℕ) : ℤ :=
  (A341187.P15450679487401580348.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A341187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341188.P7724309008278540306

`eq[18, A070635(A028310(n))]`
-/

namespace A341188.P7724309008278540306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341188.P7724309008278540306

noncomputable section

/-- A341188: Numbers that when divided by the sum of their digits leave 18 as remainder.

Offset 1, canonical program `A341188.P7724309008278540306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A341188 (n : ℕ) : ℤ :=
  (A341188.P7724309008278540306.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A341188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341189.P6171068448427093631

`eq[19, A070635(A028310(n))]`
-/

namespace A341189.P6171068448427093631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341189.P6171068448427093631

noncomputable section

/-- A341189: Numbers that when divided by the sum of their digits leave 19 as remainder.

Offset 1, canonical program `A341189.P6171068448427093631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A341189 (n : ℕ) : ℤ :=
  (A341189.P6171068448427093631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A341189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341329.P7455525614794179210

`∩[A009003(n+1), A161992(n+1)]`
-/

namespace A341329.P7455525614794179210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341329.P7455525614794179210

noncomputable section

/-- A341329: Numbers k such that k^2 is the sum of m nonzero squares for all 1 <= m <= k^2 - 14.

Offset 1, canonical program `A341329.P7455525614794179210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6463 terms. -/
def A341329 (n : ℕ) : ℤ :=
  (A341329.P7455525614794179210.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6463 terms. -/
def A341329.provenance : SequenceMachineLib.Provenance := .conjectured

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

`--(n+1)%(n+1-A055945(n+1))`
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

/-! ## A342337.P4685969559606466656

`∑{d}[A028310(n), A033485(A065033(#))]`
-/

namespace A342337.P4685969559606466656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A033485 (A065033 d).toNat

end

end A342337.P4685969559606466656

noncomputable section

/-- A342337: Number of integer partitions of n with all adjacent parts (x, y) satisfying either x = y or x = 2y.

Offset 0, canonical program `A342337.P4685969559606466656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342337 (n : ℕ) : ℤ :=
  A342337.P4685969559606466656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342337.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A342460.P5036170238459632379

`A063524(A082343(n+1))`
-/

namespace A342460.P5036170238459632379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A082343 (n + 1)).toNat

end

end A342460.P5036170238459632379

noncomputable section

/-- A342460: a(n) = 1 if n > 1 and is divisible by the sum of its prime factors (with repetition), otherwise 0.

Offset 1, canonical program `A342460.P5036170238459632379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342460 (n : ℕ) : ℤ :=
  A342460.P5036170238459632379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342483.P17066957216948218945

`record[A001788(n)-∑[A005449(n)]]`
-/

namespace A342483.P17066957216948218945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342483.P17066957216948218945

noncomputable section

/-- A342483: a(n) = binomial(n,2)*(2^(n-2) - n).

Offset 4, canonical program `A342483.P17066957216948218945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A342483 (n : ℕ) : ℤ :=
  A342483.P17066957216948218945.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A342483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342829.P12276101899624756662

`A051885(∑{digits}[n+1, #])`
-/

namespace A342829.P12276101899624756662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A342829.P12276101899624756662

noncomputable section

/-- A342829: a(n) is the smallest number whose sum of digits is equal to the sum of digits of n.

Offset 1, canonical program `A342829.P12276101899624756662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342829 (n : ℕ) : ℤ :=
  A342829.P12276101899624756662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342829.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A343275.P11981615206629544159

`abs(A061601(n+1)-n)`
-/

namespace A343275.P11981615206629544159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061601 (n + 1) - (n : ℤ)|

end

end A343275.P11981615206629544159

noncomputable section

/-- A343275: a(n) = |2*n - 10^length(n)|.

Offset 1, canonical program `A343275.P11981615206629544159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343275 (n : ℕ) : ℤ :=
  A343275.P11981615206629544159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343306.P10768569373894334497

`eq[2, Δ[A091194(A008458(n))]]`
-/

namespace A343306.P10768569373894334497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343306.P10768569373894334497

noncomputable section

/-- A343306: Numbers k such that there is only 1 abundant number (A005101) among 6*k+1 through 6*k+5.

Offset 1, canonical program `A343306.P10768569373894334497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. -/
def A343306 (n : ℕ) : ℤ :=
  (A343306.P10768569373894334497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. -/
def A343306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343372.P13368482924979728973

`A341552(n+4)-A048473(n+2)`
-/

namespace A343372.P13368482924979728973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341552 (n + 4) - A048473 (n + 2)

end

end A343372.P13368482924979728973

noncomputable section

/-- A343372: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 4) missing three edges, where exactly two removed edges are incident to the same vertex in the 3-point set and exactly two removed edges are incident to the same vertex in the other set.

Offset 4, canonical program `A343372.P13368482924979728973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A343372 (n : ℕ) : ℤ :=
  A343372.P13368482924979728973.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A343372.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A343785.P12537487333862230386

`Δ[A062756(n)]`
-/

namespace A343785.P12537487333862230386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343785.P12537487333862230386

noncomputable section

/-- A343785: a(n) is completely multiplicative with a(p^e) = (-1)^e if p == 2 (mod 3) and a(p^e) = 1 otherwise.

Offset 1, canonical program `A343785.P12537487333862230386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343785 (n : ℕ) : ℤ :=
  A343785.P12537487333862230386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343785.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A344326.P6585231789986508577

`∑{d}[n+1, A055615(#)*A328485((n+1)/#)]`
-/

namespace A344326.P6585231789986508577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A328485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344326.P6585231789986508577

noncomputable section

/-- A344326: Dirichlet g.f.: zeta(s)^2/zeta(2*s-1).

Offset 1, canonical program `A344326.P6585231789986508577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344326 (n : ℕ) : ℤ :=
  A344326.P6585231789986508577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344348.P15733958830858671622

`A293412(n)%A028310(n)`
-/

namespace A344348.P15733958830858671622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293412 n) (A028310 n)

end

end A344348.P15733958830858671622

noncomputable section

/-- A344348: a(n) = floor(frac(e * n) * n).

Offset 0, canonical program `A344348.P15733958830858671622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344348 (n : ℕ) : ℤ :=
  A344348.P15733958830858671622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344399.P13589682430989550627

`(n²+1)*A000984(n)`
-/

namespace A344399.P13589682430989550627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A000984 n

end

end A344399.P13589682430989550627

noncomputable section

/-- A344399: a(n) = 4^n*binomial(n - 1/2, -1/2)*(n^2 + 1).

Offset 0, canonical program `A344399.P13589682430989550627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A344399 (n : ℕ) : ℤ :=
  A344399.P13589682430989550627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A344399.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A345668.P16894583978657818364

`n+3-2*A175851(n+2)`
-/

namespace A345668.P16894583978657818364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 2 * A175851 (n + 2)

end

end A345668.P16894583978657818364

noncomputable section

/-- A345668: Last prime minus distance to last prime.

Offset 3, canonical program `A345668.P16894583978657818364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345668 (n : ℕ) : ℤ :=
  A345668.P16894583978657818364.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345937.P12534204901955045802

`gcd(n, A047994(n+1))`
-/

namespace A345937.P12534204901955045802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A047994 (n + 1))

end

end A345937.P12534204901955045802

noncomputable section

/-- A345937: a(n) = gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

Offset 1, canonical program `A345937.P12534204901955045802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345937 (n : ℕ) : ℤ :=
  (A345937.P12534204901955045802.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345939.P1195610917392634230

`n/gcd(n, A047994(n+1))`
-/

namespace A345939.P1195610917392634230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n : ℤ) (A047994 (n + 1)) : ℚ)

end

end A345939.P1195610917392634230

noncomputable section

/-- A345939: a(n) = (n-1) / gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

Offset 1, canonical program `A345939.P1195610917392634230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345939 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345939.P1195610917392634230.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345939.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A346866.P13933869399185685573

`A000203(n+1)*A008438(n+1)`
-/

namespace A346866.P13933869399185685573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A008438 (n + 1)

end

end A346866.P13933869399185685573

noncomputable section

/-- A346866: Sum of divisors of the n-th second hexagonal number.

Offset 1, canonical program `A346866.P13933869399185685573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346866 (n : ℕ) : ℤ :=
  A346866.P13933869399185685573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346866.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A290098.P4770106932670171924

`A397787(n+1)%2`
-/

namespace A290098.P4770106932670171924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397787 (n + 1)) 2

end

end A290098.P4770106932670171924

noncomputable section

/-- A290098: Characteristic function for A003658 (fundamental discriminants of real quadratic fields).

Offset 1, canonical program `A290098.P4770106932670171924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290098 (n : ℕ) : ℤ :=
  A290098.P4770106932670171924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290098.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A291750.P7654732343029559939

`1/2*(2+(A003557(n+1)+A048250(n+1))²-A003557(n+1)-3*A048250(n+1))`
-/

namespace A291750.P7654732343029559939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + ((A003557 (n + 1) + A048250 (n + 1)) ^ 2 - A003557 (n + 1)) - 3 * A048250 (n + 1) : ℚ)

end

end A291750.P7654732343029559939

noncomputable section

/-- A291750: Compound filter: a(n) = P(A003557(n), A048250(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A291750.P7654732343029559939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291750 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291750.P7654732343029559939.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291750.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A292768.P2945223017558604554

`∑[∑{d}[n+1, #*A007423((n+1)/#)]]`
-/

namespace A292768.P2945223017558604554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A007423 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292768.P2945223017558604554

noncomputable section

/-- A292768: Partial sums of A065387.

Offset 1, canonical program `A292768.P2945223017558604554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292768 (n : ℕ) : ℤ :=
  A292768.P2945223017558604554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293637.P15390255035316120638

`A011558(n)+A004698(n)`
-/

namespace A293637.P15390255035316120638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 n + A004698 n

end

end A293637.P15390255035316120638

noncomputable section

/-- A293637: a(n) is the least integer k such that k/Fibonacci(n) > 1/5.

Offset 0, canonical program `A293637.P15390255035316120638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A293637 (n : ℕ) : ℤ :=
  A293637.P15390255035316120638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A293637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293639.P9503296093773056529

`A293638(n)+A004698(n)`
-/

namespace A293639.P9503296093773056529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293638 n + A004698 n

end

end A293639.P9503296093773056529

noncomputable section

/-- A293639: a(n) is the greatest integer k such that k/Fibonacci(n) < 2/5.

Offset 0, canonical program `A293639.P9503296093773056529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A293639 (n : ℕ) : ℤ :=
  A293639.P9503296093773056529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A293639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293641.P3298730872533662908

`floor(A293672(n)/2)`
-/

namespace A293641.P3298730872533662908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293672 n : ℚ) / 2⌋

end

end A293641.P3298730872533662908

noncomputable section

/-- A293641: a(n) is the integer k that minimizes |k/Fibonacci(n) - 2/5|.

Offset 0, canonical program `A293641.P3298730872533662908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293641 (n : ℕ) : ℤ :=
  A293641.P3298730872533662908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293641.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A294139.P8828133645584805103

`A331987(n)-A302766(n+1)`
-/

namespace A294139.P8828133645584805103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331987 n - A302766 (n + 1)

end

end A294139.P8828133645584805103

noncomputable section

/-- A294139: Sum of the areas of the distinct rectangles (and the areas of the squares on their sides) with positive integer sides such that L + W = n, W < L.

Offset 1, canonical program `A294139.P8828133645584805103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294139 (n : ℕ) : ℤ :=
  A294139.P8828133645584805103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294614.P5054833722004992931

`A295012(n+1)-(n+1)`
-/

namespace A294614.P5054833722004992931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295012 (n + 1) - (n + 1 : ℤ)

end

end A294614.P5054833722004992931

noncomputable section

/-- A294614: Sum of the divisors of 12*n - 1, divided by 12, minus n.

Offset 1, canonical program `A294614.P5054833722004992931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294614 (n : ℕ) : ℤ :=
  A294614.P5054833722004992931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294614.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A296779.P9301073313345564947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A296779 (n : ℕ) : ℤ :=
  A296779.P9301073313345564947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A296779.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A297111.P9451184863548072993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297111 (n : ℕ) : ℤ :=
  A297111.P9451184863548072993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297111.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A300852.P6997038708606362003

`∑{d}[n+1, #*#%2]-A300893(n+1)`
-/

namespace A300852.P6997038708606362003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ) - A300893 (n + 1)

end

end A300852.P6997038708606362003

noncomputable section

/-- A300852: L.g.f.: log(Product_{k>=1} (1 + x^prime(k))) = Sum_{n>=1} a(n)*x^n/n.

Offset 1, canonical program `A300852.P6997038708606362003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300852 (n : ℕ) : ℤ :=
  A300852.P6997038708606362003.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300852.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A302563.P15763102910394918625

`A017173(n)+A004216(A017173(n))`
-/

namespace A302563.P15763102910394918625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n + A004216 (A017173 n).toNat

end

end A302563.P15763102910394918625

noncomputable section

/-- A302563: Numbers whose digital root is equal to their number of digits.

Offset 1, canonical program `A302563.P15763102910394918625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A302563 (n : ℕ) : ℤ :=
  A302563.P15763102910394918625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A302563.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A305006.P10100576833363132034

`lcm((n+1)², A326238(n+1))/A162395(n+1)`
-/

namespace A305006.P10100576833363132034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) (A326238 (n + 1)) : ℚ) / (A162395 (n + 1) : ℚ)

end

end A305006.P10100576833363132034

noncomputable section

/-- A305006: Numerators of coefficients in expansion of Sum_{k>=1} x^k/(k*(1 + x^k)).

Offset 1, canonical program `A305006.P10100576833363132034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305006 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A305006.P10100576833363132034.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305150.P11651088542396370948

`A348182(∑{p}[n+1, gcd(n, #)]^A262202(n+1))`
-/

namespace A305150.P11651088542396370948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348182 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℚ) ^ (A262202 (n + 1) : ℤ))).toNat

end

end A305150.P11651088542396370948

noncomputable section

/-- A305150: Number of factorizations of n into distinct, pairwise indivisible factors greater than 1.

Offset 1, canonical program `A305150.P11651088542396370948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A305150 (n : ℕ) : ℤ :=
  A305150.P11651088542396370948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A305150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305392.P2031859111469276948

`A140100(n+2)-A140100(n+1)`
-/

namespace A305392.P2031859111469276948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 2) - A140100 (n + 1)

end

end A305392.P2031859111469276948

noncomputable section

/-- A305392: First differences of A140100.

Offset 1, canonical program `A305392.P2031859111469276948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305392 (n : ℕ) : ℤ :=
  A305392.P2031859111469276948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305392.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A306927.P12540627946296068152

`∑{d}[n+1, A063659(#)]-(n+1)`
-/

namespace A306927.P12540627946296068152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d - (n + 1 : ℤ)

end

end A306927.P12540627946296068152

noncomputable section

/-- A306927: a(n) = A001615(n) - n.

Offset 1, canonical program `A306927.P12540627946296068152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306927 (n : ℕ) : ℤ :=
  A306927.P12540627946296068152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306940.P5724438375272996272

`Δ[Δ[n-A307089(n+4)]]`
-/

namespace A306940.P5724438375272996272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A307089 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306940.P5724438375272996272

noncomputable section

/-- A306940: Expansion of 1/((1 - x)^6 + x^6).

Offset 0, canonical program `A306940.P5724438375272996272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A306940 (n : ℕ) : ℤ :=
  A306940.P5724438375272996272.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A306940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307342.P15063499458322460120

`eq[4, A318473(n+1)]+1`
-/

namespace A307342.P15063499458322460120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A307342.P15063499458322460120

noncomputable section

/-- A307342: Products of four primes, except fourth powers of primes.

Offset 1, canonical program `A307342.P15063499458322460120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9186 terms. -/
def A307342 (n : ℕ) : ℤ :=
  (A307342.P15063499458322460120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9186 terms. -/
def A307342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307892.P4077091072110131327

`lcm(A007956(n+1), A090387(n+1))`
-/

namespace A307892.P4077091072110131327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007956 (n + 1)) (A090387 (n + 1))

end

end A307892.P4077091072110131327

noncomputable section

/-- A307892: a(n) = lcm(tau(n), pod(n)) / n, where tau(k) = the number of divisors of k (A000005) and pod(n) = the product of divisors of k (A007955).

Offset 1, canonical program `A307892.P4077091072110131327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A307892 (n : ℕ) : ℤ :=
  (A307892.P4077091072110131327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A307892.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A309004.P12825694522914242724

`A008480(A181819(n+1))`
-/

namespace A309004.P12825694522914242724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A181819 (n + 1)).toNat

end

end A309004.P12825694522914242724

noncomputable section

/-- A309004: The number of numbers with the same prime signature and set of distinct prime factors as n (including n).

Offset 1, canonical program `A309004.P12825694522914242724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309004 (n : ℕ) : ℤ :=
  A309004.P12825694522914242724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309004.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A309324.P3117719213953618928

`gcd(2, n+1)*A035109(n)`
-/

namespace A309324.P3117719213953618928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A035109 n

end

end A309324.P3117719213953618928

noncomputable section

/-- A309324: Expansion of Sum_{k>=1} psi(k) * x^k/(1 + x^k), where psi = Dedekind psi function (A001615).

Offset 1, canonical program `A309324.P3117719213953618928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309324 (n : ℕ) : ℤ :=
  A309324.P3117719213953618928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309718.P15639493879307278302

`A013916(eq[2, Δ[A013916(n+1)]]+1)`
-/

namespace A309718.P15639493879307278302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A309718.P15639493879307278302

noncomputable section

/-- A309718: Numbers k such that the sums of the first k and k+2 primes are also prime.

Offset 1, canonical program `A309718.P15639493879307278302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. -/
def A309718 (n : ℕ) : ℤ :=
  A309718.P15639493879307278302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. -/
def A309718.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A317528.P14078223031449800801

`A100008(n+1)-A327730(n+1)`
-/

namespace A317528.P14078223031449800801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100008 (n + 1) - A327730 (n + 1)

end

end A317528.P14078223031449800801

noncomputable section

/-- A317528: Expansion of Sum_{k>=1} mu(k)^2*x^k/(1 + x^k), where mu() is the Moebius function (A008683).

Offset 1, canonical program `A317528.P14078223031449800801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317528 (n : ℕ) : ℤ :=
  A317528.P14078223031449800801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317528.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A318459.P16245640249373000386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318459 (n : ℕ) : ℤ :=
  (A318459.P16245640249373000386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318459.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A319035.P4592568975545693552

`A000096(eq[A063440(n+2), A063440(n+1)])+1`
-/

namespace A319035.P4592568975545693552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A319035.P4592568975545693552

noncomputable section

/-- A319035: Triangular numbers T(k) that have the same number of divisors as their successors T(k+1).

Offset 1, canonical program `A319035.P4592568975545693552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1669 terms. -/
def A319035 (n : ℕ) : ℤ :=
  A319035.P4592568975545693552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1669 terms. -/
def A319035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319293.P13782557292742531831

`eq[1, dr(A050985(n+1)²)]+1`
-/

namespace A319293.P13782557292742531831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A050985 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319293.P13782557292742531831

noncomputable section

/-- A319293: Numbers of the form 27^i*(9*j +- 1).

Offset 1, canonical program `A319293.P13782557292742531831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319293 (n : ℕ) : ℤ :=
  (A319293.P13782557292742531831.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319293.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A320577.P6951360528016723386

`∑[∑[n+1]]-A330197(n+3)`
-/

namespace A320577.P6951360528016723386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A330197 (n + 3)

end

end A320577.P6951360528016723386

noncomputable section

/-- A320577: Number of isosceles triangles whose vertices are the vertices of a regular n-gon.

Offset 3, canonical program `A320577.P6951360528016723386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320577 (n : ℕ) : ℤ :=
  A320577.P6951360528016723386.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320577.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A321547.P15690247661382810148

`2*A321812(n+1)-A013956(n+1)`
-/

namespace A321547.P15690247661382810148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321812 (n + 1) - A013956 (n + 1)

end

end A321547.P15690247661382810148

noncomputable section

/-- A321547: a(n) = Sum_{d|n} (-1)^(d-1)*d^8.

Offset 1, canonical program `A321547.P15690247661382810148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321547 (n : ℕ) : ℤ :=
  A321547.P15690247661382810148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321547.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A322577.P2466038700097355167

`∑{d}[n+1, #*A063659((n+1)/#)]`
-/

namespace A322577.P2466038700097355167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P2466038700097355167

noncomputable section

/-- A322577: a(n) = Sum_{d|n} psi(n/d) * phi(d).

Offset 1, canonical program `A322577.P2466038700097355167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322577 (n : ℕ) : ℤ :=
  A322577.P2466038700097355167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322577.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A323171.P17163858999531441399

`A123528(∏{p}[n+2, #])`
-/

namespace A323171.P17163858999531441399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A323171.P17163858999531441399

noncomputable section

/-- A323171: Numerator of the average of distinct prime factors of n (A008472(n)/A001221(n)).

Offset 2, canonical program `A323171.P17163858999531441399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323171 (n : ℕ) : ℤ :=
  A323171.P17163858999531441399.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323171.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A324045.P1593717203067298836

`A033879(n+1)+A324047(n+1)-A053158(n+1)`
-/

namespace A324045.P1593717203067298836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (A324047 (n + 1) - A053158 (n + 1))

end

end A324045.P1593717203067298836

noncomputable section

/-- A324045: a(n) = A000010(n) - A106316(n).

Offset 1, canonical program `A324045.P1593717203067298836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324045 (n : ℕ) : ℤ :=
  A324045.P1593717203067298836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324045.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A326143.P9488372104050503058

`A066503(n+1)-A033879(n+1)`
-/

namespace A326143.P9488372104050503058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (n + 1) - A033879 (n + 1)

end

end A326143.P9488372104050503058

noncomputable section

/-- A326143: a(n) = A326142(n) - n, where A326142 gives the sum of all other divisors of n except its largest squarefree divisor.

Offset 1, canonical program `A326143.P9488372104050503058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A066503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326143 (n : ℕ) : ℤ :=
  A326143.P9488372104050503058.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A066503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326144.P5316826382340096579

`gcd(A033879(n+1), A066503(n+1))`
-/

namespace A326144.P5316826382340096579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033879 (n + 1)) (A066503 (n + 1))

end

end A326144.P5316826382340096579

noncomputable section

/-- A326144: a(n) = gcd(A066503(n), A326143(n)) = gcd(n - A007947(n), sigma(n) - A007947(n) - n).

Offset 1, canonical program `A326144.P5316826382340096579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326144 (n : ℕ) : ℤ :=
  (A326144.P5316826382340096579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326144.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A326187.P12520565609780871122`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326187 (n : ℕ) : ℤ :=
  A326187.P12520565609780871122.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326187.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A326188.P6516130972128088373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326188 (n : ℕ) : ℤ :=
  A326188.P6516130972128088373.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328729.P14526023504473922965

`∑{d}[n+1, A063659(#)*A101035((n+1)/#)]`
-/

namespace A328729.P14526023504473922965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P14526023504473922965

noncomputable section

/-- A328729: Dirichlet g.f.: zeta(s) / (zeta(s-1) * zeta(2*s)).

Offset 1, canonical program `A328729.P14526023504473922965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328729 (n : ℕ) : ℤ :=
  A328729.P14526023504473922965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328729.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A330809.P313460960627115106

`A253145(eq[8, A063440(n+1)])`
-/

namespace A330809.P313460960627115106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A330809.P313460960627115106

noncomputable section

/-- A330809: Triangular numbers having exactly 8 divisors.

Offset 1, canonical program `A330809.P313460960627115106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A330809 (n : ℕ) : ℤ :=
  A330809.P313460960627115106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A330809.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A332932.P15221791638513627293

`A086671(n+1)+A332935(n+1)-A332933(n+1)`
-/

namespace A332932.P15221791638513627293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086671 (n + 1) + (A332935 (n + 1) - A332933 (n + 1))

end

end A332932.P15221791638513627293

noncomputable section

/-- A332932: Sum of ceiling(sqrt(d)) where d runs through the divisors of n.

Offset 1, canonical program `A332932.P15221791638513627293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332932 (n : ℕ) : ℤ :=
  A332932.P15221791638513627293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332932.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A333229.P6279008054827789908`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333229 (n : ℕ) : ℤ :=
  A333229.P6279008054827789908.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333848.P15764864225424586531

`A340714(Δ[n²])`
-/

namespace A333848.P15764864225424586531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340714 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A333848.P15764864225424586531

noncomputable section

/-- A333848: a(n) gives the sum of the odd numbers of the smallest nonnegative reduced residue system modulo 2*n + 1, for n >= 0.

Offset 0, canonical program `A333848.P15764864225424586531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A333848 (n : ℕ) : ℤ :=
  A333848.P15764864225424586531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A333848.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A336551.P8666843674191054020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336551 (n : ℕ) : ℤ :=
  A336551.P8666843674191054020.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336551.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A337291.P8125429750552470595

`4*A006632(n+1)`
-/

namespace A337291.P8125429750552470595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006632 (n + 1)

end

end A337291.P8125429750552470595

noncomputable section

/-- A337291: a(n) = 3*binomial(4*n,n)/(4*n-1).

Offset 1, canonical program `A337291.P8125429750552470595`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337291 (n : ℕ) : ℤ :=
  A337291.P8125429750552470595.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338232.P7779832538727840322

`A342404(n)+A338230(n)`
-/

namespace A338232.P7779832538727840322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342404 n + A338230 n

end

end A338232.P7779832538727840322

noncomputable section

/-- A338232: Number of ternary strings of length n that contain at least two 0's and at most two 1's.

Offset 0, canonical program `A338232.P7779832538727840322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A338232 (n : ℕ) : ℤ :=
  A338232.P7779832538727840322.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A338232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338236.P6150493970794570763

`A000196(n)-A293234(n+1)`
-/

namespace A338236.P6150493970794570763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A293234 (n + 1)

end

end A338236.P6150493970794570763

noncomputable section

/-- A338236: Number of numbers less than or equal to sqrt(n) whose square does not divide n.

Offset 1, canonical program `A338236.P6150493970794570763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338236 (n : ℕ) : ℤ :=
  A338236.P6150493970794570763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338236.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A343005.P11979087789931412951

`A092405(n+1)-3`
-/

namespace A343005.P11979087789931412951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1) - 3

end

end A343005.P11979087789931412951

noncomputable section

/-- A343005: a(n) is the number of dihedral symmetries D_{2m} (m >= 3) that configurations of n non-overlapping equal circles can possess.

Offset 2, canonical program `A343005.P11979087789931412951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343005 (n : ℕ) : ℤ :=
  A343005.P11979087789931412951.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343005.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A343976.P7720806449729072559

`p?[A093641(n+2)+A093641(n+1)]`
-/

namespace A343976.P7720806449729072559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 2) + A093641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343976.P7720806449729072559

noncomputable section

/-- A343976: Primes that are the sum of two consecutive terms of A093641.

Offset 1, canonical program `A343976.P7720806449729072559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 694 terms. -/
def A343976 (n : ℕ) : ℤ :=
  A343976.P7720806449729072559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 694 terms. -/
def A343976.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A344509.P9615805851537553168

`∑{d}[n+1, #*A053818((n+1)/#)]`
-/

namespace A344509.P9615805851537553168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A053818 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344509.P9615805851537553168

noncomputable section

/-- A344509: a(n) = (1/n) * Sum_{k=1..n} k * lcm(k,n).

Offset 1, canonical program `A344509.P9615805851537553168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344509 (n : ℕ) : ℤ :=
  A344509.P9615805851537553168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344509.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A344818.P377779174704466084

`∑[(-1)^n*A101561(n)]`
-/

namespace A344818.P377779174704466084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A101561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344818.P377779174704466084

noncomputable section

/-- A344818: a(n) = Sum_{k=1..n} floor(n/k) * (-3)^(k-1).

Offset 1, canonical program `A344818.P377779174704466084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A344818 (n : ℕ) : ℤ :=
  A344818.P377779174704466084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A344818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345891.P9640638475497863823

`A000217(n+1)+A000217(n+1)-A345892(n+1)`
-/

namespace A345891.P9640638475497863823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 (n + 1) - A345892 (n + 1))

end

end A345891.P9640638475497863823

noncomputable section

/-- A345891: a(n) = n + (n - 1) * phi(n).

Offset 1, canonical program `A345891.P9640638475497863823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345891 (n : ℕ) : ℤ :=
  A345891.P9640638475497863823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345891.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A347191.P5882718519659267063

`2*(A066728(n+1)+1)`
-/

namespace A347191.P5882718519659267063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066728 (n + 1) + 1)

end

end A347191.P5882718519659267063

noncomputable section

/-- A347191: Number of divisors of n^2-1.

Offset 2, canonical program `A347191.P5882718519659267063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347191 (n : ℕ) : ℤ :=
  A347191.P5882718519659267063.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347202.P15825861999241065422

`eq[0, A353670(n+1)]+1`
-/

namespace A347202.P15825861999241065422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347202.P15825861999241065422

noncomputable section

/-- A347202: Numbers whose number of odd divisors is not equal to 2.

Offset 1, canonical program `A347202.P15825861999241065422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347202 (n : ℕ) : ℤ :=
  (A347202.P15825861999241065422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347202.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A288469.P6689387831127835628

`Δ[A101203(n)+a(A000720(n))]` with `a(0)=1`
-/

namespace A288469.P6689387831127835628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A101203 n + f1 (A000720 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288469.P6689387831127835628

noncomputable section

/-- A288469: a(n) = n if n is a nonprime, otherwise take the prime index of n and repeat until you get a nonprime which is then a(n).

Offset 1, canonical program `A288469.P6689387831127835628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288469 (n : ℕ) : ℤ :=
  A288469.P6689387831127835628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291180.P12347732886849579905

`record[A097706(4*n+5)*A110560(4*(n+1))]`
-/

namespace A291180.P12347732886849579905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (4 * n + 5) * A110560 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291180.P12347732886849579905

noncomputable section

/-- A291180: Numbers of the form 4*k + 1 with k >= 1 that are not divisible by any prime factor of the form 4*m + 1, except themselves.

Offset 1, canonical program `A291180.P12347732886849579905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A291180 (n : ℕ) : ℤ :=
  A291180.P12347732886849579905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A291180.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A291681.P5930894285660804942`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067046, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291681 (n : ℕ) : ℤ :=
  A291681.P5930894285660804942.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067046, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292302.P15615501185427932939

`Δ[A057660(A028310(n))%A064987(n+1)]`
-/

namespace A292302.P15615501185427932939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057660 (A028310 n).toNat) (A064987 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292302.P15615501185427932939

noncomputable section

/-- A292302: Expansion of (1 - x)*Sum_{k>=1} k*phi(k)*x^k/(1 - x^k), where phi() is the Euler totient function (A000010).

Offset 1, canonical program `A292302.P15615501185427932939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A292302 (n : ℕ) : ℤ :=
  A292302.P15615501185427932939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A292302.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A293575.P9230853573519528425

`A056595(n+1)-1`
-/

namespace A293575.P9230853573519528425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1) - 1

end

end A293575.P9230853573519528425

noncomputable section

/-- A293575: Difference between the number of proper divisors of n and the number of squares dividing n.

Offset 1, canonical program `A293575.P9230853573519528425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056595, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293575 (n : ℕ) : ℤ :=
  A293575.P9230853573519528425.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056595, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294629.P4287090505026357869

`4*A294016(n+1)`
-/

namespace A294629.P4287090505026357869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A294016 (n + 1)

end

end A294629.P4287090505026357869

noncomputable section

/-- A294629: Partial sums of A294628.

Offset 1, canonical program `A294629.P4287090505026357869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294016, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294629 (n : ℕ) : ℤ :=
  A294629.P4287090505026357869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294016, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294629.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294896.P17606879483399345842

`gcd(Δ[A160664(n)], A294898(n+1))`
-/

namespace A294896.P17606879483399345842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A294898 (n + 1))

end

end A294896.P17606879483399345842

noncomputable section

/-- A294896: a(n) = gcd(A000203(n), A005187(n)).

Offset 1, canonical program `A294896.P17606879483399345842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294896 (n : ℕ) : ℤ :=
  (A294896.P17606879483399345842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294896.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A295662.P12288310833318385704

`A162642(n+1)-A056169(n+1)`
-/

namespace A295662.P12288310833318385704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1) - A056169 (n + 1)

end

end A295662.P12288310833318385704

noncomputable section

/-- A295662: Number of odd exponents larger than one in the canonical prime factorization of n.

Offset 1, canonical program `A295662.P12288310833318385704`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295662 (n : ℕ) : ℤ :=
  A295662.P12288310833318385704.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A298826.P1322318025094889225

`∑{d}[n+1, A076479(#)*A140670((n+1)/#)]`
-/

namespace A298826.P1322318025094889225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076479 d * A140670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298826.P1322318025094889225

noncomputable section

/-- A298826: a(n) = A298825(n)/n.

Offset 1, canonical program `A298826.P1322318025094889225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A298826 (n : ℕ) : ℤ :=
  A298826.P1322318025094889225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A298826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300717.P10043437580112473807

`∑{d}[n+1, #*A341635((n+1)/#)]`
-/

namespace A300717.P10043437580112473807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A341635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300717.P10043437580112473807

noncomputable section

/-- A300717: Möbius transform of A003557, n divided by its largest squarefree divisor.

Offset 1, canonical program `A300717.P10043437580112473807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300717 (n : ℕ) : ℤ :=
  A300717.P10043437580112473807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302593.P4667659382129643061

`lt[A001221(A156061(n+1)), 2]+1`
-/

namespace A302593.P4667659382129643061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A156061 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A302593.P4667659382129643061

noncomputable section

/-- A302593: Numbers whose prime indices are powers of a common prime number.

Offset 1, canonical program `A302593.P4667659382129643061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1012 terms. -/
def A302593 (n : ℕ) : ℤ :=
  (A302593.P4667659382129643061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1012 terms. -/
def A302593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303384.P10676162683554511722

`A064987(n+1)-A001157(n+1)`
-/

namespace A303384.P10676162683554511722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1) - A001157 (n + 1)

end

end A303384.P10676162683554511722

noncomputable section

/-- A303384: Total area of all rectangles with dimensions s and t where s | t, n = s + t and s <= t.

Offset 1, canonical program `A303384.P10676162683554511722`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A064987, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303384 (n : ℕ) : ℤ :=
  A303384.P10676162683554511722.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A064987, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303384.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304117.P17898694006949313711

`A005361(n+1)*A156061(n+1)`
-/

namespace A304117.P17898694006949313711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A156061 (n + 1)

end

end A304117.P17898694006949313711

noncomputable section

/-- A304117: If n = Product (p_j^k_j) then a(n) = Product (pi(p_j)*k_j), where pi() = A000720.

Offset 1, canonical program `A304117.P17898694006949313711`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A156061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304117 (n : ℕ) : ℤ :=
  A304117.P17898694006949313711.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A156061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304407.P14639406114947155212

`A005361(n+1)*A173557(n+1)`
-/

namespace A304407.P14639406114947155212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A173557 (n + 1)

end

end A304407.P14639406114947155212

noncomputable section

/-- A304407: If n = Product (p_j^k_j) then a(n) = Product ((p_j - 1)*k_j).

Offset 1, canonical program `A304407.P14639406114947155212`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304407 (n : ℕ) : ℤ :=
  A304407.P14639406114947155212.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304407.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A306298.P5813132135022434998

`eq[2, A082863(n+2)]+2`
-/

namespace A306298.P5813132135022434998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A306298.P5813132135022434998

noncomputable section

/-- A306298: Numbers k such that k^2-1 is divisible by exactly two distinct primes.

Offset 1, canonical program `A306298.P5813132135022434998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A306298 (n : ℕ) : ℤ :=
  (A306298.P5813132135022434998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A306298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306821.P10550649984046759747

`A141459(n)*A141044(n)`
-/

namespace A306821.P10550649984046759747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n * A141044 n

end

end A306821.P10550649984046759747

noncomputable section

/-- A306821: Inverse binomial transform of the "original" Bernoulli numbers [A164555(n)/A027642(n)] with 1 and 1/2 swapped. Denominators.

Offset 0, canonical program `A306821.P10550649984046759747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141044, A141459, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306821 (n : ℕ) : ℤ :=
  A306821.P10550649984046759747.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141044, A141459, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309307.P44992058381034953

`A034444(n+1)-1`
-/

namespace A309307.P44992058381034953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - 1

end

end A309307.P44992058381034953

noncomputable section

/-- A309307: Number of unitary divisors of n (excluding 1).

Offset 1, canonical program `A309307.P44992058381034953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309307 (n : ℕ) : ℤ :=
  A309307.P44992058381034953.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309307.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A316523.P9130007244371439540

`A162642(n+1)-A162641(n+1)`
-/

namespace A316523.P9130007244371439540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1) - A162641 (n + 1)

end

end A316523.P9130007244371439540

noncomputable section

/-- A316523: Number of odd multiplicities minus number of even multiplicities in the canonical prime factorization of n.

Offset 1, canonical program `A316523.P9130007244371439540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162641, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316523 (n : ℕ) : ℤ :=
  A316523.P9130007244371439540.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162641, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318304.P11675093229014342811

`2*A173557(n+1)-A007947(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318304.P11675093229014342811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173557 (n + 1) - A007947 (n + 1)

end

end A318304.P11675093229014342811

noncomputable section

/-- A318304: a(n) = A083254(n)/A003557(n) = (2*A173557(n) - A007947(n)).

Offset 1, canonical program `A318304.P11675093229014342811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318304 (n : ℕ) : ℤ :=
  A318304.P11675093229014342811.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318304.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318305.P17845263951644339002

`A007947(n+1)-A173557(n+1)`
-/

namespace A318305.P17845263951644339002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - A173557 (n + 1)

end

end A318305.P17845263951644339002

noncomputable section

/-- A318305: a(n) = Product_{primes p dividing n} p - Product_{primes p dividing n} (p-1).

Offset 1, canonical program `A318305.P17845263951644339002`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318305 (n : ℕ) : ℤ :=
  A318305.P17845263951644339002.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318305.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A318675.P6460778612345656945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A318674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318675 (n : ℕ) : ℤ :=
  A318675.P6460778612345656945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A318674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318675.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A322327.P7023019064319529347

`A005361(n+1)*A034444(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322327.P7023019064319529347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A034444 (n + 1)

end

end A322327.P7023019064319529347

noncomputable section

/-- A322327: a(n) = A005361(n) * A034444(n).

Offset 1, canonical program `A322327.P7023019064319529347`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322327 (n : ℕ) : ℤ :=
  A322327.P7023019064319529347.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322327.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A322673.P9006485126655051311

`A206032(n+1)/gcd(A007955(n+1), A206032(n+1))`
-/

namespace A322673.P9006485126655051311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206032 (n + 1) : ℚ) / (Int.gcd (A007955 (n + 1)) (A206032 (n + 1)) : ℚ)

end

end A322673.P9006485126655051311

noncomputable section

/-- A322673: a(n) = numerator of Product_{d|n} (sigma(d)/d) where sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A322673.P9006485126655051311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A322673 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322673.P9006485126655051311.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A322673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322965.P7905832375060057443

`A008473(n+1)/gcd(A008473(n+1), A062953(n+1))`
-/

namespace A322965.P7905832375060057443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008473 (n + 1) : ℚ) / (Int.gcd (A008473 (n + 1)) (A062953 (n + 1)) : ℚ)

end

end A322965.P7905832375060057443

noncomputable section

/-- A322965: Numerator of Sum_{d | n} 1/rad(d).

Offset 1, canonical program `A322965.P7905832375060057443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322965 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322965.P7905832375060057443.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322965.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A324122.P6437590254037711062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324122 (n : ℕ) : ℤ :=
  A324122.P6437590254037711062.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324122.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A324904.P9223201305748335672

`A324902(n+1)+A324903(n+1)`
-/

namespace A324904.P9223201305748335672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324902 (n + 1) + A324903 (n + 1)

end

end A324904.P9223201305748335672

noncomputable section

/-- A324904: The 2-adic valuation of A318466(n), where A318466(n) = 2*n OR sigma(n).

Offset 1, canonical program `A324904.P9223201305748335672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324902, A324903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324904 (n : ℕ) : ℤ :=
  A324904.P9223201305748335672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324902, A324903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324904.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A324980.P16337764306550110740

`A007955(n+1)*A206032(n+1)`
-/

namespace A324980.P16337764306550110740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A206032 (n + 1)

end

end A324980.P16337764306550110740

noncomputable section

/-- A324980: a(n) = Product_{d|n} (d*sigma(d)) where sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A324980.P16337764306550110740`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A206032, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324980 (n : ℕ) : ℤ :=
  A324980.P16337764306550110740.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A206032, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324981.P17068546263035737128

`A007955(n+1)*A266265(n+1)`
-/

namespace A324981.P17068546263035737128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A266265 (n + 1)

end

end A324981.P17068546263035737128

noncomputable section

/-- A324981: a(n) = Product_{d|n} (d*pod(d)) where pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A324981.P17068546263035737128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324981 (n : ℕ) : ℤ :=
  A324981.P17068546263035737128.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325314.P6183718190528542032

`A033879(n+1)+A325313(n+1)`
-/

namespace A325314.P6183718190528542032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A325313 (n + 1)

end

end A325314.P6183718190528542032

noncomputable section

/-- A325314: a(n) = n - A162296(n), where A162296(n) is the sum of divisors of n that have a square factor.

Offset 1, canonical program `A325314.P6183718190528542032`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A325313, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325314 (n : ℕ) : ℤ :=
  A325314.P6183718190528542032.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A325313, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325385.P13943608617975307286

`gcd(A033879(n+1), A325313(n+1))`
-/

namespace A325385.P13943608617975307286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033879 (n + 1)) (A325313 (n + 1))

end

end A325385.P13943608617975307286

noncomputable section

/-- A325385: a(n) = gcd(n-A048250(n), n-A162296(n)).

Offset 1, canonical program `A325385.P13943608617975307286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325385 (n : ℕ) : ℤ :=
  (A325385.P13943608617975307286.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325385.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A326577.P15176210836312244432

`gcd(A081346(2*n), A141459(2*n))`
-/

namespace A326577.P15176210836312244432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081346 (2 * n)) (A141459 (2 * n))

end

end A326577.P15176210836312244432

noncomputable section

/-- A326577: a(n) = (2*n - 1) / A326478(2*n - 1).

Offset 1, canonical program `A326577.P15176210836312244432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A326577 (n : ℕ) : ℤ :=
  (A326577.P15176210836312244432.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A326577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327952.P3929770748935459996

`Δ[A153818(n+1)-A006218(n+1)]`
-/

namespace A327952.P3929770748935459996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153818 (n + 1) - A006218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327952.P3929770748935459996

noncomputable section

/-- A327952: a(n) is the number of positive integers k such that some multiple of sqrt(k) falls strictly between n and n+1.

Offset 1, canonical program `A327952.P3929770748935459996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327952 (n : ℕ) : ℤ :=
  A327952.P3929770748935459996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328484.P15261960755088240361

`A373438(n+1)*A035191(n+1)`
-/

namespace A328484.P15261960755088240361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373438 (n + 1) * A035191 (n + 1)

end

end A328484.P15261960755088240361

noncomputable section

/-- A328484: Dirichlet g.f.: zeta(s)^2 / (1 - 3^(-s)).

Offset 1, canonical program `A328484.P15261960755088240361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035191, A373438, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328484 (n : ℕ) : ℤ :=
  A328484.P15261960755088240361.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035191, A373438, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328484.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A332086.P291849661347849158

`A084294(n+1)-1`
-/

namespace A332086.P291849661347849158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084294 (n + 1) - 1

end

end A332086.P291849661347849158

noncomputable section

/-- A332086: a(n) = pi(prime(n) + n) - n, where pi is the prime counting function.

Offset 1, canonical program `A332086.P291849661347849158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332086 (n : ℕ) : ℤ :=
  A332086.P291849661347849158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334136.P14433116544812876041

`A064987(n+1)-A000203(n+1)`
-/

namespace A334136.P14433116544812876041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1) - A000203 (n + 1)

end

end A334136.P14433116544812876041

noncomputable section

/-- A334136: a(n) = (n-1)*sigma(n) where sigma is the sum of divisors A000203.

Offset 1, canonical program `A334136.P14433116544812876041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334136 (n : ℕ) : ℤ :=
  A334136.P14433116544812876041.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334136.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A335341.P15141081390874697399

`A047994(n+1)/A173557(n+1)`
-/

namespace A335341.P15141081390874697399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A335341.P15141081390874697399

noncomputable section

/-- A335341: Sum of divisors of A003557(n).

Offset 1, canonical program `A335341.P15141081390874697399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335341 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335341.P15141081390874697399.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335660.P7448728913855919877

`1-A334714(n+1)+n`
-/

namespace A335660.P7448728913855919877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A334714 (n + 1) + (n : ℤ)

end

end A335660.P7448728913855919877

noncomputable section

/-- A335660: a(n) = n - A334714(n).

Offset 1, canonical program `A335660.P7448728913855919877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335660 (n : ℕ) : ℤ :=
  A335660.P7448728913855919877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335660.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A336649.P11533964041810692636

`A000593((n+1)/∏{p}[n+1, #])`
-/

namespace A336649.P11533964041810692636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A336649.P11533964041810692636

noncomputable section

/-- A336649: Sum of divisors of A336651(n) (odd part of n divided by its largest squarefree divisor).

Offset 1, canonical program `A336649.P11533964041810692636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336649 (n : ℕ) : ℤ :=
  A336649.P11533964041810692636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336649.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A340196.P16561253931876976929

`1-A340195(n+1)+n`
-/

namespace A340196.P16561253931876976929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A340195 (n + 1) + (n : ℤ)

end

end A340196.P16561253931876976929

noncomputable section

/-- A340196: a(n) = n - A340195(n).

Offset 1, canonical program `A340196.P16561253931876976929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340196 (n : ℕ) : ℤ :=
  A340196.P16561253931876976929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340227.P47039189013440188

`(A074816(n+1)-1)/2`
-/

namespace A340227.P47039189013440188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074816 (n + 1) - 1 : ℚ) / 2

end

end A340227.P47039189013440188

noncomputable section

/-- A340227: Number of pairs of divisors of n, (d1,d2), such that d1 < d2 and d1*d2 is squarefree.

Offset 1, canonical program `A340227.P47039189013440188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340227.P47039189013440188.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340227.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A340677.P3063293353114173549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A099636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340677 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340677.P3063293353114173549.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A099636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A344137.P296871737562835172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A295295, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344137 (n : ℕ) : ℤ :=
  A344137.P296871737562835172.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A295295, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344226.P17192634337625697811

`A344223(n+1)/(n+1)`
-/

namespace A344226.P17192634337625697811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344223 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A344226.P17192634337625697811

noncomputable section

/-- A344226: a(n) = Sum_{d|n} n^omega(d) / d.

Offset 1, canonical program `A344226.P17192634337625697811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344226 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344226.P17192634337625697811.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345052.P3135942060331182586

`A003557(n+1)*A048250(n+1)*A173557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345052.P3135942060331182586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A048250 (n + 1) * A173557 (n + 1)

end

end A345052.P3135942060331182586

noncomputable section

/-- A345052: a(n) = A003557(n) * A048250(n) * A173557(n).

Offset 1, canonical program `A345052.P3135942060331182586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A048250, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345052 (n : ℕ) : ℤ :=
  A345052.P3135942060331182586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A048250, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345052.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A348097.P16199017349381684825

`eq[A056169(n+1), A056170(n+1)]+1`
-/

namespace A348097.P16199017349381684825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348097.P16199017349381684825

noncomputable section

/-- A348097: Numbers having equally many unitary and nonunitary prime divisors.

Offset 1, canonical program `A348097.P16199017349381684825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A348097 (n : ℕ) : ℤ :=
  (A348097.P16199017349381684825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A348097.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A293227.P10221016559153575789

`A034444(n+1)-A008966(n+1)`
-/

namespace A293227.P10221016559153575789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A008966 (n + 1)

end

end A293227.P10221016559153575789

noncomputable section

/-- A293227: a(n) is the number of proper divisors of n that are squarefree.

Offset 1, canonical program `A293227.P10221016559153575789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293227 (n : ℕ) : ℤ :=
  A293227.P10221016559153575789.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293227.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A294886.P1530011828999024518

`A187793(n+1)-(n+1)*A294934(n+1)`
-/

namespace A294886.P1530011828999024518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1) - (n + 1 : ℤ) * A294934 (n + 1)

end

end A294886.P1530011828999024518

noncomputable section

/-- A294886: Sum of deficient proper divisors of n.

Offset 1, canonical program `A294886.P1530011828999024518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294886 (n : ℕ) : ℤ :=
  A294886.P1530011828999024518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294886.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A325317.P3726811727158540044

`A325316(n+1)-A325318(n+1)`
-/

namespace A325317.P3726811727158540044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325316 (n + 1) - A325318 (n + 1)

end

end A325317.P3726811727158540044

noncomputable section

/-- A325317: a(n) = A048250(n) XOR A162296(n), where XOR is the bitwise-XOR, A003987.

Offset 1, canonical program `A325317.P3726811727158540044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325316, A325318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325317 (n : ℕ) : ℤ :=
  A325317.P3726811727158540044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325316, A325318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325317.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A336355.P3645618290858971034

`char[A336357(n+1)-1]`
-/

namespace A336355.P3645618290858971034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336357 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336355.P3645618290858971034

noncomputable section

/-- A336355: Characteristic function of A336357, numbers k for which A001221(A000203(k)) < A001221(k).

Offset 1, canonical program `A336355.P3645618290858971034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336355 (n : ℕ) : ℤ :=
  (A336355.P3645618290858971034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336355.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A347149.P4485454136861303499

`A008966(n+1)*A048691(n+1)`
-/

namespace A347149.P4485454136861303499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A048691 (n + 1)

end

end A347149.P4485454136861303499

noncomputable section

/-- A347149: Dirichlet g.f.: Product_{primes p} (1 + 3/p^s).

Offset 1, canonical program `A347149.P4485454136861303499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347149 (n : ℕ) : ℤ :=
  A347149.P4485454136861303499.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347149.provenance : SequenceMachineLib.Provenance := .conditional

