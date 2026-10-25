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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A228039.P4227557278893953699

`A010060(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228039.P4227557278893953699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n ^ 2)

end

end A228039.P4227557278893953699

noncomputable section

/-- A228039: Thue-Morse sequence along the squares: A010060(n^2).

Offset 0, canonical program `A228039.P4227557278893953699`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(n²)` (program `A228039.P4227557278893953699`, by `A228039.P4227557278893953699.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A228039 (n : ℕ) : ℤ :=
  A228039.P4227557278893953699.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(n²)` (program `A228039.P4227557278893953699`, by `A228039.P4227557278893953699.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A228039.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A293162.P16567619776842325743

`A010060(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293162.P16567619776842325743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * n)

end

end A293162.P16567619776842325743

noncomputable section

/-- A293162: Take every third term of the {0,1}-version of the Thue-Morse sequence: a(n) = A010060(3n).

Offset 0, canonical program `A293162.P16567619776842325743`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n)` (program `A293162.P16567619776842325743`, by `A293162.P16567619776842325743.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A293162 (n : ℕ) : ℤ :=
  A293162.P16567619776842325743.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n)` (program `A293162.P16567619776842325743`, by `A293162.P16567619776842325743.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A293162.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A293163.P4132471224215771802

`A010060(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293163.P4132471224215771802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * n + 1)

end

end A293163.P4132471224215771802

noncomputable section

/-- A293163: a(n) = A010060(3n+1).

Offset 0, canonical program `A293163.P4132471224215771802`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n+1)` (program `A293163.P4132471224215771802`, by `A293163.P4132471224215771802.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A293163 (n : ℕ) : ℤ :=
  A293163.P4132471224215771802.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n+1)` (program `A293163.P4132471224215771802`, by `A293163.P4132471224215771802.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A293163.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A293164.P10087759990100678830

`A010060(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293164.P10087759990100678830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * n + 2)

end

end A293164.P10087759990100678830

noncomputable section

/-- A293164: a(n) = A010060(3n+2).

Offset 0, canonical program `A293164.P10087759990100678830`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n+2)` (program `A293164.P10087759990100678830`, by `A293164.P10087759990100678830.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A293164 (n : ℕ) : ℤ :=
  A293164.P10087759990100678830.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(3*n+2)` (program `A293164.P10087759990100678830`, by `A293164.P10087759990100678830.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A293164.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A225081.P6319409890311663631

`2^(A005811(n+1)-1)`
-/

namespace A225081.P6319409890311663631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005811 (n + 1) - 1 : ℤ)

end

end A225081.P6319409890311663631

noncomputable section

/-- A225081: Gray code variant of A048896.

Offset 0, canonical program `A225081.P6319409890311663631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225081 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225081.P6319409890311663631.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227169.P12999617952910354842

`3*A135389(n)/((n+2)*(n+3))`
-/

namespace A227169.P12999617952910354842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A135389 n : ℚ) / ((n + 2) * (n + 3) : ℚ)

end

end A227169.P12999617952910354842

noncomputable section

/-- A227169: a(n) = 3*((2*n+2)!)^2 / (n!*(n+1)!*(n+2)!*(n+3)!).

Offset 0, canonical program `A227169.P12999617952910354842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227169 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227169.P12999617952910354842.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227991.P607222595589635829

`3^A227990(n+1)`
-/

namespace A227991.P607222595589635829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A227990 (n + 1) : ℤ)

end

end A227991.P607222595589635829

noncomputable section

/-- A227991: Highest power of 3 dividing prime(n)+1.

Offset 1, canonical program `A227991.P607222595589635829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227991.P607222595589635829.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228495.P3981489379467428454

`A000035(n)*A010060(n)`
-/

namespace A228495.P3981489379467428454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A010060 n

end

end A228495.P3981489379467428454

noncomputable section

/-- A228495: Characteristic function of the odd odious numbers (A092246).

Offset 0, canonical program `A228495.P3981489379467428454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228495 (n : ℕ) : ℤ :=
  A228495.P3981489379467428454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229067.P4043255727745089421

`A000040(n+1)+A145445(n+1)`
-/

namespace A229067.P4043255727745089421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A145445 (n + 1)

end

end A229067.P4043255727745089421

noncomputable section

/-- A229067: Sum of n-th prime and next perfect square.

Offset 1, canonical program `A229067.P4043255727745089421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229067 (n : ℕ) : ℤ :=
  A229067.P4043255727745089421.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229067.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229497.P2706809178029199216

`A000040(n+1)*A145445(n+1)`
-/

namespace A229497.P2706809178029199216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A145445 (n + 1)

end

end A229497.P2706809178029199216

noncomputable section

/-- A229497: Product between n-th prime and next perfect square.

Offset 1, canonical program `A229497.P2706809178029199216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229497 (n : ℕ) : ℤ :=
  A229497.P2706809178029199216.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230098.P1397761245252951239

`A080697(n+1)-A001248(n+1)`
-/

namespace A230098.P1397761245252951239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - A001248 (n + 1)

end

end A230098.P1397761245252951239

noncomputable section

/-- A230098: a(n) = n*prime(prime(n)) - prime(n)^2.

Offset 1, canonical program `A230098.P1397761245252951239`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230098 (n : ℕ) : ℤ :=
  A230098.P1397761245252951239.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230098.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230285.P13111388507637761220

`A080697(n+1)-A000040(n+1)`
-/

namespace A230285.P13111388507637761220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - A000040 (n + 1)

end

end A230285.P13111388507637761220

noncomputable section

/-- A230285: a(n) = n*prime(prime(n)) - prime(n).

Offset 1, canonical program `A230285.P13111388507637761220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230285 (n : ℕ) : ℤ :=
  A230285.P13111388507637761220.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230329.P11302817196728521229

`A217622(n+1)-A100484(n+1)`
-/

namespace A230329.P11302817196728521229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217622 (n + 1) - A100484 (n + 1)

end

end A230329.P11302817196728521229

noncomputable section

/-- A230329: Prime(prime(2*n)) - 2*prime(n).

Offset 1, canonical program `A230329.P11302817196728521229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230329 (n : ℕ) : ℤ :=
  A230329.P11302817196728521229.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230481.P2153048938439826483

`A217622(n+1)-A230460(n+1)`
-/

namespace A230481.P2153048938439826483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217622 (n + 1) - A230460 (n + 1)

end

end A230481.P2153048938439826483

noncomputable section

/-- A230481: a(n) = prime(prime(2*n)) - prime(2*prime(n)).

Offset 1, canonical program `A230481.P2153048938439826483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230481 (n : ℕ) : ℤ :=
  A230481.P2153048938439826483.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230482.P1924195246442400697

`(A217622(n+1)-A230460(n+1))/2`
-/

namespace A230482.P1924195246442400697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217622 (n + 1) - A230460 (n + 1) : ℚ) / 2

end

end A230482.P1924195246442400697

noncomputable section

/-- A230482: a(n) = (prime(prime(2*n)) - prime(2*prime(n)))/2.

Offset 1, canonical program `A230482.P1924195246442400697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A230482.P1924195246442400697.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230714.P17564723223337425468

`n!*A205958(n)`
-/

namespace A230714.P17564723223337425468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A205958 n

end

end A230714.P17564723223337425468

noncomputable section

/-- A230714: a(n) = lcm(1,2,...,n)*a(floor(n/2))^2 for n > 0, a(0) = 1.

Offset 0, canonical program `A230714.P17564723223337425468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230714 (n : ℕ) : ℤ :=
  A230714.P17564723223337425468.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232243.P16373768799838248871

`A159918(n)-A000120(n)`
-/

namespace A232243.P16373768799838248871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n - A000120 n

end

end A232243.P16373768799838248871

noncomputable section

/-- A232243: a(n) = wt(n^2) - wt(n), where wt(n) = A000120(n) is the binary weight function.

Offset 0, canonical program `A232243.P16373768799838248871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232243 (n : ℕ) : ℤ :=
  A232243.P16373768799838248871.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232245.P5094151863049896055

`A159918(n)+A000120(n)`
-/

namespace A232245.P5094151863049896055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n + A000120 n

end

end A232245.P5094151863049896055

noncomputable section

/-- A232245: Sum of the number of ones in binary representation of n and n^2.

Offset 0, canonical program `A232245.P5094151863049896055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232245 (n : ℕ) : ℤ :=
  A232245.P5094151863049896055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232637.P15784883994947189699

`A000069(A000069(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232637.P15784883994947189699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A000069 (n + 1)).toNat

end

end A232637.P15784883994947189699

noncomputable section

/-- A232637: Odious numbers of order 2: a(n) = A000069(A000069(n)).

Offset 1, canonical program `A232637.P15784883994947189699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232637 (n : ℕ) : ℤ :=
  A232637.P15784883994947189699.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234011.P632387481214595856

`A000069(n+1)+A000069(n+2)`
-/

namespace A234011.P632387481214595856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + A000069 (n + 2)

end

end A234011.P632387481214595856

noncomputable section

/-- A234011: The sums of 2 consecutive odious numbers (A000069).

Offset 1, canonical program `A234011.P632387481214595856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234011 (n : ℕ) : ℤ :=
  A234011.P632387481214595856.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234016.P16847082992809600842

`a(n-1)+1-A079559(n)` with `a(0)=0`
-/

namespace A234016.P16847082992809600842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A079559 n)

end

end A234016.P16847082992809600842

noncomputable section

/-- A234016: Partial sums of the characteristic function of A055938.

Offset 0, canonical program `A234016.P16847082992809600842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234016 (n : ℕ) : ℤ :=
  A234016.P16847082992809600842.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236840.P5330150570220508668

`n-A005811(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A236840.P5330150570220508668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005811 n

end

end A236840.P5330150570220508668

noncomputable section

/-- A236840: n minus number of runs in the binary expansion of n: a(n) = n - A005811(n).

Offset 0, canonical program `A236840.P5330150570220508668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236840 (n : ℕ) : ℤ :=
  A236840.P5330150570220508668.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237588.P7919289499905681947

`1+A033880(n+1)`
-/

namespace A237588.P7919289499905681947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A033880 (n + 1)

end

end A237588.P7919289499905681947

noncomputable section

/-- A237588: a(n) = sigma(n) - 2n + 1.

Offset 1, canonical program `A237588.P7919289499905681947`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237588 (n : ℕ) : ℤ :=
  A237588.P7919289499905681947.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240883.P5378419761383427474

`A046818(n)-1`
-/

namespace A240883.P5378419761383427474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046818 n - 1

end

end A240883.P5378419761383427474

noncomputable section

/-- A240883: Central terms of the triangle in A240857.

Offset 0, canonical program `A240883.P5378419761383427474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240883 (n : ℕ) : ℤ :=
  A240883.P5378419761383427474.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243499.P13821279400790425584

`(1+A023416(n))*a(A053645(n))` with `a(0)=1`
-/

namespace A243499.P13821279400790425584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A023416 n) * a (A053645 n).toNat

end

end A243499.P13821279400790425584

noncomputable section

/-- A243499: Product of parts of integer partitions as enumerated in the table A125106.

Offset 0, canonical program `A243499.P13821279400790425584`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243499 (n : ℕ) : ℤ :=
  A243499.P13821279400790425584.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243980.P11138556836325931032

`4*A024916(n+1)`
-/

namespace A243980.P11138556836325931032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024916 (n + 1)

end

end A243980.P11138556836325931032

noncomputable section

/-- A243980: Four times the sum of all divisors of all positive integers <= n.

Offset 1, canonical program `A243980.P11138556836325931032`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243980 (n : ℕ) : ℤ :=
  A243980.P11138556836325931032.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243980.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244465.P2424451479601373234

`(-1)^n*A214264(n)`
-/

namespace A244465.P2424451479601373234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A214264 n

end

end A244465.P2424451479601373234

noncomputable section

/-- A244465: Expansion of f(-x^3, -x^5) in powers of x where f() is Ramanujan's two-variable theta function.

Offset 0, canonical program `A244465.P2424451479601373234`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244465 (n : ℕ) : ℤ :=
  A244465.P2424451479601373234.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244525.P10571466511866612896

`(-1)^n*A214263(n)`
-/

namespace A244525.P10571466511866612896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A214263 n

end

end A244525.P10571466511866612896

noncomputable section

/-- A244525: Expansion of f(-x^1, -x^7) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A244525.P10571466511866612896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244525 (n : ℕ) : ℤ :=
  A244525.P10571466511866612896.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244583.P1388980908316134735

`A024916(A000040(n+1))`
-/

namespace A244583.P1388980908316134735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A000040 (n + 1)).toNat

end

end A244583.P1388980908316134735

noncomputable section

/-- A244583: a(n) = sum of all divisors of all positive integers <= prime(n).

Offset 1, canonical program `A244583.P1388980908316134735`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244583 (n : ℕ) : ℤ :=
  A244583.P1388980908316134735.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244824.P13510409849128085719

`A024916(A000079(n))`
-/

namespace A244824.P13510409849128085719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A000079 n).toNat

end

end A244824.P13510409849128085719

noncomputable section

/-- A244824: Sum of all divisors of all positive integers <= 2^n.

Offset 0, canonical program `A244824.P13510409849128085719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244824 (n : ℕ) : ℤ :=
  A244824.P13510409849128085719.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254379.P11537696663455735807

`A059841(n)*A010060(n)`
-/

namespace A254379.P11537696663455735807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A010060 n

end

end A254379.P11537696663455735807

noncomputable section

/-- A254379: Characteristic function of the even odious numbers (A128309).

Offset 0, canonical program `A254379.P11537696663455735807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254379 (n : ℕ) : ℤ :=
  A254379.P11537696663455735807.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254379.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254633.P6403475487283811037

`4^n*A172392(n)`
-/

namespace A254633.P6403475487283811037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A172392 n

end

end A254633.P6403475487283811037

noncomputable section

/-- A254633: a(n) = 16^n*[x^n]hypergeometric([3/2, -2*n], [3], -x).

Offset 0, canonical program `A254633.P6403475487283811037`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254633 (n : ℕ) : ℤ :=
  A254633.P6403475487283811037.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261226.P5886764903879751177

`1+a(A261225(n))` with `a(0)=0, a(1)=1`
-/

namespace A261226.P5886764903879751177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A261225 n).toNat

end

end A261226.P5886764903879751177

noncomputable section

/-- A261226: a(n) = number of steps to reach 0 when starting from k = n and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

Offset 0, canonical program `A261226.P5886764903879751177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261226 (n : ℕ) : ℤ :=
  (A261226.P5886764903879751177.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261233.P9209519308442447348

`A261232(n)-1`
-/

namespace A261233.P9209519308442447348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261232 n - 1

end

end A261233.P9209519308442447348

noncomputable section

/-- A261233: a(n) = number of steps to reach 0 when starting from k = (3^n)-1 and repeatedly applying the map that replaces k with k - (sum of digits in base-3 representation of k).

Offset 0, canonical program `A261233.P9209519308442447348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261233 (n : ℕ) : ℤ :=
  A261233.P9209519308442447348.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268733.P4062617571701723603

`A000203(A251720(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268733.P4062617571701723603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A251720 (n + 1)).toNat

end

end A268733.P4062617571701723603

noncomputable section

/-- A268733: a(n) = A000203(A251720(n)).

Offset 1, canonical program `A268733.P4062617571701723603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268733 (n : ℕ) : ℤ :=
  A268733.P4062617571701723603.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272211.P17519105524056241919

`A272173(n+1)-A000203(n+1)`
-/

namespace A272211.P17519105524056241919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272173 (n + 1) - A000203 (n + 1)

end

end A272211.P17519105524056241919

noncomputable section

/-- A272211: Product of n-th prime and the sum of the divisors of n.

Offset 1, canonical program `A272211.P17519105524056241919`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272211 (n : ℕ) : ℤ :=
  A272211.P17519105524056241919.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272211.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A278741.P14531857081843335100

`A061286(n+1)+1`
-/

namespace A278741.P14531857081843335100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061286 (n + 1) + 1

end

end A278741.P14531857081843335100

noncomputable section

/-- A278741: Odd numbers k such that tau(k-1) is a prime.

Offset 1, canonical program `A278741.P14531857081843335100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A278741 (n : ℕ) : ℤ :=
  A278741.P14531857081843335100.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A278741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285008.P18285019941351917306

`3^n*C(2*n, n)/A001316(n)`
-/

namespace A285008.P18285019941351917306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n * Nat.choose (2 * n) n : ℚ) / (A001316 n : ℚ)

end

end A285008.P18285019941351917306

noncomputable section

/-- A285008: Numerator of (3/4)^n * binomial(2*n,n).

Offset 0, canonical program `A285008.P18285019941351917306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285008.P18285019941351917306.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286624.P15071627796879516967

`1+A123134(n+1)`
-/

namespace A286624.P15071627796879516967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A123134 (n + 1)

end

end A286624.P15071627796879516967

noncomputable section

/-- A286624: a(n) = (prime(1+n)*prime(n)) + prime(n) + 1.

Offset 1, canonical program `A286624.P15071627796879516967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286624 (n : ℕ) : ℤ :=
  A286624.P15071627796879516967.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291750.P5209050474501545968

`1/2*(2+(A003557(n+1)+A048250(n+1))²-A003557(n+1)-3*A048250(n+1))`
-/

namespace A291750.P5209050474501545968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A003557 (n + 1) + A048250 (n + 1)) ^ 2 - A003557 (n + 1) - 3 * A048250 (n + 1) : ℚ)

end

end A291750.P5209050474501545968

noncomputable section

/-- A291750: Compound filter: a(n) = P(A003557(n), A048250(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A291750.P5209050474501545968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291750 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291750.P5209050474501545968.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291750.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A291900.P14772207315450596015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291900 (n : ℕ) : ℤ :=
  A291900.P14772207315450596015.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291900.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A294015.P9060703257274913068`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294015 (n : ℕ) : ℤ :=
  A294015.P9060703257274913068.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294015.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294329.P3098759154680546285

`8*A294328(n)`
-/

namespace A294329.P3098759154680546285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A294328 n

end

end A294329.P3098759154680546285

noncomputable section

/-- A294329: a(n) = 8*((9*n + 8)*10^n - 8)/81.

Offset 0, canonical program `A294329.P3098759154680546285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294329 (n : ℕ) : ℤ :=
  A294329.P3098759154680546285.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295890.P8084053589707736800

`1-A295889(n)`
-/

namespace A295890.P8084053589707736800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A295889 n

end

end A295890.P8084053589707736800

noncomputable section

/-- A295890: a(n) = 1 if binary weights of n and 3n have different parity, 0 otherwise; a(n) = A010060(n) XOR A010060(3n).

Offset 0, canonical program `A295890.P8084053589707736800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295890 (n : ℕ) : ℤ :=
  A295890.P8084053589707736800.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297208.P13177567222155169446

`a(n-1-A023416(n))+A000120(n)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A297208.P13177567222155169446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - 1 - A023416 n).toNat + A000120 n

end

end A297208.P13177567222155169446

noncomputable section

/-- A297208: a(0)=0; for n >= 1, a(n) = a(n-1-A023416(n)) + A000120(n).

Offset 0, canonical program `A297208.P13177567222155169446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297208 (n : ℕ) : ℤ :=
  A297208.P13177567222155169446.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297212.P6382382023899161157

`a(A023416(n))+a(A000120(n))` with `a(0)=1, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A297212.P6382382023899161157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (A023416 n).toNat + a (A000120 n).toNat

end

end A297212.P6382382023899161157

noncomputable section

/-- A297212: a(0)=1; a(1)=1; for n >= 2, a(n) = a(A023416(n)) + a(A000120(n)).

Offset 0, canonical program `A297212.P6382382023899161157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297212 (n : ℕ) : ℤ :=
  (A297212.P6382382023899161157.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297216.P16521217013821379212

`a(n-A000120(n))+a(n-1-A023416(n))` with `a(0)=1, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A297216.P16521217013821379212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a ((n : ℤ) - A000120 n).toNat + a ((n : ℤ) - 1 - A023416 n).toNat

end

end A297216.P16521217013821379212

noncomputable section

/-- A297216: a(0)=1; a(1)=1; for n >= 2, a(n) = a(n-A000120(n)) + a(n-1-A023416(n)).

Offset 0, canonical program `A297216.P16521217013821379212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297216 (n : ℕ) : ℤ :=
  (A297216.P16521217013821379212.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A299692.P2407571763722409211

`A024916(n+1)+A002378(n+1)`
-/

namespace A299692.P2407571763722409211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + A002378 (n + 1)

end

end A299692.P2407571763722409211

noncomputable section

/-- A299692: a(n) is the total area that is visible in the perspective view of the stepped pyramid with n levels described in A245092.

Offset 1, canonical program `A299692.P2407571763722409211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299692 (n : ℕ) : ℤ :=
  A299692.P2407571763722409211.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A301895.P8372007366497196587

`A000120(n)^A023416(n)`
-/

namespace A301895.P8372007366497196587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℚ) ^ (A023416 n : ℤ)

end

end A301895.P8372007366497196587

noncomputable section

/-- A301895: a(n) = (number of 1's in binary expansion of n)^(number of 0's in binary expansion of n).

Offset 0, canonical program `A301895.P8372007366497196587`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301895 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A301895.P8372007366497196587.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A305748.P15139415621940203754

`A024675(n+1)-A000040(n+1)`
-/

namespace A305748.P15139415621940203754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A000040 (n + 1)

end

end A305748.P15139415621940203754

noncomputable section

/-- A305748: Distance of a prime number from the average of the next two consecutive prime numbers.

Offset 1, canonical program `A305748.P15139415621940203754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305748 (n : ℕ) : ℤ :=
  A305748.P15139415621940203754.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305748.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306190.P7131160644180957095

`A036689(n+1)-1`
-/

namespace A306190.P7131160644180957095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - 1

end

end A306190.P7131160644180957095

noncomputable section

/-- A306190: a(n) = p^2 - p - 1 where p = prime(n), the n-th prime.

Offset 1, canonical program `A306190.P7131160644180957095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306190 (n : ℕ) : ℤ :=
  A306190.P7131160644180957095.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A307451.P4194924638858022531

`A011373(n)+A011373(n+1)-A011373(n+2)`
-/

namespace A307451.P4194924638858022531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n + A011373 (n + 1) - A011373 (n + 2)

end

end A307451.P4194924638858022531

noncomputable section

/-- A307451: Sum of binary weights of two consecutive Fibonacci numbers minus the binary weight of the following Fibonacci number.

Offset 2, canonical program `A307451.P4194924638858022531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307451 (n : ℕ) : ℤ :=
  A307451.P4194924638858022531.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308135.P17632068956087446165

`A000203(n+1)-A057723(n+1)`
-/

namespace A308135.P17632068956087446165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A057723 (n + 1)

end

end A308135.P17632068956087446165

noncomputable section

/-- A308135: Sum of non-coreful divisors of n.

Offset 1, canonical program `A308135.P17632068956087446165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308135 (n : ℕ) : ℤ :=
  A308135.P17632068956087446165.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309391.P8425997874176840933

`gcd(n+3, A064169(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309391.P8425997874176840933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A064169 (n + 1))

end

end A309391.P8425997874176840933

noncomputable section

/-- A309391: a(n) = gcd(n, A064169(n-2)) for n > 2.

Offset 3, canonical program `A309391.P8425997874176840933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309391 (n : ℕ) : ℤ :=
  (A309391.P8425997874176840933.a (n - 3) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228274.P5163058848440072856

`(n+1)*A002131(n+1)`
-/

namespace A228274.P5163058848440072856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002131 (n + 1)

end

end A228274.P5163058848440072856

noncomputable section

/-- A228274: a(n) = Sum_{d|n, n/d odd} n * d.

Offset 1, canonical program `A228274.P5163058848440072856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228274 (n : ℕ) : ℤ :=
  A228274.P5163058848440072856.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228274.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237450.P6346235748488406574

`A003422(A002024(n+1))+A002262(n)*A000142(A002024(n+1)-1)`
-/

namespace A237450.P6346235748488406574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (A002024 (n + 1)).toNat + A002262 n * A000142 (A002024 (n + 1) - 1).toNat

end

end A237450.P6346235748488406574

noncomputable section

/-- A237450: Triangle read by rows, T(n,k) = !n + (k-1)*(n-1)!, with n>=1, 1<=k<=n; Position of the first n-letter permutation beginning with number k in the list of lexicographically sorted permutations A030299.

Offset 1, canonical program `A237450.P6346235748488406574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237450 (n : ℕ) : ℤ :=
  A237450.P6346235748488406574.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240388.P11621996562073166528

`A002487(3*n)/2`
-/

namespace A240388.P11621996562073166528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (3 * n) : ℚ) / 2

end

end A240388.P11621996562073166528

noncomputable section

/-- A240388: A sequence related to the Stern sequence s(n) (A002487), defined by w(n) = s(3n)/2.

Offset 0, canonical program `A240388.P11621996562073166528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240388.P11621996562073166528.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245685.P1437960620465361428

`A247159(n+2)/2`
-/

namespace A245685.P1437960620465361428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247159 (n + 2) : ℚ) / 2

end

end A245685.P1437960620465361428

noncomputable section

/-- A245685: Sigma(2p)/2, for odd primes p.

Offset 1, canonical program `A245685.P1437960620465361428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245685 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245685.P1437960620465361428.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A248957.P4310709929373967986

`A007053(2*n)-A007053(n)`
-/

namespace A248957.P4310709929373967986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (2 * n) - A007053 n

end

end A248957.P4310709929373967986

noncomputable section

/-- A248957: a(n) = PrimePi(4^n) - PrimePi(2^n).

Offset 0, canonical program `A248957.P4310709929373967986`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248957 (n : ℕ) : ℤ :=
  A248957.P4310709929373967986.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248957.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A250473.P15728952414264512561

`2+A000879(n+1)-(n+1)`
-/

namespace A250473.P15728952414264512561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A000879 (n + 1) - (n + 1 : ℤ)

end

end A250473.P15728952414264512561

noncomputable section

/-- A250473: Length of the maximal prefix of noncomposite numbers on row n of A249821.

Offset 1, canonical program `A250473.P15728952414264512561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250473 (n : ℕ) : ℤ :=
  A250473.P15728952414264512561.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253203.P13303616197894554342

`A256244(n+1)²`
-/

namespace A253203.P13303616197894554342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256244 (n + 1) ^ 2

end

end A253203.P13303616197894554342

noncomputable section

/-- A253203: The least square larger than n with same parity as n.

Offset 1, canonical program `A253203.P13303616197894554342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253203 (n : ℕ) : ℤ :=
  A253203.P13303616197894554342.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256243.P16588352687810024248

`(A256244(n+1)²-(n+1))/2`
-/

namespace A256243.P16588352687810024248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256244 (n + 1) ^ 2 - (n + 1 : ℤ) : ℚ) / 2

end

end A256243.P16588352687810024248

noncomputable section

/-- A256243: Smallest positive integer m such that n + 2m is a square.

Offset 1, canonical program `A256243.P16588352687810024248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256243 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256243.P16588352687810024248.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257799.P15511006834302166355

`A010060(A233271(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257799.P15511006834302166355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A233271 n).toNat

end

end A257799.P15511006834302166355

noncomputable section

/-- A257799: Parity of binary weight of each term in the infinite trunk of inverted binary beanstalk: a(n) = A010060(A233271(n)).

Offset 0, canonical program `A257799.P15511006834302166355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257799 (n : ℕ) : ℤ :=
  A257799.P15511006834302166355.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257807.P15241754971067141480

`A257800(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A257807.P15241754971067141480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A257800 n + a (n - 1)

end

end A257807.P15241754971067141480

noncomputable section

/-- A257807: a(n) = number of odd numbers in range 0 .. n of A233271, the infinite trunk of inverted binary beanstalk.

Offset 0, canonical program `A257807.P15241754971067141480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257807 (n : ℕ) : ℤ :=
  A257807.P15241754971067141480.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257807.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257808.P5584975749564527316

`1-A257800(n)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A257808.P5584975749564527316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  1 - A257800 n + a (n - 1)

end

end A257808.P5584975749564527316

noncomputable section

/-- A257808: a(n) = number of nonzero even numbers in range 0 .. n of A233271, the infinite trunk of inverted binary beanstalk.

Offset 0, canonical program `A257808.P5584975749564527316`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257808 (n : ℕ) : ℤ :=
  A257808.P5584975749564527316.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257808.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261179.P18166660369402713705

`A002487(A000040(n+1))`
-/

namespace A261179.P18166660369402713705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000040 (n + 1)).toNat

end

end A261179.P18166660369402713705

noncomputable section

/-- A261179: a(n) is the prime(n)-th term of Stern-Brocot sequence, A002487.

Offset 1, canonical program `A261179.P18166660369402713705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261179 (n : ℕ) : ℤ :=
  A261179.P18166660369402713705.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261273.P13419199438936783095

`A002487(A008864(n+1))`
-/

namespace A261273.P13419199438936783095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A008864 (n + 1)).toNat

end

end A261273.P13419199438936783095

noncomputable section

/-- A261273: a(n) is the (prime(n)+1)-th term of Stern-Brocot sequence, A002487.

Offset 1, canonical program `A261273.P13419199438936783095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261273 (n : ℕ) : ℤ :=
  A261273.P13419199438936783095.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261273.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273149.P13038668691077749708

`A053839(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273149.P13038668691077749708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 n + 1

end

end A273149.P13038668691077749708

noncomputable section

/-- A273149: a(n) = A053839(n)+1.

Offset 0, canonical program `A273149.P13038668691077749708`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273149 (n : ℕ) : ℤ :=
  A273149.P13038668691077749708.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274515.P13101901733059160930

`A002487(A065361(n)+1)`
-/

namespace A274515.P13101901733059160930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A065361 n + 1).toNat

end

end A274515.P13101901733059160930

noncomputable section

/-- A274515: a(n) is the number of times that the value of ternary n when read as hyperbinary occurs in the set of hyperbinary representations.

Offset 0, canonical program `A274515.P13101901733059160930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274515 (n : ℕ) : ℤ :=
  A274515.P13101901733059160930.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283474.P6694215091919527259

`a(n-1)+a(n-A002487(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283474.P6694215091919527259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a ((n : ℤ) - A002487 n).toNat

end

end A283474.P6694215091919527259

noncomputable section

/-- A283474: a(0) = 0, a(1) = 1, for n > 1, a(n) = a(n-1) + a(n-A002487(n)).

Offset 0, canonical program `A283474.P6694215091919527259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283474 (n : ℕ) : ℤ :=
  (A283474.P6694215091919527259.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284007.P7935664608743128822

`a(a(n-A002487(n+1))-1)+a(n-a(n-A002487(n+1)))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284007.P7935664608743128822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a ((n : ℤ) - A002487 (n + 1)).toNat - 1) + a (n - a ((n : ℤ) - A002487 (n + 1)).toNat)

end

end A284007.P7935664608743128822

noncomputable section

/-- A284007: a(n) = a(a(n-A002487(n))) + a(n-a(n-A002487(n))) with a(1) = a(2) = 1, where A002487 = Stern-Brocot sequence.

Offset 1, canonical program `A284007.P7935664608743128822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284007 (n : ℕ) : ℤ :=
  (A284007.P7935664608743128822.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284013.P1136611558935881771

`n-A002487(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284013.P1136611558935881771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002487 n

end

end A284013.P1136611558935881771

noncomputable section

/-- A284013: a(n) = n - A002487(n).

Offset 0, canonical program `A284013.P1136611558935881771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284013 (n : ℕ) : ℤ :=
  A284013.P1136611558935881771.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284013.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284556.P13375523094989058147

`(A002487(n)-A102283(n))/2`
-/

namespace A284556.P13375523094989058147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 n - A102283 n : ℚ) / 2

end

end A284556.P13375523094989058147

noncomputable section

/-- A284556: Sequence c of the mutual recurrence pair: b(0) = 0, b(1) = 1, b(2n) = c(n), b(2n+1) = b(n) + b(n+1), c(0) = c(1) = 0, c(2n) = b(n), c(2n+1) = c(n) + c(n+1).

Offset 0, canonical program `A284556.P13375523094989058147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284556 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284556.P13375523094989058147.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286387.P16052920801655735120

`A002487(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286387.P16052920801655735120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n ^ 2)

end

end A286387.P16052920801655735120

noncomputable section

/-- A286387: a(n) = A002487(n^2).

Offset 0, canonical program `A286387.P16052920801655735120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286387 (n : ℕ) : ℤ :=
  A286387.P16052920801655735120.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295294.P5934329699896356661

`A000203(A057521(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295294.P5934329699896356661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A057521 (n + 1)).toNat

end

end A295294.P5934329699896356661

noncomputable section

/-- A295294: Sum of the divisors of the powerful part of n: a(n) = A000203(A057521(n)).

Offset 1, canonical program `A295294.P5934329699896356661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295294 (n : ℕ) : ℤ :=
  A295294.P5934329699896356661.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295294.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295295.P17200479442831636122

`A048250(A057521(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295295.P17200479442831636122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A057521 (n + 1)).toNat

end

end A295295.P17200479442831636122

noncomputable section

/-- A295295: Sum of squarefree divisors of the powerful part of n: a(n) = A048250(A057521(n)).

Offset 1, canonical program `A295295.P17200479442831636122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295295 (n : ℕ) : ℤ :=
  A295295.P17200479442831636122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295515.P11785583445350184235

`A002487(floor((n+1)/2))`
-/

namespace A295515.P11785583445350184235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A295515.P11785583445350184235

noncomputable section

/-- A295515: The Euclid tree, read across levels.

Offset 1, canonical program `A295515.P11785583445350184235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295515 (n : ℕ) : ℤ :=
  A295515.P11785583445350184235.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263132.P11366629162255137699

`A263133(n+1)+1`
-/

namespace A263132.P11366629162255137699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263133 (n + 1) + 1

end

end A263132.P11366629162255137699

noncomputable section

/-- A263132: Positive values of m such that binomial(4*m - 1, m) is odd.

Offset 1, canonical program `A263132.P11366629162255137699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263132 (n : ℕ) : ℤ :=
  A263132.P11366629162255137699.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216430.P17716969539992197610

`(-1)^A081603(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216430.P17716969539992197610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A081603 (n + 1) : ℤ)

end

end A216430.P17716969539992197610

noncomputable section

/-- A216430: (-1)^A081603(n), parity of the number of 2's in the ternary expansion of n.

Offset 1, canonical program `A216430.P17716969539992197610`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216430 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216430.P17716969539992197610.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216430.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217219.P6754064516663132838

`6*A045833(n)`
-/

namespace A217219.P6754064516663132838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A045833 n

end

end A217219.P6754064516663132838

noncomputable section

/-- A217219: Theta series of planar hexagonal net (honeycomb) with respect to deep hole.

Offset 0, canonical program `A217219.P6754064516663132838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217219 (n : ℕ) : ℤ :=
  A217219.P6754064516663132838.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217324.P15056833866793307979

`A005817(n+4)-A001006(n+4)`
-/

namespace A217324.P15056833866793307979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005817 (n + 4) - A001006 (n + 4)

end

end A217324.P15056833866793307979

noncomputable section

/-- A217324: Number of self-inverse permutations in S_n with longest increasing subsequence of length 4.

Offset 4, canonical program `A217324.P15056833866793307979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217324 (n : ℕ) : ℤ :=
  A217324.P15056833866793307979.a (n - 4)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217570.P4492516139347858203

`A002262(n)+A052938(A131507(n))²`
-/

namespace A217570.P4492516139347858203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A052938 (A131507 n).toNat ^ 2

end

end A217570.P4492516139347858203

noncomputable section

/-- A217570: Numbers n such that floor(sqrt(n)) = floor(n/(floor(sqrt(n))-1))-1.

Offset 1, canonical program `A217570.P4492516139347858203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217570 (n : ℕ) : ℤ :=
  A217570.P4492516139347858203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217917.P6413253404485104331

`∑[A001223(∑[n+2]-1)]`
-/

namespace A217917.P6413253404485104331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217917.P6413253404485104331

noncomputable section

/-- A217917: Odd numbers that appear in sequence A217916.

Offset 1, canonical program `A217917.P6413253404485104331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A217917 (n : ℕ) : ℤ :=
  A217917.P6413253404485104331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A217917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217920.P8141071150989026145

`A001223(abs(1-∑[n])+1)`
-/

namespace A217920.P8141071150989026145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (|1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| + 1).toNat

end

end A217920.P8141071150989026145

noncomputable section

/-- A217920: Column 1 of A217916 (when formed into a number triangle).

Offset 1, canonical program `A217920.P8141071150989026145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A217920 (n : ℕ) : ℤ :=
  A217920.P8141071150989026145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A217920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218075.P1902989878547894807

`2^A001223(n+1)`
-/

namespace A218075.P1902989878547894807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218075.P1902989878547894807

noncomputable section

/-- A218075: a(n) = 2^(prime(n+1) - prime(n)).

Offset 1, canonical program `A218075.P1902989878547894807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218075 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A218075.P1902989878547894807.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218265.P4459247732749169675

`A000085(n+5)-A005817(n+5)`
-/

namespace A218265.P4459247732749169675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 5) - A005817 (n + 5)

end

end A218265.P4459247732749169675

noncomputable section

/-- A218265: Number of standard Young tableaux of n cells and height >= 5.

Offset 5, canonical program `A218265.P4459247732749169675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218265 (n : ℕ) : ℤ :=
  A218265.P4459247732749169675.a (n - 5)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218460.P14858959770545242725

`A000040(n+1)^A001223(n+1)`
-/

namespace A218460.P14858959770545242725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218460.P14858959770545242725

noncomputable section

/-- A218460: a(n) = prime(n)^(prime(n + 1) - prime(n)).

Offset 1, canonical program `A218460.P14858959770545242725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218460 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A218460.P14858959770545242725.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218601.P8037354091719983160

`n%A213710(∑[char[A213710(n+1)]])`
-/

namespace A218601.P8037354091719983160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213710 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A213710 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A218601.P8037354091719983160

noncomputable section

/-- A218601: After the first zero, integers from 0 to A213709(n)-1 followed by integers from 0 to A213709(n+1)-1, etc.

Offset 0, canonical program `A218601.P8037354091719983160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8728 terms. -/
def A218601 (n : ℕ) : ℤ :=
  A218601.P8037354091719983160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8728 terms. -/
def A218601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220104.P13357652405321892040

`A056556(A004526(n))+1`
-/

namespace A220104.P13357652405321892040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A004526 n).toNat + 1

end

end A220104.P13357652405321892040

noncomputable section

/-- A220104: k appears k*(k+1) times.

Offset 1, canonical program `A220104.P13357652405321892040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220104 (n : ℕ) : ℤ :=
  A220104.P13357652405321892040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221056.P8997916471508641174

`eq[1, A061265(n+1)+1]+1`
-/

namespace A221056.P8997916471508641174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061265 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A221056.P8997916471508641174

noncomputable section

/-- A221056: Numbers k such that there is no square between prime(k) and prime(k+1).

Offset 1, canonical program `A221056.P8997916471508641174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. -/
def A221056 (n : ℕ) : ℤ :=
  (A221056.P8997916471508641174.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. -/
def A221056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221876.P9289461571212111972

`A045623(A025581(n))`
-/

namespace A221876.P9289461571212111972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (A025581 n).toNat

end

end A221876.P9289461571212111972

noncomputable section

/-- A221876: T(n,k) is the number of order-preserving full contraction mappings (of an n-chain) with exactly k fixed points.

Offset 1, canonical program `A221876.P9289461571212111972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221876 (n : ℕ) : ℤ :=
  A221876.P9289461571212111972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222963.P1582244053247490446

`A166011(n+2)/2`
-/

namespace A222963.P1582244053247490446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166011 (n + 2) : ℚ) / 2

end

end A222963.P1582244053247490446

noncomputable section

/-- A222963: a(n) = (p-3)*(p+3)/4 where p is the n-th prime.

Offset 2, canonical program `A222963.P1582244053247490446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166011, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222963 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A222963.P1582244053247490446.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166011, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222963.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224363.P1517019116254697631

`p?[A061265(n+1)+A000040(n+1)]`
-/

namespace A224363.P1517019116254697631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061265 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224363.P1517019116254697631

noncomputable section

/-- A224363: Primes p such that there are no squares between p and the prime following p.

Offset 1, canonical program `A224363.P1517019116254697631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. -/
def A224363 (n : ℕ) : ℤ :=
  A224363.P1517019116254697631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. -/
def A224363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225014.P12267725668881702781

`∑[∑[A225013(n+1)]]+1`
-/

namespace A225014.P12267725668881702781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225013 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225014.P12267725668881702781

noncomputable section

/-- A225014: Number of 7Xn 0..1 arrays with rows unimodal and columns nondecreasing.

Offset 1, canonical program `A225014.P12267725668881702781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225014 (n : ℕ) : ℤ :=
  A225014.P12267725668881702781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225043.P4505780884932607696

`C(A003056(n), A002262(n))%A002024(n+1)`
-/

namespace A225043.P4505780884932607696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A003056 n).toNat (A002262 n).toNat : ℤ) (A002024 (n + 1))

end

end A225043.P4505780884932607696

noncomputable section

/-- A225043: Pascal's triangle with row n reduced modulo n+1.

Offset 0, canonical program `A225043.P4505780884932607696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225043 (n : ℕ) : ℤ :=
  A225043.P4505780884932607696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225222.P12882070343994640497

`p?[lt[A023416(n), A145037(n)]]`
-/

namespace A225222.P12882070343994640497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225222.P12882070343994640497

noncomputable section

/-- A225222: Primes with more than twice as many 1's as 0's in binary.

Offset 1, canonical program `A225222.P12882070343994640497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A225222 (n : ℕ) : ℤ :=
  (A225222.P12882070343994640497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A225222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225541.P14151932172831400690

`∑[char[A058749(n+1)]]`
-/

namespace A225541.P14151932172831400690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225541.P14151932172831400690

noncomputable section

/-- A225541: Floor(W(n)) where W is the Lambert W function.

Offset 0, canonical program `A225541.P14151932172831400690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225541 (n : ℕ) : ℤ :=
  (A225541.P14151932172831400690.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225816.P10294105972052185568

`A025581(n)!^A002262(n)`
-/

namespace A225816.P10294105972052185568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A225816.P10294105972052185568

noncomputable section

/-- A225816: Square array A(n,k) = (k!)^n, n>=0, k>=0, read by antidiagonals.

Offset 0, canonical program `A225816.P10294105972052185568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A225816 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225816.P10294105972052185568.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A225816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226008.P11268386641324381222

`A225975(n)²`
-/

namespace A226008.P11268386641324381222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 n ^ 2

end

end A226008.P11268386641324381222

noncomputable section

/-- A226008: a(0) = 0; for n>0, a(n) = denominator(1/4 - 4/n^2).

Offset 0, canonical program `A226008.P11268386641324381222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226008 (n : ℕ) : ℤ :=
  A226008.P11268386641324381222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226060.P13014276364689543860

`A213709(n+1)-A213709(n)`
-/

namespace A226060.P13014276364689543860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 (n + 1) - A213709 n

end

end A226060.P13014276364689543860

noncomputable section

/-- A226060: First differences of A213709.

Offset 0, canonical program `A226060.P13014276364689543860`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226060 (n : ℕ) : ℤ :=
  A226060.P13014276364689543860.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226060.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226721.P17856605481448909484

`1+A066344(n+1)`
-/

namespace A226721.P17856605481448909484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A066344 (n + 1)

end

end A226721.P17856605481448909484

noncomputable section

/-- A226721: Position of 2^n in the joint ranking of all the numbers 2^j for j>=0 and 5^k for k>=1; complement of A123384.

Offset 1, canonical program `A226721.P17856605481448909484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226721 (n : ℕ) : ℤ :=
  A226721.P17856605481448909484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226722.P14657880171830940678

`A156301(n)+A066344(A028310(n))`
-/

namespace A226722.P14657880171830940678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n + A066344 (A028310 n).toNat

end

end A226722.P14657880171830940678

noncomputable section

/-- A226722: Positions of the numbers 2^n, for n >=0, in the joint ranking of all the numbers 2^h, 3^k, 5^k, for h >= 0, k >= 1.

Offset 1, canonical program `A226722.P14657880171830940678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A226722 (n : ℕ) : ℤ :=
  A226722.P14657880171830940678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A226722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226784.P7540790382231416408

`(2*n*A212514(n+1))%(n+1)`
-/

namespace A226784.P7540790382231416408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * ((n : ℤ) * A212514 (n + 1))) (n + 1 : ℤ)

end

end A226784.P7540790382231416408

noncomputable section

/-- A226784: If gcd(n,6) != 1 then a(n)=0, otherwise a(n)=6^(-1) in Z/nZ*.

Offset 1, canonical program `A226784.P7540790382231416408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226784 (n : ℕ) : ℤ :=
  A226784.P7540790382231416408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226895.P9533121574335622783

`Δ[A226894(n+1)]`
-/

namespace A226895.P9533121574335622783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226895.P9533121574335622783

noncomputable section

/-- A226895: Difference sequence for A226894.

Offset 1, canonical program `A226895.P9533121574335622783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226895 (n : ℕ) : ℤ :=
  A226895.P9533121574335622783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226996.P1446342238526676326

`A226994(n)+1-A226995(n)`
-/

namespace A226996.P1446342238526676326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n + (1 - A226995 n)

end

end A226996.P1446342238526676326

noncomputable section

/-- A226996: Number of lattice paths from (0,0) to (n,n) consisting of steps U=(1,1), H=(1,0) and S=(0,1) such that the first step leaving and the last step joining the diagonal (if any) is an H step.

Offset 0, canonical program `A226996.P1446342238526676326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A226996 (n : ℕ) : ℤ :=
  A226996.P1446342238526676326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A226996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227252.P15475645311993057881

`record[A059174(n)+1-2*n]`
-/

namespace A227252.P15475645311993057881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 n + (1 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227252.P15475645311993057881

noncomputable section

/-- A227252: Number of n X 2 binary arrays indicating whether each 2 X 2 subblock of a larger binary array has lexicographically nondecreasing rows and columns, for some larger (n+1) X 3 binary array with rows and columns of the latter in lexicographically nondecreasing order.

Offset 1, canonical program `A227252.P15475645311993057881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227252 (n : ℕ) : ℤ :=
  A227252.P15475645311993057881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227737.P16611216507253860611

`a(n-A005811(a(n-1)))+1` with `a(0)=1`
-/

namespace A227737.P16611216507253860611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A005811 (a (n - 1))).toNat + 1

end

end A227737.P16611216507253860611

noncomputable section

/-- A227737: n occurs as many times as there are runs in binary representation of n.

Offset 1, canonical program `A227737.P16611216507253860611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227737 (n : ℕ) : ℤ :=
  (A227737.P16611216507253860611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227742.P14170089042966495226

`A173318(2*n)+1/2*(1+A005811(2*(n+1)-1))`
-/

namespace A227742.P14170089042966495226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173318 (2 * n) : ℚ) + (1 : ℚ) / 2 * (1 + A005811 (2 * (n + 1) - 1) : ℚ)

end

end A227742.P14170089042966495226

noncomputable section

/-- A227742: Fixed points of permutation A227741.

Offset 1, canonical program `A227742.P14170089042966495226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227742 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227742.P14170089042966495226.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227872.P9091759505244018972

`∑{d}[n+1, A010060(#)]`
-/

namespace A227872.P9091759505244018972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010060 d

end

end A227872.P9091759505244018972

noncomputable section

/-- A227872: Number of odious divisors (A000069) of n.

Offset 1, canonical program `A227872.P9091759505244018972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227872 (n : ℕ) : ℤ :=
  A227872.P9091759505244018972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227873.P5669908514505112701

`∑{d}[n+1, #*A010060(#)]`
-/

namespace A227873.P5669908514505112701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010060 d

end

end A227873.P5669908514505112701

noncomputable section

/-- A227873: Sum of odious divisors of n. See A000069 for odious numbers.

Offset 1, canonical program `A227873.P5669908514505112701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227873 (n : ℕ) : ℤ :=
  A227873.P5669908514505112701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227982.P6866240745655209750

`lt[A039653(n), A053246(n+1)]+1`
-/

namespace A227982.P6866240745655209750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A227982.P6866240745655209750

noncomputable section

/-- A227982: Numbers n such that sigma(n+1) - sigma(n-1) > sigma(n); where sigma(n) = A000203(n) = sum of the divisors of n.

Offset 1, canonical program `A227982.P6866240745655209750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A227982 (n : ℕ) : ℤ :=
  (A227982.P6866240745655209750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A227982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228179.P8496173092229865919

`A128227(eq[1, A048152(n+1)])`
-/

namespace A228179.P8496173092229865919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228179.P8496173092229865919

noncomputable section

/-- A228179: Irregular table where the n-th row consists of the square roots of 1 in Z_n.

Offset 2, canonical program `A228179.P8496173092229865919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A228179 (n : ℕ) : ℤ :=
  A228179.P8496173092229865919.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A228179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228197.P17697013685017105407

`A126966(n)+A068551(n)`
-/

namespace A228197.P17697013685017105407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n + A068551 n

end

end A228197.P17697013685017105407

noncomputable section

/-- A228197: Number of n-edge ordered trees with bicolored boundary edges.

Offset 0, canonical program `A228197.P17697013685017105407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A228197 (n : ℕ) : ℤ :=
  A228197.P17697013685017105407.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A228197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228294.P8313310365846261537

`A060885(n)-1`
-/

namespace A228294.P8313310365846261537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060885 n - 1

end

end A228294.P8313310365846261537

noncomputable section

/-- A228294: a(n) = Sum_{k=1..10} n^k.

Offset 0, canonical program `A228294.P8313310365846261537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228294 (n : ℕ) : ℤ :=
  A228294.P8313310365846261537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228338.P2629555823753106334

`A005554(n+2)+A005554(n+3)`
-/

namespace A228338.P2629555823753106334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005554 (n + 2) + A005554 (n + 3)

end

end A228338.P2629555823753106334

noncomputable section

/-- A228338: Third diagonal of Catalan difference table (A059346).

Offset 0, canonical program `A228338.P2629555823753106334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A228338 (n : ℕ) : ℤ :=
  A228338.P2629555823753106334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A228338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228343.P4320931973267472568

`Δ[A143955(n)+2*a(n-1)]` with `a(0)=1`
-/

namespace A228343.P4320931973267472568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A143955 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228343.P4320931973267472568

noncomputable section

/-- A228343: The number of ordered trees with bicolored single edges on the boundary.

Offset 0, canonical program `A228343.P4320931973267472568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228343 (n : ℕ) : ℤ :=
  A228343.P4320931973267472568.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228391.P7579944260834308347

`A248198(n+1)-A008975(A000096(n))`
-/

namespace A228391.P7579944260834308347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) - A008975 (A000096 n).toNat

end

end A228391.P7579944260834308347

noncomputable section

/-- A228391: Volume of elliptic cone (rounded down) with semi-minor axis = height = n and semi-major axis = 3*n/2.

Offset 1, canonical program `A228391.P7579944260834308347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A228391 (n : ℕ) : ℤ :=
  A228391.P7579944260834308347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A228391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228404.P6042679917404451421

`A026012(n)+A000108(n)%A106640(n)`
-/

namespace A228404.P6042679917404451421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + Int.tmod (A000108 n) (A106640 n)

end

end A228404.P6042679917404451421

noncomputable section

/-- A228404: The number of complete binary trees with bicolored twigs. A twig is a vertex with one child on the boundary and the other child having no descendants.

Offset 0, canonical program `A228404.P6042679917404451421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228404 (n : ℕ) : ℤ :=
  A228404.P6042679917404451421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228524.P1716319160841031381

`A045891(A025581(n))`
-/

namespace A228524.P1716319160841031381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (A025581 n).toNat

end

end A228524.P1716319160841031381

noncomputable section

/-- A228524: Triangle read by rows: T(n,k) = total number of occurrences of parts k in the n-th section of the set of compositions (ordered partitions) of any integer >= n.

Offset 1, canonical program `A228524.P1716319160841031381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228524 (n : ℕ) : ℤ :=
  A228524.P1716319160841031381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228628.P1311672402623493656

`A160668(n+1)-1`
-/

namespace A228628.P1311672402623493656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1) - 1

end

end A228628.P1311672402623493656

noncomputable section

/-- A228628: 9's complement of prime(n).

Offset 1, canonical program `A228628.P1311672402623493656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160668, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228628 (n : ℕ) : ℤ :=
  A228628.P1311672402623493656.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160668, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228669.P4523925343726764388

`A001281(A131694(n+2))`
-/

namespace A228669.P4523925343726764388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A131694 (n + 2)).toNat

end

end A228669.P4523925343726764388

noncomputable section

/-- A228669: Numbers k for which sum{prime(2*k) - prime(2*k-1)} is prime.

Offset 1, canonical program `A228669.P4523925343726764388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228669 (n : ℕ) : ℤ :=
  A228669.P4523925343726764388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229745.P14115202747241148810

`n-A011371(A092391(n))`
-/

namespace A229745.P14115202747241148810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (A092391 n).toNat

end

end A229745.P14115202747241148810

noncomputable section

/-- A229745: a(n) = wt(n+wt(n))-wt(n), where wt(n) is the binary weight of n, A000120(n).

Offset 0, canonical program `A229745.P14115202747241148810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A229745 (n : ℕ) : ℤ :=
  A229745.P14115202747241148810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A229745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230227.P15280561907443236401

`p?[2*A153134(n+1)+1]`
-/

namespace A230227.P15280561907443236401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153134 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230227.P15280561907443236401

noncomputable section

/-- A230227: Primes p with 3*p - 10 also prime.

Offset 1, canonical program `A230227.P15280561907443236401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A230227 (n : ℕ) : ℤ :=
  A230227.P15280561907443236401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A230227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230849.P4568427976746247957

`A001223(gcd(n, ceil(abs((1-n)/2))))`
-/

namespace A230849.P4568427976746247957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (Int.gcd (n : ℤ) ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉)

end

end A230849.P4568427976746247957

noncomputable section

/-- A230849: A075526 and A000012 interleaved.

Offset 1, canonical program `A230849.P4568427976746247957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230849 (n : ℕ) : ℤ :=
  A230849.P4568427976746247957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231482.P13578622432860794418

`(n+1)*∑[A086871(n)]`
-/

namespace A231482.P13578622432860794418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231482.P13578622432860794418

noncomputable section

/-- A231482: The number of nonlinear normal modes for a fully resonant Hamiltonian system with n degrees of freedom.

Offset 1, canonical program `A231482.P13578622432860794418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A231482 (n : ℕ) : ℤ :=
  A231482.P13578622432860794418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A231482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231947.P3420748892416134547

`A103440(3*n+1)`
-/

namespace A231947.P3420748892416134547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103440 (3 * n + 1)

end

end A231947.P3420748892416134547

noncomputable section

/-- A231947: Expansion of q^(-1/3) * a(q)^2 * c(q) / 3 in powers of q where a(), c() are cubic AGM theta functions.

Offset 0, canonical program `A231947.P3420748892416134547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A231947 (n : ℕ) : ℤ :=
  A231947.P3420748892416134547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A231947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233543.P15139316813997982793

`A002262(n)!`
-/

namespace A233543.P15139316813997982793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002262 n).toNat

end

end A233543.P15139316813997982793

noncomputable section

/-- A233543: Triangle read by rows: T(n,k) = k!.

Offset 0, canonical program `A233543.P15139316813997982793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A233543 (n : ℕ) : ℤ :=
  (A233543.P15139316813997982793.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A233543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234218.P2067863749200831996

`p?[n*A000035(A192085(n))]`
-/

namespace A234218.P2067863749200831996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 (A192085 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234218.P2067863749200831996

noncomputable section

/-- A234218: Primes whose cubes are odious.

Offset 1, canonical program `A234218.P2067863749200831996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A234218 (n : ℕ) : ℤ :=
  A234218.P2067863749200831996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A234218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234973.P16340142227347976092

`p?[A034961(n+1)+6]`
-/

namespace A234973.P16340142227347976092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234973.P16340142227347976092

noncomputable section

/-- A234973: Primes that are 6 plus the sum of three consecutive primes.

Offset 1, canonical program `A234973.P16340142227347976092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234973 (n : ℕ) : ℤ :=
  A234973.P16340142227347976092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235879.P1504288234909662281

`A183626(n+1)+A305155(n)+1`
-/

namespace A235879.P1504288234909662281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183626 (n + 1) + (A305155 n + 1)

end

end A235879.P1504288234909662281

noncomputable section

/-- A235879: Number of (n+1) X (3+1) 0..2 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

Offset 1, canonical program `A235879.P1504288234909662281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A235879 (n : ℕ) : ℤ :=
  A235879.P1504288234909662281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A235879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236186.P5484807995005540986

`A049296(n+2)`
-/

namespace A236186.P5484807995005540986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049296 (n + 2)

end

end A236186.P5484807995005540986

noncomputable section

/-- A236186: Differences between terms of compacting Eratosthenes sieve for prime(5) = 11.

Offset 1, canonical program `A236186.P5484807995005540986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236186 (n : ℕ) : ℤ :=
  A236186.P5484807995005540986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236294.P17686924681662183359

`A220838(n+5)`
-/

namespace A236294.P17686924681662183359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (n + 5)

end

end A236294.P17686924681662183359

noncomputable section

/-- A236294: a(n) = max( a(n-1) + a(n-3), 2*a(n-2) ) - a(n-4), with a(0)=1, a(1)=1, a(2)=2, a(3)=3.

Offset 0, canonical program `A236294.P17686924681662183359`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236294 (n : ℕ) : ℤ :=
  A236294.P17686924681662183359.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236676.P1389962155202570512

`A073846(A103517(n)+A080339(n+1))`
-/

namespace A236676.P1389962155202570512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A103517 n + A080339 (n + 1)).toNat

end

end A236676.P1389962155202570512

noncomputable section

/-- A236676: The n-th term is the n-th composite if n is prime, and the n-th prime if n is not prime.

Offset 1, canonical program `A236676.P1389962155202570512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A236676 (n : ℕ) : ℤ :=
  A236676.P1389962155202570512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A236676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237587.P9425086099865115615

`A099375(n)²`
-/

namespace A237587.P9425086099865115615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n ^ 2

end

end A237587.P9425086099865115615

noncomputable section

/-- A237587: Triangle read by rows in which row n lists the first n odd squares in decreasing order.

Offset 1, canonical program `A237587.P9425086099865115615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237587 (n : ℕ) : ℤ :=
  A237587.P9425086099865115615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238015.P2345716481472357313

`ceil(A001316(n)/8)`
-/

namespace A238015.P2345716481472357313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001316 n : ℚ) / 8⌉

end

end A238015.P2345716481472357313

noncomputable section

/-- A238015: Denominator of (2*n+1)!*8*Bernoulli(2*n,1/2).

Offset 0, canonical program `A238015.P2345716481472357313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. -/
def A238015 (n : ℕ) : ℤ :=
  A238015.P2345716481472357313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. -/
def A238015.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A239636.P9315992942707104834`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239636 (n : ℕ) : ℤ :=
  A239636.P9315992942707104834.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240355.P8056118770245274033

`A014045(Δ[ceil(C(n, 2)/2)])`
-/

namespace A240355.P8056118770245274033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014045 (f1 (n + 1) - f1 n).toNat

end

end A240355.P8056118770245274033

noncomputable section

/-- A240355: Inverse of 72nd cyclotomic polynomial.

Offset 0, canonical program `A240355.P8056118770245274033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240355 (n : ℕ) : ℤ :=
  A240355.P8056118770245274033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240914.P651125426119913968

`record[A051544(n+3)*A072505(n+3)]`
-/

namespace A240914.P651125426119913968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051544 (n + 3) * A072505 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240914.P651125426119913968

noncomputable section

/-- A240914: Semiprimes of the form S(n) + T(n) where S(n) and T(n) are the n-th square and the n-th triangular numbers.

Offset 1, canonical program `A240914.P651125426119913968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A240914 (n : ℕ) : ℤ :=
  A240914.P651125426119913968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A240914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241592.P9669127012109654097

`A220838(n+2)-char[A004771(n)]`
-/

namespace A241592.P9669127012109654097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A241592.P9669127012109654097

noncomputable section

/-- A241592: Degree of Somos4-oid polynomial s_n(x).

Offset 1, canonical program `A241592.P9669127012109654097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A241592 (n : ℕ) : ℤ :=
  A241592.P9669127012109654097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A241592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241621.P17795635083322010053

`A108670(n+1)+A107891(n)`
-/

namespace A241621.P17795635083322010053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108670 (n + 1) + A107891 n

end

end A241621.P17795635083322010053

noncomputable section

/-- A241621: Number of length 6+2 0..n arrays with no consecutive three elements summing to more than n.

Offset 1, canonical program `A241621.P17795635083322010053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A241621 (n : ℕ) : ℤ :=
  A241621.P17795635083322010053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A241621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241891.P9479106235604816941

`A241682(n)+A176742(n)²`
-/

namespace A241891.P9479106235604816941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241682 n + A176742 n ^ 2

end

end A241891.P9479106235604816941

noncomputable section

/-- A241891: Total number of unit squares appearing in the Thue-Morse sequence of logical matrices (1, 0 version) after n stages.

Offset 0, canonical program `A241891.P9479106235604816941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241891 (n : ℕ) : ℤ :=
  A241891.P9479106235604816941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242388.P9019270962361867903

`A000079(A002262(n))*A002024(n+1)+1`
-/

namespace A242388.P9019270962361867903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A002024 (n + 1) + 1

end

end A242388.P9019270962361867903

noncomputable section

/-- A242388: Triangle read by rows: T(n,k) = n*2^(k-1) + 1, 1 <= k <= n.

Offset 1, canonical program `A242388.P9019270962361867903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242388 (n : ℕ) : ℤ :=
  A242388.P9019270962361867903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242408.P5047545838099332547

`comp[A242407(n+1)]`
-/

namespace A242408.P5047545838099332547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242408.P5047545838099332547

noncomputable section

/-- A242408: Numbers such that in ternary representation at least one pair of adjacent digits has a sum greater than 2.

Offset 1, canonical program `A242408.P5047545838099332547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242408 (n : ℕ) : ℤ :=
  (A242408.P5047545838099332547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242482.P4940555900676613198

`eq[1, A242481(n+1)]+1`
-/

namespace A242482.P4940555900676613198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242482.P4940555900676613198

noncomputable section

/-- A242482: Numbers n such that A242481(n) = ((n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n) / n = 1.

Offset 1, canonical program `A242482.P4940555900676613198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A242482 (n : ℕ) : ℤ :=
  (A242482.P4940555900676613198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A242482.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A243717.P9128340511837324197

`A014409(n+2)-∑[n]`
-/

namespace A243717.P9128340511837324197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014409 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A243717.P9128340511837324197

noncomputable section

/-- A243717: Number of inequivalent (mod D_4) ways to place 2 nonattacking knights on an n X n board.

Offset 2, canonical program `A243717.P9128340511837324197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243717 (n : ℕ) : ℤ :=
  A243717.P9128340511837324197.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243769.P6858132266747449837

`A030078(n+1)%A106587(n+1)`
-/

namespace A243769.P6858132266747449837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030078 (n + 1)) (A106587 (n + 1))

end

end A243769.P6858132266747449837

noncomputable section

/-- A243769: a(n) = prime(n)^3 mod (n^2 + prime(n)^2).

Offset 1, canonical program `A243769.P6858132266747449837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243769 (n : ℕ) : ℤ :=
  A243769.P6858132266747449837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244041.P9196953694922478811

`∑{digits}[A024631(n), #]`
-/

namespace A244041.P9196953694922478811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A244041.P9196953694922478811

noncomputable section

/-- A244041: Sum of digits of n written in fractional base 4/3.

Offset 0, canonical program `A244041.P9196953694922478811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244041 (n : ℕ) : ℤ :=
  (A244041.P9196953694922478811.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244215.P17054345626323859306

`A244160(n)-A244160(n-A081290(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244215.P17054345626323859306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 n - A244160 ((n : ℤ) - A081290 n).toNat

end

end A244215.P17054345626323859306

noncomputable section

/-- A244215: a(0)=0, and for n>=1, if n is the k-th Catalan number (A000108(k)), a(n) = k, otherwise the difference of the indices of the two largest Catalan numbers whose sum is less than or equal to n: a(n) = A244160(n) - A244160(n-A081290(n)).

Offset 0, canonical program `A244215.P17054345626323859306`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081290, A244160, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244215 (n : ℕ) : ℤ :=
  A244215.P17054345626323859306.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081290, A244160, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244222.P5228230116540986536

`record[n*(1-A244221(n))]`
-/

namespace A244222.P5228230116540986536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A244221 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244222.P5228230116540986536

noncomputable section

/-- A244222: Numbers k which have even representation in Greedy Catalan Base, i.e., where A014418(k) ends with zero.

Offset 0, canonical program `A244222.P5228230116540986536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5763 terms. -/
def A244222 (n : ℕ) : ℤ :=
  A244222.P5228230116540986536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5763 terms. -/
def A244222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244224.P3371671429758605766

`∑[1-A244221(n)]`
-/

namespace A244224.P3371671429758605766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244224.P3371671429758605766

noncomputable section

/-- A244224: a(n) = Number of nonnegative integers 0 <= k <= n, which have an even representation in Greedy Catalan Base (A014418).

Offset 0, canonical program `A244224.P3371671429758605766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244224 (n : ℕ) : ℤ :=
  A244224.P3371671429758605766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244612.P11826543552525463929

`A106665(n)*A244611(n+1)`
-/

namespace A244612.P11826543552525463929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106665 n * A244611 (n + 1)

end

end A244612.P11826543552525463929

noncomputable section

/-- A244612: a(n) = 1 if n is a square, -1 if n is six times a square, 0 if n < 1.

Offset 1, canonical program `A244612.P11826543552525463929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244612 (n : ℕ) : ℤ :=
  A244612.P11826543552525463929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244737.P1957845354810666174

`lt[A005097(n+1)%5, 2]+2`
-/

namespace A244737.P1957845354810666174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005097 (n + 1)) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A244737.P1957845354810666174

noncomputable section

/-- A244737: Numbers k such that (prime(k) mod 5) is odd.

Offset 1, canonical program `A244737.P1957845354810666174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A244737 (n : ℕ) : ℤ :=
  (A244737.P1957845354810666174.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A244737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244884.P1376533462208018478

`A001006(n)-A005554(n+1)%A001006(n)`
-/

namespace A244884.P1376533462208018478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - Int.tmod (A005554 (n + 1)) (A001006 n)

end

end A244884.P1376533462208018478

noncomputable section

/-- A244884: Expansion of (-2 +x^2 +x -x*sqrt(1-2*x-3*x^2))/(-1 +x -sqrt(1-2*x-3*x^2)).

Offset 0, canonical program `A244884.P1376533462208018478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A244884 (n : ℕ) : ℤ :=
  A244884.P1376533462208018478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A244884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244941.P15006314446011111513

`∑[A049472(A026251(n+1))+n+2]+1`
-/

namespace A244941.P15006314446011111513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A026251 (n + 1)).toNat + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A244941.P15006314446011111513

noncomputable section

/-- A244941: Number of length 2 0..n arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

Offset 1, canonical program `A244941.P15006314446011111513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A244941 (n : ℕ) : ℤ :=
  A244941.P15006314446011111513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A244941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245092.P5629512681857718136

`A033880(A152271(n))+n+1`
-/

namespace A245092.P5629512681857718136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A152271 n).toNat + (n + 1 : ℤ)

end

end A245092.P5629512681857718136

noncomputable section

/-- A245092: The even numbers (A005843) and the values of sigma function (A000203) interleaved.

Offset 0, canonical program `A245092.P5629512681857718136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245092 (n : ℕ) : ℤ :=
  A245092.P5629512681857718136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245574.P5854510550737387433

`lcm(ceil(n/98), A057536(n))`
-/

namespace A245574.P5854510550737387433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(n : ℚ) / 98⌉ (A057536 n)

end

end A245574.P5854510550737387433

noncomputable section

/-- A245574: Minimal coin changing sequence for denominations 1, 2, 5, 10, 20 and 50 cents.

Offset 0, canonical program `A245574.P5854510550737387433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245574 (n : ℕ) : ℤ :=
  (A245574.P5854510550737387433.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246104.P17036566817136398494

`A003258(A087172(n+1))`
-/

namespace A246104.P17036566817136398494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003258 (A087172 (n + 1)).toNat

end

end A246104.P17036566817136398494

noncomputable section

/-- A246104: Least m > 0 for which (s(m), ..., s(n+m-1)) = (s(0), ..., s(n)), the first n+1 terms of the infinite Fibonacci word A003849.

Offset 0, canonical program `A246104.P17036566817136398494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246104 (n : ℕ) : ℤ :=
  A246104.P17036566817136398494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246414.P8392572628755399728

`∩[A246410(n+1), A246413(n+1)-1]`
-/

namespace A246414.P8392572628755399728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246414.P8392572628755399728

noncomputable section

/-- A246414: Positive integers k satisfying csc(k) < csc(k+1) > csc(k+2).

Offset 1, canonical program `A246414.P8392572628755399728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A246414 (n : ℕ) : ℤ :=
  (A246414.P8392572628755399728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A246414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246432.P7367098291756528111

`A120588(n)*A260196(n)`
-/

namespace A246432.P7367098291756528111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A260196 n

end

end A246432.P7367098291756528111

noncomputable section

/-- A246432: Convolution inverse of A001700.

Offset 0, canonical program `A246432.P7367098291756528111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246432 (n : ℕ) : ℤ :=
  A246432.P7367098291756528111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246437.P8274867833887097828

`A257520(n)-n%2`
-/

namespace A246437.P8274867833887097828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n - ((n % 2 : ℕ) : ℤ)

end

end A246437.P8274867833887097828

noncomputable section

/-- A246437: Expansion of (1/2)*(1/(x+1)+1/(sqrt(-3*x^2-2*x+1))).

Offset 0, canonical program `A246437.P8274867833887097828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A246437 (n : ℕ) : ℤ :=
  A246437.P8274867833887097828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A246437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246498.P3117156610869488528

`(n+1)*A007407(n+1)`
-/

namespace A246498.P3117156610869488528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007407 (n + 1)

end

end A246498.P3117156610869488528

noncomputable section

/-- A246498: Numerator of the harmonic mean of the first n squares.

Offset 1, canonical program `A246498.P3117156610869488528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A246498 (n : ℕ) : ℤ :=
  A246498.P3117156610869488528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A246498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246575.P17700213826678581396

`∑[A078616(abs(1-n))]`
-/

namespace A246575.P17700213826678581396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246575.P17700213826678581396

noncomputable section

/-- A246575: Expansion of (Product_{r>=1} (1-x^r))*x^(k^2) / Product_{i=1..k} (1-x^i)^2 with k=1.

Offset 0, canonical program `A246575.P17700213826678581396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246575 (n : ℕ) : ℤ :=
  A246575.P17700213826678581396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246932.P11770710802471160899

`A031336(5*(n+1))`
-/

namespace A246932.P11770710802471160899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (5 * (n + 1))

end

end A246932.P11770710802471160899

noncomputable section

/-- A246932: a(n) = prime(15*n).

Offset 1, canonical program `A246932.P11770710802471160899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A246932 (n : ℕ) : ℤ :=
  A246932.P11770710802471160899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A246932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247517.P9623815378169510703

`∏{e}[n+1, A101098(#+1)]`
-/

namespace A247517.P9623815378169510703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A101098 (Nat.factorization (f1 n) p + 1)

end

end A247517.P9623815378169510703

noncomputable section

/-- A247517: Card{(x,y,z,t,u): 1<=x,y,z,t,u<=n, gcd(x,y,z,t,u)=1, lcm(x,y,z,t,u)=n}.

Offset 1, canonical program `A247517.P9623815378169510703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247517 (n : ℕ) : ℤ :=
  A247517.P9623815378169510703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247681.P16071207118859784125

`A161705(A153400(n+1))`
-/

namespace A247681.P16071207118859784125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A153400 (n + 1)).toNat

end

end A247681.P16071207118859784125

noncomputable section

/-- A247681: Odd nonprimes congruent to 1 modulo 9.

Offset 1, canonical program `A247681.P16071207118859784125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7283 terms. -/
def A247681 (n : ℕ) : ℤ :=
  A247681.P16071207118859784125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7283 terms. -/
def A247681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248170.P13308943850553376554

`sqrt(A246934(n+1))`
-/

namespace A248170.P13308943850553376554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246934 (n + 1) : ℝ)

end

end A248170.P13308943850553376554

noncomputable section

/-- A248170: Nonnegative integer whose square is the closest square to prime(n).

Offset 1, canonical program `A248170.P13308943850553376554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248170 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248170.P13308943850553376554.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248367.P14823438803111161390

`∩[A156104(n+1)-2, A156104(n+1)]`
-/

namespace A248367.P14823438803111161390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248367.P14823438803111161390

noncomputable section

/-- A248367: Initial members of prime quadruples (n, n+2, n+36, n+38).

Offset 1, canonical program `A248367.P14823438803111161390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A248367 (n : ℕ) : ℤ :=
  (A248367.P14823438803111161390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A248367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248574.P8867556678546182953

`A131577(n)+A116406(n)`
-/

namespace A248574.P8867556678546182953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A116406 n

end

end A248574.P8867556678546182953

noncomputable section

/-- A248574: a(n) = A027306(n) + A027306(n-1) for n > 0; a(0) = 1.

Offset 0, canonical program `A248574.P8867556678546182953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A248574 (n : ℕ) : ℤ :=
  A248574.P8867556678546182953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A248574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248667.P10690883735429551010

`record[A124782(n+2)]`
-/

namespace A248667.P10690883735429551010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124782 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248667.P10690883735429551010

noncomputable section

/-- A248667: Numbers k for which coefficients of the polynomial p(k,x) defined in Comments are relatively prime.

Offset 1, canonical program `A248667.P10690883735429551010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. -/
def A248667 (n : ℕ) : ℤ :=
  A248667.P10690883735429551010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. -/
def A248667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248808.P11257078540313990282

`A084346(n+1)-(A000267(n)+1)`
-/

namespace A248808.P11257078540313990282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084346 (n + 1) - (A000267 n + 1)

end

end A248808.P11257078540313990282

noncomputable section

/-- A248808: Irregular triangle read by rows: row n gives golden ratio base representation of Fibonacci number F_n.

Offset 1, canonical program `A248808.P11257078540313990282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A248808 (n : ℕ) : ℤ :=
  A248808.P11257078540313990282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A248808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249037.P6663428575612269827

`∑[A059841(A249036(n+1))]`
-/

namespace A249037.P6663428575612269827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A249036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249037.P6663428575612269827

noncomputable section

/-- A249037: Number of even terms in first n terms of A249036.

Offset 1, canonical program `A249037.P6663428575612269827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249037 (n : ℕ) : ℤ :=
  A249037.P6663428575612269827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249038.P8201411425765856461

`∑[A249036(n+1)%2]`
-/

namespace A249038.P8201411425765856461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249036 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249038.P8201411425765856461

noncomputable section

/-- A249038: Number of odd terms in first n terms of A249036.

Offset 1, canonical program `A249038.P8201411425765856461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249038 (n : ℕ) : ℤ :=
  A249038.P8201411425765856461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249720.P520286733806873807

`2*A249719(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249720.P520286733806873807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249719 (n + 1)

end

end A249720.P520286733806873807

noncomputable section

/-- A249720: a(n) = 2 * A249719(n).

Offset 1, canonical program `A249720.P520286733806873807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249719, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249720 (n : ℕ) : ℤ :=
  A249720.P520286733806873807.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249719, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A251364.P456730405745834131

`A024675(n+1)-A001414(A024675(n+1))`
-/

namespace A251364.P456730405745834131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A001414 (A024675 (n + 1)).toNat

end

end A251364.P456730405745834131

noncomputable section

/-- A251364: Difference between average of two consecutive odd primes and the sum of all prime factors of the average.

Offset 1, canonical program `A251364.P456730405745834131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. -/
def A251364 (n : ℕ) : ℤ :=
  A251364.P456730405745834131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. -/
def A251364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251708.P2113703706727638287

`A251707(n+1)-A001592(n)`
-/

namespace A251708.P2113703706727638287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251707 (n + 1) - A001592 n

end

end A251708.P2113703706727638287

noncomputable section

/-- A251708: 6-step Fibonacci sequence starting with (0,0,1,0,0,0).

Offset 0, canonical program `A251708.P2113703706727638287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251708 (n : ℕ) : ℤ :=
  A251708.P2113703706727638287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251712.P6674266782435870888

`A251711(n+1)-A122189(n)`
-/

namespace A251712.P6674266782435870888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251711 (n + 1) - A122189 n

end

end A251712.P6674266782435870888

noncomputable section

/-- A251712: 7-step Fibonacci sequence starting with (0,0,0,1,0,0,0).

Offset 0, canonical program `A251712.P6674266782435870888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251712 (n : ℕ) : ℤ :=
  A251712.P6674266782435870888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251742.P7292228339883376358

`A251741(n+1)-A079262(n)`
-/

namespace A251742.P7292228339883376358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251741 (n + 1) - A079262 n

end

end A251742.P7292228339883376358

noncomputable section

/-- A251742: 8-step Fibonacci sequence starting with 0,0,0,1,0,0,0,0.

Offset 0, canonical program `A251742.P7292228339883376358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251742 (n : ℕ) : ℤ :=
  A251742.P7292228339883376358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251748.P1350453629097894107

`A251747(n+1)-A104144(n)`
-/

namespace A251748.P1350453629097894107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251747 (n + 1) - A104144 n

end

end A251748.P1350453629097894107

noncomputable section

/-- A251748: 9-step Fibonacci sequence starting with 0,0,0,0,0,1,0,0,0.

Offset 0, canonical program `A251748.P1350453629097894107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251748 (n : ℕ) : ℤ :=
  A251748.P1350453629097894107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253243.P16913495343360513967

`A123530(2*n)`
-/

namespace A253243.P16913495343360513967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123530 (2 * n)

end

end A253243.P16913495343360513967

noncomputable section

/-- A253243: Expansion of phi(-x^2) * psi(x^3) * chi(x^3) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A253243.P16913495343360513967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253243 (n : ℕ) : ℤ :=
  A253243.P16913495343360513967.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253742.P9928295030245127996

`9*A222993(n+1)`
-/

namespace A253742.P9928295030245127996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A222993 (n + 1)

end

end A253742.P9928295030245127996

noncomputable section

/-- A253742: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

Offset 1, canonical program `A253742.P9928295030245127996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A253742 (n : ℕ) : ℤ :=
  A253742.P9928295030245127996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A253742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253970.P10693384126688661835

`A000040(eq[1, A079998(A011974(n+1))])`
-/

namespace A253970.P10693384126688661835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A011974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253970.P10693384126688661835

noncomputable section

/-- A253970: Primes p such that p + nextprime(p) is divisible by 5.

Offset 1, canonical program `A253970.P10693384126688661835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A253970 (n : ℕ) : ℤ :=
  A253970.P10693384126688661835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A253970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253973.P8343327783554958465

`A000040(eq[9, dr(A011974(n+1))])`
-/

namespace A253973.P8343327783554958465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A011974 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A253973.P8343327783554958465

noncomputable section

/-- A253973: Primes p such that p + nextprime(p) is divisible by 9.

Offset 1, canonical program `A253973.P8343327783554958465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253973 (n : ℕ) : ℤ :=
  A253973.P8343327783554958465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254147.P9685819170958152587

`A254146(n)+A001556(n)`
-/

namespace A254147.P9685819170958152587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254146 n + A001556 n

end

end A254147.P9685819170958152587

noncomputable section

/-- A254147: a(n) = 1*9^n + 2*8^n + 3*7^n + 4*6^n + 5*5^n + 6*4^n + 7*3^n + 8*2^n + 9*1^n.

Offset 0, canonical program `A254147.P9685819170958152587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A254147 (n : ℕ) : ℤ :=
  A254147.P9685819170958152587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A254147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254466.P1393730528840118816

`A254465(n)+A254464(n)`
-/

namespace A254466.P1393730528840118816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254465 n + A254464 n

end

end A254466.P1393730528840118816

noncomputable section

/-- A254466: a(n) = 56*2^n + 20*4^n + 35*3^n + 4*6^n + 10*5^n + 7^n + 84.

Offset 0, canonical program `A254466.P1393730528840118816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254466 (n : ℕ) : ℤ :=
  A254466.P1393730528840118816.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254466.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A255000.P13204659214420156332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255000 (n : ℕ) : ℤ :=
  A255000.P13204659214420156332.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255000.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255226.P4162017514556172731

`A255225(n+1)+27`
-/

namespace A255226.P4162017514556172731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + 27

end

end A255226.P4162017514556172731

noncomputable section

/-- A255226: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255226.P4162017514556172731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255226 (n : ℕ) : ℤ :=
  A255226.P4162017514556172731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255227.P9716855678432011050

`A255225(n+1)+66`
-/

namespace A255227.P9716855678432011050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + 66

end

end A255227.P9716855678432011050

noncomputable section

/-- A255227: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255227.P9716855678432011050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255227 (n : ℕ) : ℤ :=
  A255227.P9716855678432011050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255346.P13039647980767050582

`filter[A080765(n+1), A143731(#)]`
-/

namespace A255346.P13039647980767050582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A255346.P13039647980767050582

noncomputable section

/-- A255346: Numbers k such that k and k+1 both have at least two distinct prime factors.

Offset 1, canonical program `A255346.P13039647980767050582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A255346 (n : ℕ) : ℤ :=
  A255346.P13039647980767050582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A255346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255655.P17610219700829856514

`∑{d}[n+1, A007427(#)*A109386((n+1)/#)]`
-/

namespace A255655.P17610219700829856514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A109386 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255655.P17610219700829856514

noncomputable section

/-- A255655: The sum of the odd terms in row n of A050873.

Offset 1, canonical program `A255655.P17610219700829856514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255655 (n : ℕ) : ℤ :=
  A255655.P17610219700829856514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255764.P9577008536080855973

`∑[A255743(n+1)]`
-/

namespace A255764.P9577008536080855973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255764.P9577008536080855973

noncomputable section

/-- A255764: Partial sums of A255743.

Offset 1, canonical program `A255764.P9577008536080855973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255764 (n : ℕ) : ℤ :=
  A255764.P9577008536080855973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255765.P11578663823581225176

`∑[A255744(n+1)]`
-/

namespace A255765.P11578663823581225176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255765.P11578663823581225176

noncomputable section

/-- A255765: Partial sums of A255744.

Offset 1, canonical program `A255765.P11578663823581225176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255765 (n : ℕ) : ℤ :=
  A255765.P11578663823581225176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255887.P1885334426485951398

`round(1/A089309(p?[xor(1, n)+1]))`
-/

namespace A255887.P1885334426485951398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A089309 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ))

end

end A255887.P1885334426485951398

noncomputable section

/-- A255887: a(n) = 1 if the n-th prime is the sum of three squares, otherwise a(n) = 0.

Offset 1, canonical program `A255887.P1885334426485951398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A255887 (n : ℕ) : ℤ :=
  A255887.P1885334426485951398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A255887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256698.P10084946441943223524

`eq[0, 1-a(A025581(n-1))]` with `a(0)=1`
-/

namespace A256698.P10084946441943223524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (A025581 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256698.P10084946441943223524

noncomputable section

/-- A256698: Numbers with positive triangular trace.

Offset 1, canonical program `A256698.P10084946441943223524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256698 (n : ℕ) : ℤ :=
  (A256698.P10084946441943223524.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256699.P8613917048069733691

`eq[2, gcd(6, A182321(n))]`
-/

namespace A256699.P8613917048069733691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A182321 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256699.P8613917048069733691

noncomputable section

/-- A256699: Numbers with negative triangular trace.

Offset 1, canonical program `A256699.P8613917048069733691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A256699 (n : ℕ) : ℤ :=
  (A256699.P8613917048069733691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A256699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256701.P16267587922398115576

`A001057(A073122(n+1)+n)`
-/

namespace A256701.P16267587922398115576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A073122 (n + 1) + (n : ℤ)).toNat

end

end A256701.P16267587922398115576

noncomputable section

/-- A256701: Positive part of the minimal alternating binary representation of n (defined at A245596).

Offset 1, canonical program `A256701.P16267587922398115576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256701 (n : ℕ) : ℤ :=
  A256701.P16267587922398115576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256701.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A257444.P1880484331838550698

`A255225(n+1)+A019428(A008574(n))`
-/

namespace A257444.P1880484331838550698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + A019428 (A008574 n).toNat

end

end A257444.P1880484331838550698

noncomputable section

/-- A257444: Number of (n+2) X (5+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

Offset 1, canonical program `A257444.P1880484331838550698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257444 (n : ℕ) : ℤ :=
  A257444.P1880484331838550698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257444.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A257567.P6211609735986924028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061725, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257567 (n : ℕ) : ℤ :=
  A257567.P6211609735986924028.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061725, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258143.P7349125463556418444

`A116406(n+2)-1`
-/

namespace A258143.P7349125463556418444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 (n + 2) - 1

end

end A258143.P7349125463556418444

noncomputable section

/-- A258143: Row sums of A257241, Stifel's version of the arithmetical triangle.

Offset 1, canonical program `A258143.P7349125463556418444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258143 (n : ℕ) : ℤ :=
  A258143.P7349125463556418444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258211.P3873874455253473199

`2*A053850(n+1)`
-/

namespace A258211.P3873874455253473199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053850 (n + 1)

end

end A258211.P3873874455253473199

noncomputable section

/-- A258211: Nonsquarefree numbers of the form 4*k + 2.

Offset 1, canonical program `A258211.P3873874455253473199`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258211 (n : ℕ) : ℤ :=
  A258211.P3873874455253473199.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258632.P10910427713438509506

`2-A092695(n+2)+n`
-/

namespace A258632.P10910427713438509506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A092695 (n + 2) + (n : ℤ)

end

end A258632.P10910427713438509506

noncomputable section

/-- A258632: Number of length 1 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

Offset 1, canonical program `A258632.P10910427713438509506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A258632 (n : ℕ) : ℤ :=
  A258632.P10910427713438509506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A258632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258876.P5938820012190541234

`eq[8, dr(A162177(n+1))]`
-/

namespace A258876.P5938820012190541234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A162177 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258876.P5938820012190541234

noncomputable section

/-- A258876: Integers k such that both k and prime(k) have the same digital root.

Offset 1, canonical program `A258876.P5938820012190541234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1145 terms. -/
def A258876 (n : ℕ) : ℤ :=
  (A258876.P5938820012190541234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1145 terms. -/
def A258876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259627.P17875211191962559022

`∪[A259625(n+1), A259626(n+1)]`
-/

namespace A259627.P17875211191962559022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259627.P17875211191962559022

noncomputable section

/-- A259627: List of numbers L - 1, L, and L+1, where L = A000032, the Lucas numbers, sorted into increasing order and duplicates removed.

Offset 1, canonical program `A259627.P17875211191962559022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A259627 (n : ℕ) : ℤ :=
  (A259627.P17875211191962559022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A259627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260458.P8030264566610905607

`∏{p}[n+1, #]*A006519(∑[A004526(n+1)]+1)`
-/

namespace A260458.P8030264566610905607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A006519 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

end

end A260458.P8030264566610905607

noncomputable section

/-- A260458: Limit of gcd(PP(n) - k, PP(n) + k) as k -> oo, where PP(n) is the product of the first n primes.

Offset 1, canonical program `A260458.P8030264566610905607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A260458 (n : ℕ) : ℤ :=
  A260458.P8030264566610905607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A260458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260477.P5696824646865594787

`eq[A159918(n+2), A159918(n+3)]+2`
-/

namespace A260477.P5696824646865594787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A260477.P5696824646865594787

noncomputable section

/-- A260477: Numbers n where n^2 is an anagram of (n+1)^2 in base 2.

Offset 1, canonical program `A260477.P5696824646865594787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A260477 (n : ℕ) : ℤ :=
  (A260477.P5696824646865594787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A260477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260683.P1450554479988976395

`A081603(A000079(n))`
-/

namespace A260683.P1450554479988976395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A000079 n).toNat

end

end A260683.P1450554479988976395

noncomputable section

/-- A260683: Number of 2's in the expansion of 2^n in base 3.

Offset 0, canonical program `A260683.P1450554479988976395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260683 (n : ℕ) : ℤ :=
  A260683.P1450554479988976395.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260706.P10237371612471039830

`A193832(n)+a(n-1)` with `a(0)=0`
-/

namespace A260706.P10237371612471039830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A193832 n + a (n - 1)

end

end A260706.P10237371612471039830

noncomputable section

/-- A260706: Row sums of A260672.

Offset 0, canonical program `A260706.P10237371612471039830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260706 (n : ℕ) : ℤ :=
  A260706.P10237371612471039830.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261314.P4144115782238317051

`A073846(a(n-1))` with `a(0)=34`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261314.P4144115782238317051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [34] fun n a =>
  A073846 (a (n - 1)).toNat

end

end A261314.P4144115782238317051

noncomputable section

/-- A261314: Rocket Sequence 34: a(0)=34, a(n) = A073846(a(n-1)).

Offset 0, canonical program `A261314.P4144115782238317051`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261314 (n : ℕ) : ℤ :=
  A261314.P4144115782238317051.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261366.P6028586896546902556

`(n*A001316(abs(1-n)))%(n+1)`
-/

namespace A261366.P6028586896546902556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A001316 |1 - (n : ℤ)|.toNat) (n + 1 : ℤ)

end

end A261366.P6028586896546902556

noncomputable section

/-- A261366: a(n) = number of even terms in row n of triangle A261363.

Offset 0, canonical program `A261366.P6028586896546902556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261366 (n : ℕ) : ℤ :=
  A261366.P6028586896546902556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261465.P5878718986034780619

`A036689(n+2)+A001223(n+1)`
-/

namespace A261465.P5878718986034780619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 2) + A001223 (n + 1)

end

end A261465.P5878718986034780619

noncomputable section

/-- A261465: a(n) = prime(n+1)^2 - prime(n).

Offset 1, canonical program `A261465.P5878718986034780619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261465 (n : ℕ) : ℤ :=
  A261465.P5878718986034780619.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261470.P15751200643723974198

`A001223(n+3)-A001223(n+1)`
-/

namespace A261470.P15751200643723974198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 3) - A001223 (n + 1)

end

end A261470.P15751200643723974198

noncomputable section

/-- A261470: a(n) = prime(n+3) - prime(n+2) - prime(n+1) + prime(n).

Offset 1, canonical program `A261470.P15751200643723974198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261470 (n : ℕ) : ℤ :=
  A261470.P15751200643723974198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261619.P18287792765946674938

`floor(A011757(n+1)/A000040(n+1))`
-/

namespace A261619.P18287792765946674938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011757 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A261619.P18287792765946674938

noncomputable section

/-- A261619: a(n) = floor(prime(n^2) / prime(n)).

Offset 1, canonical program `A261619.P18287792765946674938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011757, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261619 (n : ℕ) : ℤ :=
  A261619.P18287792765946674938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011757, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261619.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261621.P1768049004719597412

`A073846(a(n-1))` with `a(0)=42`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261621.P1768049004719597412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [42] fun n a =>
  A073846 (a (n - 1)).toNat

end

end A261621.P1768049004719597412

noncomputable section

/-- A261621: Rocket Sequence 42: a(0) = 42, a(n) = A073846(a(n-1)).

Offset 0, canonical program `A261621.P1768049004719597412`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261621 (n : ℕ) : ℤ :=
  A261621.P1768049004719597412.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261621.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262149.P10407631004289077614

`A073846(a(n-1))` with `a(0)=50`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262149.P10407631004289077614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [50] fun n a =>
  A073846 (a (n - 1)).toNat

end

end A262149.P10407631004289077614

noncomputable section

/-- A262149: Rocket sequence 50: a(0)=50, a(n)=A073846(a(n-1)).

Offset 0, canonical program `A262149.P10407631004289077614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262149 (n : ℕ) : ℤ :=
  A262149.P10407631004289077614.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262149.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262543.P13500433892424337736

`2*(A141351(n)-1)`
-/

namespace A262543.P13500433892424337736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A141351 n - 1)

end

end A262543.P13500433892424337736

noncomputable section

/-- A262543: Number of rooted asymmetrical polyenoids of type U_n* having n edges.

Offset 1, canonical program `A262543.P13500433892424337736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A262543 (n : ℕ) : ℤ :=
  A262543.P13500433892424337736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A262543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265918.P10701562963152787022

`A070939(n)%(A048881(n)+1)`
-/

namespace A265918.P10701562963152787022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 n) (A048881 n + 1)

end

end A265918.P10701562963152787022

noncomputable section

/-- A265918: a(n) = A070939(n) mod A000120(n), where A070939(n) is the binary length of n and A000120(n) is the binary weight of n.

Offset 1, canonical program `A265918.P10701562963152787022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265918 (n : ℕ) : ℤ :=
  A265918.P10701562963152787022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266109.P2256653544982279907

`A087686(1+A188163(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266109.P2256653544982279907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (1 + A188163 (n + 1)).toNat

end

end A266109.P2256653544982279907

noncomputable section

/-- A266109: a(n) = A087686(1+A188163(n)); second column of A265901, second row of A265903.

Offset 1, canonical program `A266109.P2256653544982279907`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, A188163, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266109 (n : ℕ) : ℤ :=
  A266109.P2256653544982279907.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, A188163, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266348.P13843108852213909738

`A004001(n+2)-A266341(A053644(n+1))`
-/

namespace A266348.P13843108852213909738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 2) - A266341 (A053644 (n + 1)).toNat

end

end A266348.P13843108852213909738

noncomputable section

/-- A266348: a(1) = 1; for n > 1, a(n) = A004001(n+1) - A072376(n).

Offset 1, canonical program `A266348.P13843108852213909738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A266348 (n : ℕ) : ℤ :=
  A266348.P13843108852213909738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A266348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266666.P7815966118144532855

`(A137735(n)%2)²`
-/

namespace A266666.P7815966118144532855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137735 n) 2 ^ 2

end

end A266666.P7815966118144532855

noncomputable section

/-- A266666: Triangle read by rows giving successive states of cellular automaton generated by "Rule 51" initiated with a single ON (black) cell.

Offset 0, canonical program `A266666.P7815966118144532855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266666 (n : ℕ) : ℤ :=
  A266666.P7815966118144532855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266754.P13841617243074620179

`(1-A070886(n))^n`
-/

namespace A266754.P13841617243074620179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A070886 n) ^ n

end

end A266754.P13841617243074620179

noncomputable section

/-- A266754: Triangle read by rows giving successive states of cellular automaton generated by "Rule 165" initiated with a single ON (black) cell.

Offset 0, canonical program `A266754.P13841617243074620179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266754 (n : ℕ) : ℤ :=
  A266754.P13841617243074620179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266754.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A267247.P4603199812040826951

`A000007(n)+record[A219843(n)]`
-/

namespace A267247.P4603199812040826951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267247.P4603199812040826951

noncomputable section

/-- A267247: Decimal representation of the n-th iteration of the "Rule 165" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267247.P4603199812040826951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267247 (n : ℕ) : ℤ :=
  A267247.P4603199812040826951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267272.P2548666978376878626

`A267034(n-C(n, C(2, n)))`
-/

namespace A267272.P2548666978376878626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (n - Nat.choose n (Nat.choose 2 n))

end

end A267272.P2548666978376878626

noncomputable section

/-- A267272: Triangle read by rows giving successive states of cellular automaton generated by "Rule 117" initiated with a single ON (black) cell.

Offset 0, canonical program `A267272.P2548666978376878626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267272 (n : ℕ) : ℤ :=
  A267272.P2548666978376878626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267609.P8591642076610455746

`record[or(1, A219843(n)/2)]`
-/

namespace A267609.P8591642076610455746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((A219843 n : ℚ) / 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267609.P8591642076610455746

noncomputable section

/-- A267609: Decimal representation of the n-th iteration of the "Rule 182" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267609.P8591642076610455746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267609 (n : ℕ) : ℤ :=
  A267609.P8591642076610455746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267687.P10819127517150831275

`and(1, A265359(n+1)+and(n, A000267(n+1)))`
-/

namespace A267687.P10819127517150831275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A265359 (n + 1) + Int.land (n : ℤ) (A000267 (n + 1)))

end

end A267687.P10819127517150831275

noncomputable section

/-- A267687: Triangle read by rows giving successive states of cellular automaton generated by "Rule 199" initiated with a single ON (black) cell.

Offset 0, canonical program `A267687.P10819127517150831275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267687 (n : ℕ) : ℤ :=
  A267687.P10819127517150831275.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267813.P16093651698011700365

`A267773(n+1)`
-/

namespace A267813.P16093651698011700365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267773 (n + 1)

end

end A267813.P16093651698011700365

noncomputable section

/-- A267813: Triangle read by rows giving successive states of cellular automaton generated by "Rule 219" initiated with a single ON (black) cell.

Offset 0, canonical program `A267813.P16093651698011700365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267813 (n : ℕ) : ℤ :=
  A267813.P16093651698011700365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268128.P3789248238406704639

`(A000123(n)-A001316(n))/2`
-/

namespace A268128.P3789248238406704639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 n - A001316 n : ℚ) / 2

end

end A268128.P3789248238406704639

noncomputable section

/-- A268128: a(n) = (A000123(n) - A001316)/2.

Offset 0, canonical program `A268128.P3789248238406704639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268128 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268128.P3789248238406704639.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268217.P5610168321208635427

`A133196(n+1)/2*A119741(n+2)`
-/

namespace A268217.P5610168321208635427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133196 (n + 1) : ℚ) / 2 * (A119741 (n + 2) : ℚ)

end

end A268217.P5610168321208635427

noncomputable section

/-- A268217: Triangle read by rows: T(n,k) (n>=3, k=3..n) is the number of topologies t on n points having exactly k open sets such that t contains exactly one open set of size m for each m in {0,2,3,4,...,s,n} where s is the size of the largest proper open set in t.

Offset 3, canonical program `A268217.P5610168321208635427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268217 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268217.P5610168321208635427.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268328.P13273210723323809643

`∩[A024675(n+1), A008706(n+2)]/5`
-/

namespace A268328.P13273210723323809643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 5

end

end A268328.P13273210723323809643

noncomputable section

/-- A268328: Integers of the form (prime(m) + prime(m+1))/10 for some m.

Offset 1, canonical program `A268328.P13273210723323809643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268328 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268328.P13273210723323809643.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268407.P14441244389955032681

`A109263(n+1)+A000108(n)`
-/

namespace A268407.P14441244389955032681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109263 (n + 1) + A000108 n

end

end A268407.P14441244389955032681

noncomputable section

/-- A268407: Number of North-East lattice paths that do not bounce off the diagonal y = x to the right.

Offset 0, canonical program `A268407.P14441244389955032681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A268407 (n : ℕ) : ℤ :=
  A268407.P14441244389955032681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A268407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268732.P7253333164487900378

`∑[A124315(n+1)]`
-/

namespace A268732.P7253333164487900378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268732.P7253333164487900378

noncomputable section

/-- A268732: Sum of the numbers of divisors of gcd(x,y) with x*y <= n.

Offset 1, canonical program `A268732.P7253333164487900378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268732 (n : ℕ) : ℤ :=
  A268732.P7253333164487900378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269027.P11463476603679121488

`A010060(A005351(n))`
-/

namespace A269027.P11463476603679121488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A005351 n).toNat

end

end A269027.P11463476603679121488

noncomputable section

/-- A269027: Parity of the number of 1's in A039724(n).

Offset 0, canonical program `A269027.P11463476603679121488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269027 (n : ℕ) : ℤ :=
  A269027.P11463476603679121488.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269027.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269528.P15804477055261084594

`and(1, A264596(2*A005351(n)))`
-/

namespace A269528.P15804477055261084594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A264596 (2 * A005351 n).toNat)

end

end A269528.P15804477055261084594

noncomputable section

/-- A269528: Parity of number of runs of 1's in negabinary representation of n.

Offset 0, canonical program `A269528.P15804477055261084594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269528 (n : ℕ) : ℤ :=
  A269528.P15804477055261084594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269850.P6987586977767832841

`1-A269849(n+1)+n`
-/

namespace A269850.P6987586977767832841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A269849 (n + 1) + (n : ℤ)

end

end A269850.P6987586977767832841

noncomputable section

/-- A269850: a(n) = number of integers k <= n for which prime(k+1)-prime(k) is a multiple of three.

Offset 1, canonical program `A269850.P6987586977767832841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269850 (n : ℕ) : ℤ :=
  A269850.P6987586977767832841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270106.P18066099386289680719

`∑[A000079(A056792(2*n))]`
-/

namespace A270106.P18066099386289680719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056792 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P18066099386289680719

noncomputable section

/-- A270106: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270106.P18066099386289680719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A270106 (n : ℕ) : ℤ :=
  A270106.P18066099386289680719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A270106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270107.P28231735696589533

`Δ[A000079(A056792(2*n))]`
-/

namespace A270107.P28231735696589533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056792 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P28231735696589533

noncomputable section

/-- A270107: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270107.P28231735696589533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4634 terms. -/
def A270107 (n : ℕ) : ℤ :=
  A270107.P28231735696589533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4634 terms. -/
def A270107.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A270299.P14931526767613465720

`88*A236206(n+1)`
-/

namespace A270299.P14931526767613465720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  88 * A236206 (n + 1)

end

end A270299.P14931526767613465720

noncomputable section

/-- A270299: Numbers which are representable as a sum of eleven but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270299.P14931526767613465720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236206, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270299 (n : ℕ) : ℤ :=
  A270299.P14931526767613465720.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236206, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270774.P9173378272536170861

`(A005706(n)-A194459(n))/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A270774.P9173378272536170861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005706 n - A194459 n : ℚ) / 5

end

end A270774.P9173378272536170861

noncomputable section

/-- A270774: a(n) = (A005706(n) - A194459(n))/5.

Offset 0, canonical program `A270774.P9173378272536170861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270774 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A270774.P9173378272536170861.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270774.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270803.P9719610015116545739

`and(A151666(ceil(n/2)), A251720(n+1))`
-/

namespace A270803.P9719610015116545739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151666 ⌈(n : ℚ) / 2⌉.toNat) (A251720 (n + 1))

end

end A270803.P9719610015116545739

noncomputable section

/-- A270803: Formal inverse of Thue-Morse sequence A010060.

Offset 0, canonical program `A270803.P9719610015116545739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270803 (n : ℕ) : ℤ :=
  A270803.P9719610015116545739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270828.P4533327443574597261

`∑[A011974(2*n+1)]%A000040(n+1)`
-/

namespace A270828.P4533327443574597261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A270828.P4533327443574597261

noncomputable section

/-- A270828: a(n) = (Sum_{k=1..2n-1} prime(k)) mod prime(n).

Offset 1, canonical program `A270828.P4533327443574597261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A270828 (n : ℕ) : ℤ :=
  A270828.P4533327443574597261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A270828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271043.P14262682976509013838

`p?[A067790(n+1)]`
-/

namespace A271043.P14262682976509013838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271043.P14262682976509013838

noncomputable section

/-- A271043: Primes p such that p and prime(p) end with the same digit.

Offset 1, canonical program `A271043.P14262682976509013838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A271043 (n : ℕ) : ℤ :=
  A271043.P14262682976509013838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A271043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271999.P7167033125042987843

`A018227(n+1)-A033999(A159461(n+1))`
-/

namespace A271999.P7167033125042987843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1) - A033999 (A159461 (n + 1)).toNat

end

end A271999.P7167033125042987843

noncomputable section

/-- A271999: Halogen sequence: a(n) = A018227(n)-1.

Offset 1, canonical program `A271999.P7167033125042987843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271999 (n : ℕ) : ℤ :=
  A271999.P7167033125042987843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272476.P12077626384774782464

`(n+3)%(A007918(n)+3)+n`
-/

namespace A272476.P12077626384774782464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A007918 n + 3) + (n : ℤ)

end

end A272476.P12077626384774782464

noncomputable section

/-- A272476: a(n) = n if n is prime, a(n) = 2*n+3 otherwise.

Offset 0, canonical program `A272476.P12077626384774782464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272476 (n : ℕ) : ℤ :=
  A272476.P12077626384774782464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272900.P12902754051628015523

`A008967(4*n+5)`
-/

namespace A272900.P12902754051628015523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008967 (4 * n + 5)

end

end A272900.P12902754051628015523

noncomputable section

/-- A272900: Fibonacci-products fractal sequence.

Offset 1, canonical program `A272900.P12902754051628015523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272900 (n : ℕ) : ℤ :=
  A272900.P12902754051628015523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272928.P5031657854594105114

`∑[floor(A160410(n)/3)]`
-/

namespace A272928.P5031657854594105114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160410 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272928.P5031657854594105114

noncomputable section

/-- A272928: Partial sums of A147562.

Offset 0, canonical program `A272928.P5031657854594105114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. -/
def A272928 (n : ℕ) : ℤ :=
  A272928.P5031657854594105114.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. -/
def A272928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273019.P13210225163452937065

`A005717(2*n+1)-A099252(n)`
-/

namespace A273019.P13210225163452937065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (2 * n + 1) - A099252 n

end

end A273019.P13210225163452937065

noncomputable section

/-- A273019: a(n) = hypergeom([-2*n-1, 1/2], [2], 4) + (2*n+1)*hypergeom([-n+1/2, -n], [2], 4).

Offset 0, canonical program `A273019.P13210225163452937065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A273019 (n : ℕ) : ℤ :=
  A273019.P13210225163452937065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A273019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273129.P1966559582175092992

`1-A171587(n+1)`
-/

namespace A273129.P1966559582175092992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A171587 (n + 1)

end

end A273129.P1966559582175092992

noncomputable section

/-- A273129: The Rote-Fibonacci infinite sequence.

Offset 0, canonical program `A273129.P1966559582175092992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6765 terms. -/
def A273129 (n : ℕ) : ℤ :=
  A273129.P1966559582175092992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6765 terms. -/
def A273129.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A273577.P15347930587704899884

`A069894(n)-or(1, A102376(n))`
-/

namespace A273577.P15347930587704899884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - Int.lor 1 (A102376 n)

end

end A273577.P15347930587704899884

noncomputable section

/-- A273577: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 803", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273577.P15347930587704899884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2919 terms. -/
def A273577 (n : ℕ) : ℤ :=
  A273577.P15347930587704899884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2919 terms. -/
def A273577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273677.P3661748519550536159

`abs(A081436(n)-A254667(n))`
-/

namespace A273677.P3661748519550536159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081436 n - A254667 n|

end

end A273677.P3661748519550536159

noncomputable section

/-- A273677: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273677.P3661748519550536159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2938 terms. -/
def A273677 (n : ℕ) : ℤ :=
  A273677.P3661748519550536159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2938 terms. -/
def A273677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274034.P6668103445242214746

`eq[0, A101436(n+1)]+1`
-/

namespace A274034.P6668103445242214746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274034.P6668103445242214746

noncomputable section

/-- A274034: Numbers whose exponents in their prime power factorizations are not primes.

Offset 1, canonical program `A274034.P6668103445242214746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6511 terms. -/
def A274034 (n : ℕ) : ℤ :=
  (A274034.P6668103445242214746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6511 terms. -/
def A274034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274093.P3378925896752465146

`a(n-1)-A010816(n-1)` with `a(0)=0`
-/

namespace A274093.P3378925896752465146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A010816 (n - 1)

end

end A274093.P3378925896752465146

noncomputable section

/-- A274093: a(0)=0; thereafter (-1)^n*n appears n times.

Offset 0, canonical program `A274093.P3378925896752465146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274093 (n : ℕ) : ℤ :=
  A274093.P3378925896752465146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274141.P9075115195362516254

`eq[1, A294619(A336551(n+1))]+1`
-/

namespace A274141.P9075115195362516254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (A336551 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274141.P9075115195362516254

noncomputable section

/-- A274141: Positive numbers divisible by 3^3 or by the square of some other prime.

Offset 1, canonical program `A274141.P9075115195362516254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274141 (n : ℕ) : ℤ :=
  (A274141.P9075115195362516254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274179.P14958537973323220496

`A023531(A017005(n))`
-/

namespace A274179.P14958537973323220496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A017005 n).toNat

end

end A274179.P14958537973323220496

noncomputable section

/-- A274179: Expansion of f(x^1, x^6) in powers of x where f() is Ramanujan's general theta function.

Offset 0, canonical program `A274179.P14958537973323220496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274179 (n : ℕ) : ℤ :=
  A274179.P14958537973323220496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274179.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A274263.P9426455071173877905`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274263 (n : ℕ) : ℤ :=
  A274263.P9426455071173877905.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274263.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A275206.P3060918531879445442

`Δ[(4-6/(n+1))*a(n-1)]%A007595(n+1)` with `a(0)=1`
-/

namespace A275206.P3060918531879445442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (A007595 (n + 1))

end

end A275206.P3060918531879445442

noncomputable section

/-- A275206: Expansion of (A(x)^2 - A(x^2))/2 where A(x) = A000108(x) - 1.

Offset 0, canonical program `A275206.P3060918531879445442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A275206 (n : ℕ) : ℤ :=
  A275206.P3060918531879445442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A275206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275222.P2051820910365035933

`A196630(n+2)-A057428(n)`
-/

namespace A275222.P2051820910365035933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196630 (n + 2) - A057428 n

end

end A275222.P2051820910365035933

noncomputable section

/-- A275222: Number of n X 2 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,0) and new values introduced in order 0..2.

Offset 1, canonical program `A275222.P2051820910365035933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A275222 (n : ℕ) : ℤ :=
  A275222.P2051820910365035933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A275222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275238.P2529277380881640300

`xor(1, n*(A178914(n)+1+n))`
-/

namespace A275238.P2529277380881640300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * (A178914 n + 1 + (n : ℤ)))

end

end A275238.P2529277380881640300

noncomputable section

/-- A275238: a(n) = n*(10^floor(log_10(n)+1) + 1) + (-1)^n.

Offset 0, canonical program `A275238.P2529277380881640300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275238 (n : ℕ) : ℤ :=
  A275238.P2529277380881640300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275289.P10625359432271309099

`A026165(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A275289.P10625359432271309099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026165 n + a (n - 2)

end

end A275289.P10625359432271309099

noncomputable section

/-- A275289: Number of set partitions of [n] with symmetric block size list of length three.

Offset 3, canonical program `A275289.P10625359432271309099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A275289 (n : ℕ) : ℤ :=
  A275289.P10625359432271309099.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A275289.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A275988.P2515707421048682127

`A031336(n+1)-A000040(n+1)`
-/

namespace A275988.P2515707421048682127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) - A000040 (n + 1)

end

end A275988.P2515707421048682127

noncomputable section

/-- A275988: a(n) = prime(3n) - prime(n).

Offset 1, canonical program `A275988.P2515707421048682127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275988 (n : ℕ) : ℤ :=
  A275988.P2515707421048682127.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276000.P16396236457092608332

`A184985(n+1)+A175856(n+1)`
-/

namespace A276000.P16396236457092608332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (n + 1) + A175856 (n + 1)

end

end A276000.P16396236457092608332

noncomputable section

/-- A276000: Least k such that n! divides phi(k!) (k > 0).

Offset 1, canonical program `A276000.P16396236457092608332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276000 (n : ℕ) : ℤ :=
  A276000.P16396236457092608332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276134.P17715433807570833748

`∑{digits}[A007091(n), A192085(A192085(#))]`
-/

namespace A276134.P17715433807570833748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A192085 (A192085 x).toNat).sum

end

end A276134.P17715433807570833748

noncomputable section

/-- A276134: a(5n) = a(n), a(5n+1) = a(5n+2) = a(5n+3) = a(5n+4) = a(n) + 1, a(0) = 0.

Offset 0, canonical program `A276134.P17715433807570833748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276134 (n : ℕ) : ℤ :=
  A276134.P17715433807570833748.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276150.P11723566750596417578

`1+a(n-A260188(n))` with `a(0)=0`
-/

namespace A276150.P11723566750596417578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ((n : ℤ) - A260188 n).toNat

end

end A276150.P11723566750596417578

noncomputable section

/-- A276150: Sum of digits when n is written in primorial base (A049345); minimal number of primorials (A002110) that add to n.

Offset 0, canonical program `A276150.P11723566750596417578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276150 (n : ℕ) : ℤ :=
  (A276150.P11723566750596417578.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276150.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A276307.P8997433821484487146

`p?[floor(A267891(n+1)/2)]`
-/

namespace A276307.P8997433821484487146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267891 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276307.P8997433821484487146

noncomputable section

/-- A276307: Primes p such that d(p*(2p+1)) = 16 where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A276307.P8997433821484487146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. -/
def A276307 (n : ℕ) : ℤ :=
  A276307.P8997433821484487146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. -/
def A276307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276309.P8818592185255775317

`floor(A001223(n+3)/A001223(n+1))`
-/

namespace A276309.P8818592185255775317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001223 (n + 3) : ℚ) / (A001223 (n + 1) : ℚ)⌋

end

end A276309.P8818592185255775317

noncomputable section

/-- A276309: Integer part of the ratio of alternate consecutive prime gaps.

Offset 1, canonical program `A276309.P8818592185255775317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276309 (n : ℕ) : ℤ :=
  A276309.P8818592185255775317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276389.P3834930374717209442

`eq[0, A027868(n)-A090621(n)]`
-/

namespace A276389.P3834930374717209442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n - A090621 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276389.P3834930374717209442

noncomputable section

/-- A276389: Numbers n such that n! ends in the same number of 0's in both base 10 and base 16.

Offset 1, canonical program `A276389.P3834930374717209442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3069 terms. -/
def A276389 (n : ℕ) : ℤ :=
  (A276389.P3834930374717209442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3069 terms. -/
def A276389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276561.P15739790464828978968

`floor(A091931(n+2)/2)`
-/

namespace A276561.P15739790464828978968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091931 (n + 2) : ℚ) / 2⌋

end

end A276561.P15739790464828978968

noncomputable section

/-- A276561: For n-th odd prime prime(n) in binary form, a(n) is the decimal value of the bits in between the most significant and least significant bits which are both 1. Since there are no middle bits for odd_prime(1) = 3 = (11)_2, a(1) = 0.

Offset 1, canonical program `A276561.P15739790464828978968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A276561 (n : ℕ) : ℤ :=
  A276561.P15739790464828978968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A276561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276621.P8554351487063663393

`∑[char[A261232(n)]]`
-/

namespace A276621.P8554351487063663393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261232 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276621.P8554351487063663393

noncomputable section

/-- A276621: After a(0)=0, each n occurs A261234(n-1) times.

Offset 0, canonical program `A276621.P8554351487063663393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6251 terms. -/
def A276621 (n : ℕ) : ℤ :=
  (A276621.P8554351487063663393.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6251 terms. -/
def A276621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276736.P6839819516574191289

`lcm(n+1, A007429(n+1))/(n+1)`
-/

namespace A276736.P6839819516574191289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A007429 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A276736.P6839819516574191289

noncomputable section

/-- A276736: a(n) = numerator of Sum_{d|n} tau(d)/d.

Offset 1, canonical program `A276736.P6839819516574191289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276736 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276736.P6839819516574191289.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276737.P10584001989765576024

`(n+1)/gcd(n+1, A007429(n+1))`
-/

namespace A276737.P10584001989765576024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A007429 (n + 1)) : ℚ)

end

end A276737.P10584001989765576024

noncomputable section

/-- A276737: a(n) = denominator of Sum_{d|n} tau(d)/d.

Offset 1, canonical program `A276737.P10584001989765576024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276737 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276737.P10584001989765576024.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276812.P2217875081262429176

`A031131(n+1)%A001223(n+1)`
-/

namespace A276812.P2217875081262429176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031131 (n + 1)) (A001223 (n + 1))

end

end A276812.P2217875081262429176

noncomputable section

/-- A276812: Prime gap residues mod previous prime gap.

Offset 1, canonical program `A276812.P2217875081262429176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276812 (n : ℕ) : ℤ :=
  A276812.P2217875081262429176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276879.P10970740228062955951

`A188042(A188298(2*n+1)+n)`
-/

namespace A276879.P10970740228062955951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (A188298 (2 * n + 1) + (n : ℤ)).toNat

end

end A276879.P10970740228062955951

noncomputable section

/-- A276879: Sums-complement of the Beatty sequence for 1 + sqrt(2).

Offset 1, canonical program `A276879.P10970740228062955951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A276879 (n : ℕ) : ℤ :=
  A276879.P10970740228062955951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A276879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276963.P164865024294200041

`Δ[(1-A066872(n+1))²]`
-/

namespace A276963.P164865024294200041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A066872 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P164865024294200041

noncomputable section

/-- A276963: a(n) = prime(n+1)^4 - prime(n)^4.

Offset 1, canonical program `A276963.P164865024294200041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276963 (n : ℕ) : ℤ :=
  A276963.P164865024294200041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277368.P2770458880963617441

`eq[0, A160550(n+1)]+1`
-/

namespace A277368.P2770458880963617441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277368.P2770458880963617441

noncomputable section

/-- A277368: Numbers such that the number of their divisors divide the sum of their aliquot parts.

Offset 1, canonical program `A277368.P2770458880963617441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A277368 (n : ℕ) : ℤ :=
  (A277368.P2770458880963617441.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A277368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277551.P2486715914550172884

`record[A000217(A277548(n+1))%A277548(n+1)]`
-/

namespace A277551.P2486715914550172884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A277548 (n + 1)).toNat) (A277548 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277551.P2486715914550172884

noncomputable section

/-- A277551: Numbers k such that k/5^m == 2 (mod 5), where 5^m is the greatest power of 5 that divides k.

Offset 1, canonical program `A277551.P2486715914550172884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A277551 (n : ℕ) : ℤ :=
  A277551.P2486715914550172884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A277551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277627.P6584579301111323018

`C(A181940(n), A025581(A080036(n)))`
-/

namespace A277627.P6584579301111323018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181940 n).toNat (A025581 (A080036 n).toNat).toNat

end

end A277627.P6584579301111323018

noncomputable section

/-- A277627: Square array read by antidiagonals downwards: T(n,k), n>=0, k>=0, in which column 0 is equal to A057427: 0, 1, 1, 1, ..., and for k > 0 column k lists two zeros followed by the partial sums of column k-1.

Offset 0, canonical program `A277627.P6584579301111323018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A277627 (n : ℕ) : ℤ :=
  (A277627.P6584579301111323018.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A277627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279209.P393407883981076372

`A090996(A035327(n))`
-/

namespace A279209.P393407883981076372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A035327 n).toNat

end

end A279209.P393407883981076372

noncomputable section

/-- A279209: Length of first run of 0's in binary expansion of n.

Offset 0, canonical program `A279209.P393407883981076372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279209 (n : ℕ) : ℤ :=
  A279209.P393407883981076372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279210.P556875708574037845

`A090996(A087734(n))`
-/

namespace A279210.P556875708574037845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A087734 n).toNat

end

end A279210.P556875708574037845

noncomputable section

/-- A279210: Length of second run of 1's in binary expansion of n.

Offset 0, canonical program `A279210.P556875708574037845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279210 (n : ℕ) : ℤ :=
  A279210.P556875708574037845.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279984.P16893894406181977355

`A278029(A000040(n+1))`
-/

namespace A279984.P16893894406181977355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A000040 (n + 1)).toNat

end

end A279984.P16893894406181977355

noncomputable section

/-- A279984: Positions of the prime numbers in the sequence of numbers that are not perfect powers (A007916).

Offset 1, canonical program `A279984.P16893894406181977355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A279984 (n : ℕ) : ℤ :=
  A279984.P16893894406181977355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A279984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280076.P4901522912243900716

`(A162177(n+1)+1+n)²`
-/

namespace A280076.P4901522912243900716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162177 (n + 1) + 1 + (n : ℤ)) ^ 2

end

end A280076.P4901522912243900716

noncomputable section

/-- A280076: Numbers n such that Sum_{d|n} tau(d) = Product_{d|n} tau(d).

Offset 1, canonical program `A280076.P4901522912243900716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280076 (n : ℕ) : ℤ :=
  A280076.P4901522912243900716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280077.P17597455334426451579

`∑[A007429(n+1)]`
-/

namespace A280077.P17597455334426451579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280077.P17597455334426451579

noncomputable section

/-- A280077: Partial sums of A007429 (Sum_{d|n} sigma(d)).

Offset 1, canonical program `A280077.P17597455334426451579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280077 (n : ℕ) : ℤ :=
  A280077.P17597455334426451579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280085.P11023069278118658947

`∑[A206032(n+1)]`
-/

namespace A280085.P11023069278118658947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280085.P11023069278118658947

noncomputable section

/-- A280085: Partial sums of A206032 (Product_{d|n} sigma(d)).

Offset 1, canonical program `A280085.P11023069278118658947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A280085 (n : ℕ) : ℤ :=
  A280085.P11023069278118658947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A280085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280580.P3824912328366219957

`A000108(A025581(n))*A086645(n)`
-/

namespace A280580.P3824912328366219957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A025581 n).toNat * A086645 n

end

end A280580.P3824912328366219957

noncomputable section

/-- A280580: Triangle read by rows: T(n,k) = binomial(2*n,2*k)*binomial(2*n-2*k,n-k)/(n+1-k) for 0<=k<=n.

Offset 0, canonical program `A280580.P3824912328366219957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6136 terms. -/
def A280580 (n : ℕ) : ℤ :=
  A280580.P3824912328366219957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6136 terms. -/
def A280580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280891.P1764150059183000184

`A000245(n)+∑[A026012(n)]`
-/

namespace A280891.P1764150059183000184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280891.P1764150059183000184

noncomputable section

/-- A280891: Number of certain noncrossing set partitions.

Offset 1, canonical program `A280891.P1764150059183000184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A280891 (n : ℕ) : ℤ :=
  A280891.P1764150059183000184.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A280891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280998.P3756375050482110601

`eq[2, ∏{e}[A005811(n)², #]]`
-/

namespace A280998.P3756375050482110601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280998.P3756375050482110601

noncomputable section

/-- A280998: Numbers with a prime number of 1's in their binary reflected Gray code representation.

Offset 1, canonical program `A280998.P3756375050482110601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4049 terms. -/
def A280998 (n : ℕ) : ℤ :=
  (A280998.P3756375050482110601.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4049 terms. -/
def A280998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281593.P9505867882038692606

`2*A279561(n)-1`
-/

namespace A281593.P9505867882038692606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A279561 n - 1

end

end A281593.P9505867882038692606

noncomputable section

/-- A281593: a(n) = b(n) - Sum_{j=0..n-1} b(j) with b(n) = binomial(2*n, n).

Offset 0, canonical program `A281593.P9505867882038692606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A281593 (n : ℕ) : ℤ :=
  A281593.P9505867882038692606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A281593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281814.P10466637336053140821

`A023531(A017221(n))`
-/

namespace A281814.P10466637336053140821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A017221 n).toNat

end

end A281814.P10466637336053140821

noncomputable section

/-- A281814: Expansion of f(x, x^8) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281814.P10466637336053140821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281814 (n : ℕ) : ℤ :=
  A281814.P10466637336053140821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282004.P11991646138547053131

`A277866(n)+A134451(n)`
-/

namespace A282004.P11991646138547053131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277866 n + A134451 n

end

end A282004.P11991646138547053131

noncomputable section

/-- A282004: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282004.P11991646138547053131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A282004 (n : ℕ) : ℤ :=
  A282004.P11991646138547053131.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A282004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282744.P1762005596893593105

`A025581(eq[1, A130658(A002262(n))])`
-/

namespace A282744.P1762005596893593105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282744.P1762005596893593105

noncomputable section

/-- A282744: Irregular triangle read by rows, giving coefficients arising when solving g(n) = f(n)+ f(n-1) + f(n-2) + f(n-3) for f(n).

Offset 0, canonical program `A282744.P1762005596893593105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A282744 (n : ℕ) : ℤ :=
  A282744.P1762005596893593105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A282744.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A282800.P6996715877617918698

`A282796(n)-A199969(n+1)+n`
-/

namespace A282800.P6996715877617918698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282796 n - A199969 (n + 1) + (n : ℤ)

end

end A282800.P6996715877617918698

noncomputable section

/-- A282800: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282800.P6996715877617918698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282800 (n : ℕ) : ℤ :=
  A282800.P6996715877617918698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282807.P18360293587331063432

`A095121(n)+1-A282388(n)`
-/

namespace A282807.P18360293587331063432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A282388 n)

end

end A282807.P18360293587331063432

noncomputable section

/-- A282807: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282807.P18360293587331063432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A282807 (n : ℕ) : ℤ :=
  A282807.P18360293587331063432.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A282807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283317.P17118573524570604165

`val(A194459(n), 5)%2`
-/

namespace A283317.P17118573524570604165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194459 n).toNat 5 % 2

end

end A283317.P17118573524570604165

noncomputable section

/-- A283317: Image of 0 under repeated applications of the morphism 0 -> 0,0,0,0,1, 1 -> 1,1,1,1,0.

Offset 1, canonical program `A283317.P17118573524570604165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283317 (n : ℕ) : ℤ :=
  (A283317.P17118573524570604165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283682.P4865830773752955045

`a(A002262(n))+a(A025581(n))` with `a(0)=0, a(1)=1`
-/

namespace A283682.P4865830773752955045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A002262 n).toNat + a (A025581 n).toNat

end

end A283682.P4865830773752955045

noncomputable section

/-- A283682: Unique sequence with a(1)=0, a(2)=1, representing an array T(i,j) read by antidiagonals in which T(i,j) = a(i) + a(j).

Offset 1, canonical program `A283682.P4865830773752955045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283682 (n : ℕ) : ℤ :=
  (A283682.P4865830773752955045.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283800.P14027803973692212953

`eq[1, abs(A065363(n))]`
-/

namespace A283800.P14027803973692212953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065363 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P14027803973692212953

noncomputable section

/-- A283800: Numbers such that the sum of trits of its balanced ternary representation is 1 or -1.

Offset 1, canonical program `A283800.P14027803973692212953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2920 terms. -/
def A283800 (n : ℕ) : ℤ :=
  (A283800.P14027803973692212953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2920 terms. -/
def A283800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284023.P9449801284099528945

`A126646(n)-A273973(n)%A126646(n)`
-/

namespace A284023.P9449801284099528945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A273973 n) (A126646 n)

end

end A284023.P9449801284099528945

noncomputable section

/-- A284023: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284023.P9449801284099528945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A284023 (n : ℕ) : ℤ :=
  A284023.P9449801284099528945.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A284023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284104.P13760200148477607299

`A078182((n+1)/(n+1-and(n, n+1)))`
-/

namespace A284104.P13760200148477607299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat

end

end A284104.P13760200148477607299

noncomputable section

/-- A284104: a(n) = Sum_{d|n, d == 5 (mod 6)} d.

Offset 1, canonical program `A284104.P13760200148477607299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284104 (n : ℕ) : ℤ :=
  A284104.P13760200148477607299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284173.P17227999024753311474

`A280706(n+1)%(n+1)`
-/

namespace A284173.P17227999024753311474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280706 (n + 1)) (n + 1 : ℤ)

end

end A284173.P17227999024753311474

noncomputable section

/-- A284173: a(n) = (Sum_{k=1..n} q(k+1-q(k))) mod n where q(k) = A005185(k).

Offset 1, canonical program `A284173.P17227999024753311474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284173 (n : ℕ) : ℤ :=
  A284173.P17227999024753311474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284677.P16819107862571488426

`A230901((2*n+1)%(n+3))`
-/

namespace A284677.P16819107862571488426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230901 ((2 * n + 1) % (n + 3))

end

end A284677.P16819107862571488426

noncomputable section

/-- A284677: 1-limiting word of the morphism 0->1, 1-> 0111.

Offset 1, canonical program `A284677.P16819107862571488426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284677 (n : ℕ) : ℤ :=
  A284677.P16819107862571488426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284778.P4992790969954017834

`Δ[A187306(n)+n%2]`
-/

namespace A284778.P4992790969954017834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187306 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284778.P4992790969954017834

noncomputable section

/-- A284778: Number of self-avoiding planar walks of length n+1 starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) with the restriction that (0,1) is never used below the diagonal and (1,0) is never used above the diagonal.

Offset 0, canonical program `A284778.P4992790969954017834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A284778 (n : ℕ) : ℤ :=
  A284778.P4992790969954017834.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A284778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284852.P8629922077169779044

`a(n-1)+A284505(n)+1` with `a(0)=1`
-/

namespace A284852.P8629922077169779044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284505 n + 1)

end

end A284852.P8629922077169779044

noncomputable section

/-- A284852: Positions of 0 in A284851; complement of A284853.

Offset 1, canonical program `A284852.P8629922077169779044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284852 (n : ℕ) : ℤ :=
  A284852.P8629922077169779044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284963.P4374081168494453790

`A284921(n+1)+A256077(n+1)`
-/

namespace A284963.P4374081168494453790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) + A256077 (n + 1)

end

end A284963.P4374081168494453790

noncomputable section

/-- A284963: Numbers with digits 3 and 8 only.

Offset 1, canonical program `A284963.P4374081168494453790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284963 (n : ℕ) : ℤ :=
  A284963.P4374081168494453790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285196.P9246399367700703755

`and(1, A081603(A001057(n)+n))`
-/

namespace A285196.P9246399367700703755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A081603 (A001057 n + (n : ℤ)).toNat)

end

end A285196.P9246399367700703755

noncomputable section

/-- A285196: If A_k denotes the first 2*3^k terms, then A_0 = 01, A_{k+1} = A_k A_k B_k, where B_k is the reversal of A_k.

Offset 0, canonical program `A285196.P9246399367700703755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285196 (n : ℕ) : ℤ :=
  A285196.P9246399367700703755.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285301.P15481445537404747309

`floor(Δ[A284371(n+1)/2])`
-/

namespace A285301.P15481445537404747309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284371 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A285301.P15481445537404747309

noncomputable section

/-- A285301: Fixed point of the morphism 0 -> 10, 1 -> 1000.

Offset 1, canonical program `A285301.P15481445537404747309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285301 (n : ℕ) : ℤ :=
  A285301.P15481445537404747309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285347.P10878793886673022585

`A284907(n+1)-1`
-/

namespace A285347.P10878793886673022585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1) - 1

end

end A285347.P10878793886673022585

noncomputable section

/-- A285347: Positions of 1 in A285345; complement of A285346.

Offset 1, canonical program `A285347.P10878793886673022585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285347 (n : ℕ) : ℤ :=
  A285347.P10878793886673022585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285773.P10275403914654428335

`lcm(A056594(n), A285436(n))`
-/

namespace A285773.P10275403914654428335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A285436 n)

end

end A285773.P10275403914654428335

noncomputable section

/-- A285773: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285773.P10275403914654428335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A285773 (n : ℕ) : ℤ :=
  (A285773.P10275403914654428335.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A285773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285786.P15997609782870965771

`A028310(A285269(n))`
-/

namespace A285786.P15997609782870965771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A285269 n).toNat

end

end A285786.P15997609782870965771

noncomputable section

/-- A285786: Number of primes p with 2(n-1)^2 < p <= 2n^2.

Offset 1, canonical program `A285786.P15997609782870965771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285786 (n : ℕ) : ℤ :=
  A285786.P15997609782870965771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285786.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A285957.P3290287961644241447

`A010060(eq[1, A127254(2*n)])`
-/

namespace A285957.P3290287961644241447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285957.P3290287961644241447

noncomputable section

/-- A285957: {01->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285957.P3290287961644241447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285957 (n : ℕ) : ℤ :=
  A285957.P3290287961644241447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285966.P18243699786434963245

`A010060(lt[0, A127254(n)])`
-/

namespace A285966.P18243699786434963245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A285966.P18243699786434963245

noncomputable section

/-- A285966: {11->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285966.P18243699786434963245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285966 (n : ℕ) : ℤ :=
  A285966.P18243699786434963245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285976.P3167710353206823821

`record[xor(n+1, A010060(n))]+n`
-/

namespace A285976.P3167710353206823821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A010060 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A285976.P3167710353206823821

noncomputable section

/-- A285976: Positions of 0 in A285975; complement of A285977.

Offset 1, canonical program `A285976.P3167710353206823821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285976 (n : ℕ) : ℤ :=
  A285976.P3167710353206823821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286298.P9111463687981062260

`A005811(n)+A070939(n)-1`
-/

namespace A286298.P9111463687981062260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n + (A070939 n - 1)

end

end A286298.P9111463687981062260

noncomputable section

/-- A286298: a(0) = 0, a(1) = 1; thereafter, a(2n) = a(n) + 1 + (n mod 2), a(2n+1) = a(n) + 2 - (n mod 2).

Offset 0, canonical program `A286298.P9111463687981062260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286298 (n : ℕ) : ℤ :=
  A286298.P9111463687981062260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286462.P12197192580777352399

`1/2*(2+(A051064(n+1)+A089309(n+1))²-A051064(n+1)-3*A089309(n+1))`
-/

namespace A286462.P12197192580777352399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A051064 (n + 1) + A089309 (n + 1)) ^ 2 - A051064 (n + 1) - 3 * A089309 (n + 1) : ℚ)

end

end A286462.P12197192580777352399

noncomputable section

/-- A286462: Compound filter (3-adic valuation & the length of rightmost run of 1's in base-2): a(n) = P(A051064(n), A089309(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286462.P12197192580777352399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286462 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286462.P12197192580777352399.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286576.P18236901123644785812

`A001316(n)%A048883(C(and(n, 3*n), n))`
-/

namespace A286576.P18236901123644785812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 n) (A048883 (Nat.choose (Nat.land n (3 * n)) n))

end

end A286576.P18236901123644785812

noncomputable section

/-- A286576: a(n) = A132971(n) mod 3.

Offset 0, canonical program `A286576.P18236901123644785812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286576 (n : ℕ) : ℤ :=
  A286576.P18236901123644785812.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286679.P15446542537714690972

`2*A024700(n+1)+1`
-/

namespace A286679.P15446542537714690972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024700 (n + 1) + 1

end

end A286679.P15446542537714690972

noncomputable section

/-- A286679: a(n) = (2*prime(n)^2 + 1)/3.

Offset 3, canonical program `A286679.P15446542537714690972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286679 (n : ℕ) : ℤ :=
  A286679.P15446542537714690972.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286692.P16986880809389966464

`A286689(n+1)+∑[A286665(n+1)]`
-/

namespace A286692.P16986880809389966464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286689 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286692.P16986880809389966464

noncomputable section

/-- A286692: Positions of 0 in A286691; complement of A286693.

Offset 1, canonical program `A286692.P16986880809389966464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286692 (n : ℕ) : ℤ :=
  A286692.P16986880809389966464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286901.P11134869275173269859

`A000217(n+3)-A000217(A070320(n+2))`
-/

namespace A286901.P11134869275173269859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3) - A000217 (A070320 (n + 2)).toNat

end

end A286901.P11134869275173269859

noncomputable section

/-- A286901: Sum of the numbers from prevprime(n) to n.

Offset 3, canonical program `A286901.P11134869275173269859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A286901 (n : ℕ) : ℤ :=
  A286901.P11134869275173269859.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A286901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286996.P13697868704389971951

`A187969(A104521(n)+n)`
-/

namespace A286996.P13697868704389971951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187969 (A104521 n + (n : ℤ)).toNat

end

end A286996.P13697868704389971951

noncomputable section

/-- A286996: {0->000, 11->null}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286996.P13697868704389971951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286996 (n : ℕ) : ℤ :=
  A286996.P13697868704389971951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286997.P246402110141512210

`A097508(A008620(n))+1+n`
-/

namespace A286997.P246402110141512210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A008620 n).toNat + 1 + (n : ℤ)

end

end A286997.P246402110141512210

noncomputable section

/-- A286997: Positions of 0 in A286996; complement of A188383.

Offset 1, canonical program `A286997.P246402110141512210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286997 (n : ℕ) : ℤ :=
  A286997.P246402110141512210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287552.P9966408718549005967

`eq[0, A053839(n)]+1`
-/

namespace A287552.P9966408718549005967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287552.P9966408718549005967

noncomputable section

/-- A287552: Positions of 0 in A053839.

Offset 1, canonical program `A287552.P9966408718549005967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A287552 (n : ℕ) : ℤ :=
  (A287552.P9966408718549005967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A287552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287774.P8513331073826968044

`a(n-1)+A187944(n)+1` with `a(0)=1`
-/

namespace A287774.P8513331073826968044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A187944 n + 1)

end

end A287774.P8513331073826968044

noncomputable section

/-- A287774: Positions of 0 in A287773; complement of A287777.

Offset 1, canonical program `A287774.P8513331073826968044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287774 (n : ℕ) : ℤ :=
  A287774.P8513331073826968044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287791.P11213097191955050961

`A050140(A001950(n+1)-A050140(n+1))+n`
-/

namespace A287791.P11213097191955050961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (A001950 (n + 1) - A050140 (n + 1)).toNat + (n : ℤ)

end

end A287791.P11213097191955050961

noncomputable section

/-- A287791: Positions of 0 in A287790; complement of A287792.

Offset 1, canonical program `A287791.P11213097191955050961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287791 (n : ℕ) : ℤ :=
  A287791.P11213097191955050961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288194.P11979238916523902207

`A286863(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A288194.P11979238916523902207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A286863 n - a (n - 1)

end

end A288194.P11979238916523902207

noncomputable section

/-- A288194: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288194.P11979238916523902207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A288194 (n : ℕ) : ℤ :=
  A288194.P11979238916523902207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A288194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288711.P17665607544117912145

`A288707(a(a(n-2))+n)` with `a(0)=1, a(1)=0`
-/

namespace A288711.P17665607544117912145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A288707 (a (a (n - 2)).toNat + (n : ℤ)).toNat

end

end A288711.P17665607544117912145

noncomputable section

/-- A288711: 1-limiting word of the mapping 00->1000, 10->00, starting with 00.

Offset 1, canonical program `A288711.P17665607544117912145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288711 (n : ℕ) : ℤ :=
  A288711.P17665607544117912145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288807.P2449499733387383223

`lcm(A174296(n), A285436(n))/A000034(n)`
-/

namespace A288807.P2449499733387383223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A174296 n) (A285436 n) : ℚ) / (A000034 n : ℚ)

end

end A288807.P2449499733387383223

noncomputable section

/-- A288807: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 510", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288807.P2449499733387383223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A288807 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A288807.P2449499733387383223.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A288807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288812.P14573539789979862981

`A095121(n)+1-A288808(n)`
-/

namespace A288812.P14573539789979862981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288808 n)

end

end A288812.P14573539789979862981

noncomputable section

/-- A288812: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288812.P14573539789979862981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288812 (n : ℕ) : ℤ :=
  A288812.P14573539789979862981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288932.P12337615007191442856

`(1-C(2, A082691(n+1)))²`
-/

namespace A288932.P12337615007191442856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose 2 (A082691 (n + 1)).toNat : ℤ)) ^ 2

end

end A288932.P12337615007191442856

noncomputable section

/-- A288932: Fixed point of the mapping 00->1000, 10->10101, starting with 00.

Offset 1, canonical program `A288932.P12337615007191442856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288932 (n : ℕ) : ℤ :=
  A288932.P12337615007191442856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288936.P17816657402752772345

`char[5-A010816(n+1)+n]`
-/

namespace A288936.P17816657402752772345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A010816 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288936.P17816657402752772345

noncomputable section

/-- A288936: Fixed point of the mapping 00->0010, 01->011, 10->011, starting with 00.

Offset 1, canonical program `A288936.P17816657402752772345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. -/
def A288936 (n : ℕ) : ℤ :=
  (A288936.P17816657402752772345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. -/
def A288936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289268.P17575966914648777655

`A095121(n)+1-A288196(n)`
-/

namespace A289268.P17575966914648777655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288196 n)

end

end A289268.P17575966914648777655

noncomputable section

/-- A289268: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A289268.P17575966914648777655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A289268 (n : ℕ) : ℤ :=
  A289268.P17575966914648777655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A289268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289597.P14791546879681151293

`Δ[A192480(n)]-A166444(n)`
-/

namespace A289597.P14791546879681151293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A166444 n

end

end A289597.P14791546879681151293

noncomputable section

/-- A289597: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 271) or the same sequence for the mesh patterns (12, 303), (12, 331), (12, 421), (12, 423), (12, 459), (12, 481), (12, 489).

Offset 0, canonical program `A289597.P14791546879681151293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289597 (n : ℕ) : ℤ :=
  A289597.P14791546879681151293.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289598.P8514294268036489134

`Δ[record[A097331(n)+n]]-n`
-/

namespace A289598.P8514294268036489134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A289598.P8514294268036489134

noncomputable section

/-- A289598: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 363) or the same sequence for the mesh patterns (12, 399), (12, 429), (12, 483).

Offset 0, canonical program `A289598.P8514294268036489134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289598 (n : ℕ) : ℤ :=
  A289598.P8514294268036489134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289762.P6859236038393281802

`A004739(n+1)+A124258(n+1)-1`
-/

namespace A289762.P6859236038393281802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1) + (A124258 (n + 1) - 1)

end

end A289762.P6859236038393281802

noncomputable section

/-- A289762: Triangular array T(m,k) = (m+1-k)^2 + k - 1 with m (row) >= 1 and k (column) >= 1, read by rows.

Offset 1, canonical program `A289762.P6859236038393281802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A289762 (n : ℕ) : ℤ :=
  A289762.P6859236038393281802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A289762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289834.P15437554386682079727

`A000108(n)+∑[A279557(n)-1]`
-/

namespace A289834.P15437554386682079727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289834.P15437554386682079727

noncomputable section

/-- A289834: Number of perfect matchings on n edges which represent RNA secondary folding structures characterized by the Lyngso and Pedersen (L&P) family and the Cao and Chen (C&C) family.

Offset 0, canonical program `A289834.P15437554386682079727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A289834 (n : ℕ) : ℤ :=
  A289834.P15437554386682079727.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A289834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289866.P13807419711234569525

`p?[A160668(n+1)+A100484(n+1)]`
-/

namespace A289866.P13807419711234569525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1) + A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289866.P13807419711234569525

noncomputable section

/-- A289866: Primes obtained from other primes by prefixing a 1.

Offset 1, canonical program `A289866.P13807419711234569525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1476 terms. -/
def A289866 (n : ℕ) : ℤ :=
  A289866.P13807419711234569525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1476 terms. -/
def A289866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290079.P14752260854256598816

`char[2*eq[0, char[A249719(n+1)]]]`
-/

namespace A290079.P14752260854256598816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249719 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A290079.P14752260854256598816

noncomputable section

/-- A290079: Characteristic function for A249721: a(n) = 1 if there are either no 1-digits at all in base-3 representation of n, or if there are exactly two 1's next to each other, a(n) = 0 in any other cases.

Offset 0, canonical program `A290079.P14752260854256598816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290079 (n : ℕ) : ℤ :=
  (A290079.P14752260854256598816.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290255.P12137032171756849024

`val(A057335(n+1), 2)-1`
-/

namespace A290255.P12137032171756849024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A057335 (n + 1)).toNat 2 : ℤ) - 1

end

end A290255.P12137032171756849024

noncomputable section

/-- A290255: Number of 0's following directly the first 1 in the binary representation of n.

Offset 1, canonical program `A290255.P12137032171756849024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290255 (n : ℕ) : ℤ :=
  A290255.P12137032171756849024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291196.P12246191278883837724

`Δ[Δ[n-A338020(n+2)]]`
-/

namespace A291196.P12246191278883837724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A338020 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291196.P12246191278883837724

noncomputable section

/-- A291196: Third differences of {Pi*n^2}, fractional part of Pi*n^2.

Offset 1, canonical program `A291196.P12246191278883837724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A291196 (n : ℕ) : ℤ :=
  A291196.P12246191278883837724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A291196.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A291463.P14308935140851577628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291463 (n : ℕ) : ℤ :=
  A291463.P14308935140851577628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291463.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291639.P12290553793458585906

`lt[1, n*A269250(n)]`
-/

namespace A291639.P12290553793458585906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A269250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A291639.P12290553793458585906

noncomputable section

/-- A291639: Numbers k such that 0 is the smallest decimal digit of k^3.

Offset 1, canonical program `A291639.P12290553793458585906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6506 terms. -/
def A291639 (n : ℕ) : ℤ :=
  (A291639.P12290553793458585906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6506 terms. -/
def A291639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291640.P2193196825498604768

`lt[A269250(n), tanh(A269241(n))]`
-/

namespace A291640.P2193196825498604768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A269241 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A291640.P2193196825498604768

noncomputable section

/-- A291640: Numbers k such that 1 is the smallest decimal digit of k^3.

Offset 1, canonical program `A291640.P2193196825498604768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. -/
def A291640 (n : ℕ) : ℤ :=
  (A291640.P2193196825498604768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. -/
def A291640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292440.P2854485539403430927

`xor(A159075(n), A168051(n))`
-/

namespace A292440.P2854485539403430927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A159075 n) (A168051 n)

end

end A292440.P2854485539403430927

noncomputable section

/-- A292440: Expansion of (1 - x + sqrt(1 - 2*x - 3*x^2))/2 in powers of x.

Offset 0, canonical program `A292440.P2854485539403430927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A292440 (n : ℕ) : ℤ :=
  A292440.P2854485539403430927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A292440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292666.P16137424853136077463

`A189523(n+1)-A000572(n+1)`
-/

namespace A292666.P16137424853136077463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189523 (n + 1) - A000572 (n + 1)

end

end A292666.P16137424853136077463

noncomputable section

/-- A292666: Rank of n*(e+1) when all the numbers j*(e-1) and k*(e+1), for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292666.P16137424853136077463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292666 (n : ℕ) : ℤ :=
  A292666.P16137424853136077463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293168.P10275927370229923913

`∑[A054868(n)]`
-/

namespace A293168.P10275927370229923913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293168.P10275927370229923913

noncomputable section

/-- A293168: Partial sums of A054868.

Offset 0, canonical program `A293168.P10275927370229923913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293168 (n : ℕ) : ℤ :=
  A293168.P10275927370229923913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293206.P9572967013690763831

`A123134(n+1)+A109805(n+1)`
-/

namespace A293206.P9572967013690763831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + A109805 (n + 1)

end

end A293206.P9572967013690763831

noncomputable section

/-- A293206: a(n) = prime(n) + prime(n+1) * prime(n+2).

Offset 1, canonical program `A293206.P9572967013690763831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293206 (n : ℕ) : ℤ :=
  A293206.P9572967013690763831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293326.P17442974139172085568

`A094386(n+1)+A004547(n+2)`
-/

namespace A293326.P17442974139172085568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094386 (n + 1) + A004547 (n + 2)

end

end A293326.P17442974139172085568

noncomputable section

/-- A293326: The integer k that minimizes |k/2^n - sqrt(3)|.

Offset 0, canonical program `A293326.P17442974139172085568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A293326 (n : ℕ) : ℤ :=
  A293326.P17442974139172085568.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A293326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293338.P12856302276837498788

`A027437(n)+A004593(n+4)`
-/

namespace A293338.P12856302276837498788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027437 n + A004593 (n + 4)

end

end A293338.P12856302276837498788

noncomputable section

/-- A293338: The integer k that minimizes |k/2^n - e|.

Offset 0, canonical program `A293338.P12856302276837498788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A293338 (n : ℕ) : ℤ :=
  A293338.P12856302276837498788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A293338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293439.P5122133940352064495

`∑{e}[n+1, A010060(#)]`
-/

namespace A293439.P5122133940352064495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A010060 (Nat.factorization (f1 n) p)

end

end A293439.P5122133940352064495

noncomputable section

/-- A293439: Number of odious exponents in the prime factorization of n.

Offset 1, canonical program `A293439.P5122133940352064495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293439 (n : ℕ) : ℤ :=
  A293439.P5122133940352064495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293787.P5712687042617370225

`eq[0, A004547(A004547(n+1)+n)]`
-/

namespace A293787.P5712687042617370225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (A004547 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293787.P5712687042617370225

noncomputable section

/-- A293787: Numbers k such that (d(k), d(k+1)) = (0,0) in the base-2 digits d(i) of sqrt(3).

Offset 1, canonical program `A293787.P5712687042617370225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A293787 (n : ℕ) : ℤ :=
  (A293787.P5712687042617370225.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A293787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293788.P13888126167259245464

`eq[3, A004556(a(n-1)+1)+A004547(n+1)]` with `a(0)=1`
-/

namespace A293788.P13888126167259245464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A004556 (f2 (n - 1) + 1).toNat + A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293788.P13888126167259245464

noncomputable section

/-- A293788: Numbers k such that (d(k), d(k+1)) = (0,1) in the base-2 digits d(i) of sqrt(3).

Offset 1, canonical program `A293788.P13888126167259245464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A293788 (n : ℕ) : ℤ :=
  (A293788.P13888126167259245464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A293788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293789.P10665216587015611791

`lt[A004547(n+1), A004547(A028310(n))]`
-/

namespace A293789.P10665216587015611791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293789.P10665216587015611791

noncomputable section

/-- A293789: Numbers k such that (d(k), d(k+1)) = (1,0) in the base-2 digits d(i) of sqrt(3).

Offset 1, canonical program `A293789.P10665216587015611791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2489 terms. -/
def A293789 (n : ℕ) : ℤ :=
  (A293789.P10665216587015611791.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2489 terms. -/
def A293789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293790.P12012869596680859351

`record[C(n, a(n-1))*A004547(n+1)]` with `a(0)=1`
-/

namespace A293790.P12012869596680859351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.choose n (f1 (n - 1)).toNat : ℤ) * A004547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293790.P12012869596680859351

noncomputable section

/-- A293790: Numbers k such that (d(k), d(k+1)) = (1,1) in the base-2 digits d(i) of sqrt(3).

Offset 1, canonical program `A293790.P12012869596680859351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A293790 (n : ℕ) : ℤ :=
  A293790.P12012869596680859351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A293790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293792.P6768095798108131778

`eq[char[record[(n+1)*(A004593(n+2)-A004593(n+3))]], A004593(n+2)]`
-/

namespace A293792.P6768095798108131778
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004593 (n + 2) - A004593 (n + 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f4 j) n

end

end A293792.P6768095798108131778

noncomputable section

/-- A293792: Numbers k such that (d(k), d(k+1)) = (0,0) in the base-2 digits d(i) of e.

Offset 1, canonical program `A293792.P6768095798108131778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A293792 (n : ℕ) : ℤ :=
  (A293792.P6768095798108131778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A293792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293896.P8621911693602830936

`A293895(2*(n+1))-A279060(n+1)`
-/

namespace A293896.P8621911693602830936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (2 * (n + 1)) - A279060 (n + 1)

end

end A293896.P8621911693602830936

noncomputable section

/-- A293896: Number of proper divisors of n of the form 3k+2.

Offset 1, canonical program `A293896.P8621911693602830936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293896 (n : ℕ) : ℤ :=
  A293896.P8621911693602830936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293898.P15182913839119431634

`∑{d}[n+1, A078182(#)*A157658((n+1)/#)]`
-/

namespace A293898.P15182913839119431634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078182 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293898.P15182913839119431634

noncomputable section

/-- A293898: Sum of proper divisors of n of the form 3k+2.

Offset 1, canonical program `A293898.P15182913839119431634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293898 (n : ℕ) : ℤ :=
  A293898.P15182913839119431634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294180.P3974927329510953203

`A263844(n+1)+1`
-/

namespace A294180.P3974927329510953203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263844 (n + 1) + 1

end

end A294180.P3974927329510953203

noncomputable section

/-- A294180: The 3-symbol Pell word.

Offset 1, canonical program `A294180.P3974927329510953203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A294180 (n : ℕ) : ℤ :=
  A294180.P3974927329510953203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A294180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294630.P1431911924905244028

`4*A294017(n+1)`
-/

namespace A294630.P1431911924905244028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A294017 (n + 1)

end

end A294630.P1431911924905244028

noncomputable section

/-- A294630: Partial sums of A294629.

Offset 1, canonical program `A294630.P1431911924905244028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294630 (n : ℕ) : ℤ :=
  A294630.P1431911924905244028.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294630.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295881.P4822389694980892212

`xor(2*A033880(n+1), A033880(n+1))`
-/

namespace A295881.P4822389694980892212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A033880 (n + 1)) (A033880 (n + 1))

end

end A295881.P4822389694980892212

noncomputable section

/-- A295881: Reversing binary representation of the deficiency of n, A033879(n).

Offset 1, canonical program `A295881.P4822389694980892212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295881 (n : ℕ) : ℤ :=
  A295881.P4822389694980892212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295881.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A297054.P2331804208615802623

`A078616(n)-a(n-1)` with `a(0)=1`
-/

namespace A297054.P2331804208615802623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078616 n - a (n - 1)

end

end A297054.P2331804208615802623

noncomputable section

/-- A297054: The coefficients of the product (1-x^2)(1-x^3)(1-x^4)... / (1+x).

Offset 0, canonical program `A297054.P2331804208615802623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297054 (n : ℕ) : ℤ :=
  A297054.P2331804208615802623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297054.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A298300.P9978731445362915200

`A002026(n)+∑[A026165(n)]`
-/

namespace A298300.P9978731445362915200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298300.P9978731445362915200

noncomputable section

/-- A298300: Analog of Motzkin numbers for Coxeter type D.

Offset 2, canonical program `A298300.P9978731445362915200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A298300 (n : ℕ) : ℤ :=
  A298300.P9978731445362915200.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A298300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298368.P6364577281333546658

`A002620(A002262(n))*A002620(A003056(n))`
-/

namespace A298368.P6364577281333546658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002262 n).toNat * A002620 (A003056 n).toNat

end

end A298368.P6364577281333546658

noncomputable section

/-- A298368: Triangle read by rows: T(n, k) = floor((n-1)/2)*floor(n/2)*floor((k-1)/2)*floor(k/2).

Offset 1, canonical program `A298368.P6364577281333546658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298368 (n : ℕ) : ℤ :=
  A298368.P6364577281333546658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298468.P9775696212957372657

`floor(A026491(n)+n/2)`
-/

namespace A298468.P9775696212957372657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026491 n : ℚ) + (n : ℚ) / 2⌋

end

end A298468.P9775696212957372657

noncomputable section

/-- A298468: Solution (aa(n)) of the system of 3 complementary equations in Comments.

Offset 0, canonical program `A298468.P9775696212957372657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298468 (n : ℕ) : ℤ :=
  A298468.P9775696212957372657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298474.P2356451179476190984

`A008486(n)-(A035336(n+1)%A002522(n))%2`
-/

namespace A298474.P2356451179476190984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - Int.tmod (Int.tmod (A035336 (n + 1)) (A002522 n)) 2

end

end A298474.P2356451179476190984

noncomputable section

/-- A298474: a(n) is the least k such that A090701(k) = n.

Offset 1, canonical program `A298474.P2356451179476190984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298474 (n : ℕ) : ℤ :=
  A298474.P2356451179476190984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298862.P8575127337279644587

`A020900(n+1)+1+n`
-/

namespace A298862.P8575127337279644587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (n + 1) + 1 + (n : ℤ)

end

end A298862.P8575127337279644587

noncomputable section

/-- A298862: Rank of n-th twice-prime when all the primes and twice-primes are jointly ranked.

Offset 1, canonical program `A298862.P8575127337279644587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298862 (n : ℕ) : ℤ :=
  A298862.P8575127337279644587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298862.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A301658.P6373140149868759706

`A240513(n+1)+3`
-/

namespace A301658.P6373140149868759706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (n + 1) + 3

end

end A301658.P6373140149868759706

noncomputable section

/-- A301658: Number of nX4 0..1 arrays with every element equal to 0, 1 or 4 horizontally or vertically adjacent elements, with upper left element zero.

Offset 1, canonical program `A301658.P6373140149868759706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A301658 (n : ℕ) : ℤ :=
  A301658.P6373140149868759706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A301658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301764.P11755840573215303962

`A086898(A028310(n))+1`
-/

namespace A301764.P11755840573215303962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086898 (A028310 n).toNat + 1

end

end A301764.P11755840573215303962

noncomputable section

/-- A301764: Number of ways to choose a constant rooted partition of each part in a constant rooted partition of n such that the flattened sequence is also constant.

Offset 1, canonical program `A301764.P11755840573215303962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A301764 (n : ℕ) : ℤ :=
  A301764.P11755840573215303962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A301764.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A303548.P8157159056819568346

`∑[A005811(n)-A000120(n)]`
-/

namespace A303548.P8157159056819568346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303548.P8157159056819568346

noncomputable section

/-- A303548: For any n > 0 and h > 0, let d_h(n) be the distance from n to the nearest number with Hamming weight at most h; a(n) = Sum_{i > 0} d_i(n).

Offset 1, canonical program `A303548.P8157159056819568346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303548 (n : ℕ) : ℤ :=
  A303548.P8157159056819568346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304411.P4036889141773001327

`A005361(n+1)*A048250(n+1)`
-/

namespace A304411.P4036889141773001327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A048250 (n + 1)

end

end A304411.P4036889141773001327

noncomputable section

/-- A304411: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)*k_j).

Offset 1, canonical program `A304411.P4036889141773001327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304411 (n : ℕ) : ℤ :=
  A304411.P4036889141773001327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304584.P17978480796387460377

`A025581(n)+n*A002262(n)`
-/

namespace A304584.P17978480796387460377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (n : ℤ) * A002262 n

end

end A304584.P17978480796387460377

noncomputable section

/-- A304584: A linear mapping a(n) = x + d*n of pairs of nonnegative integers (x,d), where the pairs are enumerated by antidiagonals.

Offset 0, canonical program `A304584.P17978480796387460377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304584 (n : ℕ) : ℤ :=
  A304584.P17978480796387460377.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306408.P7370464103915550099

`∑{d}[n+1, A058026(#)]`
-/

namespace A306408.P7370464103915550099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A058026 d

end

end A306408.P7370464103915550099

noncomputable section

/-- A306408: a(n) = Sum_{d|n} (-1)^omega(n/d) * d.

Offset 1, canonical program `A306408.P7370464103915550099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306408 (n : ℕ) : ℤ :=
  A306408.P7370464103915550099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306423.P3507944940431330008

`A067324(n)+A002057(n)`
-/

namespace A306423.P3507944940431330008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n + A002057 n

end

end A306423.P3507944940431330008

noncomputable section

/-- A306423: Number of coalescent histories for pseudocaterpillar gene trees G and caterpillar species trees S.

Offset 4, canonical program `A306423.P3507944940431330008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A306423 (n : ℕ) : ℤ :=
  A306423.P3507944940431330008.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A306423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307247.P2766846640949423295

`A263844(∑[A188374(n+1)])`
-/

namespace A307247.P2766846640949423295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263844 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307247.P2766846640949423295

noncomputable section

/-- A307247: Second digit in the expansion of n in Fraenkel's exotic ternary representation.

Offset 1, canonical program `A307247.P2766846640949423295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A307247 (n : ℕ) : ℤ :=
  A307247.P2766846640949423295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A307247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308044.P480570451346394384

`2*(n-A238737(n))`
-/

namespace A308044.P480570451346394384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A238737 n)

end

end A308044.P480570451346394384

noncomputable section

/-- A308044: a(n) = 2*prevprime(2*n-1) - 2*n, where prevprime(n) is the largest prime < n.

Offset 2, canonical program `A308044.P480570451346394384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308044 (n : ℕ) : ℤ :=
  A308044.P480570451346394384.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308053.P10381955759339990208

`A116966(lt[2*n+3, A057723(n+1)])`
-/

namespace A308053.P10381955759339990208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A308053.P10381955759339990208

noncomputable section

/-- A308053: Coreful abundant numbers: numbers k such that csigma(k) > 2*k, where csigma(k) is the sum of the coreful divisors of k (A057723).

Offset 1, canonical program `A308053.P10381955759339990208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A308053 (n : ℕ) : ℤ :=
  A308053.P10381955759339990208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A308053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308187.P8950308941474047097

`1-A079559(n)`
-/

namespace A308187.P8950308941474047097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079559 n

end

end A308187.P8950308941474047097

noncomputable section

/-- A308187: Fixed point (beginning with a) of the morphism a -> aab, b -> b, over the alphabet {a,b} = {0,1}.

Offset 1, canonical program `A308187.P8950308941474047097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308187 (n : ℕ) : ℤ :=
  A308187.P8950308941474047097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308188.P1668237942996527319

`2-A079559(n)`
-/

namespace A308188.P1668237942996527319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A079559 n

end

end A308188.P1668237942996527319

noncomputable section

/-- A308188: Fixed point (beginning with a) of the morphism a -> aab, b -> b, over the alphabet {a,b} = {1,2}.

Offset 1, canonical program `A308188.P1668237942996527319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308188 (n : ℕ) : ℤ :=
  A308188.P1668237942996527319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308197.P12884528608171429358

`eq[0, A000035(A278045(n))]`
-/

namespace A308197.P12884528608171429358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A278045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P12884528608171429358

noncomputable section

/-- A308197: Numbers m such that the tribonacci representation of m (A278038) ends in an even number of 0's.

Offset 1, canonical program `A308197.P12884528608171429358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308197 (n : ℕ) : ℤ :=
  (A308197.P12884528608171429358.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308198.P813162304771468293

`eq[1, A278045(n)%2]`
-/

namespace A308198.P813162304771468293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278045 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P813162304771468293

noncomputable section

/-- A308198: Numbers m such that the tribonacci representation of m (A278038) ends in an odd number of 0's.

Offset 1, canonical program `A308198.P813162304771468293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7044 terms. -/
def A308198 (n : ℕ) : ℤ :=
  (A308198.P813162304771468293.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7044 terms. -/
def A308198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308265.P15256434610230684031

`A034828(n)-A200067(n)`
-/

namespace A308265.P15256434610230684031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 n - A200067 n

end

end A308265.P15256434610230684031

noncomputable section

/-- A308265: Sum of the largest parts in the partitions of n into 3 parts.

Offset 1, canonical program `A308265.P15256434610230684031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4198 terms. -/
def A308265 (n : ℕ) : ℤ :=
  A308265.P15256434610230684031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4198 terms. -/
def A308265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308567.P2030067286572560780

`∑[A070750(n+1)]-1`
-/

namespace A308567.P2030067286572560780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A308567.P2030067286572560780

noncomputable section

/-- A308567: Consider the second least-significant bits of the first n prime numbers: a(n) equals the number of zeros minus the number of ones.

Offset 1, canonical program `A308567.P2030067286572560780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308567 (n : ℕ) : ℤ :=
  A308567.P2030067286572560780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308901.P14477176325066974205

`1-A080813(n+1)`
-/

namespace A308901.P14477176325066974205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080813 (n + 1)

end

end A308901.P14477176325066974205

noncomputable section

/-- A308901: Lexicographically earliest overlap-free binary sequence.

Offset 1, canonical program `A308901.P14477176325066974205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308901 (n : ℕ) : ℤ :=
  A308901.P14477176325066974205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309014.P17833545605554751906

`abs(Δ[A002487(abs(1-n))])`
-/

namespace A309014.P17833545605554751906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A309014.P17833545605554751906

noncomputable section

/-- A309014: a(n) = Sum_{k=0..n} (-1)^(n-k) * (Stirling2(n,k) mod 2).

Offset 0, canonical program `A309014.P17833545605554751906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A309014 (n : ℕ) : ℤ :=
  A309014.P17833545605554751906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A309014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309119.P4765163560253556487

`∑[A062756(n)-A081603(n)]`
-/

namespace A309119.P4765163560253556487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n - A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309119.P4765163560253556487

noncomputable section

/-- A309119: a(n) is the number of 1's minus the number of 2's among the ternary representations of the integers in the interval [0..n].

Offset 0, canonical program `A309119.P4765163560253556487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309119 (n : ℕ) : ℤ :=
  A309119.P4765163560253556487.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309758.P17135568325741650578

`A007051(A002024(n+1))-A007051(A025581(n))`
-/

namespace A309758.P17135568325741650578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (A002024 (n + 1)).toNat - A007051 (A025581 n).toNat

end

end A309758.P17135568325741650578

noncomputable section

/-- A309758: Numbers that are sums of consecutive powers of 3.

Offset 1, canonical program `A309758.P17135568325741650578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309758 (n : ℕ) : ℤ :=
  A309758.P17135568325741650578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309851.P14047395158355173875

`p?[A008619(n)+ceil(A111708(n)/2+n)]`
-/

namespace A309851.P14047395158355173875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ⌈(A111708 n : ℚ) / 2 + (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309851.P14047395158355173875

noncomputable section

/-- A309851: Primes formed by concatenating n and 2n-1.

Offset 1, canonical program `A309851.P14047395158355173875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A309851 (n : ℕ) : ℤ :=
  A309851.P14047395158355173875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A309851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310469.P18178074179781318724

`A310409(n)+A002266(n+2)`
-/

namespace A310469.P18178074179781318724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310409 n + A002266 (n + 2)

end

end A310469.P18178074179781318724

noncomputable section

/-- A310469: Coordination sequence Gal.5.141.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310469.P18178074179781318724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2354 terms. -/
def A310469 (n : ℕ) : ℤ :=
  A310469.P18178074179781318724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2354 terms. -/
def A310469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311384.P2354907441128154650

`A047363(n+1)+A008486(n)-A330025(n)`
-/

namespace A311384.P2354907441128154650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + (A008486 n - A330025 n)

end

end A311384.P2354907441128154650

noncomputable section

/-- A311384: Coordination sequence Gal.6.220.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311384.P2354907441128154650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311384 (n : ℕ) : ℤ :=
  A311384.P2354907441128154650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312124.P5596801148833334333

`A311958(n)+A087509(A004526(n))`
-/

namespace A312124.P5596801148833334333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311958 n + A087509 (A004526 n).toNat

end

end A312124.P5596801148833334333

noncomputable section

/-- A312124: Coordination sequence Gal.5.206.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312124.P5596801148833334333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A312124 (n : ℕ) : ℤ :=
  A312124.P5596801148833334333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A312124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312162.P8460047677510331873

`A047263(A008574(n)+1-A330025(n))`
-/

namespace A312162.P8460047677510331873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A008574 n + (1 - A330025 n)).toNat

end

end A312162.P8460047677510331873

noncomputable section

/-- A312162: Coordination sequence Gal.6.233.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312162.P8460047677510331873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A312162 (n : ℕ) : ℤ :=
  A312162.P8460047677510331873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A312162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312183.P11443846749482432599

`A311586(n)+Δ[A011860(n)]`
-/

namespace A312183.P11443846749482432599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 n + (f1 (n + 1) - f1 n)

end

end A312183.P11443846749482432599

noncomputable section

/-- A312183: Coordination sequence Gal.4.42.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312183.P11443846749482432599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A312183 (n : ℕ) : ℤ :=
  A312183.P11443846749482432599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A312183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312205.P3565082773998277828

`A311625(n)+Δ[A011861(n)]`
-/

namespace A312205.P3565082773998277828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + (f1 (n + 1) - f1 n)

end

end A312205.P3565082773998277828

noncomputable section

/-- A312205: Coordination sequence Gal.4.43.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312205.P3565082773998277828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A312205 (n : ℕ) : ℤ :=
  A312205.P3565082773998277828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A312205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312561.P3060569435610033716

`A047486(A008486(n)+1)-A330025(n)`
-/

namespace A312561.P3060569435610033716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat - A330025 n

end

end A312561.P3060569435610033716

noncomputable section

/-- A312561: Coordination sequence Gal.6.247.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312561.P3060569435610033716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A312561 (n : ℕ) : ℤ :=
  A312561.P3060569435610033716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A312561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312620.P764241885793850481

`A004525(n)+A312526(n)-A004396(A004525(n))`
-/

namespace A312620.P764241885793850481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312526 n - A004396 (A004525 n).toNat)

end

end A312620.P764241885793850481

noncomputable section

/-- A312620: Coordination sequence Gal.6.256.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312620.P764241885793850481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A312620 (n : ℕ) : ℤ :=
  A312620.P764241885793850481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A312620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312790.P14315813496595789785

`2*A312736(n)-A008579(n)`
-/

namespace A312790.P14315813496595789785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312736 n - A008579 n

end

end A312790.P14315813496595789785

noncomputable section

/-- A312790: Coordination sequence Gal.5.266.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312790.P14315813496595789785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2460 terms. -/
def A312790 (n : ℕ) : ℤ :=
  A312790.P14315813496595789785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2460 terms. -/
def A312790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312983.P16184876047948628761

`A310409(n)-(char[2]+char[3])`
-/

namespace A312983.P16184876047948628761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310409 n - (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A312983.P16184876047948628761

noncomputable section

/-- A312983: Coordination sequence Gal.3.25.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312983.P16184876047948628761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A312983 (n : ℕ) : ℤ :=
  A312983.P16184876047948628761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A312983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313127.P3112124540791628005

`A008574(n)+n-A330025(n)`
-/

namespace A313127.P3112124540791628005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A330025 n)

end

end A313127.P3112124540791628005

noncomputable section

/-- A313127: Coordination sequence Gal.5.69.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313127.P3112124540791628005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2352 terms. -/
def A313127 (n : ℕ) : ℤ :=
  A313127.P3112124540791628005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2352 terms. -/
def A313127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313152.P10776798816682064911

`A311625(n)+Δ[A011848(n)]`
-/

namespace A313152.P10776798816682064911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + (f1 (n + 1) - f1 n)

end

end A313152.P10776798816682064911

noncomputable section

/-- A313152: Coordination sequence Gal.5.112.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313152.P10776798816682064911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A313152 (n : ℕ) : ℤ :=
  A313152.P10776798816682064911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A313152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313201.P17274935370983792056

`A313026(n)+Δ[A011862(n)]`
-/

namespace A313201.P17274935370983792056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + (f1 (n + 1) - f1 n)

end

end A313201.P17274935370983792056

noncomputable section

/-- A313201: Coordination sequence Gal.5.115.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313201.P17274935370983792056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A313201 (n : ℕ) : ℤ :=
  A313201.P17274935370983792056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A313201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313213.P3463055026651004297

`A313099(n)+Δ[A011865(n)]`
-/

namespace A313213.P3463055026651004297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + (f1 (n + 1) - f1 n)

end

end A313213.P3463055026651004297

noncomputable section

/-- A313213: Coordination sequence Gal.6.260.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313213.P3463055026651004297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A313213 (n : ℕ) : ℤ :=
  A313213.P3463055026651004297.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A313213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313241.P6304044137677485136

`A313100(n)+Δ[A011862(n)]`
-/

namespace A313241.P6304044137677485136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + (f1 (n + 1) - f1 n)

end

end A313241.P6304044137677485136

noncomputable section

/-- A313241: Coordination sequence Gal.5.86.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313241.P6304044137677485136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. -/
def A313241 (n : ℕ) : ℤ :=
  A313241.P6304044137677485136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. -/
def A313241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313258.P7563474035421243589

`A313115(n)+Δ[floor(C(n, 2)/4)]`
-/

namespace A313258.P7563474035421243589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + (f1 (n + 1) - f1 n)

end

end A313258.P7563474035421243589

noncomputable section

/-- A313258: Coordination sequence Gal.4.54.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313258.P7563474035421243589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A313258 (n : ℕ) : ℤ :=
  A313258.P7563474035421243589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A313258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313289.P4085022440508008481

`A313147(n)+Δ[A011860(n)]`
-/

namespace A313289.P4085022440508008481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313147 n + (f1 (n + 1) - f1 n)

end

end A313289.P4085022440508008481

noncomputable section

/-- A313289: Coordination sequence Gal.4.55.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313289.P4085022440508008481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313289 (n : ℕ) : ℤ :=
  A313289.P4085022440508008481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313494.P14635809210881396952

`A313099(n)+A128834(n)`
-/

namespace A313494.P14635809210881396952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + A128834 n

end

end A313494.P14635809210881396952

noncomputable section

/-- A313494: Coordination sequence Gal.6.155.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313494.P14635809210881396952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A313494 (n : ℕ) : ℤ :=
  A313494.P14635809210881396952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A313494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313510.P5280808024420407807

`A313110(n)+A128834(n)`
-/

namespace A313510.P5280808024420407807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + A128834 n

end

end A313510.P5280808024420407807

noncomputable section

/-- A313510: Coordination sequence Gal.3.13.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313510.P5280808024420407807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A313510 (n : ℕ) : ℤ :=
  A313510.P5280808024420407807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A313510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313687.P12936372802294180480

`A313237(n)+A128834(n)`
-/

namespace A313687.P12936372802294180480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313237 n + A128834 n

end

end A313687.P12936372802294180480

noncomputable section

/-- A313687: Coordination sequence Gal.6.202.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313687.P12936372802294180480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A313687 (n : ℕ) : ℤ :=
  A313687.P12936372802294180480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A313687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313707.P5162178319112651376

`A313569(n)+Δ[A011865(n)]`
-/

namespace A313707.P5162178319112651376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + (f1 (n + 1) - f1 n)

end

end A313707.P5162178319112651376

noncomputable section

/-- A313707: Coordination sequence Gal.6.198.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313707.P5162178319112651376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A313707 (n : ℕ) : ℤ :=
  A313707.P5162178319112651376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A313707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313776.P9904199867289999501

`A313100(n)+A004525(A283971(n))`
-/

namespace A313776.P9904199867289999501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A004525 (A283971 n).toNat

end

end A313776.P9904199867289999501

noncomputable section

/-- A313776: Coordination sequence Gal.6.442.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313776.P9904199867289999501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A313776 (n : ℕ) : ℤ :=
  A313776.P9904199867289999501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A313776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313778.P4235496493182944354

`A313088(n)+A004525(n)`
-/

namespace A313778.P4235496493182944354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313088 n + A004525 n

end

end A313778.P4235496493182944354

noncomputable section

/-- A313778: Coordination sequence Gal.6.203.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313778.P4235496493182944354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A313778 (n : ℕ) : ℤ :=
  A313778.P4235496493182944354.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A313778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313791.P11156003567688367397

`A313110(n)+A004525(n)`
-/

namespace A313791.P11156003567688367397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + A004525 n

end

end A313791.P11156003567688367397

noncomputable section

/-- A313791: Coordination sequence Gal.6.354.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313791.P11156003567688367397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313791 (n : ℕ) : ℤ :=
  A313791.P11156003567688367397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313812.P6628673086175508618

`A312974(n)+A004525(A004525(n)+n)`
-/

namespace A313812.P6628673086175508618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A313812.P6628673086175508618

noncomputable section

/-- A313812: Coordination sequence Gal.5.310.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313812.P6628673086175508618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313812 (n : ℕ) : ℤ :=
  A313812.P6628673086175508618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313827.P1632805803004343387

`A313692(n)+A008676(A016777(n))`
-/

namespace A313827.P1632805803004343387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n + A008676 (A016777 n).toNat

end

end A313827.P1632805803004343387

noncomputable section

/-- A313827: Coordination sequence Gal.5.141.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313827.P1632805803004343387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A313827 (n : ℕ) : ℤ :=
  A313827.P1632805803004343387.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A313827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313829.P8843607393745764516

`A313720(n)+Δ[A011865(n)]`
-/

namespace A313829.P8843607393745764516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n + (f1 (n + 1) - f1 n)

end

end A313829.P8843607393745764516

noncomputable section

/-- A313829: Coordination sequence Gal.6.203.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313829.P8843607393745764516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2370 terms. -/
def A313829 (n : ℕ) : ℤ :=
  A313829.P8843607393745764516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2370 terms. -/
def A313829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313833.P8730359671552575781

`A313726(n)+Δ[A011865(n)]`
-/

namespace A313833.P8730359671552575781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313726 n + (f1 (n + 1) - f1 n)

end

end A313833.P8730359671552575781

noncomputable section

/-- A313833: Coordination sequence Gal.6.341.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313833.P8730359671552575781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313833 (n : ℕ) : ℤ :=
  A313833.P8730359671552575781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313835.P13328153377433904358

`abs(A008592(n)-A313614(n))`
-/

namespace A313835.P13328153377433904358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313614 n|

end

end A313835.P13328153377433904358

noncomputable section

/-- A313835: Coordination sequence Gal.5.299.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313835.P13328153377433904358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A313835 (n : ℕ) : ℤ :=
  A313835.P13328153377433904358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A313835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313860.P2835934445111425257

`A313026(n)+A004396(n)`
-/

namespace A313860.P2835934445111425257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + A004396 n

end

end A313860.P2835934445111425257

noncomputable section

/-- A313860: Coordination sequence Gal.5.132.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313860.P2835934445111425257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313860 (n : ℕ) : ℤ :=
  A313860.P2835934445111425257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313872.P15679373648552162511

`abs(A008592(n)-A313569(n))`
-/

namespace A313872.P15679373648552162511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313569 n|

end

end A313872.P15679373648552162511

noncomputable section

/-- A313872: Coordination sequence Gal.6.617.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313872.P15679373648552162511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313872 (n : ℕ) : ℤ :=
  A313872.P15679373648552162511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313894.P14764167295564530616

`abs(A008592(n)-A313538(n))`
-/

namespace A313894.P14764167295564530616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313538 n|

end

end A313894.P14764167295564530616

noncomputable section

/-- A313894: Coordination sequence Gal.5.133.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313894.P14764167295564530616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A313894 (n : ℕ) : ℤ :=
  A313894.P14764167295564530616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A313894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313906.P16146185276320745133

`A313721(n)+A002264(A030118(n))`
-/

namespace A313906.P16146185276320745133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A002264 (A030118 n).toNat

end

end A313906.P16146185276320745133

noncomputable section

/-- A313906: Coordination sequence Gal.5.308.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313906.P16146185276320745133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A313906 (n : ℕ) : ℤ :=
  A313906.P16146185276320745133.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A313906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313909.P6555194053940030791

`A313100(n)+A004396(n)`
-/

namespace A313909.P6555194053940030791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A004396 n

end

end A313909.P6555194053940030791

noncomputable section

/-- A313909: Coordination sequence Gal.6.648.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313909.P6555194053940030791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313909 (n : ℕ) : ℤ :=
  A313909.P6555194053940030791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313921.P4862049586297840855

`A134667(n)+A301718(n)-A330025(n)`
-/

namespace A313921.P4862049586297840855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (A301718 n - A330025 n)

end

end A313921.P4862049586297840855

noncomputable section

/-- A313921: Coordination sequence Gal.5.313.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313921.P4862049586297840855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2209 terms. -/
def A313921 (n : ℕ) : ℤ :=
  A313921.P4862049586297840855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2209 terms. -/
def A313921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313926.P12630121113150282533

`A312140(n)+n`
-/

namespace A313926.P12630121113150282533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + (n : ℤ)

end

end A313926.P12630121113150282533

noncomputable section

/-- A313926: Coordination sequence Gal.4.140.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313926.P12630121113150282533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313926 (n : ℕ) : ℤ :=
  A313926.P12630121113150282533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313930.P828336190909050308

`A313126(n)+A004396(n)`
-/

namespace A313930.P828336190909050308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313126 n + A004396 n

end

end A313930.P828336190909050308

noncomputable section

/-- A313930: Coordination sequence Gal.6.638.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313930.P828336190909050308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A313930 (n : ℕ) : ℤ :=
  A313930.P828336190909050308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A313930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313937.P16991793084136127565

`A311586(n)+A047263(n+1)`
-/

namespace A313937.P16991793084136127565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 n + A047263 (n + 1)

end

end A313937.P16991793084136127565

noncomputable section

/-- A313937: Coordination sequence Gal.6.650.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313937.P16991793084136127565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313937 (n : ℕ) : ℤ :=
  A313937.P16991793084136127565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313938.P107415662170278768

`2*A313916(n)-A313873(n)`
-/

namespace A313938.P107415662170278768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313916 n - A313873 n

end

end A313938.P107415662170278768

noncomputable section

/-- A313938: Coordination sequence Gal.6.662.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313938.P107415662170278768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A313938 (n : ℕ) : ℤ :=
  A313938.P107415662170278768.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A313938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314027.P7798730939346477280

`A313506(n)+Δ[A011858(n)]`
-/

namespace A314027.P7798730939346477280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313506 n + (f1 (n + 1) - f1 n)

end

end A314027.P7798730939346477280

noncomputable section

/-- A314027: Coordination sequence Gal.5.87.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314027.P7798730939346477280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A314027 (n : ℕ) : ℤ :=
  A314027.P7798730939346477280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A314027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314031.P9700743857444675486

`A313556(n)+A002264(n+1)`
-/

namespace A314031.P9700743857444675486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + A002264 (n + 1)

end

end A314031.P9700743857444675486

noncomputable section

/-- A314031: Coordination sequence Gal.6.340.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314031.P9700743857444675486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A314031 (n : ℕ) : ℤ :=
  A314031.P9700743857444675486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A314031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314047.P6128783489068935556

`A310412(n)+A004525(A004396(n))`
-/

namespace A314047.P6128783489068935556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310412 n + A004525 (A004396 n).toNat

end

end A314047.P6128783489068935556

noncomputable section

/-- A314047: Coordination sequence Gal.5.308.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314047.P6128783489068935556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A314047 (n : ℕ) : ℤ :=
  A314047.P6128783489068935556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A314047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314051.P823501490617282787

`A313614(n)+∑[A022003(n)]`
-/

namespace A314051.P823501490617282787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313614 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314051.P823501490617282787

noncomputable section

/-- A314051: Coordination sequence Gal.5.308.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314051.P823501490617282787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A314051 (n : ℕ) : ℤ :=
  A314051.P823501490617282787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A314051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314068.P13841784540353294122

`A310409(n)+A004525(n)`
-/

namespace A314068.P13841784540353294122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310409 n + A004525 n

end

end A314068.P13841784540353294122

noncomputable section

/-- A314068: Coordination sequence Gal.3.55.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314068.P13841784540353294122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314068 (n : ℕ) : ℤ :=
  A314068.P13841784540353294122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314087.P6203034715714524951

`A330025(n-A330025(n))+A313692(n)`
-/

namespace A314087.P6203034715714524951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A313692 n

end

end A314087.P6203034715714524951

noncomputable section

/-- A314087: Coordination sequence Gal.5.67.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314087.P6203034715714524951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. -/
def A314087 (n : ℕ) : ℤ :=
  A314087.P6203034715714524951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. -/
def A314087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314107.P2990438990150127076

`A313485(n)+n-A004396(A004525(n))`
-/

namespace A314107.P2990438990150127076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A314107.P2990438990150127076

noncomputable section

/-- A314107: Coordination sequence Gal.6.205.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314107.P2990438990150127076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A314107 (n : ℕ) : ℤ :=
  A314107.P2990438990150127076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A314107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314116.P3477874341695128704

`2*A314112(n)-A314111(n)`
-/

namespace A314116.P3477874341695128704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314112 n - A314111 n

end

end A314116.P3477874341695128704

noncomputable section

/-- A314116: Coordination sequence Gal.6.652.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314116.P3477874341695128704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A314116 (n : ℕ) : ℤ :=
  A314116.P3477874341695128704.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A314116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314123.P17491408075998672522

`A313115(n)+A242062(A008586(n))`
-/

namespace A314123.P17491408075998672522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + A242062 (A008586 n).toNat

end

end A314123.P17491408075998672522

noncomputable section

/-- A314123: Coordination sequence Gal.5.310.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314123.P17491408075998672522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A314123 (n : ℕ) : ℤ :=
  A314123.P17491408075998672522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A314123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314192.P4251070382321067139

`A313831(n)+∑[A022003(n)]`
-/

namespace A314192.P4251070382321067139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314192.P4251070382321067139

noncomputable section

/-- A314192: Coordination sequence Gal.6.651.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314192.P4251070382321067139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A314192 (n : ℕ) : ℤ :=
  A314192.P4251070382321067139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A314192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314204.P2426223721515965919

`A004396(n)+A314108(n)-A004525(n)`
-/

namespace A314204.P2426223721515965919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314108 n - A004525 n)

end

end A314204.P2426223721515965919

noncomputable section

/-- A314204: Coordination sequence Gal.6.341.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314204.P2426223721515965919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A314204 (n : ℕ) : ℤ :=
  A314204.P2426223721515965919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A314204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314231.P16998588149716495728

`A314141(n)+Δ[A011862(n)]`
-/

namespace A314231.P16998588149716495728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n + (f1 (n + 1) - f1 n)

end

end A314231.P16998588149716495728

noncomputable section

/-- A314231: Coordination sequence Gal.5.305.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314231.P16998588149716495728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A314231 (n : ℕ) : ℤ :=
  A314231.P16998588149716495728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A314231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314236.P11197453166256301907

`A313088(n)+n`
-/

namespace A314236.P11197453166256301907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313088 n + (n : ℤ)

end

end A314236.P11197453166256301907

noncomputable section

/-- A314236: Coordination sequence Gal.6.626.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314236.P11197453166256301907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314236 (n : ℕ) : ℤ :=
  A314236.P11197453166256301907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314240.P18428589485690285850

`A313099(n)+n`
-/

namespace A314240.P18428589485690285850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + (n : ℤ)

end

end A314240.P18428589485690285850

noncomputable section

/-- A314240: Coordination sequence Gal.6.643.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314240.P18428589485690285850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A314240 (n : ℕ) : ℤ :=
  A314240.P18428589485690285850.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A314240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314242.P9930865792257095390

`2*A313875(n)-A072154(A005843(n))`
-/

namespace A314242.P9930865792257095390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313875 n - A072154 (A005843 n).toNat

end

end A314242.P9930865792257095390

noncomputable section

/-- A314242: Coordination sequence Gal.4.146.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314242.P9930865792257095390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A314242 (n : ℕ) : ℤ :=
  A314242.P9930865792257095390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A314242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314247.P7920899849790497135

`A313110(n)+n`
-/

namespace A314247.P7920899849790497135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + (n : ℤ)

end

end A314247.P7920899849790497135

noncomputable section

/-- A314247: Coordination sequence Gal.3.50.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314247.P7920899849790497135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2226 terms. -/
def A314247 (n : ℕ) : ℤ :=
  A314247.P7920899849790497135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2226 terms. -/
def A314247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314250.P3588750543650791249

`A313115(n)+n`
-/

namespace A314250.P3588750543650791249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + (n : ℤ)

end

end A314250.P3588750543650791249

noncomputable section

/-- A314250: Coordination sequence Gal.4.137.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314250.P3588750543650791249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2195 terms. -/
def A314250 (n : ℕ) : ℤ :=
  A314250.P3588750543650791249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2195 terms. -/
def A314250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314251.P8552691768143809971

`A314163(n)+Δ[A011862(n)]`
-/

namespace A314251.P8552691768143809971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 n + (f1 (n + 1) - f1 n)

end

end A314251.P8552691768143809971

noncomputable section

/-- A314251: Coordination sequence Gal.5.294.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314251.P8552691768143809971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2087 terms. -/
def A314251 (n : ℕ) : ℤ :=
  A314251.P8552691768143809971.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2087 terms. -/
def A314251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314410.P14222717731131208766

`A047363(n+1)+A312655(n)-A265227(n+1)`
-/

namespace A314410.P14222717731131208766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + (A312655 n - A265227 (n + 1))

end

end A314410.P14222717731131208766

noncomputable section

/-- A314410: Coordination sequence Gal.4.18.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314410.P14222717731131208766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A314410 (n : ℕ) : ℤ :=
  A314410.P14222717731131208766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A314410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314683.P15823530726852142928

`A004525(n)+A313693(n)-n`
-/

namespace A314683.P15823530726852142928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313693 n - (n : ℤ))

end

end A314683.P15823530726852142928

noncomputable section

/-- A314683: Coordination sequence Gal.6.130.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314683.P15823530726852142928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A314683 (n : ℕ) : ℤ :=
  A314683.P15823530726852142928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A314683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314753.P9843815199901969934

`A312974(n)+A238469(n)`
-/

namespace A314753.P9843815199901969934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n + A238469 n

end

end A314753.P9843815199901969934

noncomputable section

/-- A314753: Coordination sequence Gal.4.52.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314753.P9843815199901969934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2477 terms. -/
def A314753 (n : ℕ) : ℤ :=
  A314753.P9843815199901969934.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2477 terms. -/
def A314753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314758.P11719452081678354248

`A042965(A314712(n)+1-n)`
-/

namespace A314758.P11719452081678354248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A314712 n + (1 - (n : ℤ))).toNat

end

end A314758.P11719452081678354248

noncomputable section

/-- A314758: Coordination sequence Gal.6.193.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314758.P11719452081678354248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A314758 (n : ℕ) : ℤ :=
  A314758.P11719452081678354248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A314758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314969.P17921854442604734378

`A312140(n)+A004525(n)`
-/

namespace A314969.P17921854442604734378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + A004525 n

end

end A314969.P17921854442604734378

noncomputable section

/-- A314969: Coordination sequence Gal.4.78.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314969.P17921854442604734378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A314969 (n : ℕ) : ℤ :=
  A314969.P17921854442604734378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A314969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314970.P16762046121003014077

`A004525(n)+A314903(n)-A004525(A004396(n))`
-/

namespace A314970.P16762046121003014077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314903 n - A004525 (A004396 n).toNat)

end

end A314970.P16762046121003014077

noncomputable section

/-- A314970: Coordination sequence Gal.6.341.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314970.P16762046121003014077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A314970 (n : ℕ) : ℤ :=
  A314970.P16762046121003014077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A314970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315030.P10325846217098792989

`A314893(n)+Δ[A011865(n)]`
-/

namespace A315030.P10325846217098792989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + (f1 (n + 1) - f1 n)

end

end A315030.P10325846217098792989

noncomputable section

/-- A315030: Coordination sequence Gal.6.344.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315030.P10325846217098792989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A315030 (n : ℕ) : ℤ :=
  A315030.P10325846217098792989.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A315030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315034.P9202512944006640459

`A314894(n)+Δ[A011864(n)]`
-/

namespace A315034.P9202512944006640459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314894 n + (f1 (n + 1) - f1 n)

end

end A315034.P9202512944006640459

noncomputable section

/-- A315034: Coordination sequence Gal.6.323.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315034.P9202512944006640459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315034 (n : ℕ) : ℤ :=
  A315034.P9202512944006640459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315067.P1327162686597900604

`A312526(n)+A004525(n)`
-/

namespace A315067.P1327162686597900604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312526 n + A004525 n

end

end A315067.P1327162686597900604

noncomputable section

/-- A315067: Coordination sequence Gal.6.349.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315067.P1327162686597900604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315067 (n : ℕ) : ℤ :=
  A315067.P1327162686597900604.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315105.P8958806795281290820

`A312484(n)+A004525(A047263(n+1))`
-/

namespace A315105.P8958806795281290820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312484 n + A004525 (A047263 (n + 1)).toNat

end

end A315105.P8958806795281290820

noncomputable section

/-- A315105: Coordination sequence Gal.6.363.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315105.P8958806795281290820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A315105 (n : ℕ) : ℤ :=
  A315105.P8958806795281290820.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A315105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315198.P16559012369285710955

`A313721(n)+A128834(A004396(2*n))`
-/

namespace A315198.P16559012369285710955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A128834 (A004396 (2 * n)).toNat

end

end A315198.P16559012369285710955

noncomputable section

/-- A315198: Coordination sequence Gal.5.86.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315198.P16559012369285710955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A315198 (n : ℕ) : ℤ :=
  A315198.P16559012369285710955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A315198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315255.P10615745907849045230

`A330025(n)+A314898(n)`
-/

namespace A315255.P10615745907849045230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314898 n

end

end A315255.P10615745907849045230

noncomputable section

/-- A315255: Coordination sequence Gal.5.67.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315255.P10615745907849045230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A315255 (n : ℕ) : ℤ :=
  A315255.P10615745907849045230.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A315255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315256.P12326446692328451720

`A314828(n)+A004396(A004396(n))`
-/

namespace A315256.P12326446692328451720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + A004396 (A004396 n).toNat

end

end A315256.P12326446692328451720

noncomputable section

/-- A315256: Coordination sequence Gal.5.111.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315256.P12326446692328451720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A315256 (n : ℕ) : ℤ :=
  A315256.P12326446692328451720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A315256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315304.P8913509134367770047

`2*A314828(n)-A008574(n)`
-/

namespace A315304.P8913509134367770047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314828 n - A008574 n

end

end A315304.P8913509134367770047

noncomputable section

/-- A315304: Coordination sequence Gal.5.84.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315304.P8913509134367770047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. -/
def A315304 (n : ℕ) : ℤ :=
  A315304.P8913509134367770047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. -/
def A315304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315308.P10890972487147772624

`abs(A008592(n)-A310412(n))`
-/

namespace A315308.P10890972487147772624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310412 n|

end

end A315308.P10890972487147772624

noncomputable section

/-- A315308: Coordination sequence Gal.5.299.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315308.P10890972487147772624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315308 (n : ℕ) : ℤ :=
  A315308.P10890972487147772624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315340.P1423207088725425978

`2*A314894(n)-A008574(n)`
-/

namespace A315340.P1423207088725425978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314894 n - A008574 n

end

end A315340.P1423207088725425978

noncomputable section

/-- A315340: Coordination sequence Gal.6.625.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315340.P1423207088725425978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315340 (n : ℕ) : ℤ :=
  A315340.P1423207088725425978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315344.P6791626864233840389

`2*A314898(n)-A008574(n)`
-/

namespace A315344.P6791626864233840389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314898 n - A008574 n

end

end A315344.P6791626864233840389

noncomputable section

/-- A315344: Coordination sequence Gal.6.640.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315344.P6791626864233840389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315344 (n : ℕ) : ℤ :=
  A315344.P6791626864233840389.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315351.P1121042344882834040

`A314160(n)+A244895(2*n)`
-/

namespace A315351.P1121042344882834040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314160 n + A244895 (2 * n)

end

end A315351.P1121042344882834040

noncomputable section

/-- A315351: Coordination sequence Gal.6.650.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315351.P1121042344882834040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315351 (n : ℕ) : ℤ :=
  A315351.P1121042344882834040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315395.P11298806320610192218

`A313485(n)+A046978(A004396(n))`
-/

namespace A315395.P11298806320610192218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + A046978 (A004396 n).toNat

end

end A315395.P11298806320610192218

noncomputable section

/-- A315395: Coordination sequence Gal.6.120.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315395.P11298806320610192218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. -/
def A315395 (n : ℕ) : ℤ :=
  A315395.P11298806320610192218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. -/
def A315395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315397.P1916688396986312343

`A330025(n)+A313506(n)`
-/

namespace A315397.P1916688396986312343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313506 n

end

end A315397.P1916688396986312343

noncomputable section

/-- A315397: Coordination sequence Gal.5.55.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315397.P1916688396986312343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A315397 (n : ℕ) : ℤ :=
  A315397.P1916688396986312343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A315397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315403.P14978821845076500409

`A313485(n)+A004396(A004525(n))`
-/

namespace A315403.P14978821845076500409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + A004396 (A004525 n).toNat

end

end A315403.P14978821845076500409

noncomputable section

/-- A315403: Coordination sequence Gal.6.264.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315403.P14978821845076500409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A315403 (n : ℕ) : ℤ :=
  A315403.P14978821845076500409.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A315403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315413.P11341791677008129181

`A313485(n)+A004525(n)`
-/

namespace A315413.P11341791677008129181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + A004525 n

end

end A315413.P11341791677008129181

noncomputable section

/-- A315413: Coordination sequence Gal.6.157.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315413.P11341791677008129181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315413 (n : ℕ) : ℤ :=
  A315413.P11341791677008129181.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315432.P14363789502883768676

`3*n+A311586(n)-A265227(n+1)`
-/

namespace A315432.P14363789502883768676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A311586 n - A265227 (n + 1))

end

end A315432.P14363789502883768676

noncomputable section

/-- A315432: Coordination sequence Gal.6.650.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315432.P14363789502883768676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A315432 (n : ℕ) : ℤ :=
  A315432.P14363789502883768676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A315432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315445.P3390685166526075264

`A047263(A008574(n)+A330025(n)+1)`
-/

namespace A315445.P3390685166526075264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A008574 n + (A330025 n + 1)).toNat

end

end A315445.P3390685166526075264

noncomputable section

/-- A315445: Coordination sequence Gal.6.233.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315445.P3390685166526075264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2436 terms. -/
def A315445 (n : ℕ) : ℤ :=
  A315445.P3390685166526075264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2436 terms. -/
def A315445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315453.P11183259861073746390

`A315182(n)+∑[A021913(n)]`
-/

namespace A315453.P11183259861073746390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315182 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315453.P11183259861073746390

noncomputable section

/-- A315453: Coordination sequence Gal.6.207.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315453.P11183259861073746390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A315453 (n : ℕ) : ℤ :=
  A315453.P11183259861073746390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A315453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315465.P8648594998862142925

`abs(A008592(n)-A313119(n))`
-/

namespace A315465.P8648594998862142925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313119 n|

end

end A315465.P8648594998862142925

noncomputable section

/-- A315465: Coordination sequence Gal.6.157.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315465.P8648594998862142925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A315465 (n : ℕ) : ℤ :=
  A315465.P8648594998862142925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A315465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315475.P8010595968173060010

`abs(10*n-A313100(n))`
-/

namespace A315475.P8010595968173060010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313100 n|

end

end A315475.P8010595968173060010

noncomputable section

/-- A315475: Coordination sequence Gal.5.133.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315475.P8010595968173060010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A315475 (n : ℕ) : ℤ :=
  A315475.P8010595968173060010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A315475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315488.P5611134213742253392

`A313556(n)+A004396(n)`
-/

namespace A315488.P5611134213742253392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + A004396 n

end

end A315488.P5611134213742253392

noncomputable section

/-- A315488: Coordination sequence Gal.6.343.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315488.P5611134213742253392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2295 terms. -/
def A315488 (n : ℕ) : ℤ :=
  A315488.P5611134213742253392.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2295 terms. -/
def A315488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315495.P15314594483852604152

`A313580(n)+A004396(n)`
-/

namespace A315495.P15314594483852604152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n + A004396 n

end

end A315495.P15314594483852604152

noncomputable section

/-- A315495: Coordination sequence Gal.5.135.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315495.P15314594483852604152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A315495 (n : ℕ) : ℤ :=
  A315495.P15314594483852604152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A315495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315510.P17321051507186431582

`abs(A008592(n)-A312975(n))`
-/

namespace A315510.P17321051507186431582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312975 n|

end

end A315510.P17321051507186431582

noncomputable section

/-- A315510: Coordination sequence Gal.5.290.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315510.P17321051507186431582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A315510 (n : ℕ) : ℤ :=
  A315510.P17321051507186431582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A315510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315521.P715979807562858068

`A315486(n)+Δ[A011864(n)]`
-/

namespace A315521.P715979807562858068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315486 n + (f1 (n + 1) - f1 n)

end

end A315521.P715979807562858068

noncomputable section

/-- A315521: Coordination sequence Gal.6.620.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315521.P715979807562858068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315521 (n : ℕ) : ℤ :=
  A315521.P715979807562858068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315526.P9064506857305553506

`A315491(n)+Δ[A011864(n)]`
-/

namespace A315526.P9064506857305553506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315491 n + (f1 (n + 1) - f1 n)

end

end A315526.P9064506857305553506

noncomputable section

/-- A315526: Coordination sequence Gal.6.637.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315526.P9064506857305553506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A315526 (n : ℕ) : ℤ :=
  A315526.P9064506857305553506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A315526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315534.P15836177857492630035

`A313720(n)+A004396(n)`
-/

namespace A315534.P15836177857492630035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n + A004396 n

end

end A315534.P15836177857492630035

noncomputable section

/-- A315534: Coordination sequence Gal.6.624.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315534.P15836177857492630035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A315534 (n : ℕ) : ℤ :=
  A315534.P15836177857492630035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A315534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315535.P14487333064084558685

`A313721(n)+A004396(n)`
-/

namespace A315535.P14487333064084558685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A004396 n

end

end A315535.P14487333064084558685

noncomputable section

/-- A315535: Coordination sequence Gal.5.304.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315535.P14487333064084558685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A315535 (n : ℕ) : ℤ :=
  A315535.P14487333064084558685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A315535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315540.P594240874885915824

`A314893(n)+n`
-/

namespace A315540.P594240874885915824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + (n : ℤ)

end

end A315540.P594240874885915824

noncomputable section

/-- A315540: Coordination sequence Gal.6.643.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315540.P594240874885915824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315540 (n : ℕ) : ℤ :=
  A315540.P594240874885915824.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315543.P9834102323510964404

`A314896(n)+n`
-/

namespace A315543.P9834102323510964404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n + (n : ℤ)

end

end A315543.P9834102323510964404

noncomputable section

/-- A315543: Coordination sequence Gal.4.137.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315543.P9834102323510964404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A315543 (n : ℕ) : ℤ :=
  A315543.P9834102323510964404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A315543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315546.P1451297170771805050

`A313746(n)+A004396(n)`
-/

namespace A315546.P1451297170771805050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n + A004396 n

end

end A315546.P1451297170771805050

noncomputable section

/-- A315546: Coordination sequence Gal.5.294.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315546.P1451297170771805050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A315546 (n : ℕ) : ℤ :=
  A315546.P1451297170771805050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A315546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315547.P9153730377971794613

`A314898(n)+n`
-/

namespace A315547.P9153730377971794613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314898 n + (n : ℤ)

end

end A315547.P9153730377971794613

noncomputable section

/-- A315547: Coordination sequence Gal.5.295.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315547.P9153730377971794613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A315547 (n : ℕ) : ℤ :=
  A315547.P9153730377971794613.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A315547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315634.P4185785318995043649

`abs(A008592(n)-A312680(n))`
-/

namespace A315634.P4185785318995043649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312680 n|

end

end A315634.P4185785318995043649

noncomputable section

/-- A315634: Coordination sequence Gal.4.55.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315634.P4185785318995043649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A315634 (n : ℕ) : ℤ :=
  A315634.P4185785318995043649.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A315634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315637.P8693043612611580160

`abs(A008592(n)-A312658(n))`
-/

namespace A315637.P8693043612611580160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312658 n|

end

end A315637.P8693043612611580160

noncomputable section

/-- A315637: Coordination sequence Gal.6.352.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315637.P8693043612611580160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A315637 (n : ℕ) : ℤ :=
  A315637.P8693043612611580160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A315637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315646.P17156318483534215033

`2*A313538(n)-A008574(n)`
-/

namespace A315646.P17156318483534215033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313538 n - A008574 n

end

end A315646.P17156318483534215033

noncomputable section

/-- A315646: Coordination sequence Gal.5.290.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315646.P17156318483534215033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A315646 (n : ℕ) : ℤ :=
  A315646.P17156318483534215033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A315646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315653.P10545093397592680194

`abs(A008592(n)-A312484(n))`
-/

namespace A315653.P10545093397592680194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312484 n|

end

end A315653.P10545093397592680194

noncomputable section

/-- A315653: Coordination sequence Gal.5.305.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315653.P10545093397592680194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A315653 (n : ℕ) : ℤ :=
  A315653.P10545093397592680194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A315653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315689.P11366853551913023718

`A314094(n)+A004525(n)`
-/

namespace A315689.P11366853551913023718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n + A004525 n

end

end A315689.P11366853551913023718

noncomputable section

/-- A315689: Coordination sequence Gal.6.624.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315689.P11366853551913023718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315689 (n : ℕ) : ℤ :=
  A315689.P11366853551913023718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315703.P17229668802607991947

`A313556(n)+n`
-/

namespace A315703.P17229668802607991947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + (n : ℤ)

end

end A315703.P17229668802607991947

noncomputable section

/-- A315703: Coordination sequence Gal.6.643.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315703.P17229668802607991947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A315703 (n : ℕ) : ℤ :=
  A315703.P17229668802607991947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A315703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315704.P11710660165894118179

`A313561(n)+n`
-/

namespace A315704.P11710660165894118179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n + (n : ℤ)

end

end A315704.P11710660165894118179

noncomputable section

/-- A315704: Coordination sequence Gal.4.137.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315704.P11710660165894118179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A315704 (n : ℕ) : ℤ :=
  A315704.P11710660165894118179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A315704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315710.P3884167862571020999

`A313569(n)+n`
-/

namespace A315710.P3884167862571020999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + (n : ℤ)

end

end A315710.P3884167862571020999

noncomputable section

/-- A315710: Coordination sequence Gal.6.628.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315710.P3884167862571020999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2194 terms. -/
def A315710 (n : ℕ) : ℤ :=
  A315710.P3884167862571020999.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2194 terms. -/
def A315710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315732.P13634539582885315922

`2*A313692(n)-A008574(n)`
-/

namespace A315732.P13634539582885315922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313692 n - A008574 n

end

end A315732.P13634539582885315922

noncomputable section

/-- A315732: Coordination sequence Gal.6.640.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315732.P13634539582885315922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315732 (n : ℕ) : ℤ :=
  A315732.P13634539582885315922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315737.P10781297996396530912

`A313916(n)+A253262(n)`
-/

namespace A315737.P10781297996396530912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n + A253262 n

end

end A315737.P10781297996396530912

noncomputable section

/-- A315737: Coordination sequence Gal.5.90.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315737.P10781297996396530912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315737 (n : ℕ) : ℤ :=
  A315737.P10781297996396530912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315738.P6865487008344501452

`A315515(n)+A004525(n-A004396(n))`
-/

namespace A315738.P6865487008344501452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315515 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A315738.P6865487008344501452

noncomputable section

/-- A315738: Coordination sequence Gal.6.343.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315738.P6865487008344501452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A315738 (n : ℕ) : ℤ :=
  A315738.P6865487008344501452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A315738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315744.P16771703429452510069

`A314094(n)+A004396(n)`
-/

namespace A315744.P16771703429452510069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n + A004396 n

end

end A315744.P16771703429452510069

noncomputable section

/-- A315744: Coordination sequence Gal.6.643.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315744.P16771703429452510069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2227 terms. -/
def A315744 (n : ℕ) : ℤ :=
  A315744.P16771703429452510069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2227 terms. -/
def A315744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315745.P1982268987440364031

`A313685(n)+n`
-/

namespace A315745.P1982268987440364031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n + (n : ℤ)

end

end A315745.P1982268987440364031

noncomputable section

/-- A315745: Coordination sequence Gal.4.137.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315745.P1982268987440364031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A315745 (n : ℕ) : ℤ :=
  A315745.P1982268987440364031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A315745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216637.P16074414252254142737

`A329355(3*(n+1))%8`
-/

namespace A216637.P16074414252254142737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329355 (3 * (n + 1))) 8

end

end A216637.P16074414252254142737

noncomputable section

/-- A216637: Kolakoski sequence by 3-words.

Offset 1, canonical program `A216637.P16074414252254142737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A216637 (n : ℕ) : ℤ :=
  A216637.P16074414252254142737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A216637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216780.P3237457974216524300

`eq[1, A361024(n+1)]+1`
-/

namespace A216780.P3237457974216524300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216780.P3237457974216524300

noncomputable section

/-- A216780: Numbers n such that numerator(sigma(n)/n) and denominator(sigma(n)/n) are both odd.

Offset 1, canonical program `A216780.P3237457974216524300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3944 terms. -/
def A216780 (n : ℕ) : ℤ :=
  (A216780.P3237457974216524300.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3944 terms. -/
def A216780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217564.P832865562934600438

`A079952(n+2)-A079952(n+1)`
-/

namespace A217564.P832865562934600438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079952 (n + 2) - A079952 (n + 1)

end

end A217564.P832865562934600438

noncomputable section

/-- A217564: Number of primes between prime(n)/2 and prime(n+1)/2.

Offset 1, canonical program `A217564.P832865562934600438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217564 (n : ℕ) : ℤ :=
  A217564.P832865562934600438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217587.P11225916945597616311

`∩[A073102(n+1), A093359(n+1)]`
-/

namespace A217587.P11225916945597616311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P11225916945597616311

noncomputable section

/-- A217587: Primes p of the form 420k + 1 for some k.

Offset 1, canonical program `A217587.P11225916945597616311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A217587 (n : ℕ) : ℤ :=
  (A217587.P11225916945597616311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A217587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218567.P2187862195306331309

`A218506(n+6)-A117143(n+6)`
-/

namespace A218567.P2187862195306331309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218506 (n + 6) - A117143 (n + 6)

end

end A218567.P2187862195306331309

noncomputable section

/-- A218567: Number of partitions p of n such that max(p)-min(p) = 4.

Offset 6, canonical program `A218567.P2187862195306331309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117143, A218506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218567 (n : ℕ) : ℤ :=
  A218567.P2187862195306331309.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117143, A218506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219636.P17854170644708396736

`A307295(n)-2`
-/

namespace A219636.P17854170644708396736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n - 2

end

end A219636.P17854170644708396736

noncomputable section

/-- A219636: Complement of A035336.

Offset 1, canonical program `A219636.P17854170644708396736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219636 (n : ℕ) : ℤ :=
  A219636.P17854170644708396736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222548.P12009654421931561066

`2*A024916(n+1)-A006218(n+1)`
-/

namespace A222548.P12009654421931561066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024916 (n + 1) - A006218 (n + 1)

end

end A222548.P12009654421931561066

noncomputable section

/-- A222548: a(n) = Sum_{k=1..n} floor(n/k)^2.

Offset 1, canonical program `A222548.P12009654421931561066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222548 (n : ℕ) : ℤ :=
  A222548.P12009654421931561066.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A224770.P4749613609057412326

`A020725(eq[4, A000089(n+1)])`
-/

namespace A224770.P4749613609057412326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224770.P4749613609057412326

noncomputable section

/-- A224770: Numbers that are the primitive sum of two squares in exactly two ways.

Offset 1, canonical program `A224770.P4749613609057412326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 615 terms. -/
def A224770 (n : ℕ) : ℤ :=
  A224770.P4749613609057412326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 615 terms. -/
def A224770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224854.P17096122939360505849

`∩[A201804(n+1), A201816(n+1)]`
-/

namespace A224854.P17096122939360505849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224854.P17096122939360505849

noncomputable section

/-- A224854: Numbers n such that 90*n + 11 and 90*n + 13 are twin prime.

Offset 1, canonical program `A224854.P17096122939360505849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A224854 (n : ℕ) : ℤ :=
  (A224854.P17096122939360505849.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A224854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225822.P16967575723394986569

`2*A131323(n+1)+1`
-/

namespace A225822.P16967575723394986569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131323 (n + 1) + 1

end

end A225822.P16967575723394986569

noncomputable section

/-- A225822: Lesser of adjacent odd numbers with different parity of binary weight and both isolated from odd numbers of same parity of binary weight.

Offset 1, canonical program `A225822.P16967575723394986569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131323, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225822 (n : ℕ) : ℤ :=
  A225822.P16967575723394986569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131323, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225948.P11567398781708977786

`(A225975(n)-A106609(n+4))*A106609(n+4)`
-/

namespace A225948.P11567398781708977786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A225975 n - A106609 (n + 4)) * A106609 (n + 4)

end

end A225948.P11567398781708977786

noncomputable section

/-- A225948: a(0) = -1; for n>0, a(n) = numerator(1/4 - 4/n^2).

Offset 0, canonical program `A225948.P11567398781708977786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A225948 (n : ℕ) : ℤ :=
  A225948.P11567398781708977786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A225948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227182.P3655183784156601540

`A006527(A227177(n))-A227179(n)`
-/

namespace A227182.P3655183784156601540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (A227177 n).toNat - A227179 n

end

end A227182.P3655183784156601540

noncomputable section

/-- A227182: Simple self-inverse permutation of natural numbers: List each block of n^2 - n + 1 numbers from ((n-1)^3 + 2*(n-1))/3 + 1 to (n^3 + 2*n)/3 in reverse order.

Offset 0, canonical program `A227182.P3655183784156601540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227177, A227179, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227182 (n : ℕ) : ℤ :=
  A227182.P3655183784156601540.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227177, A227179, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227182.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227625.P4004230417441754442

`A010051(n+1)*A257075(n)`
-/

namespace A227625.P4004230417441754442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A257075 n

end

end A227625.P4004230417441754442

noncomputable section

/-- A227625: Indicator sequence of primes p > 3: k = p mod 6, if k = 5 then a(n) = -1, if k = 1 then a(n) = 1 else a(n) = 0, a(2) = -1, a(3) = 1.

Offset 1, canonical program `A227625.P4004230417441754442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A227625 (n : ℕ) : ℤ :=
  A227625.P4004230417441754442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A227625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227868.P6045472964894764945

`∩[A063226(3*n+5), A002808(n+1)]`
-/

namespace A227868.P6045472964894764945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227868.P6045472964894764945

noncomputable section

/-- A227868: Composite numbers congruent to 7 or 23 (mod 30).

Offset 1, canonical program `A227868.P6045472964894764945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A227868 (n : ℕ) : ℤ :=
  (A227868.P6045472964894764945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A227868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227869.P7864650989961761614

`A128471(comp[A158573(n+1)])`
-/

namespace A227869.P7864650989961761614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158573 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A227869.P7864650989961761614

noncomputable section

/-- A227869: Composite numbers congruent to 7 (mod 30).

Offset 1, canonical program `A227869.P7864650989961761614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A227869 (n : ℕ) : ℤ :=
  A227869.P7864650989961761614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A227869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228102.P7143956737170160369

`eq[1, ∑{e}[A063960(2*n+1), #]]`
-/

namespace A228102.P7143956737170160369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228102.P7143956737170160369

noncomputable section

/-- A228102: Numbers n such that sum of all primes <=n is prime.

Offset 1, canonical program `A228102.P7143956737170160369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A228102 (n : ℕ) : ℤ :=
  (A228102.P7143956737170160369.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A228102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228372.P12115013803354651000

`A006218(A002808(n+1))-2*A002808(n+1)+1`
-/

namespace A228372.P12115013803354651000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A002808 (n + 1)).toNat - 2 * A002808 (n + 1) + 1

end

end A228372.P12115013803354651000

noncomputable section

/-- A228372: Number of nontrivial divisors in the first n composites.

Offset 1, canonical program `A228372.P12115013803354651000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228372 (n : ℕ) : ℤ :=
  A228372.P12115013803354651000.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229064.P12986880071610748840

`A084400(eq[2, A084400(n+2)-A084400(n+1)]+1)`
-/

namespace A229064.P12986880071610748840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2) - A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229064.P12986880071610748840

noncomputable section

/-- A229064: Lesser of Fermi-Dirac twin primes: both a(n)(>=5) and a(n)+2 are in A050376.

Offset 1, canonical program `A229064.P12986880071610748840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1291 terms. -/
def A229064 (n : ℕ) : ℤ :=
  A229064.P12986880071610748840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1291 terms. -/
def A229064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230201.P13558916642779101662

`record[and(n+2, A295304(n+2))]`
-/

namespace A230201.P13558916642779101662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (A295304 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230201.P13558916642779101662

noncomputable section

/-- A230201: Numbers k such that sigma(phi(k)) < k.

Offset 1, canonical program `A230201.P13558916642779101662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230201 (n : ℕ) : ℤ :=
  A230201.P13558916642779101662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230403.P10181876793047725075

`A055881(n+1)-1`
-/

namespace A230403.P10181876793047725075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (n + 1) - 1

end

end A230403.P10181876793047725075

noncomputable section

/-- A230403: a(n) = the largest k such that (k+1)! divides n; the number of trailing zeros in the factorial base representation of n (A007623(n)).

Offset 1, canonical program `A230403.P10181876793047725075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230403 (n : ℕ) : ℤ :=
  A230403.P10181876793047725075.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A231167.P16208437102851873404

`A024816(n+1)%A028310(A049820(n+1))`
-/

namespace A231167.P16208437102851873404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024816 (n + 1)) (A028310 (A049820 (n + 1)).toNat)

end

end A231167.P16208437102851873404

noncomputable section

/-- A231167: a(1) = a(2) = 0, for n>=3: (sum of non-divisors of n) modulo (number of non-divisors of n).

Offset 1, canonical program `A231167.P16208437102851873404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231167 (n : ℕ) : ℤ :=
  A231167.P16208437102851873404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231550.P13029068904856309270

`A229763(n)+2*A292944(n)`
-/

namespace A231550.P13029068904856309270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n + 2 * A292944 n

end

end A231550.P13029068904856309270

noncomputable section

/-- A231550: Permutation of nonnegative integers: for each bit[i] in the binary representation, except the most and the least significant bits, set bit[i] = bit[i] XOR bit[i-1], where bit[i-1] is the less significant bit, XOR is the binary logical exclusive or operator.

Offset 0, canonical program `A231550.P13029068904856309270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A231550 (n : ℕ) : ℤ :=
  A231550.P13029068904856309270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A231550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231587.P4482613944097138198

`eq[1, A010051(A001065(∑{d}[n+1, #])+1)]+1`
-/

namespace A231587.P4482613944097138198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001065 (∑ d ∈ Nat.divisors (f3 n), d) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231587.P4482613944097138198

noncomputable section

/-- A231587: Numbers k such that sigma(sigma(k)) - sigma(k) + 1 is prime.

Offset 1, canonical program `A231587.P4482613944097138198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A231587 (n : ℕ) : ℤ :=
  (A231587.P4482613944097138198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A231587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231624.P3333891316420223626

`A005100(eq[A125238(n+2), A125238(n+1)]+1)`
-/

namespace A231624.P3333891316420223626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125238 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A231624.P3333891316420223626

noncomputable section

/-- A231624: Smallest sets of 3 consecutive deficient numbers in arithmetic progression. The initial deficient number is listed.

Offset 1, canonical program `A231624.P3333891316420223626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A231624 (n : ℕ) : ℤ :=
  A231624.P3333891316420223626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A231624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231877.P9922668353028729998

`lt[n*char[A231876(n+1)], n]`
-/

namespace A231877.P9922668353028729998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231876 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A231877.P9922668353028729998

noncomputable section

/-- A231877: Numbers k such that omega(k)^2 (cf. A001221) does not divide k.

Offset 1, canonical program `A231877.P9922668353028729998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. -/
def A231877 (n : ℕ) : ℤ :=
  (A231877.P9922668353028729998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. -/
def A231877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232096.P3607466228667116580

`A055881(A000217(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232096.P3607466228667116580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A000217 (n + 1)).toNat

end

end A232096.P3607466228667116580

noncomputable section

/-- A232096: a(n) = largest m such that m! divides 1+2+...+n; a(n) = A055881(A000217(n)).

Offset 1, canonical program `A232096.P3607466228667116580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232096 (n : ℕ) : ℤ :=
  A232096.P3607466228667116580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232096.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232741.P5104032373726736522

`record[(n+1)/A055881(xor(n+1, A055881(n+1))+1)]`
-/

namespace A232741.P5104032373726736522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055881 (Int.xor (n + 1 : ℤ) (A055881 (n + 1)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232741.P5104032373726736522

noncomputable section

/-- A232741: Numbers n for which the largest m such that (m-1)! divides n is a prime.

Offset 1, canonical program `A232741.P5104032373726736522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8748 terms. -/
def A232741 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A232741.P5104032373726736522.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8748 terms. -/
def A232741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232744.P13120240317739843502

`record[and(1, A055881(n+1))*(n+1)]`
-/

namespace A232744.P13120240317739843502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055881 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232744.P13120240317739843502

noncomputable section

/-- A232744: Numbers k for which the largest m such that m! divides k is odd.

Offset 1, canonical program `A232744.P13120240317739843502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6372 terms. -/
def A232744 (n : ℕ) : ℤ :=
  A232744.P13120240317739843502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6372 terms. -/
def A232744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233285.P7127810014733158196

`A055881(A000045(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233285.P7127810014733158196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A000045 (n + 1)).toNat

end

end A233285.P7127810014733158196

noncomputable section

/-- A233285: a(n) = largest m such that m! divides n-th Fibonacci number; a(n) = A055881(A000045(n)).

Offset 1, canonical program `A233285.P7127810014733158196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233285 (n : ℕ) : ℤ :=
  A233285.P7127810014733158196.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A233388.P9376784371074079915

`4*A091785(n+1)-1`
-/

namespace A233388.P9376784371074079915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A091785 (n + 1) - 1

end

end A233388.P9376784371074079915

noncomputable section

/-- A233388: Odious numbers that are the sum of 2 consecutive odious numbers.

Offset 1, canonical program `A233388.P9376784371074079915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233388 (n : ℕ) : ℤ :=
  A233388.P9376784371074079915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234306.P8708475813081284006

`n+1-A066660(n+1)`
-/

namespace A234306.P8708475813081284006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A066660 (n + 1)

end

end A234306.P8708475813081284006

noncomputable section

/-- A234306: a(n) = n + 1 - d(2n), where d(n) is the number of divisors of n.

Offset 1, canonical program `A234306.P8708475813081284006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234306 (n : ℕ) : ℤ :=
  A234306.P8708475813081284006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234306.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235050.P8647976439226390156

`∪[A000040(n+1), A281292(n+1)]`
-/

namespace A235050.P8647976439226390156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P8647976439226390156

noncomputable section

/-- A235050: Squarefree numbers such that none of their prime factors share common 1-bits in the same bit-position of their binary representations.

Offset 1, canonical program `A235050.P8647976439226390156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235050 (n : ℕ) : ℤ :=
  (A235050.P8647976439226390156.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236187.P5518244365376147795

`Δ[A008365(n+2)]`
-/

namespace A236187.P5518244365376147795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236187.P5518244365376147795

noncomputable section

/-- A236187: Differences between terms of compacting Eratosthenes sieve for prime(6) = 13.

Offset 1, canonical program `A236187.P5518244365376147795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A236187 (n : ℕ) : ℤ :=
  A236187.P5518244365376147795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A236187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236288.P3577133205354347482

`A000203(n+1)^A049820(n+1)`
-/

namespace A236288.P3577133205354347482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) ^ (A049820 (n + 1) : ℤ)

end

end A236288.P3577133205354347482

noncomputable section

/-- A236288: a(n) = sigma(n)^n / sigma(n)^tau(n), where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

Offset 1, canonical program `A236288.P3577133205354347482`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236288.P3577133205354347482.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236333.P4796533297437747585

`A080425(n)+A109595(n+1)/A008620(n)`
-/

namespace A236333.P4796533297437747585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080425 n : ℚ) + (A109595 (n + 1) : ℚ) / (A008620 n : ℚ)

end

end A236333.P4796533297437747585

noncomputable section

/-- A236333: The (n-2)-th (n>=3) triple of terms gives coefficients of double trinomial P_n(x) = ((n-2)^2*x^2 + n*x + 2)/2 (see comment).

Offset 3, canonical program `A236333.P4796533297437747585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236333 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236333.P4796533297437747585.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236346.P11164933767683975448

`abs(1-Δ[A057050(n+1)])+1`
-/

namespace A236346.P11164933767683975448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n)| + 1

end

end A236346.P11164933767683975448

noncomputable section

/-- A236346: Manhattan distances between n^2 and (n+1)^2 in a left-aligned triangle with next M natural numbers in row M: 1, 2 3, 4 5 6, 7 8 9 10, etc.

Offset 1, canonical program `A236346.P11164933767683975448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236346 (n : ℕ) : ℤ :=
  A236346.P11164933767683975448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236562.P16099528287106471554

`comp[A045765(n+1)]`
-/

namespace A236562.P16099528287106471554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236562.P16099528287106471554

noncomputable section

/-- A236562: Numbers n such that A049820(x) = n has a solution.

Offset 1, canonical program `A236562.P16099528287106471554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236562 (n : ℕ) : ℤ :=
  (A236562.P16099528287106471554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236564.P10217388441294843712

`Δ[A238455(n)]-A238455(n)`
-/

namespace A236564.P10217388441294843712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238455 n

end

end A236564.P10217388441294843712

noncomputable section

/-- A236564: Difference between 2^(2n-1) and the nearest square.

Offset 1, canonical program `A236564.P10217388441294843712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A236564 (n : ℕ) : ℤ :=
  A236564.P10217388441294843712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A236564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236627.P10038142205825407156

`A160812(n+1)/2`
-/

namespace A236627.P10038142205825407156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160812 (n + 1) : ℚ) / 2

end

end A236627.P10038142205825407156

noncomputable section

/-- A236627: Number of positive integers <= sqrt(n) not dividing n.

Offset 1, canonical program `A236627.P10038142205825407156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236627 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236627.P10038142205825407156.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236632.P7240843620257617603

`A024916(n+1)-A006218(n+1)`
-/

namespace A236632.P7240843620257617603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A006218 (n + 1)

end

end A236632.P7240843620257617603

noncomputable section

/-- A236632: Sum of all divisors of all positive integers <= n minus the total number of divisors of all positive integers <= n.

Offset 1, canonical program `A236632.P7240843620257617603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236632 (n : ℕ) : ℤ :=
  A236632.P7240843620257617603.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236632.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237447.P14909047409678941906

`A237448(A038722(n+1))`
-/

namespace A237447.P14909047409678941906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237448 (A038722 (n + 1)).toNat

end

end A237447.P14909047409678941906

noncomputable section

/-- A237447: Infinite square array: row 1 is the positive integers 1, 2, 3, ..., and on any subsequent row n, n is moved to the front: n, 1, ..., n-1, n+1, n+2, ...

Offset 1, canonical program `A237447.P14909047409678941906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237447 (n : ℕ) : ℤ :=
  A237447.P14909047409678941906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237452.P4723187971781084873

`floor((A064866(n+1)-1)/A074279(n+1))`
-/

namespace A237452.P4723187971781084873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064866 (n + 1) - 1 : ℚ) / (A074279 (n + 1) : ℚ)⌋

end

end A237452.P4723187971781084873

noncomputable section

/-- A237452: Zero-based row index to irregular tables organized as successively larger square matrices.

Offset 1, canonical program `A237452.P4723187971781084873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064866, A074279, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A237452 (n : ℕ) : ℤ :=
  A237452.P4723187971781084873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064866, A074279, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A237452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A237719.P13944446607882022738

`eq[A000035(n), A242481(n+1)]+1`
-/

namespace A237719.P13944446607882022738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A237719.P13944446607882022738

noncomputable section

/-- A237719: Numbers n such that k(n) = (n(n+1)/2 mod n) = (antisigma(n) mod n) + (sigma(n) mod n).

Offset 1, canonical program `A237719.P13944446607882022738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1756 terms. -/
def A237719 (n : ℕ) : ℤ :=
  (A237719.P13944446607882022738.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1756 terms. -/
def A237719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237990.P9896644272104752625

`filter[A099861(n+1), A121262(#)]`
-/

namespace A237990.P9896644272104752625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A237990.P9896644272104752625

noncomputable section

/-- A237990: Numbers m such that the numbers of primes, even positive integers and odd positive integers less than or equal to m are all even.

Offset 1, canonical program `A237990.P9896644272104752625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2781 terms. -/
def A237990 (n : ℕ) : ℤ :=
  A237990.P9896644272104752625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2781 terms. -/
def A237990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239186.P14905263038245322427

`A239056(n+1)-A239059(n+1)`
-/

namespace A239186.P14905263038245322427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - A239059 (n + 1)

end

end A239186.P14905263038245322427

noncomputable section

/-- A239186: Sum of the largest two parts in the partitions of 4n into 4 parts with smallest part equal to 1.

Offset 1, canonical program `A239186.P14905263038245322427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239186 (n : ℕ) : ℤ :=
  A239186.P14905263038245322427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239734.P8539231742677177354

`∩[A023232(n+1), A023235(n+1)]`
-/

namespace A239734.P8539231742677177354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239734.P8539231742677177354

noncomputable section

/-- A239734: Primes p such that 8p+9 and 9p+8 are both prime.

Offset 1, canonical program `A239734.P8539231742677177354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239734 (n : ℕ) : ℤ :=
  (A239734.P8539231742677177354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240135.P474311073820611688

`A000079(n+1)*A002808(n+1)/8`
-/

namespace A240135.P474311073820611688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A002808 (n + 1) : ℚ) / 8

end

end A240135.P474311073820611688

noncomputable section

/-- A240135: a(n) = composite(n)*2^(n - 3).

Offset 1, canonical program `A240135.P474311073820611688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240135 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240135.P474311073820611688.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240135.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A243515.P1271760465107560758

`A099265(n+1)+2`
-/

namespace A243515.P1271760465107560758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099265 (n + 1) + 2

end

end A243515.P1271760465107560758

noncomputable section

/-- A243515: Number of length n+2 0..6 arrays with no three elements in a row with pattern aba or abb (with a!=b) and new values 0..6 introduced in 0..6 order.

Offset 1, canonical program `A243515.P1271760465107560758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A243515 (n : ℕ) : ℤ :=
  A243515.P1271760465107560758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A243515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243915.P1408806068792064357

`A000203(Δ[A013939(n+1)])`
-/

namespace A243915.P1408806068792064357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A243915.P1408806068792064357

noncomputable section

/-- A243915: a(n) = sigma(omega(n)).

Offset 2, canonical program `A243915.P1408806068792064357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243915 (n : ℕ) : ℤ :=
  A243915.P1408806068792064357.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244049.P15221357512083652868

`A153485(n+1)-n`
-/

namespace A244049.P15221357512083652868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1) - (n : ℤ)

end

end A244049.P15221357512083652868

noncomputable section

/-- A244049: Sum of all proper divisors of all positive integers <= n.

Offset 1, canonical program `A244049.P15221357512083652868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244049 (n : ℕ) : ℤ :=
  A244049.P15221357512083652868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244214.P1769933716108538170

`A099907(A002808(n+1))`
-/

namespace A244214.P1769933716108538170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099907 (A002808 (n + 1)).toNat

end

end A244214.P1769933716108538170

noncomputable section

/-- A244214: a(n) = binomial(2*c-1, c-1) (mod c^3), where c is the n-th composite.

Offset 1, canonical program `A244214.P1769933716108538170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A244214 (n : ℕ) : ℤ :=
  A244214.P1769933716108538170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A244214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244219.P3223793585254741010

`record[A110654(n+1)*A244221(A110654(n))]`
-/

namespace A244219.P3223793585254741010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) * A244221 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244219.P3223793585254741010

noncomputable section

/-- A244219: The starting points of runs of consecutive terms with the same parity in A014418 (n represented in Greedy Catalan Base).

Offset 0, canonical program `A244219.P3223793585254741010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4122 terms. -/
def A244219 (n : ℕ) : ℤ :=
  A244219.P3223793585254741010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4122 terms. -/
def A244219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244220.P6843507714044978338

`1-A244221(n)`
-/

namespace A244220.P6843507714044978338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244221 n

end

end A244220.P6843507714044978338

noncomputable section

/-- A244220: Binary complement of Greedy Catalan Base reduced modulo 2: a(n) = 1 - (A014418(n) modulo 2).

Offset 0, canonical program `A244220.P6843507714044978338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244220 (n : ℕ) : ℤ :=
  A244220.P6843507714044978338.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244220.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244317.P585579045267430053

`∑[char[A294790(n)]]`
-/

namespace A244317.P585579045267430053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294790 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244317.P585579045267430053

noncomputable section

/-- A244317: n occurs A014138(n) times.

Offset 0, canonical program `A244317.P585579045267430053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244317 (n : ℕ) : ℤ :=
  (A244317.P585579045267430053.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244320.P4637654026684033109

`n-A014420(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244320.P4637654026684033109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A014420 n

end

end A244320.P4637654026684033109

noncomputable section

/-- A244320: a(n) = n - A014420(n).

Offset 0, canonical program `A244320.P4637654026684033109`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244320 (n : ℕ) : ℤ :=
  A244320.P4637654026684033109.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244320.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244578.P4846969564591678736

`A153485(A000040(n+1))`
-/

namespace A244578.P4846969564591678736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (A000040 (n + 1)).toNat

end

end A244578.P4846969564591678736

noncomputable section

/-- A244578: Sum of all aliquot divisors of all positive integers <= prime(n).

Offset 1, canonical program `A244578.P4846969564591678736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244578 (n : ℕ) : ℤ :=
  A244578.P4846969564591678736.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244669.P10899017682964738725

`∑{d}[n+1, #]/A306682(n+1)`
-/

namespace A244669.P10899017682964738725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A306682 (n + 1) : ℚ)

end

end A244669.P10899017682964738725

noncomputable section

/-- A244669: Denominators of (product of divisors of n / sum of divisors of n).

Offset 1, canonical program `A244669.P10899017682964738725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244669 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244669.P10899017682964738725.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244741.P4318009301390436834

`∪[A049509(n+1), A016817(n)]`
-/

namespace A244741.P4318009301390436834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244741.P4318009301390436834

noncomputable section

/-- A244741: Numbers k such that (prime(k) mod 5) == 2 (mod 3).

Offset 1, canonical program `A244741.P4318009301390436834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244741 (n : ℕ) : ℤ :=
  (A244741.P4318009301390436834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244748.P4413186087165087777

`eq[1, A053000(A007954(n))]`
-/

namespace A244748.P4413186087165087777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244748.P4413186087165087777

noncomputable section

/-- A244748: Numbers k such that (product of digits of k)^2 + 1 is prime.

Offset 1, canonical program `A244748.P4413186087165087777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2021 terms. -/
def A244748 (n : ℕ) : ℤ :=
  (A244748.P4413186087165087777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2021 terms. -/
def A244748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244779.P12372990209683995036

`eq[1, gcd(7, A065959(n+1))]+1`
-/

namespace A244779.P12372990209683995036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A065959 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A244779.P12372990209683995036

noncomputable section

/-- A244779: Positive numbers primitively represented by the binary quadratic form (1, 1, 2).

Offset 1, canonical program `A244779.P12372990209683995036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2013 terms. -/
def A244779 (n : ℕ) : ℤ :=
  (A244779.P12372990209683995036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2013 terms. -/
def A244779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244796.P13926753291426621653

`A008328(n+1)-1`
-/

namespace A244796.P13926753291426621653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008328 (n + 1) - 1

end

end A244796.P13926753291426621653

noncomputable section

/-- A244796: Number of moduli m such that (prime(n) mod m) = 1.

Offset 1, canonical program `A244796.P13926753291426621653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244796 (n : ℕ) : ℤ :=
  A244796.P13926753291426621653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244964.P3595985512889717253

`∑{d}[n+1, A080995(#)]`
-/

namespace A244964.P3595985512889717253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080995 d

end

end A244964.P3595985512889717253

noncomputable section

/-- A244964: Number of distinct generalized pentagonal numbers dividing n.

Offset 1, canonical program `A244964.P3595985512889717253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244964 (n : ℕ) : ℤ :=
  A244964.P3595985512889717253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245196.P10632712264817359951

`∑{e}[A090996(A322015(n)), #]`
-/

namespace A245196.P10632712264817359951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A322015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A245196.P10632712264817359951

noncomputable section

/-- A245196: Write n>=1 as either n=2^k-2^r with 0 <= r <= k-1, in which case a(2^k-2^r)=wt(k-r-1), or as n=2^k-2^r+j with 2 <= r <= k-1, 1 <= j < 2^r-1, in which case a(2^k-2^r+j)=a(j)*wt(k-r-1) (where wt(i) = A000120(i)).

Offset 1, canonical program `A245196.P10632712264817359951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245196 (n : ℕ) : ℤ :=
  (A245196.P10632712264817359951.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245196.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A245484.P7320759544988298613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001001, A064987, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245484 (n : ℕ) : ℤ :=
  A245484.P7320759544988298613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001001, A064987, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245908.P1056546773488542885

`A082863(p?[xor(1, n)])`
-/

namespace A245908.P1056546773488542885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A245908.P1056546773488542885

noncomputable section

/-- A245908: The number of distinct prime factors of prime(n)^2-1.

Offset 1, canonical program `A245908.P1056546773488542885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A245908 (n : ℕ) : ℤ :=
  A245908.P1056546773488542885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A245908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246295.P13667216619548819936

`A246294(n+1)-1`
-/

namespace A246295.P13667216619548819936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246294 (n + 1) - 1

end

end A246295.P13667216619548819936

noncomputable section

/-- A246295: Numbers k such that sin(k) < sin(k+1) < sin(k+2) > sin(k+3).

Offset 1, canonical program `A246295.P13667216619548819936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246295 (n : ℕ) : ℤ :=
  A246295.P13667216619548819936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246298.P9002022701830639785

`A246297(n+1)-1`
-/

namespace A246298.P9002022701830639785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246297 (n + 1) - 1

end

end A246298.P9002022701830639785

noncomputable section

/-- A246298: Numbers k such that sin(k) > sin(k+1) > sin(k+2) < sin(k+3).

Offset 1, canonical program `A246298.P9002022701830639785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246298 (n : ℕ) : ℤ :=
  A246298.P9002022701830639785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246411.P12957659941039480171

`∩[A246410(n+1)-1, A246413(n+1)]`
-/

namespace A246411.P12957659941039480171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246411.P12957659941039480171

noncomputable section

/-- A246411: Positive integers k satisfying csc(k) > csc(k+1) < csc(k+2).

Offset 1, canonical program `A246411.P12957659941039480171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A246411 (n : ℕ) : ℤ :=
  (A246411.P12957659941039480171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A246411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246412.P12923232252521658891

`∩[A246413(n+1)-1, A246413(n+1)]`
-/

namespace A246412.P12923232252521658891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246412.P12923232252521658891

noncomputable section

/-- A246412: Positive integers k satisfying csc(k) > csc(k+1) > csc(k+2) < csc(k+3).

Offset 1, canonical program `A246412.P12923232252521658891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A246412 (n : ℕ) : ℤ :=
  (A246412.P12923232252521658891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A246412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246659.P12015513086948377768

`A132885(A054925(n+2)-1)`
-/

namespace A246659.P12015513086948377768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132885 (A054925 (n + 2) - 1).toNat

end

end A246659.P12015513086948377768

noncomputable section

/-- A246659: a(n) = binomial(n-h,h)*hypergeometric([h-n/2,h-(n-1)/2],[1],4), h = floor(n/4).

Offset 0, canonical program `A246659.P12015513086948377768`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246659 (n : ℕ) : ℤ :=
  A246659.P12015513086948377768.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247146.P7652991668944919018

`A034729(n+1)-2^n`
-/

namespace A247146.P7652991668944919018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034729 (n + 1) - (2 ^ n : ℤ)

end

end A247146.P7652991668944919018

noncomputable section

/-- A247146: As a binary numeral, the bit 2^(m-1) of a(n) is 1 iff m is a proper divisor of n.

Offset 1, canonical program `A247146.P7652991668944919018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034729, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247146 (n : ℕ) : ℤ :=
  A247146.P7652991668944919018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034729, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247146.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A247898.P765327756351924158

`Δ[A247678(n+1)]`
-/

namespace A247898.P765327756351924158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247898.P765327756351924158

noncomputable section

/-- A247898: First differences of A247678.

Offset 1, canonical program `A247898.P765327756351924158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247898 (n : ℕ) : ℤ :=
  A247898.P765327756351924158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248038.P16100474791484475395

`A020338(3*(n+1))`
-/

namespace A248038.P16100474791484475395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (3 * (n + 1))

end

end A248038.P16100474791484475395

noncomputable section

/-- A248038: 3n concatenated with itself.

Offset 1, canonical program `A248038.P16100474791484475395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A248038 (n : ℕ) : ℤ :=
  A248038.P16100474791484475395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A248038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248056.P11690070156917874997

`2*A091785(n+1)`
-/

namespace A248056.P11690070156917874997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091785 (n + 1)

end

end A248056.P11690070156917874997

noncomputable section

/-- A248056: Positions of 0,0 in the Thue-Morse sequence (A010060).

Offset 1, canonical program `A248056.P11690070156917874997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248056 (n : ℕ) : ℤ :=
  A248056.P11690070156917874997.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249032.P14324740470958142197

`Δ[A075326(n)]`
-/

namespace A249032.P14324740470958142197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249032.P14324740470958142197

noncomputable section

/-- A249032: First differences of A075326.

Offset 0, canonical program `A249032.P14324740470958142197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249032 (n : ℕ) : ℤ :=
  A249032.P14324740470958142197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249063.P16107972138955542777

`floor(∑[A010051(n+1)]*cos(n+1))`
-/

namespace A249063.P16107972138955542777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) * Real.cos (n + 1 : ℝ)⌋

end

end A249063.P16107972138955542777

noncomputable section

/-- A249063: a(n) = floor(cos(n)*PrimePi(n)).

Offset 1, canonical program `A249063.P16107972138955542777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249063 (n : ℕ) : ℤ :=
  A249063.P16107972138955542777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249566.P7379888211326183224

`eq[4, A182134(n+1)]+1`
-/

namespace A249566.P7379888211326183224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249566.P7379888211326183224

noncomputable section

/-- A249566: Numbers n such that A182134(n) = 4, i.e., there exist exactly four primes p with prime(n) < p < prime(n)^(1+1/n).

Offset 1, canonical program `A249566.P7379888211326183224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A249566 (n : ℕ) : ℤ :=
  (A249566.P7379888211326183224.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A249566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250406.P11635683072405501755

`A112660(n+1)%A008864(n+1)`
-/

namespace A250406.P11635683072405501755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112660 (n + 1)) (A008864 (n + 1))

end

end A250406.P11635683072405501755

noncomputable section

/-- A250406: Values of B such that p = prime(n) satisfies (p-1)! == -1-B*p (mod p^2), i.e., p is a near-Wilson prime.

Offset 1, canonical program `A250406.P11635683072405501755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A250406 (n : ℕ) : ℤ :=
  A250406.P11635683072405501755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A250406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250428.P396647338487410522

`sqrt(A250427(n+1)*A250429(n+1))`
-/

namespace A250428.P396647338487410522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250427 (n + 1) * A250429 (n + 1) : ℝ)

end

end A250428.P396647338487410522

noncomputable section

/-- A250428: Number of (n+1)X(4+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250428.P396647338487410522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250428 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A250428.P396647338487410522.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252596.P10033558872996091197

`A008578(A000720(a(n-1)+1)+a(n-1)%3+1)` with `a(0)=5`
-/

namespace A252596.P10033558872996091197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A008578 (A000720 (a (n - 1) + 1).toNat + Int.tmod (a (n - 1)) 3 + 1).toNat

end

end A252596.P10033558872996091197

noncomputable section

/-- A252596: Let a(n-1)=p and k=pi(p); then a(n)=prime(k+mod(p,3)).

Offset 1, canonical program `A252596.P10033558872996091197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6204 terms. -/
def A252596 (n : ℕ) : ℤ :=
  A252596.P10033558872996091197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6204 terms. -/
def A252596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253445.P3990577317114025195

`A020338((n+1)²)`
-/

namespace A253445.P3990577317114025195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 ((n + 1) ^ 2)

end

end A253445.P3990577317114025195

noncomputable section

/-- A253445: a(n) = concatenation of n^2 with itself.

Offset 1, canonical program `A253445.P3990577317114025195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253445 (n : ℕ) : ℤ :=
  A253445.P3990577317114025195.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253769.P2452333697715072660

`A006218(A000040(n+1))`
-/

namespace A253769.P2452333697715072660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A000040 (n + 1)).toNat

end

end A253769.P2452333697715072660

noncomputable section

/-- A253769: Sum of number of divisors of all positive integers <= prime(n).

Offset 1, canonical program `A253769.P2452333697715072660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253769 (n : ℕ) : ℤ :=
  A253769.P2452333697715072660.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254462.P9385117643881402940

`A000040(A076300(n+1))`
-/

namespace A254462.P9385117643881402940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A076300 (n + 1)).toNat

end

end A254462.P9385117643881402940

noncomputable section

/-- A254462: Primes prime(n) such that prime(n) + 5*n is also prime.

Offset 1, canonical program `A254462.P9385117643881402940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A254462 (n : ℕ) : ℤ :=
  A254462.P9385117643881402940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A254462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255361.P8441760194462435338

`floor(A348665(n+1)/∏{e}[n+1, #+1])`
-/

namespace A255361.P8441760194462435338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348665 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ)⌋

end

end A255361.P8441760194462435338

noncomputable section

/-- A255361: Number of ways n can be represented as x*y+x+y where x>=y>1.

Offset 0, canonical program `A255361.P8441760194462435338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3301 terms. -/
def A255361 (n : ℕ) : ℤ :=
  A255361.P8441760194462435338.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3301 terms. -/
def A255361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255564.P8935569486323325449

`p?[A010051(A014499(n+1))+A000040(n+1)]`
-/

namespace A255564.P8935569486323325449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A014499 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255564.P8935569486323325449

noncomputable section

/-- A255564: Primes having in binary representation a nonprime number of 1's.

Offset 1, canonical program `A255564.P8935569486323325449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A255564 (n : ℕ) : ℤ :=
  A255564.P8935569486323325449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A255564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255646.P5317724431047081380

`A046316(n+1)%10`
-/

namespace A255646.P5317724431047081380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046316 (n + 1)) 10

end

end A255646.P5317724431047081380

noncomputable section

/-- A255646: Odd triprimes modulo 10.

Offset 1, canonical program `A255646.P5317724431047081380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255646 (n : ℕ) : ℤ :=
  A255646.P5317724431047081380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255849.P18420982419730115799

`A080995(A080995(A180446(n))+n)`
-/

namespace A255849.P18420982419730115799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (A080995 (A180446 n).toNat + (n : ℤ)).toNat

end

end A255849.P18420982419730115799

noncomputable section

/-- A255849: Characteristic function of pentagonal numbers.

Offset 0, canonical program `A255849.P18420982419730115799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255849 (n : ℕ) : ℤ :=
  A255849.P18420982419730115799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256276.P17919701624986751523

`(n+1)%3*A002654(n+1)`
-/

namespace A256276.P17919701624986751523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℤ) * A002654 (n + 1)

end

end A256276.P17919701624986751523

noncomputable section

/-- A256276: Expansion of q * phi(q) * chi(q^3) * psi(-q^9) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

Offset 1, canonical program `A256276.P17919701624986751523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256276 (n : ℕ) : ℤ :=
  A256276.P17919701624986751523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256525.P14526080912117306426

`A001401(3*n)`
-/

namespace A256525.P14526080912117306426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (3 * n)

end

end A256525.P14526080912117306426

noncomputable section

/-- A256525: Number of partitions of 3n into at most 5 parts.

Offset 0, canonical program `A256525.P14526080912117306426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256525 (n : ℕ) : ℤ :=
  A256525.P14526080912117306426.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256525.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256539.P11843571355159278284

`A001401(4*n)`
-/

namespace A256539.P11843571355159278284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (4 * n)

end

end A256539.P11843571355159278284

noncomputable section

/-- A256539: Number of partitions of 4n into at most 5 parts.

Offset 0, canonical program `A256539.P11843571355159278284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256539 (n : ℕ) : ℤ :=
  A256539.P11843571355159278284.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256539.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256690.P103638891413910646

`∏{e}[n+1, A004130(#)]`
-/

namespace A256690.P103638891413910646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A004130 (Nat.factorization (f1 n) p)

end

end A256690.P103638891413910646

noncomputable section

/-- A256690: From fourth root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose fourth power is zeta function; sequence gives numerator of b(n).

Offset 1, canonical program `A256690.P103638891413910646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256690 (n : ℕ) : ℤ :=
  A256690.P103638891413910646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257212.P17809962343028456933

`floor(A257213(Δ[n²])/2)`
-/

namespace A257212.P17809962343028456933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A257213 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌋

end

end A257212.P17809962343028456933

noncomputable section

/-- A257212: Least d>0 such that floor(n/d) - floor(n/(d+1)) <= 1.

Offset 0, canonical program `A257212.P17809962343028456933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A257212 (n : ℕ) : ℤ :=
  A257212.P17809962343028456933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A257212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257231.P13727271294226121657

`((n+1)*(n+1))%A000040(∑[A010051(n+1)]+1)`
-/

namespace A257231.P13727271294226121657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) * (n + 1) : ℤ) (A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat)

end

end A257231.P13727271294226121657

noncomputable section

/-- A257231: a(n) = n^2 mod p where p is the least prime greater than n.

Offset 1, canonical program `A257231.P13727271294226121657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257231 (n : ℕ) : ℤ :=
  A257231.P13727271294226121657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257346.P9480988822245406268

`lt[A035162(n+1), 1]+1`
-/

namespace A257346.P9480988822245406268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A257346.P9480988822245406268

noncomputable section

/-- A257346: Numbers not of the form x^2+xy+2y^2.

Offset 1, canonical program `A257346.P9480988822245406268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A257346 (n : ℕ) : ℤ :=
  (A257346.P9480988822245406268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A257346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258599.P9587233461388836766

`A348018(A000040(n+1))`
-/

namespace A258599.P9587233461388836766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A000040 (n + 1)).toNat

end

end A258599.P9587233461388836766

noncomputable section

/-- A258599: a(n) is the index m such that A001694(m) = prime(n)^2.

Offset 1, canonical program `A258599.P9587233461388836766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258599 (n : ℕ) : ℤ :=
  A258599.P9587233461388836766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258746.P7650068295521346496

`A054429(A165199(n+1))`
-/

namespace A258746.P7650068295521346496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A165199 (n + 1)).toNat

end

end A258746.P7650068295521346496

noncomputable section

/-- A258746: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A007305/A047679 (Stern-Brocot) into the enumeration system A162909/A162910 (Bird), and vice versa.

Offset 1, canonical program `A258746.P7650068295521346496`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258746 (n : ℕ) : ℤ :=
  A258746.P7650068295521346496.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258976.P4357151660865668430

`eq[1, A053000(A000203(n+1))]+1`
-/

namespace A258976.P4357151660865668430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258976.P4357151660865668430

noncomputable section

/-- A258976: Numbers n such that 1 + sigma(n)^2 is prime.

Offset 1, canonical program `A258976.P4357151660865668430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A258976 (n : ℕ) : ℤ :=
  (A258976.P4357151660865668430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A258976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259029.P359648338578640876

`∑[A259024(n+1)]`
-/

namespace A259029.P359648338578640876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259029.P359648338578640876

noncomputable section

/-- A259029: Partial sums of A259024.

Offset 1, canonical program `A259029.P359648338578640876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259029 (n : ℕ) : ℤ :=
  A259029.P359648338578640876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259977.P15727269731360921676

`A070824(A005381(n+1))`
-/

namespace A259977.P15727269731360921676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A005381 (n + 1)).toNat

end

end A259977.P15727269731360921676

noncomputable section

/-- A259977: Number of proper divisors of A005381(n).

Offset 1, canonical program `A259977.P15727269731360921676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005381, A070824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A259977 (n : ℕ) : ℤ :=
  A259977.P15727269731360921676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005381, A070824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A259977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260187.P12900667191599328450

`(n+1)%A260188(n+1)`
-/

namespace A260187.P12900667191599328450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A260188 (n + 1))

end

end A260187.P12900667191599328450

noncomputable section

/-- A260187: a(n) = n modulo the greatest primorial <= n.

Offset 1, canonical program `A260187.P12900667191599328450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260187 (n : ℕ) : ℤ :=
  A260187.P12900667191599328450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260299.P3373541649294797026

`A000720(A260298(n+1))`
-/

namespace A260299.P3373541649294797026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A260298 (n + 1)).toNat

end

end A260299.P3373541649294797026

noncomputable section

/-- A260299: Numbers k such that hyperfactorial(prime(k)-1) == 1 (mod prime(k)).

Offset 1, canonical program `A260299.P3373541649294797026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A260299 (n : ℕ) : ℤ :=
  A260299.P3373541649294797026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A260299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261189.P8766923628387180142

`∩[A039116(n+1), A052413(n+1)]`
-/

namespace A261189.P8766923628387180142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261189.P8766923628387180142

noncomputable section

/-- A261189: Integers such that no subsequence of decimal representation is divisible by 5.

Offset 1, canonical program `A261189.P8766923628387180142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A261189 (n : ℕ) : ℤ :=
  (A261189.P8766923628387180142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A261189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262198.P508349440457690952

`lt[A262190(n), A055642(n)]`
-/

namespace A262198.P508349440457690952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262198.P508349440457690952

noncomputable section

/-- A262198: Numbers such that the number of distinct palindromes contained as substring in their decimal representation differs from the length thereof.

Offset 1, canonical program `A262198.P508349440457690952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A262198 (n : ℕ) : ℤ :=
  (A262198.P508349440457690952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A262198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262209.P6934688457999335665

`∑{d}[n+1, A002654(#)]`
-/

namespace A262209.P6934688457999335665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d

end

end A262209.P6934688457999335665

noncomputable section

/-- A262209: Inverse Möbius transform of A002654.

Offset 1, canonical program `A262209.P6934688457999335665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262209 (n : ℕ) : ℤ :=
  A262209.P6934688457999335665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262676.P18432955920466000923

`1-A000035(n)+a(A049820(n))` with `a(0)=0, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262676.P18432955920466000923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  1 - A000035 n + a (A049820 n).toNat

end

end A262676.P18432955920466000923

noncomputable section

/-- A262676: Number of nonzero even numbers encountered when iterating A049820 starting from n: a(0) = 0 and for n >= 1, a(n) = (1-A000035(n)) + a(A049820(n)).

Offset 0, canonical program `A262676.P18432955920466000923`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262676 (n : ℕ) : ℤ :=
  A262676.P18432955920466000923.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262676.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262677.P4700777990299745989

`A000035(n)+a(A049820(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262677.P4700777990299745989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000035 n + a (A049820 n).toNat

end

end A262677.P4700777990299745989

noncomputable section

/-- A262677: Number of odd numbers encountered when iterating A049820 starting from n: a(0) = 0 and for n >= 1, a(n) = A000035(n) + a(A049820(n)).

Offset 0, canonical program `A262677.P4700777990299745989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262677 (n : ℕ) : ℤ :=
  A262677.P4700777990299745989.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262680.P1054294860154401112

`A010052(n)+a(A049820(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262680.P1054294860154401112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A010052 n + a (A049820 n).toNat

end

end A262680.P1054294860154401112

noncomputable section

/-- A262680: Number of squares encountered before zero is reached when iterating A049820 starting from n: a(0) = 0 and for n >= 1, a(n) = A010052(n) + a(A049820(n)).

Offset 0, canonical program `A262680.P1054294860154401112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262680 (n : ℕ) : ℤ :=
  A262680.P1054294860154401112.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262780.P16622817894387421388

`(1-and(2, n))*A033762(n)`
-/

namespace A262780.P16622817894387421388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A033762 n

end

end A262780.P16622817894387421388

noncomputable section

/-- A262780: Expansion of phi(-x^6) * psi(x^4) + x * phi(-x^2) * psi(x^12) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A262780.P16622817894387421388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262780 (n : ℕ) : ℤ :=
  A262780.P16622817894387421388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262902.P11731694572782474747

`A049820(A045765(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262902.P11731694572782474747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A045765 (n + 1)).toNat

end

end A262902.P11731694572782474747

noncomputable section

/-- A262902: a(n) = A049820(A045765(n)); parent-nodes of the leaves of the tree generated by edge-relation A049820(child) = parent.

Offset 1, canonical program `A262902.P11731694572782474747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262902 (n : ℕ) : ℤ :=
  A262902.P11731694572782474747.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A264772.P6309471126076613792

`C(A294317(n)+A025581(n), A025581(n))`
-/

namespace A264772.P6309471126076613792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 n + A025581 n).toNat (A025581 n).toNat

end

end A264772.P6309471126076613792

noncomputable section

/-- A264772: Triangle T(n,k) = binomial(3*n - 2*k, 2*n - k), 0 <= k <= n.

Offset 0, canonical program `A264772.P6309471126076613792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A264772 (n : ℕ) : ℤ :=
  (A264772.P6309471126076613792.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A264772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265204.P5438525566981879451

`∑[abs(Δ[A054585(n)])]`
-/

namespace A265204.P5438525566981879451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P5438525566981879451

noncomputable section

/-- A265204: Sum of phi(i) over squarefree numbers i <= n.

Offset 1, canonical program `A265204.P5438525566981879451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265204 (n : ℕ) : ℤ :=
  A265204.P5438525566981879451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265409.P1403475869823103822

`A265410(n+2)-1`
-/

namespace A265409.P1403475869823103822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265410 (n + 2) - 1

end

end A265409.P1403475869823103822

noncomputable section

/-- A265409: a(n) = index to the nearest inner neighbor in Ulam-style square-spirals using zero-based indexing.

Offset 1, canonical program `A265409.P1403475869823103822`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265409 (n : ℕ) : ℤ :=
  A265409.P1403475869823103822.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266216.P13454128615488846391

`A266155(A113638(n))`
-/

namespace A266216.P13454128615488846391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266155 (A113638 n).toNat

end

end A266216.P13454128615488846391

noncomputable section

/-- A266216: Triangle read by rows giving successive states of cellular automaton generated by "Rule 7" initiated with a single ON (black) cell.

Offset 0, canonical program `A266216.P13454128615488846391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266216 (n : ℕ) : ℤ :=
  A266216.P13454128615488846391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266284.P1267948026619733313

`A266980(n)-Δ[A266980(A052928(n))]`
-/

namespace A266284.P1267948026619733313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266980 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266980 n - (f1 (n + 1) - f1 n)

end

end A266284.P1267948026619733313

noncomputable section

/-- A266284: Decimal representation of the n-th iteration of the "Rule 13" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266284.P1267948026619733313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266284 (n : ℕ) : ℤ :=
  A266284.P1267948026619733313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266502.P4655632228616341608

`and(A009191(n+1), A118175(n))`
-/

namespace A266502.P4655632228616341608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009191 (n + 1)) (A118175 n)

end

end A266502.P4655632228616341608

noncomputable section

/-- A266502: Triangle read by rows giving successive states of cellular automaton generated by "Rule 28" initiated with a single ON (black) cell.

Offset 0, canonical program `A266502.P4655632228616341608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266502 (n : ℕ) : ℤ :=
  A266502.P4655632228616341608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266516.P4933571818406255111

`or(A051049(n), A266176(n))`
-/

namespace A266516.P4933571818406255111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A266176 n)

end

end A266516.P4933571818406255111

noncomputable section

/-- A266516: Decimal representation of the n-th iteration of the "Rule 29" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266516.P4933571818406255111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266516 (n : ℕ) : ℤ :=
  A266516.P4933571818406255111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266840.P13252579903726433232

`A267053(n)*A267704(n)`
-/

namespace A266840.P13252579903726433232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 n * A267704 n

end

end A266840.P13252579903726433232

noncomputable section

/-- A266840: Triangle read by rows giving successive states of cellular automaton generated by "Rule 69" initiated with a single ON (black) cell.

Offset 0, canonical program `A266840.P13252579903726433232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266840 (n : ℕ) : ℤ :=
  A266840.P13252579903726433232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267576.P1331191262355786054

`A267605((2*n)%(n+2))`
-/

namespace A267576.P1331191262355786054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (2 * n % (n + 2))

end

end A267576.P1331191262355786054

noncomputable section

/-- A267576: Triangle read by rows giving successive states of cellular automaton generated by "Rule 167" initiated with a single ON (black) cell.

Offset 0, canonical program `A267576.P1331191262355786054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267576 (n : ℕ) : ℤ :=
  A267576.P1331191262355786054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268000.P6584107503855115913

`(A112660(n+1)+A008864(n+1))%A001248(n+1)`
-/

namespace A268000.P6584107503855115913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112660 (n + 1) + A008864 (n + 1)) (A001248 (n + 1))

end

end A268000.P6584107503855115913

noncomputable section

/-- A268000: p*B_(p-1)+1 modulo p^2, where p = prime(n) and B_i denotes the i-th Bernoulli number.

Offset 1, canonical program `A268000.P6584107503855115913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268000 (n : ℕ) : ℤ :=
  A268000.P6584107503855115913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268235.P3437335353854557803

`∑[A034729(n+1)]`
-/

namespace A268235.P3437335353854557803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268235.P3437335353854557803

noncomputable section

/-- A268235: a(n) = Sum_{k=1..n} floor(n/k)*2^(k-1).

Offset 1, canonical program `A268235.P3437335353854557803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A268235 (n : ℕ) : ℤ :=
  A268235.P3437335353854557803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A268235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268443.P9208057385295223950

`(A005705(n)-A268444(n))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268443.P9208057385295223950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005705 n - A268444 n : ℚ) / 4

end

end A268443.P9208057385295223950

noncomputable section

/-- A268443: a(n) = (A005705(n) - A268444(n))/4.

Offset 0, canonical program `A268443.P9208057385295223950`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268443 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268443.P9208057385295223950.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268443.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A269345.P4206844201345878076

`A061673(n+1)-1`
-/

namespace A269345.P4206844201345878076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1) - 1

end

end A269345.P4206844201345878076

noncomputable section

/-- A269345: Smaller of two consecutive odd numbers that are composites.

Offset 1, canonical program `A269345.P4206844201345878076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269345 (n : ℕ) : ℤ :=
  A269345.P4206844201345878076.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269346.P749959525114442858

`A016755(lt[2, A121842(2*n+1)])`
-/

namespace A269346.P749959525114442858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A269346.P749959525114442858

noncomputable section

/-- A269346: Perfect cubes that are not the difference of two primes.

Offset 1, canonical program `A269346.P749959525114442858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4480 terms. -/
def A269346 (n : ℕ) : ℤ :=
  A269346.P749959525114442858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4480 terms. -/
def A269346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269362.P8803330186499929129

`A269849(n+7)-6`
-/

namespace A269362.P8803330186499929129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269849 (n + 7) - 6

end

end A269362.P8803330186499929129

noncomputable section

/-- A269362: Least monotonic left inverse of A269389.

Offset 1, canonical program `A269362.P8803330186499929129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269362 (n : ℕ) : ℤ :=
  A269362.P8803330186499929129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270543.P5734163756768148192

`A226355(n)-A270544(n)`
-/

namespace A270543.P5734163756768148192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226355 n - A270544 n

end

end A270543.P5734163756768148192

noncomputable section

/-- A270543: Number of ordered pairs (i,j) of integers with |i|, |j| <= n, |i * j| <= n, and i even.

Offset 0, canonical program `A270543.P5734163756768148192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226355, A270544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270543 (n : ℕ) : ℤ :=
  A270543.P5734163756768148192.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226355, A270544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A271342.P3433703997216414430

`A024916(n+1)-A078471(n+1)`
-/

namespace A271342.P3433703997216414430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A078471 (n + 1)

end

end A271342.P3433703997216414430

noncomputable section

/-- A271342: Sum of all even divisors of all positive integers <= n.

Offset 1, canonical program `A271342.P3433703997216414430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271342 (n : ℕ) : ℤ :=
  A271342.P3433703997216414430.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A271568.P11000683878390668970

`filter[A050704(n+2), A354927(#)]`
-/

namespace A271568.P11000683878390668970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A271568.P11000683878390668970

noncomputable section

/-- A271568: Squarefree semiprimes n such that phi(n) - 1 is prime.

Offset 1, canonical program `A271568.P11000683878390668970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4674 terms. -/
def A271568 (n : ℕ) : ℤ :=
  A271568.P11000683878390668970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4674 terms. -/
def A271568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272441.P11204430094904168973

`filter[A380788(n+1), A010051(#)]`
-/

namespace A272441.P11204430094904168973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A272441.P11204430094904168973

noncomputable section

/-- A272441: Primes with a prime number of binary digits.

Offset 1, canonical program `A272441.P11204430094904168973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1052 terms. -/
def A272441 (n : ℕ) : ℤ :=
  A272441.P11204430094904168973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1052 terms. -/
def A272441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272799.P16823547657693806826

`(A069977(n+1)+1)/2`
-/

namespace A272799.P16823547657693806826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069977 (n + 1) + 1 : ℚ) / 2

end

end A272799.P16823547657693806826

noncomputable section

/-- A272799: Numbers k such that 2*k - 1 and 2*k + 1 are squarefree.

Offset 1, canonical program `A272799.P16823547657693806826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272799 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A272799.P16823547657693806826.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272799.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A274224.P8691790841403696657

`lcm(A273972(A052928(n)), A274473(n))`
-/

namespace A274224.P8691790841403696657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A273972 (A052928 n).toNat) (A274473 n)

end

end A274224.P8691790841403696657

noncomputable section

/-- A274224: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A274224.P8691790841403696657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A274224 (n : ℕ) : ℤ :=
  (A274224.P8691790841403696657.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A274224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274322.P9926579910520313793

`A001401(n²)`
-/

namespace A274322.P9926579910520313793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (n ^ 2)

end

end A274322.P9926579910520313793

noncomputable section

/-- A274322: Number of partitions of n^2 into at most five parts.

Offset 0, canonical program `A274322.P9926579910520313793`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274322 (n : ℕ) : ℤ :=
  A274322.P9926579910520313793.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275392.P15222088404269922783

`A000073(A278045(n+1)+3)`
-/

namespace A275392.P15222088404269922783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A278045 (n + 1) + 3).toNat

end

end A275392.P15222088404269922783

noncomputable section

/-- A275392: Smallest term in the tribonacci Zeckendorf representation of n.

Offset 1, canonical program `A275392.P15222088404269922783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A275392 (n : ℕ) : ℤ :=
  A275392.P15222088404269922783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A275392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275770.P3960562547820392168

`∩[A003627(n+1), A068497(n+1)]`
-/

namespace A275770.P3960562547820392168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P3960562547820392168

noncomputable section

/-- A275770: Primes p == 5 (mod 6) that are not Sophie Germain primes.

Offset 1, canonical program `A275770.P3960562547820392168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5012 terms. -/
def A275770 (n : ℕ) : ℤ :=
  (A275770.P3960562547820392168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5012 terms. -/
def A275770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275966.P4192951619174800952

`∑{d}[n+1, A002654(#)*A007427((n+1)/#)]`
-/

namespace A275966.P4192951619174800952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P4192951619174800952

noncomputable section

/-- A275966: a(n) is the real part of -I*Sum_{d|n}(mobius(d)*I^(n/d)), I=sqrt(-1), mobius(n) is A008683.

Offset 1, canonical program `A275966.P4192951619174800952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275966 (n : ℕ) : ℤ :=
  A275966.P4192951619174800952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276542.P6729285358371022252

`eq[A063440(n+1), A063440(n+2)]+1`
-/

namespace A276542.P6729285358371022252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276542.P6729285358371022252

noncomputable section

/-- A276542: Numbers k such that the k-th and (k+1)st triangular numbers have the same number of divisors.

Offset 1, canonical program `A276542.P6729285358371022252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276542 (n : ℕ) : ℤ :=
  (A276542.P6729285358371022252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276577.P15427546300831290763

`A255415(n+1)%11`
-/

namespace A276577.P15427546300831290763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255415 (n + 1)) 11

end

end A276577.P15427546300831290763

noncomputable section

/-- A276577: Row 5 of A276580: a(n) = A255415(n) modulo 11.

Offset 1, canonical program `A276577.P15427546300831290763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276577 (n : ℕ) : ℤ :=
  A276577.P15427546300831290763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276936.P4504177896743748025

`eq[char[A325130(n+1)], A000007(n)]`
-/

namespace A276936.P4504177896743748025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276936.P4504177896743748025

noncomputable section

/-- A276936: Numbers m with at least one distinct prime factor prime(k) such that prime(k)^k divides, but prime(k)^(k+1) does not divide m.

Offset 1, canonical program `A276936.P4504177896743748025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3103 terms. -/
def A276936 (n : ℕ) : ℤ :=
  (A276936.P4504177896743748025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3103 terms. -/
def A276936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277166.P3337470438737064914

`record[gcd(n, A114338(n))]`
-/

namespace A277166.P3337470438737064914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A114338 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277166.P3337470438737064914

noncomputable section

/-- A277166: Numbers m such that m divides the number of divisors of m!!.

Offset 1, canonical program `A277166.P3337470438737064914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A277166 (n : ℕ) : ℤ :=
  (A277166.P3337470438737064914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A277166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277327.P2410345354115847540

`A277314(or(1, n))-∏{e}[and(n+1, -n), #]`
-/

namespace A277327.P2410345354115847540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 (Nat.lor 1 n) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A277327.P2410345354115847540

noncomputable section

/-- A277327: Number of distinct primes dividing gcd(A260443(n), A260443(n+1)): a(n) = A001221(A277198(n)).

Offset 0, canonical program `A277327.P2410345354115847540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277327 (n : ℕ) : ℤ :=
  A277327.P2410345354115847540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277965.P4665117588498832647

`A007090(A337250(n+1))`
-/

namespace A277965.P4665117588498832647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A337250 (n + 1)).toNat

end

end A277965.P4665117588498832647

noncomputable section

/-- A277965: Numbers whose largest decimal digit is 3.

Offset 1, canonical program `A277965.P4665117588498832647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8057 terms. -/
def A277965 (n : ℕ) : ℤ :=
  A277965.P4665117588498832647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8057 terms. -/
def A277965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278354.P2699865306502681676

`A265359(A080037(n)-1)-A265359(n+1)`
-/

namespace A278354.P2699865306502681676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A080037 n - 1).toNat - A265359 (n + 1)

end

end A278354.P2699865306502681676

noncomputable section

/-- A278354: Number of neighbors of each new term in a square spiral.

Offset 1, canonical program `A278354.P2699865306502681676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9802 terms. -/
def A278354 (n : ℕ) : ℤ :=
  A278354.P2699865306502681676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9802 terms. -/
def A278354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278545.P6824174565856992994

`A318460(a(1-A103451(n))+1)` with `a(0)=3`
-/

namespace A278545.P6824174565856992994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A318460 (a (1 - A103451 n).toNat + 1).toNat

end

end A278545.P6824174565856992994

noncomputable section

/-- A278545: Number of neighbors of the n-th term in a full square array read by antidiagonals.

Offset 1, canonical program `A278545.P6824174565856992994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278545 (n : ℕ) : ℤ :=
  A278545.P6824174565856992994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278907.P17364321886829146193

`gcd(C(2, 2*n+1), Δ[A257531(n+1)])`
-/

namespace A278907.P17364321886829146193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (2 * n + 1) : ℤ) (f1 (n + 1) - f1 n)

end

end A278907.P17364321886829146193

noncomputable section

/-- A278907: a(n) = floor((n*2^(n+1)+2)/(2*n-(-1)^n+3)) - floor((n*2^(n+1)-2)/(2*n-(-1)^n+3)).

Offset 0, canonical program `A278907.P17364321886829146193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278907 (n : ℕ) : ℤ :=
  (A278907.P17364321886829146193.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278908.P3432667754633221191

`∏{e}[n+1, A034444(#)]`
-/

namespace A278908.P3432667754633221191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A034444 (Nat.factorization (f1 n) p)

end

end A278908.P3432667754633221191

noncomputable section

/-- A278908: Multiplicative with a(p^e) = 2^omega(e), where omega = A001221.

Offset 1, canonical program `A278908.P3432667754633221191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278908 (n : ℕ) : ℤ :=
  A278908.P3432667754633221191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278959.P17833903646216685810

`A068670(∑[char[p?[round(8*n/7)]+1]])`
-/

namespace A278959.P17833903646216685810
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278959.P17833903646216685810

noncomputable section

/-- A278959: Length of the string that is generated by the concatenation of all the prime numbers < n.

Offset 0, canonical program `A278959.P17833903646216685810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278959 (n : ℕ) : ℤ :=
  A278959.P17833903646216685810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278997.P18380770767987263801

`A189716(n+1)-1`
-/

namespace A278997.P18380770767987263801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1) - 1

end

end A278997.P18380770767987263801

noncomputable section

/-- A278997: Numbers of the form (3h+2)*3^(2k)-1 or (3h+1)*3^(2k+1)-1 for h,k in N.

Offset 1, canonical program `A278997.P18380770767987263801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278997 (n : ℕ) : ℤ :=
  A278997.P18380770767987263801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279436.P15978742674708459391

`A062298(n+1)-A033273(n+1)`
-/

namespace A279436.P15978742674708459391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A033273 (n + 1)

end

end A279436.P15978742674708459391

noncomputable section

/-- A279436: Number of nonprimes less than or equal to n that do not divide n.

Offset 1, canonical program `A279436.P15978742674708459391`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279436 (n : ℕ) : ℤ :=
  A279436.P15978742674708459391.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279436.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279455.P2237740548424145724

`lt[(n+1)%A033273(n+1), 1]+1`
-/

namespace A279455.P2237740548424145724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A033273 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A279455.P2237740548424145724

noncomputable section

/-- A279455: Numbers n such that the number of nonprime divisors of n divides n.

Offset 1, canonical program `A279455.P2237740548424145724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279455 (n : ℕ) : ℤ :=
  (A279455.P2237740548424145724.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279456.P8910636171519638710

`∩[A028260(n+1), A030230(n+1)]`
-/

namespace A279456.P8910636171519638710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279456.P8910636171519638710

noncomputable section

/-- A279456: Numbers k such that number of distinct primes dividing k is odd and number of prime divisors (counted with multiplicity) of k is even.

Offset 1, canonical program `A279456.P8910636171519638710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. -/
def A279456 (n : ℕ) : ℤ :=
  (A279456.P8910636171519638710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. -/
def A279456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280046.P8165045859776700570

`and(A003188(n), A057215(A004526(3*(n+1))))`
-/

namespace A280046.P8165045859776700570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003188 n) (A057215 (A004526 (3 * (n + 1))).toNat)

end

end A280046.P8165045859776700570

noncomputable section

/-- A280046: Image of A053838 under the morphism 0 -> 0000, 1 -> 0100, 2 -> 0110.

Offset 0, canonical program `A280046.P8165045859776700570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A280046 (n : ℕ) : ℤ :=
  A280046.P8165045859776700570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A280046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280266.P6389486118769418393

`p?[A008578(n+1)*A013632(A048448(n))]`
-/

namespace A280266.P6389486118769418393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A013632 (A048448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280266.P6389486118769418393

noncomputable section

/-- A280266: Primes such that the previous prime plus the next prime plus 1 is also prime.

Offset 1, canonical program `A280266.P6389486118769418393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A280266 (n : ℕ) : ℤ :=
  A280266.P6389486118769418393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A280266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280420.P7252291216696291508

`A007955(A000142(n))`
-/

namespace A280420.P7252291216696291508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000142 n).toNat

end

end A280420.P7252291216696291508

noncomputable section

/-- A280420: Product of divisors of n!.

Offset 0, canonical program `A280420.P7252291216696291508`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280420 (n : ℕ) : ℤ :=
  A280420.P7252291216696291508.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280420.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280581.P8181820732496802656

`A007955(A000203(n+1))`
-/

namespace A280581.P8181820732496802656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000203 (n + 1)).toNat

end

end A280581.P8181820732496802656

noncomputable section

/-- A280581: a(n) = the product of divisors of sum of divisors of n.

Offset 1, canonical program `A280581.P8181820732496802656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280581 (n : ℕ) : ℤ :=
  A280581.P8181820732496802656.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280583.P392735101268352223

`A007955(A000005(n+1))`
-/

namespace A280583.P392735101268352223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000005 (n + 1)).toNat

end

end A280583.P392735101268352223

noncomputable section

/-- A280583: a(n) = product of divisors of the number of divisors of n.

Offset 1, canonical program `A280583.P392735101268352223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280583 (n : ℕ) : ℤ :=
  A280583.P392735101268352223.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280684.P8623937446844403101

`A000005(A007955(n+1))`
-/

namespace A280684.P8623937446844403101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007955 (n + 1)).toNat

end

end A280684.P8623937446844403101

noncomputable section

/-- A280684: a(n) = number of divisors of the product of the divisors of n.

Offset 1, canonical program `A280684.P8623937446844403101`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280684 (n : ℕ) : ℤ :=
  A280684.P8623937446844403101.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280685.P17876969319558057215

`A000203(A007955(n+1))`
-/

namespace A280685.P17876969319558057215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007955 (n + 1)).toNat

end

end A280685.P17876969319558057215

noncomputable section

/-- A280685: a(n) = sum of the divisors of the product of the divisors of n.

Offset 1, canonical program `A280685.P17876969319558057215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280685 (n : ℕ) : ℤ :=
  A280685.P17876969319558057215.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280870.P3114633600401885937

`lcm(A048448(n+2), A048448(n+3))/A048448(n+3)`
-/

namespace A280870.P3114633600401885937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A048448 (n + 2)) (A048448 (n + 3)) : ℚ) / (A048448 (n + 3) : ℚ)

end

end A280870.P3114633600401885937

noncomputable section

/-- A280870: Numerator of the mediant of prime(n) / prime(n+1) and prime(n+2) / prime(n+3).

Offset 1, canonical program `A280870.P3114633600401885937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280870 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280870.P3114633600401885937.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280871.P12402160092927728937

`lcm(A048448(n+2), A048448(n+3))/A048448(n+2)`
-/

namespace A280871.P12402160092927728937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A048448 (n + 2)) (A048448 (n + 3)) : ℚ) / (A048448 (n + 2) : ℚ)

end

end A280871.P12402160092927728937

noncomputable section

/-- A280871: Denominator of the mediant of prime(n) / prime(n+1) and prime(n+2) / prime(n+3).

Offset 1, canonical program `A280871.P12402160092927728937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280871 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280871.P12402160092927728937.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281499.P7725258825879446995

`A036044(A003188(n))`
-/

namespace A281499.P7725258825879446995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A003188 n).toNat

end

end A281499.P7725258825879446995

noncomputable section

/-- A281499: Write n in binary reflected Gray code, interchange the 1's and 0's, reverse the code and convert it back to decimal.

Offset 0, canonical program `A281499.P7725258825879446995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281499 (n : ℕ) : ℤ :=
  A281499.P7725258825879446995.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281842.P12528366148186742293

`xor(A077896(A053438(n)), A289768(2*n))`
-/

namespace A281842.P12528366148186742293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A053438 n).toNat) (A289768 (2 * n))

end

end A281842.P12528366148186742293

noncomputable section

/-- A281842: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 401", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A281842.P12528366148186742293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A281842 (n : ℕ) : ℤ :=
  A281842.P12528366148186742293.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A281842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282239.P9293021840617921034

`A214678(A000045(n+1))`
-/

namespace A282239.P9293021840617921034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (A000045 (n + 1)).toNat

end

end A282239.P9293021840617921034

noncomputable section

/-- A282239: a(n) = Fibonacci(n) represented in bijective base-8 numeration.

Offset 1, canonical program `A282239.P9293021840617921034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214678, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282239 (n : ℕ) : ℤ :=
  A282239.P9293021840617921034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214678, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282462.P16013334496872017195

`(n+1)*(A103164(n)-n)+n`
-/

namespace A282462.P16013334496872017195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A103164 n - (n : ℤ)) + (n : ℤ)

end

end A282462.P16013334496872017195

noncomputable section

/-- A282462: Integers but with the primes cubed.

Offset 0, canonical program `A282462.P16013334496872017195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282462 (n : ℕ) : ℤ :=
  A282462.P16013334496872017195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282671.P11944958329678511137

`2*A002808(n+1)`
-/

namespace A282671.P11944958329678511137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002808 (n + 1)

end

end A282671.P11944958329678511137

noncomputable section

/-- A282671: Twice composite numbers.

Offset 1, canonical program `A282671.P11944958329678511137`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282671 (n : ℕ) : ℤ :=
  A282671.P11944958329678511137.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282801.P14195813214451919216

`gcd(A282412(n), A282797(n))`
-/

namespace A282801.P14195813214451919216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A282412 n) (A282797 n)

end

end A282801.P14195813214451919216

noncomputable section

/-- A282801: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282801.P14195813214451919216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282801 (n : ℕ) : ℤ :=
  (A282801.P14195813214451919216.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282849.P7416668363150530004

`∑{d}[n+1, A010051((n+1)/#+#)]`
-/

namespace A282849.P7416668363150530004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ))).toNat

end

end A282849.P7416668363150530004

noncomputable section

/-- A282849: Number of divisors k of n such that (n + k^2)/k is a prime.

Offset 1, canonical program `A282849.P7416668363150530004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282849 (n : ℕ) : ℤ :=
  A282849.P7416668363150530004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284150.P13402515358706383174

`A284097(n+1)+A284103(n+1)`
-/

namespace A284150.P13402515358706383174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (n + 1) + A284103 (n + 1)

end

end A284150.P13402515358706383174

noncomputable section

/-- A284150: Sum_{d|n, d==1 or 4 mod 5} d.

Offset 1, canonical program `A284150.P13402515358706383174`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, A284103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284150 (n : ℕ) : ℤ :=
  A284150.P13402515358706383174.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, A284103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284369.P9335494032599712872

`char[A284371(n+1)-1]`
-/

namespace A284369.P9335494032599712872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284369.P9335494032599712872

noncomputable section

/-- A284369: Fixed point of the morphism 0->1, 1->1001.

Offset 1, canonical program `A284369.P9335494032599712872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284369 (n : ℕ) : ℤ :=
  (A284369.P9335494032599712872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284391.P1470686768297422428

`(4%A080426(n+1))^n`
-/

namespace A284391.P1470686768297422428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A080426 (n + 1)) ^ n

end

end A284391.P1470686768297422428

noncomputable section

/-- A284391: 1-limiting word of the morphism 0 -> 1, 1 -> 001.

Offset 1, canonical program `A284391.P1470686768297422428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284391 (n : ℕ) : ℤ :=
  A284391.P1470686768297422428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284878.P13204157183764191036

`char[A284880(n+1)-1]`
-/

namespace A284878.P13204157183764191036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284878.P13204157183764191036

noncomputable section

/-- A284878: Fixed point of the morphism 0 -> 01, 1 -> 0110.

Offset 1, canonical program `A284878.P13204157183764191036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284878 (n : ℕ) : ℤ :=
  (A284878.P13204157183764191036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285309.P12080858862407877190

`A000203(n+1)-A035316(n+1)`
-/

namespace A285309.P12080858862407877190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A035316 (n + 1)

end

end A285309.P12080858862407877190

noncomputable section

/-- A285309: Sum of nonsquare divisors of n.

Offset 1, canonical program `A285309.P12080858862407877190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285309 (n : ℕ) : ℤ :=
  A285309.P12080858862407877190.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285437.P16402339741766038757

`A000034(n)*A288808(A052928(n))`
-/

namespace A285437.P16402339741766038757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A288808 (A052928 n).toNat

end

end A285437.P16402339741766038757

noncomputable section

/-- A285437: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285437.P16402339741766038757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 393 terms. -/
def A285437 (n : ℕ) : ℤ :=
  A285437.P16402339741766038757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 393 terms. -/
def A285437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285961.P11025727463194114248

`A091785(n+1)+1+n`
-/

namespace A285961.P11025727463194114248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091785 (n + 1) + 1 + (n : ℤ)

end

end A285961.P11025727463194114248

noncomputable section

/-- A285961: Positions of 0 in A285960; complement of A285962.

Offset 1, canonical program `A285961.P11025727463194114248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285961 (n : ℕ) : ℤ :=
  A285961.P11025727463194114248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285968.P7645059340258916678

`∑[A143331(n+1)+1]`
-/

namespace A285968.P7645059340258916678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143331 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285968.P7645059340258916678

noncomputable section

/-- A285968: Positions of 1 in A285966; complement of A285967.

Offset 1, canonical program `A285968.P7645059340258916678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285968 (n : ℕ) : ℤ :=
  A285968.P7645059340258916678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285970.P17998108344174351003

`∑[3-A143331(n+1)]-1`
-/

namespace A285970.P17998108344174351003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A143331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A285970.P17998108344174351003

noncomputable section

/-- A285970: Positions of 0 in A285969; complement of A285971.

Offset 1, canonical program `A285970.P17998108344174351003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285970 (n : ℕ) : ℤ :=
  A285970.P17998108344174351003.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285972.P9978593090534713538

`A010060(∑[A143331(n+1)]-A143331(n+1))`
-/

namespace A285972.P9978593090534713538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∑ j ∈ Finset.range (n + 1), f1 j - A143331 (n + 1)).toNat

end

end A285972.P9978593090534713538

noncomputable section

/-- A285972: {10->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285972.P9978593090534713538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285972 (n : ℕ) : ℤ :=
  A285972.P9978593090534713538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286002.P1824755549209206382

`n+1+A049820(n+1)`
-/

namespace A286002.P1824755549209206382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A049820 (n + 1)

end

end A286002.P1824755549209206382

noncomputable section

/-- A286002: a(n) = 2n - d(n), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A286002.P1824755549209206382`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286002 (n : ℕ) : ℤ :=
  A286002.P1824755549209206382.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286002.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286053.P9692658622334694339

`lt[A286052(n+1), 1]+1`
-/

namespace A286053.P9692658622334694339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A286053.P9692658622334694339

noncomputable section

/-- A286053: Positions of 0 in A286052; complement of A286054.

Offset 1, canonical program `A286053.P9692658622334694339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A286053 (n : ℕ) : ℤ :=
  (A286053.P9692658622334694339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A286053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286055.P8159239610517546816

`1-A286052(xor(1, n)+1)`
-/

namespace A286055.P8159239610517546816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286052 (Nat.xor 1 n + 1)

end

end A286055.P8159239610517546816

noncomputable section

/-- A286055: {010->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286055.P8159239610517546816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286055 (n : ℕ) : ℤ :=
  A286055.P8159239610517546816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286529.P6466603757288355970

`A000005(A062249(n+1))`
-/

namespace A286529.P6466603757288355970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062249 (n + 1)).toNat

end

end A286529.P6466603757288355970

noncomputable section

/-- A286529: a(n) = d(n+d(n)), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A286529.P6466603757288355970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286529 (n : ℕ) : ℤ :=
  A286529.P6466603757288355970.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286591.P10026777462163410462

`1/2*(2+(A009191(n+1)+A009194(n+1))²-A009191(n+1)-3*A009194(n+1))`
-/

namespace A286591.P10026777462163410462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A009191 (n + 1) + A009194 (n + 1)) ^ 2 - A009191 (n + 1) - 3 * A009194 (n + 1) : ℚ)

end

end A286591.P10026777462163410462

noncomputable section

/-- A286591: Compound filter: a(n) = P(A009191(n), A009194(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286591.P10026777462163410462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286591 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286591.P10026777462163410462.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286726.P13971804869111894166

`1-A286685(n+1)`
-/

namespace A286726.P13971804869111894166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286685 (n + 1)

end

end A286726.P13971804869111894166

noncomputable section

/-- A286726: {0->10, 1->01}-transform of the Pell word, A171588.

Offset 1, canonical program `A286726.P13971804869111894166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286726 (n : ℕ) : ℤ :=
  A286726.P13971804869111894166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286752.P17365637770486763028

`A307294(n)%2`
-/

namespace A286752.P17365637770486763028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307294 n) 2

end

end A286752.P17365637770486763028

noncomputable section

/-- A286752: {010010->null}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A286752.P17365637770486763028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286752 (n : ℕ) : ℤ :=
  A286752.P17365637770486763028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286809.P10950988701796327335

`A324400(2*n+3)`
-/

namespace A286809.P10950988701796327335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (2 * n + 3)

end

end A286809.P10950988701796327335

noncomputable section

/-- A286809: Positions of 1 in A286807; complement of A286808.

Offset 1, canonical program `A286809.P10950988701796327335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286809 (n : ℕ) : ℤ :=
  A286809.P10950988701796327335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286937.P8216881898967728310

`1-A286804(n+1)`
-/

namespace A286937.P8216881898967728310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286804 (n + 1)

end

end A286937.P8216881898967728310

noncomputable section

/-- A286937: {111->null}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286937.P8216881898967728310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286937 (n : ℕ) : ℤ :=
  A286937.P8216881898967728310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286991.P960293502275245523

`A187970(n+1)+1+n`
-/

namespace A286991.P960293502275245523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187970 (n + 1) + 1 + (n : ℤ)

end

end A286991.P960293502275245523

noncomputable section

/-- A286991: Positions of 0 in A286990; complement of A286992.

Offset 1, canonical program `A286991.P960293502275245523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286991 (n : ℕ) : ℤ :=
  A286991.P960293502275245523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287074.P10152371220635534099

`eq[1, A287072(n+1)]+1`
-/

namespace A287074.P10152371220635534099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287072 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287074.P10152371220635534099

noncomputable section

/-- A287074: Positions of 1 in A287072.

Offset 1, canonical program `A287074.P10152371220635534099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4301 terms. -/
def A287074 (n : ℕ) : ℤ :=
  (A287074.P10152371220635534099.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4301 terms. -/
def A287074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287725.P381442669331044004

`A287722(n+1)+A221151(n)`
-/

namespace A287725.P381442669331044004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287722 (n + 1) + A221151 n

end

end A287725.P381442669331044004

noncomputable section

/-- A287725: {0->1, 1->011}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287725.P381442669331044004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287725 (n : ℕ) : ℤ :=
  A287725.P381442669331044004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287727.P18038201456973574914

`A383422(n)+A287770(n+1)`
-/

namespace A287727.P18038201456973574914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 n + A287770 (n + 1)

end

end A287727.P18038201456973574914

noncomputable section

/-- A287727: Positions of 1 in A287725; complement of A287726.

Offset 1, canonical program `A287727.P18038201456973574914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287727 (n : ℕ) : ℤ :=
  A287727.P18038201456973574914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287773.P9347372102348700689

`1-A287795(n+1)`
-/

namespace A287773.P9347372102348700689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287795 (n + 1)

end

end A287773.P9347372102348700689

noncomputable section

/-- A287773: {0->010, 1->101}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287773.P9347372102348700689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287773 (n : ℕ) : ℤ :=
  A287773.P9347372102348700689.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288129.P13028226010156660586

`xor(A077896(A053438(n)), A289768(n))`
-/

namespace A288129.P13028226010156660586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A053438 n).toNat) (A289768 n)

end

end A288129.P13028226010156660586

noncomputable section

/-- A288129: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 425", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288129.P13028226010156660586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A288129 (n : ℕ) : ℤ :=
  A288129.P13028226010156660586.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A288129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288130.P13868285853343528695

`xor(A077896(A053438(n)), A289769(n))`
-/

namespace A288130.P13868285853343528695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A053438 n).toNat) (A289769 n)

end

end A288130.P13868285853343528695

noncomputable section

/-- A288130: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 425", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288130.P13868285853343528695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A288130 (n : ℕ) : ℤ :=
  A288130.P13868285853343528695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A288130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288168.P15066457782976008848

`eq[0, A288167(n+1)]+1`
-/

namespace A288168.P15066457782976008848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288168.P15066457782976008848

noncomputable section

/-- A288168: Positions of 0 in A288167; complement of A288169.

Offset 1, canonical program `A288168.P15066457782976008848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8332 terms. -/
def A288168 (n : ℕ) : ℤ :=
  (A288168.P15066457782976008848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8332 terms. -/
def A288168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288469.P18109802138600122928

`n+1+A010051(n+1)*(a(A000720(n+1)-1)-(n+1))` with `a(0)=1`
-/

namespace A288469.P18109802138600122928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) + A010051 (n + 1) * (a (A000720 (n + 1) - 1).toNat - (n + 1 : ℤ))

end

end A288469.P18109802138600122928

noncomputable section

/-- A288469: a(n) = n if n is a nonprime, otherwise take the prime index of n and repeat until you get a nonprime which is then a(n).

Offset 1, canonical program `A288469.P18109802138600122928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288469 (n : ℕ) : ℤ :=
  A288469.P18109802138600122928.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288661.P15032499298438258468

`A282415(A022998(n)%(n+2))`
-/

namespace A288661.P15032499298438258468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 (Int.tmod (A022998 n) (n + 2 : ℤ)).toNat

end

end A288661.P15032499298438258468

noncomputable section

/-- A288661: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288661.P15032499298438258468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A288661 (n : ℕ) : ℤ :=
  A288661.P15032499298438258468.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A288661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288662.P17418465952420220201

`A000042(n+1)-A282415(n)%A000042(n+1)`
-/

namespace A288662.P17418465952420220201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A282415 n) (A000042 (n + 1))

end

end A288662.P17418465952420220201

noncomputable section

/-- A288662: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288662.P17418465952420220201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A288662 (n : ℕ) : ℤ :=
  A288662.P17418465952420220201.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A288662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288694.P16125803741522306044

`1-char[A288695(n+1)-1]`
-/

namespace A288694.P16125803741522306044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288695 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288694.P16125803741522306044

noncomputable section

/-- A288694: Fixed point of the mapping 00->0110, 10->100, starting with 00.

Offset 1, canonical program `A288694.P16125803741522306044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288694 (n : ℕ) : ℤ :=
  A288694.P16125803741522306044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289619.P12021313668545143991

`eq[2, A010873(A135323(n+1)/(n+1))]+1`
-/

namespace A289619.P12021313668545143991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (SequenceMachineLib.roundAway ((A135323 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289619.P12021313668545143991

noncomputable section

/-- A289619: Positions of ones in A289618.

Offset 1, canonical program `A289619.P12021313668545143991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4940 terms. -/
def A289619 (n : ℕ) : ℤ :=
  (A289619.P12021313668545143991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4940 terms. -/
def A289619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290599.P8822875163250112356

`A016035(A002808(n+1))`
-/

namespace A290599.P8822875163250112356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A002808 (n + 1)).toNat

end

end A290599.P8822875163250112356

noncomputable section

/-- A290599: Number of numbers from 1 to A002808(n) - 1 that are non-coprime to A002808(n).

Offset 1, canonical program `A290599.P8822875163250112356`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A016035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290599 (n : ℕ) : ℤ :=
  A290599.P8822875163250112356.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A016035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290599.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290813.P8899743792180073667

`or(A266719(n), A283352(n))`
-/

namespace A290813.P8899743792180073667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266719 n) (A283352 n)

end

end A290813.P8899743792180073667

noncomputable section

/-- A290813: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290813.P8899743792180073667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290813 (n : ℕ) : ℤ :=
  A290813.P8899743792180073667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290934.P7844650450766636919

`∑{digits}[A254958(n+1), #²]`
-/

namespace A290934.P7844650450766636919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A290934.P7844650450766636919

noncomputable section

/-- A290934: a(n) equals the sum of the squares of the digits of A254958(n).

Offset 1, canonical program `A290934.P7844650450766636919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A290934 (n : ℕ) : ℤ :=
  (A290934.P7844650450766636919.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A290934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291539.P10643058917017634035

`A291538(n+1)-A291540(n+1)`
-/

namespace A291539.P10643058917017634035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291538 (n + 1) - A291540 (n + 1)

end

end A291539.P10643058917017634035

noncomputable section

/-- A291539: a(n) = PrimePi(n^3) - PrimePi(n) * PrimePi(n^2), where PrimePi = A000720.

Offset 1, canonical program `A291539.P10643058917017634035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291540, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291539 (n : ℕ) : ℤ :=
  A291539.P10643058917017634035.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291540, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291539.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291626.P17454017761634681857

`lt[1, A053667(n)*A086009(n)+1]`
-/

namespace A291626.P17454017761634681857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n * A086009 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A291626.P17454017761634681857

noncomputable section

/-- A291626: Numbers k such that 1 is the smallest decimal digit of k^2.

Offset 1, canonical program `A291626.P17454017761634681857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2974 terms. -/
def A291626 (n : ℕ) : ℤ :=
  (A291626.P17454017761634681857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2974 terms. -/
def A291626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292264.P10434189468318484409

`n-A292944(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292264.P10434189468318484409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292944 n

end

end A292264.P10434189468318484409

noncomputable section

/-- A292264: a(n) = n - A292944(n).

Offset 0, canonical program `A292264.P10434189468318484409`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292264 (n : ℕ) : ℤ :=
  A292264.P10434189468318484409.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292596.P449040721367529095

`A010051(n+1)+2*a(floor((n+1)/2)-1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292596.P449040721367529095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 1, 2] fun n a =>
  A010051 (n + 1) + 2 * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat

end

end A292596.P449040721367529095

noncomputable section

/-- A292596: a(1) = a(2) = 0; for n > 2, a(n) = A010051(n) + 2*a(floor(n/2)).

Offset 1, canonical program `A292596.P449040721367529095`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292596 (n : ℕ) : ℤ :=
  A292596.P449040721367529095.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292596.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292597.P12063042605645149982

`A000035(n+1)*(1-A010051(n+1))+2*a(floor((n+1)/2)-1)` with `a(0)=1`
-/

namespace A292597.P12063042605645149982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000035 (n + 1) * (1 - A010051 (n + 1)) + 2 * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat

end

end A292597.P12063042605645149982

noncomputable section

/-- A292597: a(1) = 1; for n > 1, a(n) = c(n) + 2*a(floor(n/2)), where c(n) is the characteristic function of odd composites, A071904.

Offset 1, canonical program `A292597.P12063042605645149982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292597 (n : ℕ) : ℤ :=
  A292597.P12063042605645149982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292597.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292598.P10684525461602173111

`A010051(n+1)+a(floor((n+1)/2)-1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1, a(6)=2`
-/

namespace A292598.P10684525461602173111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 1, 1, 2] fun n a =>
  A010051 (n + 1) + a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat

end

end A292598.P10684525461602173111

noncomputable section

/-- A292598: a(n) is the number of odd primes in the sequence [n, floor(n/2), floor(n/4), ..., 1].

Offset 1, canonical program `A292598.P10684525461602173111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292598 (n : ℕ) : ℤ :=
  A292598.P10684525461602173111.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292598.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292599.P5652801317517926549

`A010051(n+1)+2*a(floor((n+1)/2)-1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292599.P5652801317517926549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A010051 (n + 1) + 2 * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat

end

end A292599.P5652801317517926549

noncomputable section

/-- A292599: a(1) = 0; for n > 1, a(n) = A010051(n) + 2*a(floor(n/2)).

Offset 1, canonical program `A292599.P5652801317517926549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292599 (n : ℕ) : ℤ :=
  A292599.P5652801317517926549.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292599.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293235.P11112024856890805067

`A035316(n+1)-A010052(n+1)*(n+1)`
-/

namespace A293235.P11112024856890805067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) - A010052 (n + 1) * (n + 1 : ℤ)

end

end A293235.P11112024856890805067

noncomputable section

/-- A293235: a(n) is the sum of proper divisors of n that are square.

Offset 1, canonical program `A293235.P11112024856890805067`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A035316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293235 (n : ℕ) : ℤ :=
  A293235.P11112024856890805067.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A035316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293449.P1988941039110302622

`∏{e}[n+1, A010051(#)]`
-/

namespace A293449.P1988941039110302622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A010051 (Nat.factorization (f1 n) p)

end

end A293449.P1988941039110302622

noncomputable section

/-- A293449: Characteristic function for A056166, numbers that have no nonprime exponents present in their prime factorization n = p_1^e_1 * ... * p_k^e_k.

Offset 1, canonical program `A293449.P1988941039110302622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293449 (n : ℕ) : ℤ :=
  A293449.P1988941039110302622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293513.P2913360707613170259

`A091954(n+1)-A293451(n+1)`
-/

namespace A293513.P2913360707613170259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - A293451 (n + 1)

end

end A293513.P2913360707613170259

noncomputable section

/-- A293513: Number of proper divisors of n of the form 4k+3.

Offset 1, canonical program `A293513.P2913360707613170259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293513 (n : ℕ) : ℤ :=
  A293513.P2913360707613170259.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293640.P11125392320751003996

`A293639(n)+A011558(n)`
-/

namespace A293640.P11125392320751003996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + A011558 n

end

end A293640.P11125392320751003996

noncomputable section

/-- A293640: a(n) is the least integer k such that k/Fibonacci(n) > 2/5.

Offset 0, canonical program `A293640.P11125392320751003996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A293640 (n : ℕ) : ℤ :=
  A293640.P11125392320751003996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A293640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293642.P4545341947688583851

`A293641(n)+A004698(n)`
-/

namespace A293642.P4545341947688583851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293641 n + A004698 n

end

end A293642.P4545341947688583851

noncomputable section

/-- A293642: a(n) is the greatest integer k such that k/Fibonacci(n) < 3/5.

Offset 0, canonical program `A293642.P4545341947688583851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A293642 (n : ℕ) : ℤ :=
  A293642.P4545341947688583851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A293642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294016.P4065653788084831294

`A024916(n+1)-A004125(n+1)`
-/

namespace A294016.P4065653788084831294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A004125 (n + 1)

end

end A294016.P4065653788084831294

noncomputable section

/-- A294016: a(n) = sum of all divisors of all positive integers <= n, minus the sum of remainders of n mod k, for k = 1, 2, 3, ..., n.

Offset 1, canonical program `A294016.P4065653788084831294`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294016 (n : ℕ) : ℤ :=
  A294016.P4065653788084831294.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294016.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294146.P8791464845272006236

`A294263(n+1)+n`
-/

namespace A294146.P8791464845272006236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294263 (n + 1) + (n : ℤ)

end

end A294146.P8791464845272006236

noncomputable section

/-- A294146: Sum of the larger parts of the partitions of n into two parts with smaller part squarefree.

Offset 1, canonical program `A294146.P8791464845272006236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294146 (n : ℕ) : ℤ :=
  A294146.P8791464845272006236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294194.P9935065760248985394

`A063959(n+1)-A063959(n)`
-/

namespace A294194.P9935065760248985394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063959 (n + 1) - A063959 n

end

end A294194.P9935065760248985394

noncomputable section

/-- A294194: a(n) is the sum of primes between n!+1 and (n+1)!.

Offset 0, canonical program `A294194.P9935065760248985394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294194 (n : ℕ) : ℤ :=
  A294194.P9935065760248985394.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294487.P4199886076242480061

`A063955(n+1)-∑{p}[n+1, C(#, n)]`
-/

namespace A294487.P4199886076242480061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ)

end

end A294487.P4199886076242480061

noncomputable section

/-- A294487: Sum of the lengths of the distinct rectangles with prime length and integer width such that L + W = n, W < L.

Offset 1, canonical program `A294487.P4199886076242480061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294487 (n : ℕ) : ℤ :=
  A294487.P4199886076242480061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294649.P10310509611923292318

`lcm(n+1, A206369(n+1))/(n+1)`
-/

namespace A294649.P10310509611923292318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A206369 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A294649.P10310509611923292318

noncomputable section

/-- A294649: a(n) = numerator(A206369(n))/n.

Offset 1, canonical program `A294649.P10310509611923292318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294649 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294649.P10310509611923292318.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295235.P4423342545334960815

`eq[A030101(n), A348363(n)]`
-/

namespace A295235.P4423342545334960815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295235.P4423342545334960815

noncomputable section

/-- A295235: Numbers k such that the positions of the ones in the binary representation of k are in arithmetic progression.

Offset 1, canonical program `A295235.P4423342545334960815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A295235 (n : ℕ) : ℤ :=
  (A295235.P4423342545334960815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A295235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295286.P12563632415591055737

`∑[A001057(n)²]-A295320(n+1)`
-/

namespace A295286.P12563632415591055737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295320 (n + 1)

end

end A295286.P12563632415591055737

noncomputable section

/-- A295286: Sum of the products of the smaller and larger parts of the partitions of n into two parts with the smaller part odd.

Offset 1, canonical program `A295286.P12563632415591055737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295286 (n : ℕ) : ℤ :=
  A295286.P12563632415591055737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295292.P4490344972093491667

`∑[A001057(n)²]-A295317(n+1)`
-/

namespace A295292.P4490344972093491667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295317 (n + 1)

end

end A295292.P4490344972093491667

noncomputable section

/-- A295292: Sum of the products of the smaller and larger parts of the partitions of n into two parts with the larger part odd.

Offset 1, canonical program `A295292.P4490344972093491667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295292 (n : ℕ) : ℤ :=
  A295292.P4490344972093491667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295293.P9244574736305665220

`∑[A110660(n)]-A295318(n+1)`
-/

namespace A295293.P9244574736305665220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295318 (n + 1)

end

end A295293.P9244574736305665220

noncomputable section

/-- A295293: Sum of the products of the smaller and larger parts of the partitions of n into two parts with the larger part even.

Offset 1, canonical program `A295293.P9244574736305665220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295293 (n : ℕ) : ℤ :=
  A295293.P9244574736305665220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295305.P10315158761538190629

`A062068(n+1)-A000005(n+1)`
-/

namespace A295305.P10315158761538190629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) - A000005 (n + 1)

end

end A295305.P10315158761538190629

noncomputable section

/-- A295305: a(n) = tau(sigma(n)) - tau(n), where tau is the number of divisors (A000005) and sigma is the sum of divisors of n (A000203).

Offset 1, canonical program `A295305.P10315158761538190629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295305 (n : ℕ) : ℤ :=
  A295305.P10315158761538190629.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295305.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295405.P6236039691485213771

`A010051(A002522(n+1))`
-/

namespace A295405.P6236039691485213771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002522 (n + 1)).toNat

end

end A295405.P6236039691485213771

noncomputable section

/-- A295405: a(n) = 1 if n^2+1 is prime, 0 otherwise.

Offset 1, canonical program `A295405.P6236039691485213771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295405 (n : ℕ) : ℤ :=
  A295405.P6236039691485213771.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295819.P15157228234053089622

`A000089(A048298(8*(n+1))+n)`
-/

namespace A295819.P15157228234053089622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A048298 (8 * (n + 1)) + (n : ℤ)).toNat

end

end A295819.P15157228234053089622

noncomputable section

/-- A295819: Number of nonnegative solutions to (x,y) = 1 and x^2 + y^2 = n.

Offset 0, canonical program `A295819.P15157228234053089622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A295819 (n : ℕ) : ℤ :=
  A295819.P15157228234053089622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A295819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295934.P14483957444416556349

`A394266(n+1)+A373565(n)`
-/

namespace A295934.P14483957444416556349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394266 (n + 1) + A373565 n

end

end A295934.P14483957444416556349

noncomputable section

/-- A295934: Number of (not necessarily maximal) cliques in the n-odd graph.

Offset 1, canonical program `A295934.P14483957444416556349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A295934 (n : ℕ) : ℤ :=
  A295934.P14483957444416556349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A295934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296028.P1586919998801928627

`A010051(A001651(n+1))`
-/

namespace A296028.P1586919998801928627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001651 (n + 1)).toNat

end

end A296028.P1586919998801928627

noncomputable section

/-- A296028: Characteristic function of primes in the nonmultiples of 3.

Offset 1, canonical program `A296028.P1586919998801928627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296028 (n : ℕ) : ℤ :=
  A296028.P1586919998801928627.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296082.P6565057320872565321

`∑{e}[A100577(n+1), #/A296081(n+1)]`
-/

namespace A296082.P6565057320872565321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / (A296081 (n + 1) : ℚ)

end

end A296082.P6565057320872565321

noncomputable section

/-- A296082: a(1) = 0; for n > 1, a(n) = A032741(n) / gcd(A039653(n),A032741(n)).

Offset 1, canonical program `A296082.P6565057320872565321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A296082 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296082.P6565057320872565321.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A296082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296211.P11261666539531221570

`A010051(A048050(n+1)+1+n)`
-/

namespace A296211.P11261666539531221570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A048050 (n + 1) + 1 + (n : ℤ)).toNat

end

end A296211.P11261666539531221570

noncomputable section

/-- A296211: a(n) = 1 if sigma(n)-1 is a prime, 0 otherwise.

Offset 1, canonical program `A296211.P11261666539531221570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296211 (n : ℕ) : ℤ :=
  A296211.P11261666539531221570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296212.P15502952494172924929

`A010051(A088580(n+1))`
-/

namespace A296212.P15502952494172924929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A088580 (n + 1)).toNat

end

end A296212.P15502952494172924929

noncomputable section

/-- A296212: a(n) = 1 if sigma(n) + 1 is prime, 0 otherwise.

Offset 1, canonical program `A296212.P15502952494172924929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296212 (n : ℕ) : ℤ :=
  A296212.P15502952494172924929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297401.P14594620375848981182

`record[A105570(A030626(n+1))]`
-/

namespace A297401.P14594620375848981182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A030626 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297401.P14594620375848981182

noncomputable section

/-- A297401: Non-sphenic numbers with exactly 8 divisors.

Offset 1, canonical program `A297401.P14594620375848981182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. -/
def A297401 (n : ℕ) : ℤ :=
  A297401.P14594620375848981182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. -/
def A297401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298366.P16780955431485269286

`A061673(n+1)+4`
-/

namespace A298366.P16780955431485269286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1) + 4

end

end A298366.P16780955431485269286

noncomputable section

/-- A298366: Even numbers n such that n-5 and n-3 are both composite.

Offset 1, canonical program `A298366.P16780955431485269286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298366 (n : ℕ) : ℤ :=
  A298366.P16780955431485269286.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A298946.P13261524551093357640

`A099908(A002808(n+1))`
-/

namespace A298946.P13261524551093357640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (A002808 (n + 1)).toNat

end

end A298946.P13261524551093357640

noncomputable section

/-- A298946: a(n) = binomial(2*c-1, c-1) (mod c^4), where c is the n-th composite number.

Offset 1, canonical program `A298946.P13261524551093357640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A298946 (n : ℕ) : ℤ :=
  A298946.P13261524551093357640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A298946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299251.P8330585234016012379

`(A006218(A002620(n+2))-A000217(n+1))/2`
-/

namespace A299251.P8330585234016012379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 (A002620 (n + 2)).toNat - A000217 (n + 1) : ℚ) / 2

end

end A299251.P8330585234016012379

noncomputable section

/-- A299251: a(n) = ((Sum_{k=1..floor((n+1)^2/4)} d(k)) - T(n)) / 2, where d(n) = number of divisors of n (A000005) and T(n) = the n-th triangular number (A000217).

Offset 1, canonical program `A299251.P8330585234016012379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A299251.P8330585234016012379.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300473.P3318194151720719150

`eq[1, A010051(n*(n+21)+1)]`
-/

namespace A300473.P3318194151720719150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n * (n + 21) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300473.P3318194151720719150

noncomputable section

/-- A300473: Numbers k with the property that k^2 + 21k + 1 is prime.

Offset 1, canonical program `A300473.P3318194151720719150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A300473 (n : ℕ) : ℤ :=
  (A300473.P3318194151720719150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A300473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300914.P11875812938548948969

`record[A046640(n+1)-1]`
-/

namespace A300914.P11875812938548948969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300914.P11875812938548948969

noncomputable section

/-- A300914: Records in A045763.

Offset 1, canonical program `A300914.P11875812938548948969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A300914 (n : ℕ) : ℤ :=
  A300914.P11875812938548948969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A300914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301299.P710990171034367866

`A265227(n+1)+A004525(A315373(n))`
-/

namespace A301299.P710990171034367866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + A004525 (A315373 n).toNat

end

end A301299.P710990171034367866

noncomputable section

/-- A301299: Coordination sequence for node of type V1 in "krq" 2-D tiling (or net).

Offset 0, canonical program `A301299.P710990171034367866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1924 terms. -/
def A301299 (n : ℕ) : ℤ :=
  A301299.P710990171034367866.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1924 terms. -/
def A301299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301671.P18213465038880259880

`∑[A301670(n)]`
-/

namespace A301671.P18213465038880259880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301671.P18213465038880259880

noncomputable section

/-- A301671: Partial sums of A301670.

Offset 0, canonical program `A301671.P18213465038880259880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A301671 (n : ℕ) : ℤ :=
  A301671.P18213465038880259880.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A301671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301681.P13351959432488104399

`∑[A301680(n)]`
-/

namespace A301681.P13351959432488104399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301681.P13351959432488104399

noncomputable section

/-- A301681: Partial sums of A301680.

Offset 0, canonical program `A301681.P13351959432488104399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A301681 (n : ℕ) : ℤ :=
  A301681.P13351959432488104399.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A301681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301977.P124265642836154627

`A070992(n)-A174868(n)`
-/

namespace A301977.P124265642836154627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070992 n - A174868 n

end

end A301977.P124265642836154627

noncomputable section

/-- A301977: a(n) is the number of distinct positive numbers whose binary digits appear in order but not necessarily as consecutive digits in the binary representation of n.

Offset 1, canonical program `A301977.P124265642836154627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301977 (n : ℕ) : ℤ :=
  A301977.P124265642836154627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301977.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A304412.P15858694331180432577

`A000005(n+1)*A048250(n+1)`
-/

namespace A304412.P15858694331180432577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A048250 (n + 1)

end

end A304412.P15858694331180432577

noncomputable section

/-- A304412: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)*(k_j + 1)).

Offset 1, canonical program `A304412.P15858694331180432577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304412 (n : ℕ) : ℤ :=
  A304412.P15858694331180432577.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304438.P13191911540264673276

`∑{d}[n+1, A010051(#)*A154269((n+1)/#)]`
-/

namespace A304438.P13191911540264673276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304438.P13191911540264673276

noncomputable section

/-- A304438: Coefficient of s(y) in p(|y|), where s is Schur functions, p is power-sum symmetric functions, y is the integer partition with Heinz number n, and |y| = Sum y_i.

Offset 1, canonical program `A304438.P13191911540264673276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304438 (n : ℕ) : ℤ :=
  A304438.P13191911540264673276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304651.P3576326114544624841

`a(n-1)+4*A000089(n)` with `a(0)=0`
-/

namespace A304651.P3576326114544624841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 4 * A000089 n

end

end A304651.P3576326114544624841

noncomputable section

/-- A304651: Number of coprime pairs (x,y) with x^2 + y^2 <= n.

Offset 0, canonical program `A304651.P3576326114544624841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304651 (n : ℕ) : ℤ :=
  A304651.P3576326114544624841.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305117.P17948678590562359132

`a(n-1)+A000089(n)` with `a(0)=0`
-/

namespace A305117.P17948678590562359132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000089 n

end

end A305117.P17948678590562359132

noncomputable section

/-- A305117: a(n) = A304651(n)/4.

Offset 0, canonical program `A305117.P17948678590562359132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305117 (n : ℕ) : ℤ :=
  A305117.P17948678590562359132.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305496.P3717088161974094757

`3*A305495(n+1)-1`
-/

namespace A305496.P3717088161974094757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A305495 (n + 1) - 1

end

end A305496.P3717088161974094757

noncomputable section

/-- A305496: Positions of 2 in the fixed point of the morphism 0->120, 1->110, 2->100 applied to 1 (as in A305490).

Offset 1, canonical program `A305496.P3717088161974094757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305496 (n : ℕ) : ℤ :=
  A305496.P3717088161974094757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305496.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A306807.P4487341129196582665

`A185114(A082375(n)+1)+A082375(n)+1`
-/

namespace A306807.P4487341129196582665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 (A082375 n + 1).toNat + (A082375 n + 1)

end

end A306807.P4487341129196582665

noncomputable section

/-- A306807: An irregular fractal sequence: underline a(n) iff the absolute difference |a(n-1) - a(n)| is prime; all underlined terms rebuild the starting sequence.

Offset 1, canonical program `A306807.P4487341129196582665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306807 (n : ℕ) : ℤ :=
  A306807.P4487341129196582665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307000.P4616291830837639980

`∑{d}[n+1, A252505(#)*A353628((n+1)/#)]`
-/

namespace A307000.P4616291830837639980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A252505 d * A353628 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307000.P4616291830837639980

noncomputable section

/-- A307000: Number of unitary rings with additive group (Z/nZ)^2. Equivalently, number of unitary commutative rings with additive group (Z/nZ)^2.

Offset 1, canonical program `A307000.P4616291830837639980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307000 (n : ℕ) : ℤ :=
  A307000.P4616291830837639980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307011.P16481018969621470149

`A307012(A184010(n+1))`
-/

namespace A307011.P16481018969621470149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (A184010 (n + 1)).toNat

end

end A307011.P16481018969621470149

noncomputable section

/-- A307011: First coordinate in a redundant hexagonal coordinate system of the points of a counterclockwise spiral on an hexagonal grid. Second and third coordinates are given in A307012 and A345978.

Offset 0, canonical program `A307011.P16481018969621470149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307011 (n : ℕ) : ℤ :=
  A307011.P16481018969621470149.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307120.P1673145710130968314

`A009005(A343005(n+2)+∏{e}[n, #+1])`
-/

namespace A307120.P1673145710130968314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A343005 (n + 2) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A307120.P1673145710130968314

noncomputable section

/-- A307120: a(1) = 3, for n>1, a(n) = A000005(n-1) + A000005(n) + A000005(n+1).

Offset 1, canonical program `A307120.P1673145710130968314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307120 (n : ℕ) : ℤ :=
  A307120.P1673145710130968314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307390.P18238865326360100197

`∪[A068497(n+1), A007528(n+1)]`
-/

namespace A307390.P18238865326360100197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307390.P18238865326360100197

noncomputable section

/-- A307390: Primes p such that 2*p-1 is not prime.

Offset 1, canonical program `A307390.P18238865326360100197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307390 (n : ℕ) : ℤ :=
  (A307390.P18238865326360100197.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308833.P17401601876213426740

`eq[A010051(n+1), A010051(n+2)]`
-/

namespace A308833.P17401601876213426740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308833.P17401601876213426740

noncomputable section

/-- A308833: Numbers r such that the r-th tetrahedral number A000292(r) divides r!.

Offset 1, canonical program `A308833.P17401601876213426740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308833 (n : ℕ) : ℤ :=
  (A308833.P17401601876213426740.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309125.P14621074972548703162

`∑[A035316(n+1)]`
-/

namespace A309125.P14621074972548703162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P14621074972548703162

noncomputable section

/-- A309125: a(n) = n + 2^2 * floor(n/2^2) + 3^2 * floor(n/3^2) + 4^2 * floor(n/4^2) + ...

Offset 1, canonical program `A309125.P14621074972548703162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309125 (n : ℕ) : ℤ :=
  A309125.P14621074972548703162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309125.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A309507.P1026939547968616405

`A092517(n+1)-A063440(n+1)-1`
-/

namespace A309507.P1026939547968616405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 1) - A063440 (n + 1) - 1

end

end A309507.P1026939547968616405

noncomputable section

/-- A309507: Number of ways the n-th triangular number T(n) = A000217(n) can be written as the difference of two positive triangular numbers.

Offset 1, canonical program `A309507.P1026939547968616405`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309507 (n : ℕ) : ℤ :=
  A309507.P1026939547968616405.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309649.P15868022147987081521

`A007821(n+1)-A000007(n)`
-/

namespace A309649.P15868022147987081521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A000007 n

end

end A309649.P15868022147987081521

noncomputable section

/-- A309649: Sieved recursive primeth recurrence (see Comments for precise definition).

Offset 1, canonical program `A309649.P15868022147987081521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309649 (n : ℕ) : ℤ :=
  A309649.P15868022147987081521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310252.P16435605649831598924

`A008574(n)+A313568(n)-A315373(n)`
-/

namespace A310252.P16435605649831598924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313568 n - A315373 n)

end

end A310252.P16435605649831598924

noncomputable section

/-- A310252: Coordination sequence Gal.3.3.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310252.P16435605649831598924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A310252 (n : ℕ) : ℤ :=
  A310252.P16435605649831598924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A310252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310376.P1602413668059048262

`A312998(n)+A087509(n)`
-/

namespace A310376.P1602413668059048262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312998 n + A087509 n

end

end A310376.P1602413668059048262

noncomputable section

/-- A310376: Coordination sequence Gal.5.199.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310376.P1602413668059048262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. -/
def A310376 (n : ℕ) : ℤ :=
  A310376.P1602413668059048262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. -/
def A310376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310446.P3653762091158241676

`A315668(n)-2*A330025(n)`
-/

namespace A310446.P3653762091158241676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315668 n - 2 * A330025 n

end

end A310446.P3653762091158241676

noncomputable section

/-- A310446: Coordination sequence Gal.5.137.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310446.P3653762091158241676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A310446 (n : ℕ) : ℤ :=
  A310446.P3653762091158241676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A310446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310454.P10457649734858247148

`A313100(n)+A004396(n-A004396(n))`
-/

namespace A310454.P10457649734858247148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A310454.P10457649734858247148

noncomputable section

/-- A310454: Coordination sequence Gal.5.140.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310454.P10457649734858247148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A310454 (n : ℕ) : ℤ :=
  A310454.P10457649734858247148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A310454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310457.P16493432866440018561

`A310410(n)+Δ[A011865(n)]`
-/

namespace A310457.P16493432866440018561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310410 n + (f1 (n + 1) - f1 n)

end

end A310457.P16493432866440018561

noncomputable section

/-- A310457: Coordination sequence Gal.6.345.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310457.P16493432866440018561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A310457 (n : ℕ) : ℤ :=
  A310457.P16493432866440018561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A310457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310493.P491155023743620947

`2*A313026(n)-A008574(n)`
-/

namespace A310493.P491155023743620947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313026 n - A008574 n

end

end A310493.P491155023743620947

noncomputable section

/-- A310493: Coordination sequence Gal.5.86.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310493.P491155023743620947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A310493 (n : ℕ) : ℤ :=
  A310493.P491155023743620947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A310493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310511.P9412189317304849787

`A002264(A004525(n+2))+A313099(n)+A002264(n+1)`
-/

namespace A310511.P9412189317304849787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004525 (n + 2)).toNat + (A313099 n + A002264 (n + 1))

end

end A310511.P9412189317304849787

noncomputable section

/-- A310511: Coordination sequence Gal.6.354.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310511.P9412189317304849787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A310511 (n : ℕ) : ℤ :=
  A310511.P9412189317304849787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A310511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310524.P4933406775284647162

`A314124(n)-A128834(n)`
-/

namespace A310524.P4933406775284647162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314124 n - A128834 n

end

end A310524.P4933406775284647162

noncomputable section

/-- A310524: Coordination sequence Gal.6.356.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310524.P4933406775284647162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A310524 (n : ℕ) : ℤ :=
  A310524.P4933406775284647162.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A310524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311157.P16536294086485933595

`A047299(n+1)+A311958(n)-A191275(n+1)`
-/

namespace A311157.P16536294086485933595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + (A311958 n - A191275 (n + 1))

end

end A311157.P16536294086485933595

noncomputable section

/-- A311157: Coordination sequence Gal.4.89.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311157.P16536294086485933595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A311157 (n : ℕ) : ℤ :=
  A311157.P16536294086485933595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A311157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311233.P3691787065330941745

`2*A314677(n)-A315173(n)`
-/

namespace A311233.P3691787065330941745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314677 n - A315173 n

end

end A311233.P3691787065330941745

noncomputable section

/-- A311233: Coordination sequence Gal.4.70.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311233.P3691787065330941745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A311233 (n : ℕ) : ℤ :=
  A311233.P3691787065330941745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A311233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311285.P17835252962128537387

`A312140(n)-A047513(n+1)+n`
-/

namespace A311285.P17835252962128537387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n - A047513 (n + 1) + (n : ℤ)

end

end A311285.P17835252962128537387

noncomputable section

/-- A311285: Coordination sequence Gal.4.70.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311285.P17835252962128537387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A311285 (n : ℕ) : ℤ :=
  A311285.P17835252962128537387.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A311285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311312.P1118141043632426917

`A314903(n)-A004396(n)`
-/

namespace A311312.P1118141043632426917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n - A004396 n

end

end A311312.P1118141043632426917

noncomputable section

/-- A311312: Coordination sequence Gal.6.118.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311312.P1118141043632426917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A311312 (n : ℕ) : ℤ :=
  A311312.P1118141043632426917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A311312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311433.P1198720009371064807

`A313100(n)-∑[A021913(n)]`
-/

namespace A311433.P1198720009371064807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311433.P1198720009371064807

noncomputable section

/-- A311433: Coordination sequence Gal.5.97.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311433.P1198720009371064807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A311433 (n : ℕ) : ℤ :=
  A311433.P1198720009371064807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A311433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311439.P1582129312365160532

`A313115(n)-A004523(A145569(n))`
-/

namespace A311439.P1582129312365160532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n - A004523 (A145569 n).toNat

end

end A311439.P1582129312365160532

noncomputable section

/-- A311439: Coordination sequence Gal.4.40.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311439.P1582129312365160532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. -/
def A311439 (n : ℕ) : ℤ :=
  A311439.P1582129312365160532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. -/
def A311439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311535.P8801384173833754129

`A151988(n)+A311440(n)-n`
-/

namespace A311535.P8801384173833754129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A311440 n - (n : ℤ))

end

end A311535.P8801384173833754129

noncomputable section

/-- A311535: Coordination sequence Gal.5.53.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311535.P8801384173833754129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2530 terms. -/
def A311535 (n : ℕ) : ℤ :=
  A311535.P8801384173833754129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2530 terms. -/
def A311535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311536.P3424526079161811311

`A314964(n)-A004396(n)`
-/

namespace A311536.P3424526079161811311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314964 n - A004396 n

end

end A311536.P3424526079161811311

noncomputable section

/-- A311536: Coordination sequence Gal.6.120.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311536.P3424526079161811311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A311536 (n : ℕ) : ℤ :=
  A311536.P3424526079161811311.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A311536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311601.P4498607842150103935

`2*A311440(n)-A008574(n)`
-/

namespace A311601.P4498607842150103935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311440 n - A008574 n

end

end A311601.P4498607842150103935

noncomputable section

/-- A311601: Coordination sequence Gal.6.230.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311601.P4498607842150103935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A311601 (n : ℕ) : ℤ :=
  A311601.P4498607842150103935.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A311601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311612.P8550117147487517708

`2*A311458(n)-A008574(n)`
-/

namespace A311612.P8550117147487517708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311458 n - A008574 n

end

end A311612.P8550117147487517708

noncomputable section

/-- A311612: Coordination sequence Gal.5.98.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311612.P8550117147487517708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2513 terms. -/
def A311612 (n : ℕ) : ℤ :=
  A311612.P8550117147487517708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2513 terms. -/
def A311612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311699.P1694921435431458

`A151988(n)+A313826(n)-A005843(n)`
-/

namespace A311699.P1694921435431458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A313826 n - A005843 n)

end

end A311699.P1694921435431458

noncomputable section

/-- A311699: Coordination sequence Gal.4.48.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311699.P1694921435431458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2374 terms. -/
def A311699 (n : ℕ) : ℤ :=
  A311699.P1694921435431458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2374 terms. -/
def A311699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311710.P6691464285514070511

`A008458(n)+A008574(n)-A313538(n)-A047588(n+1)`
-/

namespace A311710.P6691464285514070511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313538 n) - A047588 (n + 1)

end

end A311710.P6691464285514070511

noncomputable section

/-- A311710: Coordination sequence Gal.4.68.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311710.P6691464285514070511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. -/
def A311710 (n : ℕ) : ℤ :=
  A311710.P6691464285514070511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. -/
def A311710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311803.P9375890078183574717

`A313685(n)-A242062(4*n)`
-/

namespace A311803.P9375890078183574717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n - A242062 (4 * n)

end

end A311803.P9375890078183574717

noncomputable section

/-- A311803: Coordination sequence Gal.4.40.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311803.P9375890078183574717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A311803 (n : ℕ) : ℤ :=
  A311803.P9375890078183574717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A311803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311931.P15801867738715780697

`A315036(n)-A291290(A032766(n))`
-/

namespace A311931.P15801867738715780697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n - A291290 (A032766 n).toNat

end

end A311931.P15801867738715780697

noncomputable section

/-- A311931: Coordination sequence Gal.3.17.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311931.P15801867738715780697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A311931 (n : ℕ) : ℤ :=
  A311931.P15801867738715780697.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A311931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311993.P8391129564967139039

`A311344(n)+Δ[A011862(n)]`
-/

namespace A311993.P8391129564967139039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311344 n + (f1 (n + 1) - f1 n)

end

end A311993.P8391129564967139039

noncomputable section

/-- A311993: Coordination sequence Gal.5.98.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311993.P8391129564967139039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2532 terms. -/
def A311993 (n : ℕ) : ℤ :=
  A311993.P8391129564967139039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2532 terms. -/
def A311993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312100.P12685263577647089552

`A311458(n)+Δ[A011862(n)]`
-/

namespace A312100.P12685263577647089552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + (f1 (n + 1) - f1 n)

end

end A312100.P12685263577647089552

noncomputable section

/-- A312100: Coordination sequence Gal.5.54.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312100.P12685263577647089552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A312100 (n : ℕ) : ℤ :=
  A312100.P12685263577647089552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A312100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312123.P2703485450737880313

`abs(A008592(n)-A315687(n))`
-/

namespace A312123.P2703485450737880313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315687 n|

end

end A312123.P2703485450737880313

noncomputable section

/-- A312123: Coordination sequence Gal.6.120.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312123.P2703485450737880313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2507 terms. -/
def A312123 (n : ℕ) : ℤ :=
  A312123.P2703485450737880313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2507 terms. -/
def A312123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312144.P9659675028767289182

`A313126(n)-round(n/3)`
-/

namespace A312144.P9659675028767289182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313126 n - SequenceMachineLib.roundAway ((n : ℚ) / 3)

end

end A312144.P9659675028767289182

noncomputable section

/-- A312144: Coordination sequence Gal.6.151.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312144.P9659675028767289182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A312144 (n : ℕ) : ℤ :=
  A312144.P9659675028767289182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A312144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312195.P11497264696370298054

`A314898(n)-A330025(A330025(n)+n)`
-/

namespace A312195.P11497264696370298054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314898 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A312195.P11497264696370298054

noncomputable section

/-- A312195: Coordination sequence Gal.5.67.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312195.P11497264696370298054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A312195 (n : ℕ) : ℤ :=
  A312195.P11497264696370298054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A312195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312402.P5647602654774873522

`A312655(n)-A201629(A004525(n))`
-/

namespace A312402.P5647602654774873522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312655 n - A201629 (A004525 n).toNat

end

end A312402.P5647602654774873522

noncomputable section

/-- A312402: Coordination sequence Gal.4.70.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312402.P5647602654774873522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A312402 (n : ℕ) : ℤ :=
  A312402.P5647602654774873522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A312402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312472.P9748257743886067532

`2*A311804(n)-A008574(n)`
-/

namespace A312472.P9748257743886067532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311804 n - A008574 n

end

end A312472.P9748257743886067532

noncomputable section

/-- A312472: Coordination sequence Gal.6.149.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312472.P9748257743886067532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2545 terms. -/
def A312472 (n : ℕ) : ℤ :=
  A312472.P9748257743886067532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2545 terms. -/
def A312472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313057.P2669330518983403707

`A047273(n+1)+A311257(n)-n`
-/

namespace A313057.P2669330518983403707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + (A311257 n - (n : ℤ))

end

end A313057.P2669330518983403707

noncomputable section

/-- A313057: Coordination sequence Gal.6.132.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313057.P2669330518983403707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. -/
def A313057 (n : ℕ) : ℤ :=
  A313057.P2669330518983403707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. -/
def A313057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313078.P17380493994389403351

`A313692(n)-A330025(n)`
-/

namespace A313078.P17380493994389403351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n - A330025 n

end

end A313078.P17380493994389403351

noncomputable section

/-- A313078: Coordination sequence Gal.5.67.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313078.P17380493994389403351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313078 (n : ℕ) : ℤ :=
  A313078.P17380493994389403351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313169.P6994078110540199840

`A313119(n)+A313174(n)-A313126(n)`
-/

namespace A313169.P6994078110540199840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313119 n + (A313174 n - A313126 n)

end

end A313169.P6994078110540199840

noncomputable section

/-- A313169: Coordination sequence Gal.6.479.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313169.P6994078110540199840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313169 (n : ℕ) : ℤ :=
  A313169.P6994078110540199840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313212.P14429204760756307954

`A004396(A310501(n)+2*n)`
-/

namespace A313212.P14429204760756307954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310501 n + (2 * n : ℤ)).toNat

end

end A313212.P14429204760756307954

noncomputable section

/-- A313212: Coordination sequence Gal.6.263.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313212.P14429204760756307954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313212 (n : ℕ) : ℤ :=
  A313212.P14429204760756307954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313540.P7329295065648553894

`abs(A008592(n)-(A311924(n)+n))`
-/

namespace A313540.P7329295065648553894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311924 n + (n : ℤ))|

end

end A313540.P7329295065648553894

noncomputable section

/-- A313540: Coordination sequence Gal.6.151.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313540.P7329295065648553894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A313540 (n : ℕ) : ℤ :=
  A313540.P7329295065648553894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A313540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313560.P11035165185372614413

`A312927(2*n)-4*n`
-/

namespace A313560.P11035165185372614413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312927 (2 * n) - (4 * n : ℤ)

end

end A313560.P11035165185372614413

noncomputable section

/-- A313560: Coordination sequence Gal.6.201.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313560.P11035165185372614413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2436 terms. -/
def A313560 (n : ℕ) : ℤ :=
  A313560.P11035165185372614413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2436 terms. -/
def A313560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313583.P10974201529935160222

`A047263(A311257(n)+1)`
-/

namespace A313583.P10974201529935160222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A311257 n + 1).toNat

end

end A313583.P10974201529935160222

noncomputable section

/-- A313583: Coordination sequence Gal.6.345.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313583.P10974201529935160222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2382 terms. -/
def A313583 (n : ℕ) : ℤ :=
  A313583.P10974201529935160222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2382 terms. -/
def A313583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313620.P513798064610013280

`abs(A008592(n)-A313831(n))`
-/

namespace A313620.P513798064610013280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313831 n|

end

end A313620.P513798064610013280

noncomputable section

/-- A313620: Coordination sequence Gal.6.348.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313620.P513798064610013280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313620 (n : ℕ) : ℤ :=
  A313620.P513798064610013280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313683.P3336220210830735973

`A314828(n)+A004396(n-A004396(n))`
-/

namespace A313683.P3336220210830735973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313683.P3336220210830735973

noncomputable section

/-- A313683: Coordination sequence Gal.5.100.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313683.P3336220210830735973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313683 (n : ℕ) : ℤ :=
  A313683.P3336220210830735973.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313684.P7430096167787627216

`A314094(n)-A002264(n+1)`
-/

namespace A313684.P7430096167787627216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n - A002264 (n + 1)

end

end A313684.P7430096167787627216

noncomputable section

/-- A313684: Coordination sequence Gal.6.259.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313684.P7430096167787627216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A313684 (n : ℕ) : ℤ :=
  A313684.P7430096167787627216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A313684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313711.P360949876952997669

`A313572(n)+Δ[A011864(n)]`
-/

namespace A313711.P360949876952997669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313572 n + (f1 (n + 1) - f1 n)

end

end A313711.P360949876952997669

noncomputable section

/-- A313711: Coordination sequence Gal.6.251.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313711.P360949876952997669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A313711 (n : ℕ) : ℤ :=
  A313711.P360949876952997669.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A313711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313729.P4779100435841205839

`abs(A008592(n)-(A311196(n)+n))`
-/

namespace A313729.P4779100435841205839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311196 n + (n : ℤ))|

end

end A313729.P4779100435841205839

noncomputable section

/-- A313729: Coordination sequence Gal.6.134.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313729.P4779100435841205839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A313729 (n : ℕ) : ℤ :=
  A313729.P4779100435841205839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A313729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313752.P1655055158517470603

`A314111(n)-A330025(n-A330025(n))`
-/

namespace A313752.P1655055158517470603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314111 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A313752.P1655055158517470603

noncomputable section

/-- A313752: Coordination sequence Gal.5.300.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313752.P1655055158517470603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313752 (n : ℕ) : ℤ :=
  A313752.P1655055158517470603.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313754.P6499129976907502351

`A314903(n)+A002264(n+1)`
-/

namespace A313754.P6499129976907502351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n + A002264 (n + 1)

end

end A313754.P6499129976907502351

noncomputable section

/-- A313754: Coordination sequence Gal.4.142.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313754.P6499129976907502351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A313754 (n : ℕ) : ℤ :=
  A313754.P6499129976907502351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A313754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313795.P7231696146047566351

`A314898(n)+∑[A021913(A032766(n))]`
-/

namespace A313795.P7231696146047566351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A032766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314898 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313795.P7231696146047566351

noncomputable section

/-- A313795: Coordination sequence Gal.6.647.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313795.P7231696146047566351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A313795 (n : ℕ) : ℤ :=
  A313795.P7231696146047566351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A313795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313869.P2714584555058698184

`abs(10*n-A313572(n))`
-/

namespace A313869.P2714584555058698184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313572 n|

end

end A313869.P2714584555058698184

noncomputable section

/-- A313869: Coordination sequence Gal.6.206.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313869.P2714584555058698184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A313869 (n : ℕ) : ℤ :=
  A313869.P2714584555058698184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A313869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313886.P7964654084848802356

`A314065(n)+A238468(n)`
-/

namespace A313886.P7964654084848802356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314065 n + A238468 n

end

end A313886.P7964654084848802356

noncomputable section

/-- A313886: Coordination sequence Gal.4.143.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313886.P7964654084848802356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A313886 (n : ℕ) : ℤ :=
  A313886.P7964654084848802356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A313886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314043.P3377773668893100370

`A310410(n)+A004525(A004396(n))`
-/

namespace A314043.P3377773668893100370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310410 n + A004525 (A004396 n).toNat

end

end A314043.P3377773668893100370

noncomputable section

/-- A314043: Coordination sequence Gal.6.618.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314043.P3377773668893100370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A314043 (n : ℕ) : ℤ :=
  A314043.P3377773668893100370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A314043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314052.P7255477605862144474

`2*n+A004396(A310413(n))`
-/

namespace A314052.P7255477605862144474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A310413 n).toNat

end

end A314052.P7255477605862144474

noncomputable section

/-- A314052: Coordination sequence Gal.6.639.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314052.P7255477605862144474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314052 (n : ℕ) : ℤ :=
  A314052.P7255477605862144474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314100.P5614151472611851930

`abs(A008592(n)-A314943(n))`
-/

namespace A314100.P5614151472611851930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314943 n|

end

end A314100.P5614151472611851930

noncomputable section

/-- A314100: Coordination sequence Gal.6.329.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314100.P5614151472611851930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A314100 (n : ℕ) : ℤ :=
  A314100.P5614151472611851930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A314100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314144.P11164658127069204478

`A310470(n)+A004396(A004525(n))`
-/

namespace A314144.P11164658127069204478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310470 n + A004396 (A004525 n).toNat

end

end A314144.P11164658127069204478

noncomputable section

/-- A314144: Coordination sequence Gal.6.634.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314144.P11164658127069204478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A314144 (n : ℕ) : ℤ :=
  A314144.P11164658127069204478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A314144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314146.P9880955717233294577

`floor(A313770(n)+(n+1)/3)`
-/

namespace A314146.P9880955717233294577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A313770 n : ℚ) + (n + 1 : ℚ) / 3⌋

end

end A314146.P9880955717233294577

noncomputable section

/-- A314146: Coordination sequence Gal.5.326.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314146.P9880955717233294577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A314146 (n : ℕ) : ℤ :=
  A314146.P9880955717233294577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A314146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314185.P11421094011403531864

`A313688(n)+Δ[floor(C(n, 2)/2)]`
-/

namespace A314185.P11421094011403531864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + (f1 (n + 1) - f1 n)

end

end A314185.P11421094011403531864

noncomputable section

/-- A314185: Coordination sequence Gal.6.205.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314185.P11421094011403531864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A314185 (n : ℕ) : ℤ :=
  A314185.P11421094011403531864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A314185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314222.P14712949776478407909

`A310444(n)+A004396(n)`
-/

namespace A314222.P14712949776478407909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310444 n + A004396 n

end

end A314222.P14712949776478407909

noncomputable section

/-- A314222: Coordination sequence Gal.6.643.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314222.P14712949776478407909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314222 (n : ℕ) : ℤ :=
  A314222.P14712949776478407909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314299.P8107454820952172919

`A315311(n)-A026741(A047486(n+1))`
-/

namespace A314299.P8107454820952172919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315311 n - A026741 (A047486 (n + 1)).toNat

end

end A314299.P8107454820952172919

noncomputable section

/-- A314299: Coordination sequence Gal.3.3.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314299.P8107454820952172919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A314299 (n : ℕ) : ℤ :=
  A314299.P8107454820952172919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A314299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314670.P10679546871853624637

`A330025(A330025(n)+n)+A311440(n)`
-/

namespace A314670.P10679546871853624637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A311440 n

end

end A314670.P10679546871853624637

noncomputable section

/-- A314670: Coordination sequence Gal.5.50.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314670.P10679546871853624637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. -/
def A314670 (n : ℕ) : ℤ :=
  A314670.P10679546871853624637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. -/
def A314670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314688.P9311445367984874380

`A047424(n+1)+A311257(n)-n`
-/

namespace A314688.P9311445367984874380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A311257 n - (n : ℤ))

end

end A314688.P9311445367984874380

noncomputable section

/-- A314688: Coordination sequence Gal.6.254.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314688.P9311445367984874380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A314688 (n : ℕ) : ℤ :=
  A314688.P9311445367984874380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A314688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314725.P3459812041028605119

`A330025(n)+A311552(n)`
-/

namespace A314725.P3459812041028605119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A311552 n

end

end A314725.P3459812041028605119

noncomputable section

/-- A314725: Coordination sequence Gal.5.114.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314725.P3459812041028605119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A314725 (n : ℕ) : ℤ :=
  A314725.P3459812041028605119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A314725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314726.P6332999963874052355

`A311196(n)+A004525(n)`
-/

namespace A314726.P6332999963874052355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + A004525 n

end

end A314726.P6332999963874052355

noncomputable section

/-- A314726: Coordination sequence Gal.6.259.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314726.P6332999963874052355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A314726 (n : ℕ) : ℤ :=
  A314726.P6332999963874052355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A314726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314752.P2908824843405131660

`A314894(n)-Δ[A011864(n)]`
-/

namespace A314752.P2908824843405131660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314894 n - (f1 (n + 1) - f1 n)

end

end A314752.P2908824843405131660

noncomputable section

/-- A314752: Coordination sequence Gal.6.258.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314752.P2908824843405131660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A314752 (n : ℕ) : ℤ :=
  A314752.P2908824843405131660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A314752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314763.P16038055828271141937

`A310355(n)+A102283(n)`
-/

namespace A314763.P16038055828271141937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310355 n + A102283 n

end

end A314763.P16038055828271141937

noncomputable section

/-- A314763: Coordination sequence Gal.5.125.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314763.P16038055828271141937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A314763 (n : ℕ) : ℤ :=
  A314763.P16038055828271141937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A314763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314851.P12082733388595412

`A314896(n)+n-A255347(n)`
-/

namespace A314851.P12082733388595412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n + ((n : ℤ) - A255347 n)

end

end A314851.P12082733388595412

noncomputable section

/-- A314851: Coordination sequence Gal.6.36.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314851.P12082733388595412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314851 (n : ℕ) : ℤ :=
  A314851.P12082733388595412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314884.P14768008204403589957

`A008458(n)+A008576(n)-A311196(n)`
-/

namespace A314884.P14768008204403589957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A311196 n)

end

end A314884.P14768008204403589957

noncomputable section

/-- A314884: Coordination sequence Gal.6.150.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314884.P14768008204403589957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A314884 (n : ℕ) : ℤ :=
  A314884.P14768008204403589957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A314884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314922.P17749781584277462255

`A315036(n)-A002264(A088439(n))`
-/

namespace A314922.P17749781584277462255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n - A002264 (A088439 n).toNat

end

end A314922.P17749781584277462255

noncomputable section

/-- A314922: Coordination sequence Gal.6.474.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314922.P17749781584277462255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A314922 (n : ℕ) : ℤ :=
  A314922.P17749781584277462255.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A314922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314945.P6456220943170628107

`A311458(n)+A004396(n)`
-/

namespace A314945.P6456220943170628107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + A004396 n

end

end A314945.P6456220943170628107

noncomputable section

/-- A314945: Coordination sequence Gal.5.84.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314945.P6456220943170628107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314945 (n : ℕ) : ℤ :=
  A314945.P6456220943170628107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315033.P12102066893602816960

`A314848(n)+Δ[A011862(n)]`
-/

namespace A315033.P12102066893602816960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n + (f1 (n + 1) - f1 n)

end

end A315033.P12102066893602816960

noncomputable section

/-- A315033: Coordination sequence Gal.5.129.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315033.P12102066893602816960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315033 (n : ℕ) : ℤ :=
  A315033.P12102066893602816960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315058.P1696980301468293620

`abs(A008592(n)-A314028(n))`
-/

namespace A315058.P1696980301468293620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314028 n|

end

end A315058.P1696980301468293620

noncomputable section

/-- A315058: Coordination sequence Gal.6.339.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315058.P1696980301468293620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315058 (n : ℕ) : ℤ :=
  A315058.P1696980301468293620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315208.P4336967152151066155

`abs(A008592(n)-A310501(n))`
-/

namespace A315208.P4336967152151066155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310501 n|

end

end A315208.P4336967152151066155

noncomputable section

/-- A315208: Coordination sequence Gal.6.348.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315208.P4336967152151066155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A315208 (n : ℕ) : ℤ :=
  A315208.P4336967152151066155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A315208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315310.P7665288315305926957

`abs(A008592(n)-A310410(n))`
-/

namespace A315310.P7665288315305926957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310410 n|

end

end A315310.P7665288315305926957

noncomputable section

/-- A315310: Coordination sequence Gal.6.618.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315310.P7665288315305926957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A315310 (n : ℕ) : ℤ :=
  A315310.P7665288315305926957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A315310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315343.P4431004882593974719

`abs(A008592(n)-A310369(n))`
-/

namespace A315343.P4431004882593974719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310369 n|

end

end A315343.P4431004882593974719

noncomputable section

/-- A315343: Coordination sequence Gal.5.304.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315343.P4431004882593974719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315343 (n : ℕ) : ℤ :=
  A315343.P4431004882593974719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315474.P12078327233869997343

`A313688(n)+A004525(n)`
-/

namespace A315474.P12078327233869997343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + A004525 n

end

end A315474.P12078327233869997343

noncomputable section

/-- A315474: Coordination sequence Gal.6.341.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315474.P12078327233869997343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315474 (n : ℕ) : ℤ :=
  A315474.P12078327233869997343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315554.P18025128345172279800

`A315411(n)+A315342(n)%A072154(n)`
-/

namespace A315554.P18025128345172279800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315411 n + Int.tmod (A315342 n) (A072154 n)

end

end A315554.P18025128345172279800

noncomputable section

/-- A315554: Coordination sequence Gal.4.146.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315554.P18025128345172279800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A315554 (n : ℕ) : ℤ :=
  A315554.P18025128345172279800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A315554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315647.P605135324631225855

`A315490(n)+A238470(n)`
-/

namespace A315647.P605135324631225855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315490 n + A238470 n

end

end A315647.P605135324631225855

noncomputable section

/-- A315647: Coordination sequence Gal.4.139.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315647.P605135324631225855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A315647 (n : ℕ) : ℤ :=
  A315647.P605135324631225855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A315647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315649.P5476829177456958284

`A314022(n)+A004525(n)`
-/

namespace A315649.P5476829177456958284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314022 n + A004525 n

end

end A315649.P5476829177456958284

noncomputable section

/-- A315649: Coordination sequence Gal.6.626.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315649.P5476829177456958284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2139 terms. -/
def A315649 (n : ℕ) : ℤ :=
  A315649.P5476829177456958284.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2139 terms. -/
def A315649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315651.P9904955794810219643

`A314026(n)+A004525(n)`
-/

namespace A315651.P9904955794810219643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n + A004525 n

end

end A315651.P9904955794810219643

noncomputable section

/-- A315651: Coordination sequence Gal.5.303.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315651.P9904955794810219643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. -/
def A315651 (n : ℕ) : ℤ :=
  A315651.P9904955794810219643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. -/
def A315651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228359.P12401264959366660209

`eq[0, A055671(A061601(n))]+1`
-/

namespace A228359.P12401264959366660209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A228359.P12401264959366660209

noncomputable section

/-- A228359: Numbers m whose 10's complement is not prime, i.e., 10^k-m, where k is the number of digits of m, is not prime.

Offset 1, canonical program `A228359.P12401264959366660209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228359 (n : ℕ) : ℤ :=
  (A228359.P12401264959366660209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229143.P13243434220709827465

`∑{d}[n+1, A117188(#-1)*A259024((n+1)/#)]`
-/

namespace A229143.P13243434220709827465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117188 (d - 1) * A259024 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A229143.P13243434220709827465

noncomputable section

/-- A229143: Expansion of (b(q^3) - b(q)) / 3 in powers of q where b() is a cubic AGM theta function.

Offset 1, canonical program `A229143.P13243434220709827465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229143 (n : ℕ) : ℤ :=
  A229143.P13243434220709827465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230293.P6138807695865852207

`∑[A230294(2*(n+1))-A230294(2*n+1)]`
-/

namespace A230293.P6138807695865852207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230294 (2 * (n + 1)) - A230294 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230293.P6138807695865852207

noncomputable section

/-- A230293: a(n) = Sum_{i=1..n} d(8*i+1) - Sum_{i=1..n} d(4*i+1), where d(n) = A000005(n).

Offset 1, canonical program `A230293.P6138807695865852207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A230293 (n : ℕ) : ℤ :=
  A230293.P6138807695865852207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A230293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233348.P14961469874671804838

`ceil(A289413(n+2)/3)`
-/

namespace A233348.P14961469874671804838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289413 (n + 2) : ℚ) / 3⌉

end

end A233348.P14961469874671804838

noncomputable section

/-- A233348: Numbers n such that 3*n+2 and 3*n-2 are both prime for n multiple of 5 (A008587).

Offset 1, canonical program `A233348.P14961469874671804838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A233348 (n : ℕ) : ℤ :=
  A233348.P14961469874671804838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A233348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235394.P10443878114079601900

`p?[A004682(n+1)]`
-/

namespace A235394.P10443878114079601900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235394.P10443878114079601900

noncomputable section

/-- A235394: Primes whose decimal representation is a valid number in base 8 and interpreted as such is again a prime.

Offset 1, canonical program `A235394.P10443878114079601900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A235394 (n : ℕ) : ℤ :=
  A235394.P10443878114079601900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A235394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235395.P5398117862764279832

`p?[A004683(n+1)]`
-/

namespace A235395.P5398117862764279832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235395.P5398117862764279832

noncomputable section

/-- A235395: Primes whose decimal representation is a valid number in base 9 and interpreted as such is again a prime.

Offset 1, canonical program `A235395.P5398117862764279832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. -/
def A235395 (n : ℕ) : ℤ :=
  A235395.P5398117862764279832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. -/
def A235395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237989.P12319660110514710715

`∩[A377994(n+1), A016825(n)]`
-/

namespace A237989.P12319660110514710715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237989.P12319660110514710715

noncomputable section

/-- A237989: Numbers m such that the numbers of primes, even positive integers and odd positive integers less than or equal to m are all odd.

Offset 1, canonical program `A237989.P12319660110514710715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A237989 (n : ℕ) : ℤ :=
  (A237989.P12319660110514710715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A237989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240689.P7296709912588250351

`A038800(A000040(n+1))`
-/

namespace A240689.P7296709912588250351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (A000040 (n + 1)).toNat

end

end A240689.P7296709912588250351

noncomputable section

/-- A240689: The number of values of the digit k for which prime(n)*10+k is prime.

Offset 1, canonical program `A240689.P7296709912588250351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A240689 (n : ℕ) : ℤ :=
  A240689.P7296709912588250351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A240689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243128.P17897595652621250645

`filter[A389634(n+1), A323239(#)]`
-/

namespace A243128.P17897595652621250645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A243128.P17897595652621250645

noncomputable section

/-- A243128: Squarefree numbers k such that 4k <= sum of squarefree divisors of 4k.

Offset 1, canonical program `A243128.P17897595652621250645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A243128 (n : ℕ) : ℤ :=
  A243128.P17897595652621250645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A243128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255805.P14998431550882228973

`lt[0, A309959(n)]`
-/

namespace A255805.P14998431550882228973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255805.P14998431550882228973

noncomputable section

/-- A255805: Numbers with no zeros in base-8 representation.

Offset 1, canonical program `A255805.P14998431550882228973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A255805 (n : ℕ) : ℤ :=
  (A255805.P14998431550882228973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A255805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256944.P11403239477205446670

`A257282(n+1)²`
-/

namespace A256944.P11403239477205446670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 1) ^ 2

end

end A256944.P11403239477205446670

noncomputable section

/-- A256944: Squares which are not the sums of two consecutive nonsquares.

Offset 1, canonical program `A256944.P11403239477205446670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257282, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256944 (n : ℕ) : ℤ :=
  A256944.P11403239477205446670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257282, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257772.P5607000634846873249

`eq[0, A063524(A350090(n))]`
-/

namespace A257772.P5607000634846873249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A350090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257772.P5607000634846873249

noncomputable section

/-- A257772: Numbers n>=0 such that (n+1)^3 - n^3 = 3*n^2+3*n+1 is not prime.

Offset 1, canonical program `A257772.P5607000634846873249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8036 terms. -/
def A257772 (n : ℕ) : ℤ :=
  (A257772.P5607000634846873249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8036 terms. -/
def A257772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258410.P8287264255903413337

`A031448(n+2)-1`
-/

namespace A258410.P8287264255903413337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031448 (n + 2) - 1

end

end A258410.P8287264255903413337

noncomputable section

/-- A258410: Nonnegative integers with an equal number of occurrences of all digits in bijective base-2 numeration.

Offset 1, canonical program `A258410.P8287264255903413337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258410 (n : ℕ) : ℤ :=
  A258410.P8287264255903413337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258775.P1042665196751657827

`eq[1, A289356(A000203(n+1))]+1`
-/

namespace A258775.P1042665196751657827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258775.P1042665196751657827

noncomputable section

/-- A258775: Numbers n such that 1 + sigma(n)+ sigma(n)^2 is prime.

Offset 1, canonical program `A258775.P1042665196751657827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 712 terms. -/
def A258775 (n : ℕ) : ℤ :=
  (A258775.P1042665196751657827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 712 terms. -/
def A258775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259022.P10610587729386923475

`A259024(2*n+1)`
-/

namespace A259022.P10610587729386923475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (2 * n + 1)

end

end A259022.P10610587729386923475

noncomputable section

/-- A259022: Period 9 sequence [ 1, -1, -1, 1, 0, -1, 1, 1, -1, ...].

Offset 0, canonical program `A259022.P10610587729386923475`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259024, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259022 (n : ℕ) : ℤ :=
  A259022.P10610587729386923475.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259024, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259185.P964314148643136700

`eq[1, A289356(A039653(n))]`
-/

namespace A259185.P964314148643136700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259185.P964314148643136700

noncomputable section

/-- A259185: Numbers n such that 1 - sigma(n) + sigma(n)^2 is prime.

Offset 1, canonical program `A259185.P964314148643136700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A259185 (n : ℕ) : ℤ :=
  (A259185.P964314148643136700.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A259185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259775.P2988660272303760513

`A029644(A184676(n+2))`
-/

namespace A259775.P2988660272303760513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 (A184676 (n + 2)).toNat

end

end A259775.P2988660272303760513

noncomputable section

/-- A259775: Stepped path in P(k,n) array of k-th partial sums of squares (A000290).

Offset 1, canonical program `A259775.P2988660272303760513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A259775 (n : ℕ) : ℤ :=
  A259775.P2988660272303760513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A259775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262683.P9302618000557413525

`1-A262684(n+1)`
-/

namespace A262683.P9302618000557413525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A262684 (n + 1)

end

end A262683.P9302618000557413525

noncomputable section

/-- A262683: Characteristic function for A182859.

Offset 1, canonical program `A262683.P9302618000557413525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262683 (n : ℕ) : ℤ :=
  A262683.P9302618000557413525.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A264387.P2910925617492252044

`(A039956(n+1)-2)/4`
-/

namespace A264387.P2910925617492252044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039956 (n + 1) - 2 : ℚ) / 4

end

end A264387.P2910925617492252044

noncomputable section

/-- A264387: 2*(1+2*a(n)) is the n-th even squarefree number A039956(n), n >= 1.

Offset 1, canonical program `A264387.P2910925617492252044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264387 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A264387.P2910925617492252044.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265721.P16975176845016475372

`and(A266176(n), A266668(n))`
-/

namespace A265721.P16975176845016475372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266176 n) (A266668 n)

end

end A265721.P16975176845016475372

noncomputable section

/-- A265721: Decimal representation of the n-th iteration of the "Rule 1" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A265721.P16975176845016475372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A265721 (n : ℕ) : ℤ :=
  A265721.P16975176845016475372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A265721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271859.P17621566559710261846

`∑[and(2, -A312927(n+1))]-n`
-/

namespace A271859.P17621566559710261846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-A312927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A271859.P17621566559710261846

noncomputable section

/-- A271859: Six steps forward, five steps back.

Offset 0, canonical program `A271859.P17621566559710261846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A271859 (n : ℕ) : ℤ :=
  A271859.P17621566559710261846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A271859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273324.P15973917214182213865

`A000196(1+A278491(n+1))`
-/

namespace A273324.P15973917214182213865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (1 + A278491 (n + 1)).toNat

end

end A273324.P15973917214182213865

noncomputable section

/-- A273324: Integers m such that m^2 + 3 is the sum of 4 but no fewer nonzero squares.

Offset 1, canonical program `A273324.P15973917214182213865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273324 (n : ℕ) : ℤ :=
  A273324.P15973917214182213865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277934.P4622125546588062441

`and(A281217(n), A282388(n))`
-/

namespace A277934.P4622125546588062441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281217 n) (A282388 n)

end

end A277934.P4622125546588062441

noncomputable section

/-- A277934: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 6", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277934.P4622125546588062441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A277934 (n : ℕ) : ℤ :=
  A277934.P4622125546588062441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A277934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279071.P17899804211645114015

`∪[A023162(n+1), A023173(n+1)]`
-/

namespace A279071.P17899804211645114015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279071.P17899804211645114015

noncomputable section

/-- A279071: Numbers k such that Fibonacci(k) == +-1 (mod k).

Offset 1, canonical program `A279071.P17899804211645114015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279071 (n : ℕ) : ℤ :=
  (A279071.P17899804211645114015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279877.P16277548362096035639

`A279879(n)+A282415(n)-A282417(n)`
-/

namespace A279877.P16277548362096035639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279879 n + (A282415 n - A282417 n)

end

end A279877.P16277548362096035639

noncomputable section

/-- A279877: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A279877.P16277548362096035639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A279877 (n : ℕ) : ℤ :=
  A279877.P16277548362096035639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A279877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284236.P9099022732925578286

`lcm(A284235(n), A287742(A266722(n)))`
-/

namespace A284236.P9099022732925578286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A284235 n) (A287742 (A266722 n).toNat)

end

end A284236.P9099022732925578286

noncomputable section

/-- A284236: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284236.P9099022732925578286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A284236 (n : ℕ) : ℤ :=
  (A284236.P9099022732925578286.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A284236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284789.P6683369917162461841

`char[A284791(n+1)-1]`
-/

namespace A284789.P6683369917162461841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284791 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284789.P6683369917162461841

noncomputable section

/-- A284789: {1001->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A284789.P6683369917162461841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284789 (n : ℕ) : ℤ :=
  (A284789.P6683369917162461841.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285963.P5606189406368919503

`char[A285965(n+1)-1]`
-/

namespace A285963.P5606189406368919503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285965 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285963.P5606189406368919503

noncomputable section

/-- A285963: {11->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285963.P5606189406368919503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285963 (n : ℕ) : ℤ :=
  (A285963.P5606189406368919503.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285964.P643415714002808842

`comp[A285965(n+1)-1]+1`
-/

namespace A285964.P643415714002808842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285965 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285964.P643415714002808842

noncomputable section

/-- A285964: Positions of 0 in A285963; complement of A285965.

Offset 1, canonical program `A285964.P643415714002808842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285964 (n : ℕ) : ℤ :=
  (A285964.P643415714002808842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289839.P232396368753379632

`∩[A007641(n+1), A127576(n+1)]`
-/

namespace A289839.P232396368753379632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P232396368753379632

noncomputable section

/-- A289839: Primes of the form 8*n^2+8*n+31.

Offset 1, canonical program `A289839.P232396368753379632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A289839 (n : ℕ) : ℤ :=
  (A289839.P232396368753379632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A289839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298008.P6229877649389155224

`A038800(n)+10*n`
-/

namespace A298008.P6229877649389155224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n + (10 * n : ℤ)

end

end A298008.P6229877649389155224

noncomputable section

/-- A298008: a(n) = f(n-1,n) + 10*(n-1), where f(a,b) is the number of primes in the range [10*a,10*b].

Offset 1, canonical program `A298008.P6229877649389155224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298008 (n : ℕ) : ℤ :=
  A298008.P6229877649389155224.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298008.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A298637.P8725967472440177117

`(A082375(n)+1)*A008315(n)`
-/

namespace A298637.P8725967472440177117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082375 n + 1) * A008315 n

end

end A298637.P8725967472440177117

noncomputable section

/-- A298637: Triangular array of a Catalan number variety: T(n,k) is the number of words consisting of n parentheses containing k well-balanced pairs.

Offset 0, canonical program `A298637.P8725967472440177117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298637 (n : ℕ) : ℤ :=
  A298637.P8725967472440177117.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301676.P12949450043224111641

`A301722(n)-A186101(n)`
-/

namespace A301676.P12949450043224111641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - A186101 n

end

end A301676.P12949450043224111641

noncomputable section

/-- A301676: Coordination sequence for node of type V2 in "krs" 2-D tiling (or net).

Offset 0, canonical program `A301676.P12949450043224111641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A301676 (n : ℕ) : ℤ :=
  A301676.P12949450043224111641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A301676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308496.P3784628210705084375

`A000027(eq[1, gcd(15, A309959(n))])`
-/

namespace A308496.P3784628210705084375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 15 (A309959 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A308496.P3784628210705084375

noncomputable section

/-- A308496: Numbers with digits 1,2,4,7 when written in base 8.

Offset 1, canonical program `A308496.P3784628210705084375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A308496 (n : ℕ) : ℤ :=
  A308496.P3784628210705084375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A308496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310378.P15514030855777520600

`2*A311804(2*n)-A008458(2*n)`
-/

namespace A310378.P15514030855777520600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311804 (2 * n) - A008458 (2 * n)

end

end A310378.P15514030855777520600

noncomputable section

/-- A310378: Coordination sequence Gal.6.320.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310378.P15514030855777520600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1299 terms. -/
def A310378 (n : ℕ) : ℤ :=
  A310378.P15514030855777520600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1299 terms. -/
def A310378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310408.P15738370817569291537

`2*A312927(n)-A008574(n)`
-/

namespace A310408.P15738370817569291537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312927 n - A008574 n

end

end A310408.P15738370817569291537

noncomputable section

/-- A310408: Coordination sequence Gal.6.196.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310408.P15738370817569291537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2455 terms. -/
def A310408 (n : ℕ) : ℤ :=
  A310408.P15738370817569291537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2455 terms. -/
def A310408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310505.P8653001486545686443

`abs(A008592(n)-A315202(n))`
-/

namespace A310505.P8653001486545686443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315202 n|

end

end A310505.P8653001486545686443

noncomputable section

/-- A310505: Coordination sequence Gal.6.330.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310505.P8653001486545686443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A310505 (n : ℕ) : ℤ :=
  A310505.P8653001486545686443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A310505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313680.P17138657541205040173

`A314091(n)-A002264(n+1)`
-/

namespace A313680.P17138657541205040173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314091 n - A002264 (n + 1)

end

end A313680.P17138657541205040173

noncomputable section

/-- A313680: Coordination sequence Gal.6.120.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313680.P17138657541205040173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313680 (n : ℕ) : ℤ :=
  A313680.P17138657541205040173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314089.P3546042962349282069

`A313474(n)+∑[A021913(n)]`
-/

namespace A314089.P3546042962349282069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314089.P3546042962349282069

noncomputable section

/-- A314089: Coordination sequence Gal.6.260.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314089.P3546042962349282069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A314089 (n : ℕ) : ℤ :=
  A314089.P3546042962349282069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A314089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314239.P6616137567385777595

`A311420(n)+A047273(n+1)`
-/

namespace A314239.P6616137567385777595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311420 n + A047273 (n + 1)

end

end A314239.P6616137567385777595

noncomputable section

/-- A314239: Coordination sequence Gal.6.642.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314239.P6616137567385777595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314239 (n : ℕ) : ℤ :=
  A314239.P6616137567385777595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315170.P21766199213765349

`2*A314669(n)-A008574(n)`
-/

namespace A315170.P21766199213765349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314669 n - A008574 n

end

end A315170.P21766199213765349

noncomputable section

/-- A315170: Coordination sequence Gal.6.119.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315170.P21766199213765349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 846 terms. -/
def A315170 (n : ℕ) : ℤ :=
  A315170.P21766199213765349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 846 terms. -/
def A315170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315400.P9155162697410985556

`A313474(n)+n-∑[A131735(n)]`
-/

namespace A315400.P9155162697410985556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315400.P9155162697410985556

noncomputable section

/-- A315400: Coordination sequence Gal.6.256.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315400.P9155162697410985556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A315400 (n : ℕ) : ℤ :=
  A315400.P9155162697410985556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A315400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315683.P6946226476358261575

`A313474(n)+n`
-/

namespace A315683.P6946226476358261575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + (n : ℤ)

end

end A315683.P6946226476358261575

noncomputable section

/-- A315683: Coordination sequence Gal.6.634.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315683.P6946226476358261575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A315683 (n : ℕ) : ℤ :=
  A315683.P6946226476358261575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A315683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287194.P11056681714251016849

`xor(A000035(n), A290192(n*A000035(n)))`
-/

namespace A287194.P11056681714251016849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A290192 ((n : ℤ) * A000035 n).toNat)

end

end A287194.P11056681714251016849

noncomputable section

/-- A287194: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287194.P11056681714251016849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A287194 (n : ℕ) : ℤ :=
  A287194.P11056681714251016849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A287194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311125.P2083360044693346749

`A314669(n)-A004525(A004525(A004525(n)))`
-/

namespace A311125.P2083360044693346749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n - A004525 (A004525 (A004525 n).toNat).toNat

end

end A311125.P2083360044693346749

noncomputable section

/-- A311125: Coordination sequence Gal.6.419.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311125.P2083360044693346749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2602 terms. -/
def A311125 (n : ℕ) : ℤ :=
  A311125.P2083360044693346749.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2602 terms. -/
def A311125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314253.P2574229848549978750

`abs(A008592(n)-A314669(n))`
-/

namespace A314253.P2574229848549978750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314669 n|

end

end A314253.P2574229848549978750

noncomputable section

/-- A314253: Coordination sequence Gal.6.627.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314253.P2574229848549978750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1966 terms. -/
def A314253 (n : ℕ) : ℤ :=
  A314253.P2574229848549978750.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1966 terms. -/
def A314253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217575.P8898210276207211588

`A063657(n+1)-1`
-/

namespace A217575.P8898210276207211588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1) - 1

end

end A217575.P8898210276207211588

noncomputable section

/-- A217575: Numbers n such that floor(sqrt(n)) = floor(n/floor(sqrt(n)))-1.

Offset 1, canonical program `A217575.P8898210276207211588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063657, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217575 (n : ℕ) : ℤ :=
  A217575.P8898210276207211588.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063657, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219637.P9877023548532234555

`A003622(n+1)-A143299(n+1)`
-/

namespace A219637.P9877023548532234555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) - A143299 (n + 1)

end

end A219637.P9877023548532234555

noncomputable section

/-- A219637: Numbers that occur twice in A219641.

Offset 1, canonical program `A219637.P9877023548532234555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219637 (n : ℕ) : ℤ :=
  A219637.P9877023548532234555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220116.P3171378606926799839

`eq[A063787(n+1), A143299(n+1)]`
-/

namespace A220116.P3171378606926799839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220116.P3171378606926799839

noncomputable section

/-- A220116: Numbers k such that the number of 1's in binary expansion of k equals the number of terms in Zeckendorf representation of k.

Offset 1, canonical program `A220116.P3171378606926799839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1689 terms. -/
def A220116 (n : ℕ) : ℤ :=
  (A220116.P3171378606926799839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1689 terms. -/
def A220116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221280.P2827351552118637345

`eq[A066829(n+2), A066829(n+1)]+1`
-/

namespace A221280.P2827351552118637345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A221280.P2827351552118637345

noncomputable section

/-- A221280: Numbers m such that lambda(m) = lambda(m+1), where lambda(n) = A008836(n) is the Liouville function.

Offset 1, canonical program `A221280.P2827351552118637345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221280 (n : ℕ) : ℤ :=
  (A221280.P2827351552118637345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226567.P14814399466170142573

`eq[A003982(n), A101264(n)]`
-/

namespace A226567.P14814399466170142573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226567.P14814399466170142573

noncomputable section

/-- A226567: Numbers k such that 2*k+1 is neither a square nor a prime.

Offset 1, canonical program `A226567.P14814399466170142573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226567 (n : ℕ) : ℤ :=
  (A226567.P14814399466170142573.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227428.P16365958953958314226

`A006047(n)-A206424(n)`
-/

namespace A227428.P16365958953958314226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n - A206424 n

end

end A227428.P16365958953958314226

noncomputable section

/-- A227428: Number of twos in row n of triangle A083093.

Offset 0, canonical program `A227428.P16365958953958314226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A206424, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227428 (n : ℕ) : ℤ :=
  A227428.P16365958953958314226.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A206424, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227696.P2497490565356281867

`(-1)^n*A033687(n)`
-/

namespace A227696.P2497490565356281867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A033687 n

end

end A227696.P2497490565356281867

noncomputable section

/-- A227696: Expansion of f(x^3)^3 / f(x) in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A227696.P2497490565356281867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227696 (n : ℕ) : ℤ :=
  A227696.P2497490565356281867.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227696.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229022.P3469744477585422242

`A075653(n+1)-A010848(n+1)`
-/

namespace A229022.P3469744477585422242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - A010848 (n + 1)

end

end A229022.P3469744477585422242

noncomputable section

/-- A229022: a(n) = sopf(n) + n/rad(n).

Offset 1, canonical program `A229022.P3469744477585422242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229022 (n : ℕ) : ℤ :=
  A229022.P3469744477585422242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230877.P5743359450081405431

`A000120(n)*A070939(n)-A073642(n)`
-/

namespace A230877.P5743359450081405431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A070939 n - A073642 n

end

end A230877.P5743359450081405431

noncomputable section

/-- A230877: If n = Sum_{i=0..m} c(i)*2^i, c(i) = 0 or 1, then a(n) = Sum_{i=0..m} (m+1-i)*c(i).

Offset 0, canonical program `A230877.P5743359450081405431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A230877 (n : ℕ) : ℤ :=
  A230877.P5743359450081405431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A230877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231086.P15220536245985747541

`A005101(eq[2, A125115(n+1)]+1)`
-/

namespace A231086.P15220536245985747541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231086.P15220536245985747541

noncomputable section

/-- A231086: Initial members of abundant twins, i.e., values of k such that (k, k+2) are both abundant numbers.

Offset 1, canonical program `A231086.P15220536245985747541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A231086 (n : ℕ) : ℤ :=
  A231086.P15220536245985747541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A231086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233931.P3085312143408834757

`A011371(n)-A233905(n)`
-/

namespace A233931.P3085312143408834757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A233905 n

end

end A233931.P3085312143408834757

noncomputable section

/-- A233931: a(2n) = a(n) + n, a(2n+1) = a(n), with a(0)=0.

Offset 0, canonical program `A233931.P3085312143408834757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233931 (n : ℕ) : ℤ :=
  A233931.P3085312143408834757.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240471.P16559691401638773445

`(A038040(n+1)-A106315(n+1))/A000203(n+1)`
-/

namespace A240471.P16559691401638773445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) - A106315 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A240471.P16559691401638773445

noncomputable section

/-- A240471: Integer part of (n * A000005(n) / A000203(n)).

Offset 1, canonical program `A240471.P16559691401638773445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106315, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240471 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240471.P16559691401638773445.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106315, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248057.P14508397276911672393

`A157971(n+1)+1`
-/

namespace A248057.P14508397276911672393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157971 (n + 1) + 1

end

end A248057.P14508397276911672393

noncomputable section

/-- A248057: Positions of 1,1 in the Thue-Morse sequence (A010060).

Offset 1, canonical program `A248057.P14508397276911672393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248057 (n : ℕ) : ℤ :=
  A248057.P14508397276911672393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A250477.P16411795154775873264

`A120941(n+1)+3`
-/

namespace A250477.P16411795154775873264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120941 (n + 1) + 3

end

end A250477.P16411795154775873264

noncomputable section

/-- A250477: Number of times prime(n) (the n-th prime) occurs as the least prime factor among numbers 1 .. (prime(n)^2 * prime(n+1)): a(n) = A078898(A251720(n)).

Offset 1, canonical program `A250477.P16411795154775873264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2390 terms. -/
def A250477 (n : ℕ) : ℤ :=
  A250477.P16411795154775873264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2390 terms. -/
def A250477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266399.P1095466878509301204

`A188163(A088359(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266399.P1095466878509301204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (A088359 (n + 1)).toNat

end

end A266399.P1095466878509301204

noncomputable section

/-- A266399: a(n) = A188163(A088359(n)); positions where A004001 obtains unique values.

Offset 1, canonical program `A266399.P1095466878509301204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088359, A188163, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266399 (n : ℕ) : ℤ :=
  A266399.P1095466878509301204.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088359, A188163, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266399.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A272902.P2391986581813364604

`eq[0, A101264(3*n)]+1`
-/

namespace A272902.P2391986581813364604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272902.P2391986581813364604

noncomputable section

/-- A272902: Numbers k such that 6*k - 5 is not prime.

Offset 1, canonical program `A272902.P2391986581813364604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272902 (n : ℕ) : ℤ :=
  (A272902.P2391986581813364604.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274437.P16973748106690964927

`lt[A005090(n+1), A005088(n+1)]+1`
-/

namespace A274437.P16973748106690964927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A274437.P16973748106690964927

noncomputable section

/-- A274437: Numbers having more distinct prime factors of form 3*k+1 than of the form 3*k+2.

Offset 1, canonical program `A274437.P16973748106690964927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A274437 (n : ℕ) : ℤ :=
  (A274437.P16973748106690964927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A274437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282282.P15375378364003862573

`A024450(n+1)%∑[(n+1)²]`
-/

namespace A282282.P15375378364003862573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024450 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A282282.P15375378364003862573

noncomputable section

/-- A282282: Remainder when sum of squares of the first n primes is divided by n-th square pyramidal number.

Offset 1, canonical program `A282282.P15375378364003862573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282282 (n : ℕ) : ℤ :=
  A282282.P15375378364003862573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283981.P14600652629483997425

`A029931(n)-A280700(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283981.P14600652629483997425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A280700 n

end

end A283981.P14600652629483997425

noncomputable section

/-- A283981: a(n) = A029931(n) - A280700(n).

Offset 0, canonical program `A283981.P14600652629483997425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283981 (n : ℕ) : ℤ :=
  A283981.P14600652629483997425.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284118.P3814757859129945566

`A048250(n+1)-A008472(n+1)`
-/

namespace A284118.P3814757859129945566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A008472 (n + 1)

end

end A284118.P3814757859129945566

noncomputable section

/-- A284118: Sum of nonprime squarefree divisors of n.

Offset 1, canonical program `A284118.P3814757859129945566`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284118 (n : ℕ) : ℤ :=
  A284118.P3814757859129945566.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288625.P5745602300368746224

`2*n+3-A143299(n+1)`
-/

namespace A288625.P5745602300368746224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A143299 (n + 1)

end

end A288625.P5745602300368746224

noncomputable section

/-- A288625: Positions of 0 in A288375; complement of A283794.

Offset 1, canonical program `A288625.P5745602300368746224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288625 (n : ℕ) : ℤ :=
  A288625.P5745602300368746224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292257.P4438175682071365739

`A192895(n+1)+A000120(n+1)`
-/

namespace A292257.P4438175682071365739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (n + 1) + A000120 (n + 1)

end

end A292257.P4438175682071365739

noncomputable section

/-- A292257: a(n) is the total number of 1's in binary expansion of all proper divisors of n.

Offset 1, canonical program `A292257.P4438175682071365739`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292257 (n : ℕ) : ℤ :=
  A292257.P4438175682071365739.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293359.P17443390046892914447

`∑[A293361(A057428(n)+n)]`
-/

namespace A293359.P17443390046892914447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293361 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293359.P17443390046892914447

noncomputable section

/-- A293359: Greatest integer k such that k/2^n < e^2.

Offset 0, canonical program `A293359.P17443390046892914447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A293359 (n : ℕ) : ℤ :=
  A293359.P17443390046892914447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A293359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293901.P14790839592899706069

`A050449(n+1)%(n+1)`
-/

namespace A293901.P14790839592899706069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050449 (n + 1)) (n + 1 : ℤ)

end

end A293901.P14790839592899706069

noncomputable section

/-- A293901: Sum of proper divisors of n of the form 4k+1.

Offset 1, canonical program `A293901.P14790839592899706069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293901 (n : ℕ) : ℤ :=
  A293901.P14790839592899706069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294023.P12009949958102323992

`(n+1)*A056172(n+1)-2*A063960(n+1)`
-/

namespace A294023.P12009949958102323992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056172 (n + 1) - 2 * A063960 (n + 1)

end

end A294023.P12009949958102323992

noncomputable section

/-- A294023: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the smaller part prime.

Offset 1, canonical program `A294023.P12009949958102323992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056172, A063960, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294023 (n : ℕ) : ℤ :=
  A294023.P12009949958102323992.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056172, A063960, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294023.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294602.P13576382201682243121

`A056171(n+1)-A010051(n+1)`
-/

namespace A294602.P13576382201682243121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (n + 1) - A010051 (n + 1)

end

end A294602.P13576382201682243121

noncomputable section

/-- A294602: a(n) = pi(n-1) - pi(floor(n/2)), where pi is A000720.

Offset 1, canonical program `A294602.P13576382201682243121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A056171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294602 (n : ℕ) : ℤ :=
  A294602.P13576382201682243121.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A056171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296020.P7139076584926301415

`∑[A101264(Δ[n²])]`
-/

namespace A296020.P7139076584926301415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P7139076584926301415

noncomputable section

/-- A296020: Number of primes of the form 4*k+3 <= 4*n+3.

Offset 0, canonical program `A296020.P7139076584926301415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296020 (n : ℕ) : ℤ :=
  A296020.P7139076584926301415.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296021.P11845768645576456076

`∑[A101264(2*n)]`
-/

namespace A296021.P11845768645576456076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P11845768645576456076

noncomputable section

/-- A296021: Number of primes of the form 4*k+1 <= 4*n+1.

Offset 0, canonical program `A296021.P11845768645576456076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296021 (n : ℕ) : ℤ :=
  A296021.P11845768645576456076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296199.P13100712386680932036

`A024450(n+1)/gcd(A024450(n+1), A117962(n+1))`
-/

namespace A296199.P13100712386680932036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024450 (n + 1) : ℚ) / (Int.gcd (A024450 (n + 1)) (A117962 (n + 1)) : ℚ)

end

end A296199.P13100712386680932036

noncomputable section

/-- A296199: Numerator of the contraharmonic mean of the first n primes.

Offset 1, canonical program `A296199.P13100712386680932036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296199 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296199.P13100712386680932036.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299150.P3795475608102794918

`A046644(n+1)/A006519(n+1)`
-/

namespace A299150.P3795475608102794918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A299150.P3795475608102794918

noncomputable section

/-- A299150: Denominators of the positive solution to n = Sum_{d|n} a(d) * a(n/d).

Offset 1, canonical program `A299150.P3795475608102794918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299150 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A299150.P3795475608102794918.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300719.P3463294975664283293

`A003557(n+1)-A300717(n+1)`
-/

namespace A300719.P3463294975664283293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) - A300717 (n + 1)

end

end A300719.P3463294975664283293

noncomputable section

/-- A300719: Difference between A003557 (n divided by largest squarefree divisor of n) and its Möbius transform.

Offset 1, canonical program `A300719.P3463294975664283293`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300719 (n : ℕ) : ℤ :=
  A300719.P3463294975664283293.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304094.P7370092225823776362

`A304092(n+1)-A059841(n+1)`
-/

namespace A304094.P7370092225823776362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) - A059841 (n + 1)

end

end A304094.P7370092225823776362

noncomputable section

/-- A304094: Number of Lucas numbers (A000204: 1, 3, 4, 7, 11, ... excluding 2) that divide n.

Offset 1, canonical program `A304094.P7370092225823776362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304094 (n : ℕ) : ℤ :=
  A304094.P7370092225823776362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304094.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A304408.P687258008927875395

`A000005(n+1)*A173557(n+1)`
-/

namespace A304408.P687258008927875395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A173557 (n + 1)

end

end A304408.P687258008927875395

noncomputable section

/-- A304408: If n = Product (p_j^k_j) then a(n) = Product ((p_j - 1)*(k_j + 1)).

Offset 1, canonical program `A304408.P687258008927875395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304408 (n : ℕ) : ℤ :=
  A304408.P687258008927875395.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305152.P2584362092211639077

`A112329(n+1)-A056924(n+1)`
-/

namespace A305152.P2584362092211639077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1) - A056924 (n + 1)

end

end A305152.P2584362092211639077

noncomputable section

/-- A305152: Expansion of Sum_{k>0} x^(k^2) / (1 + x^k).

Offset 1, canonical program `A305152.P2584362092211639077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305152 (n : ℕ) : ℤ :=
  A305152.P2584362092211639077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305436.P441139788158163296

`A305435(n+1)+A209229(n)`
-/

namespace A305436.P441139788158163296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305435 (n + 1) + A209229 n

end

end A305436.P441139788158163296

noncomputable section

/-- A305436: Number of divisors of n of the form 2^k + 1 for k >= 0.

Offset 1, canonical program `A305436.P441139788158163296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A305435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305436 (n : ℕ) : ℤ :=
  A305436.P441139788158163296.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A305435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305436.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305818.P15738816487274573770

`∑{d}[n+1, A101264(#)]-A101264(n+1)`
-/

namespace A305818.P15738816487274573770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101264 d - A101264 (n + 1)

end

end A305818.P15738816487274573770

noncomputable section

/-- A305818: Number of proper divisors d of n such that 2d+1 is a prime.

Offset 1, canonical program `A305818.P15738816487274573770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305818 (n : ℕ) : ℤ :=
  A305818.P15738816487274573770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306376.P6321835150904260098

`A108958(n)+a(n-1)` with `a(0)=0`
-/

namespace A306376.P6321835150904260098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A108958 n + a (n - 1)

end

end A306376.P6321835150904260098

noncomputable section

/-- A306376: Sum of the 2 X 2 minors in the n X n Pascal matrix.

Offset 0, canonical program `A306376.P6321835150904260098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A306376 (n : ℕ) : ℤ :=
  A306376.P6321835150904260098.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A306376.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A307989.P2573378976177465253

`A095117(n)-∑[A101264(n)]`
-/

namespace A307989.P2573378976177465253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307989.P2573378976177465253

noncomputable section

/-- A307989: a(n) = n - pi(2*n) + pi(n-1), where pi is the prime counting function.

Offset 1, canonical program `A307989.P2573378976177465253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307989 (n : ℕ) : ℤ :=
  A307989.P2573378976177465253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308754.P4482175284400131053

`a(n-1)+A101264(n+1)` with `a(0)=0`
-/

namespace A308754.P4482175284400131053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A101264 (n + 1)

end

end A308754.P4482175284400131053

noncomputable section

/-- A308754: a(0) = 0, a(n) = a(n-1) + 1 if 2*n + 3 is prime, otherwise a(n) = a(n-1).

Offset 0, canonical program `A308754.P4482175284400131053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308754 (n : ℕ) : ℤ :=
  A308754.P4482175284400131053.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216864.P16380076787172319000

`A046951(A007955(n+1))`
-/

namespace A216864.P16380076787172319000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A007955 (n + 1)).toNat

end

end A216864.P16380076787172319000

noncomputable section

/-- A216864: Number of squares that divide the product of divisors of n.

Offset 1, canonical program `A216864.P16380076787172319000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216864 (n : ℕ) : ℤ :=
  A216864.P16380076787172319000.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224915.P15850589756246024201

`(A001196(n)-n)/2`
-/

namespace A224915.P15850589756246024201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 n - (n : ℤ) : ℚ) / 2

end

end A224915.P15850589756246024201

noncomputable section

/-- A224915: a(n) = Sum_{k=0..n} n XOR k where XOR is the bitwise logical exclusive-or operator.

Offset 0, canonical program `A224915.P15850589756246024201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224915 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A224915.P15850589756246024201.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224924.P9265397642440561853

`∑[6*A213673(n)+n]`
-/

namespace A224924.P9265397642440561853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A213673 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224924.P9265397642440561853

noncomputable section

/-- A224924: Sum_{i=0..n} Sum_{j=0..n} (i AND j), where AND is the binary logical AND operator.

Offset 0, canonical program `A224924.P9265397642440561853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A224924 (n : ℕ) : ℤ :=
  A224924.P9265397642440561853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A224924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227095.P16618635948200259415

`eq[9, A173528(n+1)]`
-/

namespace A227095.P16618635948200259415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227095.P16618635948200259415

noncomputable section

/-- A227095: Numbers whose base-8 sum of digits is 8.

Offset 1, canonical program `A227095.P16618635948200259415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A227095 (n : ℕ) : ℤ :=
  (A227095.P16618635948200259415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A227095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227992.P16096606270884194142

`and(A132679(n+1)-1, A179888(n+1))`
-/

namespace A227992.P16096606270884194142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132679 (n + 1) - 1) (A179888 (n + 1))

end

end A227992.P16096606270884194142

noncomputable section

/-- A227992: Numbers m such that the continuants of their binary representations defined in A072347 equal 1.

Offset 1, canonical program `A227992.P16096606270884194142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227992 (n : ℕ) : ℤ :=
  A227992.P16096606270884194142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229527.P13631613153917723795

`A062028(a(n-1))+1` with `a(0)=1`
-/

namespace A229527.P13631613153917723795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062028 (a (n - 1)).toNat + 1

end

end A229527.P13631613153917723795

noncomputable section

/-- A229527: Start with 1, skip (sum of digits of n) numbers, accept next number.

Offset 1, canonical program `A229527.P13631613153917723795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A229527 (n : ℕ) : ℤ :=
  A229527.P13631613153917723795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A229527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231682.P14854101076037231145

`∑[(A173528(n+1)-1)^3]`
-/

namespace A231682.P14854101076037231145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173528 (n + 1) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P14854101076037231145

noncomputable section

/-- A231682: a(n) = Sum_{i=0..n} digsum_8(i)^3, where digsum_8(i) = A053829(i).

Offset 0, canonical program `A231682.P14854101076037231145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231682 (n : ℕ) : ℤ :=
  A231682.P14854101076037231145.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232709.P8146322751901021874

`eq[A010879(A007954(n)), A053837(n)]`
-/

namespace A232709.P8146322751901021874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232709.P8146322751901021874

noncomputable section

/-- A232709: Nonnegative integers such that the sum of digits mod 10 equals the product of digits mod 10.

Offset 1, canonical program `A232709.P8146322751901021874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A232709 (n : ℕ) : ℤ :=
  (A232709.P8146322751901021874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A232709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235227.P8259672704330077809

`∩[A028838(n+1), A017245(n)]`
-/

namespace A235227.P8259672704330077809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P8259672704330077809

noncomputable section

/-- A235227: Numbers whose sum of digits is 16.

Offset 1, canonical program `A235227.P8259672704330077809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3675 terms. -/
def A235227 (n : ℕ) : ℤ :=
  (A235227.P8259672704330077809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3675 terms. -/
def A235227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240754.P6827576315638044596

`eq[1, A240752(n+1)+2]`
-/

namespace A240754.P6827576315638044596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240754.P6827576315638044596

noncomputable section

/-- A240754: Numbers k with digit_sum(k*k) - 1 = digit_sum((k+1)*(k+1)).

Offset 1, canonical program `A240754.P6827576315638044596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A240754 (n : ℕ) : ℤ :=
  (A240754.P6827576315638044596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A240754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242677.P4071707202624245255

`eq[A105700(n)², A077809(A257088(n))]`
-/

namespace A242677.P4071707202624245255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077809 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242677.P4071707202624245255

noncomputable section

/-- A242677: Semiprimes whose binary representation, read in decimal, is also semiprime.

Offset 1, canonical program `A242677.P4071707202624245255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A242677 (n : ℕ) : ℤ :=
  (A242677.P4071707202624245255.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A242677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243586.P11937443837050676484

`p?[n*A010051(A007953(n)+3)]`
-/

namespace A243586.P11937443837050676484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (A007953 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243586.P11937443837050676484

noncomputable section

/-- A243586: Primes p such that sum of digits + 3 is prime.

Offset 1, canonical program `A243586.P11937443837050676484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A243586 (n : ℕ) : ℤ :=
  A243586.P11937443837050676484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A243586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243617.P13077696560610616016

`∩[A052382(n+1), A243615(n+1)]`
-/

namespace A243617.P13077696560610616016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243617.P13077696560610616016

noncomputable section

/-- A243617: Numbers whose sum of digits equals the number of bits in its binary expansion. No zeros allowed in the digital expansion.

Offset 1, canonical program `A243617.P13077696560610616016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A243617 (n : ℕ) : ℤ :=
  (A243617.P13077696560610616016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A243617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243619.P16873152795867746307

`p?[A243615(n+1)]`
-/

namespace A243619.P16873152795867746307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243619.P16873152795867746307

noncomputable section

/-- A243619: Prime numbers n whose digital sum equals the number of bits in its binary expansion.

Offset 1, canonical program `A243619.P16873152795867746307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A243619 (n : ℕ) : ℤ :=
  A243619.P16873152795867746307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A243619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243621.P1145434379709672563

`∩[A010784(n+1), A243615(n+1)]`
-/

namespace A243621.P1145434379709672563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243621.P1145434379709672563

noncomputable section

/-- A243621: Numbers whose digital sum equals the number of bits in its binary expansion. Repeated digits in decimal expansion are not allowed.

Offset 1, canonical program `A243621.P1145434379709672563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A243621 (n : ℕ) : ℤ :=
  (A243621.P1145434379709672563.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A243621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249043.P15231578259827823311

`A062028(a(n-1))` with `a(0)=42`
-/

namespace A249043.P15231578259827823311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [42] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A249043.P15231578259827823311

noncomputable section

/-- A249043: a(1) = 42; a(n+1) = a(n) + sum of decimal digits of a(n).

Offset 1, canonical program `A249043.P15231578259827823311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 582 terms. -/
def A249043 (n : ℕ) : ℤ :=
  A249043.P15231578259827823311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 582 terms. -/
def A249043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249121.P5600374421228380133

`n-A061762(n)`
-/

namespace A249121.P5600374421228380133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A061762 n

end

end A249121.P5600374421228380133

noncomputable section

/-- A249121: a(n) = n - (sum of digits of n) - (product of digits of n).

Offset 0, canonical program `A249121.P5600374421228380133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249121 (n : ℕ) : ℤ :=
  A249121.P5600374421228380133.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249121.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256293.P2541555998451652213

`A004488(A171960(n))`
-/

namespace A256293.P2541555998451652213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A171960 n).toNat

end

end A256293.P2541555998451652213

noncomputable section

/-- A256293: Apply the transformation 0 -> 1 -> 2 -> 0 to the digits of n written in base 3, then convert back to base 10.

Offset 0, canonical program `A256293.P2541555998451652213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256293 (n : ℕ) : ℤ :=
  A256293.P2541555998451652213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258938.P11786850421693522442

`lt[n², n*A139374(n)]`
-/

namespace A258938.P11786850421693522442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A139374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258938.P11786850421693522442

noncomputable section

/-- A258938: Index of the Lucas numbers in A258740.

Offset 1, canonical program `A258938.P11786850421693522442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A258938 (n : ℕ) : ℤ :=
  (A258938.P11786850421693522442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A258938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260455.P9893475964516076535

`1-A260456(n+1)`
-/

namespace A260455.P9893475964516076535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A260456 (n + 1)

end

end A260455.P9893475964516076535

noncomputable section

/-- A260455: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = 0 and midword sequence (1,null,1,null,1,null,...); see Comments.

Offset 1, canonical program `A260455.P9893475964516076535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260455 (n : ℕ) : ℤ :=
  A260455.P9893475964516076535.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262202.P13375608111952426789

`∑{d}[n+1, A353669(#)]`
-/

namespace A262202.P13375608111952426789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353669 d

end

end A262202.P13375608111952426789

noncomputable section

/-- A262202: Number of divisors d | n such that d^2 < n and d^2 does not divide n.

Offset 1, canonical program `A262202.P13375608111952426789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262202 (n : ℕ) : ℤ :=
  A262202.P13375608111952426789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273159.P2710656007498216518

`eq[0, A118881(n)%7]`
-/

namespace A273159.P2710656007498216518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118881 n) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273159.P2710656007498216518

noncomputable section

/-- A273159: Numbers whose digit sum is divisible by 7.

Offset 1, canonical program `A273159.P2710656007498216518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1422 terms. -/
def A273159 (n : ℕ) : ℤ :=
  (A273159.P2710656007498216518.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1422 terms. -/
def A273159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278042.P17948730681649741485

`∑{digits}[A278038(n), 1-#]`
-/

namespace A278042.P17948730681649741485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A278042.P17948730681649741485

noncomputable section

/-- A278042: Number of 0's in tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A278042.P17948730681649741485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278042 (n : ℕ) : ℤ :=
  A278042.P17948730681649741485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279458.P16976233013369130140

`∩[A028260(n+1), A030231(n+1)]`
-/

namespace A279458.P16976233013369130140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279458.P16976233013369130140

noncomputable section

/-- A279458: Numbers k such that number of distinct primes dividing k is even and number of prime divisors (counted with multiplicity) of k is even.

Offset 1, canonical program `A279458.P16976233013369130140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7333 terms. -/
def A279458 (n : ℕ) : ℤ :=
  (A279458.P16976233013369130140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7333 terms. -/
def A279458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285093.P12873639855771182747

`A007953(A061383(n))/A055642(A061383(n))`
-/

namespace A285093.P12873639855771182747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (A061383 n).toNat : ℚ) / (A055642 (A061383 n).toNat : ℚ)

end

end A285093.P12873639855771182747

noncomputable section

/-- A285093: Corresponding values of arithmetic means of digits of numbers from A061383.

Offset 0, canonical program `A285093.P12873639855771182747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055642, A061383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285093 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285093.P12873639855771182747.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055642, A061383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289813.P9011554254818249259

`A289814(A004488(n))`
-/

namespace A289813.P9011554254818249259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A004488 n).toNat

end

end A289813.P9011554254818249259

noncomputable section

/-- A289813: A binary encoding of the ones in ternary representation of n (see Comments for precise definition).

Offset 0, canonical program `A289813.P9011554254818249259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004488, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289813 (n : ℕ) : ℤ :=
  A289813.P9011554254818249259.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004488, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291641.P4805494574019733392

`eq[2, A333206(n)]`
-/

namespace A291641.P4805494574019733392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291641.P4805494574019733392

noncomputable section

/-- A291641: Numbers k such that 2 is the smallest decimal digit of k^3.

Offset 1, canonical program `A291641.P4805494574019733392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A291641 (n : ℕ) : ℤ :=
  (A291641.P4805494574019733392.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A291641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291642.P13038753502478863596

`eq[3, A333206(n)]`
-/

namespace A291642.P13038753502478863596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291642.P13038753502478863596

noncomputable section

/-- A291642: Numbers k such that 3 is the smallest decimal digit of k^3.

Offset 1, canonical program `A291642.P13038753502478863596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A291642 (n : ℕ) : ℤ :=
  (A291642.P13038753502478863596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A291642.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A293228.P12584576629834751598

`A048250(n+1)-A008966(n+1)*(n+1)`
-/

namespace A293228.P12584576629834751598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A008966 (n + 1) * (n + 1 : ℤ)

end

end A293228.P12584576629834751598

noncomputable section

/-- A293228: a(n) is the sum of proper divisors of n that are squarefree.

Offset 1, canonical program `A293228.P12584576629834751598`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293228 (n : ℕ) : ℤ :=
  A293228.P12584576629834751598.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293234.P10621370865650298108

`A046951(n+1)-A010052(n+1)`
-/

namespace A293234.P10621370865650298108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A010052 (n + 1)

end

end A293234.P10621370865650298108

noncomputable section

/-- A293234: a(n) is the number of proper divisors of n that are square.

Offset 1, canonical program `A293234.P10621370865650298108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293234 (n : ℕ) : ℤ :=
  A293234.P10621370865650298108.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293234.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293428.P2335168149116602808

`a(n-1)+A008966(4*n+1)-A107078(4*n+3)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293428.P2335168149116602808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A008966 (4 * n + 1) - A107078 (4 * n + 3))

end

end A293428.P2335168149116602808

noncomputable section

/-- A293428: a(0) = 1; and for n > 0, a(n) = a(n-1) + (A008966(4n+1) - A107078(4n+3)).

Offset 0, canonical program `A293428.P2335168149116602808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A107078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293428 (n : ℕ) : ℤ :=
  A293428.P2335168149116602808.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A107078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294074.P2969751212753778829

`p?[A026491(A038550(n+1))-1]`
-/

namespace A294074.P2969751212753778829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A038550 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294074.P2969751212753778829

noncomputable section

/-- A294074: Primes of the form p*2^k + 1, where p is an odd prime and k is odd.

Offset 1, canonical program `A294074.P2969751212753778829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A294074 (n : ℕ) : ℤ :=
  A294074.P2969751212753778829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A294074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294887.P440205835715067692

`A001065(n+1)-A294886(n+1)`
-/

namespace A294887.P440205835715067692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A294886 (n + 1)

end

end A294887.P440205835715067692

noncomputable section

/-- A294887: Sum of nondeficient proper divisors of n.

Offset 1, canonical program `A294887.P440205835715067692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294887 (n : ℕ) : ℤ :=
  A294887.P440205835715067692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294889.P8457081136466232752

`A187795(n+1)-A294937(n+1)*(n+1)`
-/

namespace A294889.P8457081136466232752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1) - A294937 (n + 1) * (n + 1 : ℤ)

end

end A294889.P8457081136466232752

noncomputable section

/-- A294889: Sum of abundant proper divisors of n.

Offset 1, canonical program `A294889.P8457081136466232752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187795, A294937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294889 (n : ℕ) : ℤ :=
  A294889.P8457081136466232752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187795, A294937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294890.P16317714658456508675

`∑{d}[n+1, A245552(A080224(#)²)]`
-/

namespace A294890.P16317714658456508675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245552 (A080224 d ^ 2).toNat

end

end A294890.P16317714658456508675

noncomputable section

/-- A294890: Number of divisors of n that are primitively abundant (A091191).

Offset 1, canonical program `A294890.P16317714658456508675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294890 (n : ℕ) : ℤ :=
  A294890.P16317714658456508675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294929.P2023919567513394110

`A080224(n+1)-A294937(n+1)`
-/

namespace A294929.P2023919567513394110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1) - A294937 (n + 1)

end

end A294929.P2023919567513394110

noncomputable section

/-- A294929: Number of proper divisors of n that are abundant (A005101).

Offset 1, canonical program `A294929.P2023919567513394110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A294937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294929 (n : ℕ) : ℤ :=
  A294929.P2023919567513394110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A294937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294930.P12845745568245124402

`A245552(A080224(n+1)²)`
-/

namespace A294930.P12845745568245124402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 (A080224 (n + 1) ^ 2).toNat

end

end A294930.P12845745568245124402

noncomputable section

/-- A294930: Characteristic function for A091191, primitive abundant numbers: abundant numbers (A005101) having no abundant proper divisor.

Offset 1, canonical program `A294930.P12845745568245124402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294930 (n : ℕ) : ℤ :=
  A294930.P12845745568245124402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297114.P2765220314566008295

`A297111(n+1)-(n+1)`
-/

namespace A297114.P2765220314566008295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) - (n + 1 : ℤ)

end

end A297114.P2765220314566008295

noncomputable section

/-- A297114: Möbius transform of A294898, where A294898 is deficiency minus binary weight.

Offset 1, canonical program `A297114.P2765220314566008295`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297111, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297114 (n : ℕ) : ℤ :=
  A297114.P2765220314566008295.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297111, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297114.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305379.P14029191028484056430

`A278038(A000040(n+1))`
-/

namespace A305379.P14029191028484056430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (A000040 (n + 1)).toNat

end

end A305379.P14029191028484056430

noncomputable section

/-- A305379: Tribonacci representation of primes, written in base 2.

Offset 1, canonical program `A305379.P14029191028484056430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A305379 (n : ℕ) : ℤ :=
  A305379.P14029191028484056430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A305379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305989.P15521024914226202803

`A007088(A030101(n))`
-/

namespace A305989.P15521024914226202803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A030101 n).toNat

end

end A305989.P15521024914226202803

noncomputable section

/-- A305989: Numbers in binary reversed.

Offset 0, canonical program `A305989.P15521024914226202803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305989 (n : ℕ) : ℤ :=
  A305989.P15521024914226202803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308375.P5312636960333740944

`A007953(A002808(n+1))`
-/

namespace A308375.P5312636960333740944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002808 (n + 1)).toNat

end

end A308375.P5312636960333740944

noncomputable section

/-- A308375: Digital sum of composite numbers.

Offset 1, canonical program `A308375.P5312636960333740944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A308375 (n : ℕ) : ℤ :=
  A308375.P5312636960333740944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A308375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216676.P8042148901367579546

`dr(A388539(n+1))`
-/

namespace A216676.P8042148901367579546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A388539 (n + 1))

end

end A216676.P8042148901367579546

noncomputable section

/-- A216676: Digital roots of squares of Fibonacci numbers.

Offset 1, canonical program `A216676.P8042148901367579546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216676 (n : ℕ) : ℤ :=
  (A216676.P8042148901367579546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216699.P2293991450571384298

`dr(A004090(n)²*A004090(n))`
-/

namespace A216699.P2293991450571384298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004090 n ^ 2 * A004090 n)

end

end A216699.P2293991450571384298

noncomputable section

/-- A216699: Digital root of cubes of Fibonacci numbers.

Offset 0, canonical program `A216699.P2293991450571384298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216699 (n : ℕ) : ℤ :=
  (A216699.P2293991450571384298.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216754.P14933782455688842539

`dr(A388539(n)²)`
-/

namespace A216754.P14933782455688842539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A388539 n ^ 2)

end

end A216754.P14933782455688842539

noncomputable section

/-- A216754: Digital root of fourth power of Fibonacci numbers.

Offset 0, canonical program `A216754.P14933782455688842539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216754 (n : ℕ) : ℤ :=
  (A216754.P14933782455688842539.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216997.P2574361776485171840

`∩[8*n, A273188(n+2)]`
-/

namespace A216997.P2574361776485171840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216997.P2574361776485171840

noncomputable section

/-- A216997: Multiples of 8 that have a digit sum which is a multiple of 8.

Offset 1, canonical program `A216997.P2574361776485171840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A216997 (n : ℕ) : ℤ :=
  (A216997.P2574361776485171840.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A216997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222637.P13679431788888405413

`A007913(A000522(n))`
-/

namespace A222637.P13679431788888405413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000522 n).toNat

end

end A222637.P13679431788888405413

noncomputable section

/-- A222637: Squarefree part of the total number of arrangements of a set with n elements.

Offset 0, canonical program `A222637.P13679431788888405413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222637 (n : ℕ) : ℤ :=
  A222637.P13679431788888405413.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224977.P2433633673610591437

`A000290(n)-A004159(n)`
-/

namespace A224977.P2433633673610591437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - A004159 n

end

end A224977.P2433633673610591437

noncomputable section

/-- A224977: n^2 minus sum of digits of n^2.

Offset 0, canonical program `A224977.P2433633673610591437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224977 (n : ℕ) : ℤ :=
  A224977.P2433633673610591437.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226165.P14809637293415994692

`A007913(A077425(n+1))`
-/

namespace A226165.P14809637293415994692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A077425 (n + 1)).toNat

end

end A226165.P14809637293415994692

noncomputable section

/-- A226165: Squarefree part of A077425(n) (numbers 4*k+1, k>=0, not a square).

Offset 1, canonical program `A226165.P14809637293415994692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A077425, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A226165 (n : ℕ) : ℤ :=
  A226165.P14809637293415994692.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A077425, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A226165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226217.P16285020928925633820

`p?[A007913(A000040(n+1)*A077648(n+1))]`
-/

namespace A226217.P16285020928925633820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000040 (n + 1) * A077648 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226217.P16285020928925633820

noncomputable section

/-- A226217: Primes whose first digit is a square.

Offset 1, canonical program `A226217.P16285020928925633820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A226217 (n : ℕ) : ℤ :=
  A226217.P16285020928925633820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A226217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226693.P1469923415629545988

`A007913(A079896(n+1))`
-/

namespace A226693.P1469923415629545988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A079896 (n + 1)).toNat

end

end A226693.P1469923415629545988

noncomputable section

/-- A226693: Squarefree parts of A079896(n), n>= 1.

Offset 1, canonical program `A226693.P1469923415629545988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226693 (n : ℕ) : ℤ :=
  A226693.P1469923415629545988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229058.P11987760245482579737

`p?[eq[25, A004159(n)]]`
-/

namespace A229058.P11987760245482579737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A229058.P11987760245482579737

noncomputable section

/-- A229058: Primes p where the digital sum of p^2 is equal to 25.

Offset 1, canonical program `A229058.P11987760245482579737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A229058 (n : ℕ) : ℤ :=
  (A229058.P11987760245482579737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A229058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229125.P17586178144269697586

`eq[1, A054024(A007913(n+2))]+2`
-/

namespace A229125.P17586178144269697586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A007913 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A229125.P17586178144269697586

noncomputable section

/-- A229125: Numbers of the form p * m^2, where p is prime and m > 0: union of A228056 and A000040.

Offset 1, canonical program `A229125.P17586178144269697586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229125 (n : ℕ) : ℤ :=
  (A229125.P17586178144269697586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230048.P9001472186708211094

`record[A007913(A000069(n+1))]`
-/

namespace A230048.P9001472186708211094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000069 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230048.P9001472186708211094

noncomputable section

/-- A230048: Squarefree odious numbers.

Offset 1, canonical program `A230048.P9001472186708211094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6253 terms. -/
def A230048 (n : ℕ) : ℤ :=
  A230048.P9001472186708211094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6253 terms. -/
def A230048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234638.P1618051015318160246

`lt[A007913(A000203(n+1)), 3]+1`
-/

namespace A234638.P1618051015318160246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A234638.P1618051015318160246

noncomputable section

/-- A234638: Numbers n for which sigma(sigma(n)) is odd.

Offset 1, canonical program `A234638.P1618051015318160246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A234638 (n : ℕ) : ℤ :=
  (A234638.P1618051015318160246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A234638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235151.P14554492218157200321

`∩[A268620(n+1), A017197(n)]`
-/

namespace A235151.P14554492218157200321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235151.P14554492218157200321

noncomputable section

/-- A235151: Numbers whose sum of digits is 12.

Offset 1, canonical program `A235151.P14554492218157200321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. -/
def A235151 (n : ℕ) : ℤ :=
  (A235151.P14554492218157200321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. -/
def A235151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239878.P11535011503669925246

`eq[A004159(n+1)-A004159(n), 1]`
-/

namespace A239878.P11535011503669925246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n + 1) - A004159 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A239878.P11535011503669925246

noncomputable section

/-- A239878: Numbers k with digit_sum(k*k) + 1 = digit_sum((k+1)*(k+1)).

Offset 1, canonical program `A239878.P11535011503669925246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A239878 (n : ℕ) : ℤ :=
  (A239878.P11535011503669925246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A239878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239937.P16644113360716350106

`lt[Δ[A004159(n)], 0]`
-/

namespace A239937.P16644113360716350106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A239937.P16644113360716350106

noncomputable section

/-- A239937: Numbers k such that digsum(k^2) > digsum((k+1)^2).

Offset 1, canonical program `A239937.P16644113360716350106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4651 terms. -/
def A239937 (n : ℕ) : ℤ :=
  (A239937.P16644113360716350106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4651 terms. -/
def A239937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241418.P4866723597683486828

`Δ[A053838(A128173(n))]`
-/

namespace A241418.P4866723597683486828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (A128173 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241418.P4866723597683486828

noncomputable section

/-- A241418: First differences of Arshon's sequence, cf. A099054.

Offset 0, canonical program `A241418.P4866723597683486828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A241418 (n : ℕ) : ℤ :=
  A241418.P4866723597683486828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A241418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255005.P10936210896201179594

`A007605(n+1)+A053666(n+1)`
-/

namespace A255005.P10936210896201179594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) + A053666 (n + 1)

end

end A255005.P10936210896201179594

noncomputable section

/-- A255005: a(n) = the digit sum of prime(n) + the digit product of prime(n).

Offset 1, canonical program `A255005.P10936210896201179594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A053666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255005 (n : ℕ) : ℤ :=
  A255005.P10936210896201179594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A053666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259728.P15786736245011630451

`eq[∑{digits}[n, #], A004092(2*n)]`
-/

namespace A259728.P15786736245011630451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A259728.P15786736245011630451

noncomputable section

/-- A259728: Sum of digits of a(n) equals the sum of digits of 4*a(n).

Offset 1, canonical program `A259728.P15786736245011630451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. -/
def A259728 (n : ℕ) : ℤ :=
  (A259728.P15786736245011630451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. -/
def A259728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261456.P17740723349919891104

`p?[A005408(n)*A043545(A004092(n))]`
-/

namespace A261456.P17740723349919891104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A043545 (A004092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261456.P17740723349919891104

noncomputable section

/-- A261456: Prime numbers whose sum of digits is not a power of 2.

Offset 1, canonical program `A261456.P17740723349919891104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A261456 (n : ℕ) : ℤ :=
  A261456.P17740723349919891104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A261456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267430.P7614672471199093547

`eq[0, A105700(A004159(n)²)]²`
-/

namespace A267430.P7614672471199093547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004159 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A267430.P7614672471199093547

noncomputable section

/-- A267430: Squares whose digit sum is not a prime.

Offset 1, canonical program `A267430.P7614672471199093547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7395 terms. -/
def A267430 (n : ℕ) : ℤ :=
  (A267430.P7614672471199093547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7395 terms. -/
def A267430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268135.P792278026408180777

`eq[0, A007953(n+1)%A004159(n+1)]+1`
-/

namespace A268135.P792278026408180777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (n + 1)) (A004159 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268135.P792278026408180777

noncomputable section

/-- A268135: Numbers n such that the digit sum of n^2 is a divisor of the digit sum of n.

Offset 1, canonical program `A268135.P792278026408180777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A268135 (n : ℕ) : ℤ :=
  (A268135.P792278026408180777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A268135.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A279768.P17710633787375653040

`eq[16, A004092(A008574(n))]`
-/

namespace A279768.P17710633787375653040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279768.P17710633787375653040

noncomputable section

/-- A279768: Numbers n such that the sum of digits of 8n equals 16.

Offset 1, canonical program `A279768.P17710633787375653040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A279768 (n : ℕ) : ℤ :=
  (A279768.P17710633787375653040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A279768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280185.P338572658367298625

`n-A004090(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280185.P338572658367298625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004090 n

end

end A280185.P338572658367298625

noncomputable section

/-- A280185: a(n) = n - A004090(n), where A004090 is the sum of digits of the Fibonacci numbers A000045.

Offset 0, canonical program `A280185.P338572658367298625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280185 (n : ℕ) : ℤ :=
  A280185.P338572658367298625.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280185.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A285095.P226835775559454231

`A004427(p?[A061383(n)])`
-/

namespace A285095.P226835775559454231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285095.P226835775559454231

noncomputable section

/-- A285095: Corresponding values of arithmetic means of digits of primes from A069709.

Offset 1, canonical program `A285095.P226835775559454231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 576 terms. -/
def A285095 (n : ℕ) : ℤ :=
  A285095.P226835775559454231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 576 terms. -/
def A285095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301378.P6745929020986933071

`10*A007605(n+1)-9*A007652(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A301378.P6745929020986933071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007605 (n + 1) - 9 * A007652 (n + 1)

end

end A301378.P6745929020986933071

noncomputable section

/-- A301378: a(n) = 10*A007605(n) - 9*A007652(n).

Offset 1, canonical program `A301378.P6745929020986933071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301378 (n : ℕ) : ℤ :=
  A301378.P6745929020986933071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302599.P10102814595459792599

`lt[A004092(n), A007953(n)]`
-/

namespace A302599.P10102814595459792599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P10102814595459792599

noncomputable section

/-- A302599: Numbers k such that digit_sum(k) > digit_sum(2k).

Offset 1, canonical program `A302599.P10102814595459792599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4604 terms. -/
def A302599 (n : ℕ) : ℤ :=
  (A302599.P10102814595459792599.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4604 terms. -/
def A302599.provenance : SequenceMachineLib.Provenance := .conjectured

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

