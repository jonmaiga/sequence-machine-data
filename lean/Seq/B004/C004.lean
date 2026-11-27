import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
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
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A344996.P14741742852646072087

`A048250(n+1)*A051709(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344996.P14741742852646072087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A051709 (n + 1)

end

end A344996.P14741742852646072087

noncomputable section

/-- A344996: a(n) = A048250(n) * A051709(n).

Offset 1, canonical program `A344996.P14741742852646072087`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A048250(n+1)*A051709(n+1)` (program `A344996.P14741742852646072087`, by `A344996.P14741742852646072087.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344996 (n : ℕ) : ℤ :=
  A344996.P14741742852646072087.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A048250(n+1)*A051709(n+1)` (program `A344996.P14741742852646072087`, by `A344996.P14741742852646072087.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344996.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A359352.P14078753108705027464`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A026430(1+A026430(n+1))` (program `A359352.P14078753108705027464`, by `A359352.P14078753108705027464.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A359352 (n : ℕ) : ℤ :=
  A359352.P14078753108705027464.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A026430(1+A026430(n+1))` (program `A359352.P14078753108705027464`, by `A359352.P14078753108705027464.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A359352.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A360136.P4184868371155148676`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A026430(A026430(n+1))` (program `A360136.P4184868371155148676`, by `A360136.P4184868371155148676.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A360136 (n : ℕ) : ℤ :=
  A360136.P4184868371155148676.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A026430(A026430(n+1))` (program `A360136.P4184868371155148676`, by `A360136.P4184868371155148676.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A360136.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A360392.P6145566539357259399`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+A026430(n+1)` (program `A360392.P6145566539357259399`, by `A360392.P6145566539357259399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A360392 (n : ℕ) : ℤ :=
  A360392.P6145566539357259399.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+A026430(n+1)` (program `A360392.P6145566539357259399`, by `A360392.P6145566539357259399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A360392.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388979.P3109301176351806020

`A326127(n+1)*A389078(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388979.P3109301176351806020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (n + 1) * A389078 (n + 1)

end

end A388979.P3109301176351806020

noncomputable section

/-- A388979: a(n) = A326127(n) * A389078(n).

Offset 1, canonical program `A388979.P3109301176351806020`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A326127(n+1)*A389078(n+1)` (program `A388979.P3109301176351806020`, by `A388979.P3109301176351806020.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388979 (n : ℕ) : ℤ :=
  A388979.P3109301176351806020.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A326127(n+1)*A389078(n+1)` (program `A388979.P3109301176351806020`, by `A388979.P3109301176351806020.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388979.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A342668.P4029046594404538909

`A006530(A341527(n+1))`
-/

namespace A342668.P4029046594404538909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A341527 (n + 1)).toNat

end

end A342668.P4029046594404538909

noncomputable section

/-- A342668: Largest prime in the denominator of ratio A341528(n)/A341529(n) (when presented in its lowest terms).

Offset 1, canonical program `A342668.P4029046594404538909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342668 (n : ℕ) : ℤ :=
  A342668.P4029046594404538909.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343490.P15473732071549519995

`A054611(n+1)/4`
-/

namespace A343490.P15473732071549519995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054611 (n + 1) : ℚ) / 4

end

end A343490.P15473732071549519995

noncomputable section

/-- A343490: a(n) = Sum_{k=1..n} 4^(gcd(k, n) - 1).

Offset 1, canonical program `A343490.P15473732071549519995`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343490 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343490.P15473732071549519995.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344439.P15144765631107196480

`n+1-A206369(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344439.P15144765631107196480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A206369 (n + 1)

end

end A344439.P15144765631107196480

noncomputable section

/-- A344439: a(n) = n - A206369(n).

Offset 1, canonical program `A344439.P15144765631107196480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344439 (n : ℕ) : ℤ :=
  A344439.P15144765631107196480.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344439.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A344997.P7955148698695542917`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344997 (n : ℕ) : ℤ :=
  A344997.P7955148698695542917.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344997.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345082.P16266768967040016348

`A000010(n+1)+A319998(n+1)`
-/

namespace A345082.P16266768967040016348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A319998 (n + 1)

end

end A345082.P16266768967040016348

noncomputable section

/-- A345082: Number of elements of order n in R/Z X Z/2Z.

Offset 1, canonical program `A345082.P16266768967040016348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345082 (n : ℕ) : ℤ :=
  A345082.P16266768967040016348.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345082.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A345266.P10002656146987510819`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345266 (n : ℕ) : ℤ :=
  A345266.P10002656146987510819.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345266.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A345937.P12534204901955045802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345937 (n : ℕ) : ℤ :=
  (A345937.P12534204901955045802.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346239.P8636144481431043210

`∑{d}[n+1, A008683((n+1)/#)*A341512(#)]`
-/

namespace A346239.P8636144481431043210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A341512 d

end

end A346239.P8636144481431043210

noncomputable section

/-- A346239: Möbius transform of A341512, sigma(n)*A003961(n) - n*sigma(A003961(n)).

Offset 1, canonical program `A346239.P8636144481431043210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346239 (n : ℕ) : ℤ :=
  A346239.P8636144481431043210.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346239.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346470.P11068407402498532406

`A001615(A276086(n))`
-/

namespace A346470.P11068407402498532406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A276086 n).toNat

end

end A346470.P11068407402498532406

noncomputable section

/-- A346470: a(n) = psi(A276086(n)), where psi is Dedekind psi function A001615, and A276086 is the prime product form of primorial base expansion of n.

Offset 0, canonical program `A346470.P11068407402498532406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346470 (n : ℕ) : ℤ :=
  A346470.P11068407402498532406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346470.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346471.P5521846515314710197

`A344695(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346471.P5521846515314710197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (A276086 n).toNat

end

end A346471.P5521846515314710197

noncomputable section

/-- A346471: a(n) = A344695(A276086(n)), where A344695(x) = gcd(psi(x), sigma(x)), and A276086 gives the prime product form of primorial base expansion of n.

Offset 0, canonical program `A346471.P5521846515314710197`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346471 (n : ℕ) : ℤ :=
  A346471.P5521846515314710197.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346471.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347122.P16124771186689615703

`A347137(n+1)-2*A000010(n+1)`
-/

namespace A347122.P16124771186689615703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347137 (n + 1) - 2 * A000010 (n + 1)

end

end A347122.P16124771186689615703

noncomputable section

/-- A347122: Möbius transform of A347121.

Offset 1, canonical program `A347122.P16124771186689615703`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347122 (n : ℕ) : ℤ :=
  A347122.P16124771186689615703.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347204.P11868927208051219561

`∑{#}[n, C(n, #)%2*A243499(#)]`
-/

namespace A347204.P11868927208051219561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((Nat.choose n k % 2 : ℕ) : ℤ) * A243499 k

end

end A347204.P11868927208051219561

noncomputable section

/-- A347204: a(n) = a(f(n)/2) + a(floor((n+f(n))/2)) for n > 0 with a(0) = 1 where f(n) = A129760(n).

Offset 0, canonical program `A347204.P11868927208051219561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347204 (n : ℕ) : ℤ :=
  A347204.P11868927208051219561.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347231.P3260467072259426006

`A344695(n+1)-A347230(n+1)`
-/

namespace A347231.P3260467072259426006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (n + 1) - A347230 (n + 1)

end

end A347231.P3260467072259426006

noncomputable section

/-- A347231: Difference between A344695 [gcd(psi(n),sigma(n))] and its Möbius transform.

Offset 1, canonical program `A347231.P3260467072259426006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347231 (n : ℕ) : ℤ :=
  A347231.P3260467072259426006.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347237.P462574376420904752

`∑{d}[n+1, A003972((n+1)/#)*A061019(#)]`
-/

namespace A347237.P462574376420904752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A061019 d

end

end A347237.P462574376420904752

noncomputable section

/-- A347237: Möbius transform of A347236.

Offset 1, canonical program `A347237.P462574376420904752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347237 (n : ℕ) : ℤ :=
  A347237.P462574376420904752.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347237.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348841.P490662357377440860

`A000720(n+1)-A055460(n+1)`
-/

namespace A348841.P490662357377440860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A055460 (n + 1)

end

end A348841.P490662357377440860

noncomputable section

/-- A348841: Number of primes with even exponents >= 2 in the prime power factorization of n!, for n >= 1.

Offset 1, canonical program `A348841.P490662357377440860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348841 (n : ℕ) : ℤ :=
  A348841.P490662357377440860.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348978.P606956241417076387

`A332993(n+1)/A348977(n+1)`
-/

namespace A348978.P606956241417076387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332993 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348978.P606956241417076387

noncomputable section

/-- A348978: Numerator of ratio A332993(n) / sigma(n).

Offset 1, canonical program `A348978.P606956241417076387`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348978 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348978.P606956241417076387.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348979.P15532692036909443139

`A000203(n+1)/A348977(n+1)`
-/

namespace A348979.P15532692036909443139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348979.P15532692036909443139

noncomputable section

/-- A348979: Denominator of ratio A332993(n) / sigma(n).

Offset 1, canonical program `A348979.P15532692036909443139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348979 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348979.P15532692036909443139.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348979.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348987.P12412784051833771184

`gcd(A000203(n+1), A332994(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348987.P12412784051833771184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A332994 (n + 1))

end

end A348987.P12412784051833771184

noncomputable section

/-- A348987: a(n) = gcd(sigma(n), A332994(n)).

Offset 1, canonical program `A348987.P12412784051833771184`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348987 (n : ℕ) : ℤ :=
  (A348987.P12412784051833771184.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348989.P3881012856814254505

`A000203(n+1)/gcd(A000203(n+1), A332994(n+1))`
-/

namespace A348989.P3881012856814254505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A332994 (n + 1)) : ℚ)

end

end A348989.P3881012856814254505

noncomputable section

/-- A348989: Denominator of A332994(n) / sigma(n).

Offset 1, canonical program `A348989.P3881012856814254505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348989 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348989.P3881012856814254505.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349338.P1568544451792940700

`A000010(n+1)+A117494(n+1)`
-/

namespace A349338.P1568544451792940700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A117494 (n + 1)

end

end A349338.P1568544451792940700

noncomputable section

/-- A349338: Dirichlet convolution of A000010 (Euler totient phi) with A080339 (characteristic function of noncomposite numbers).

Offset 1, canonical program `A349338.P1568544451792940700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349338 (n : ℕ) : ℤ :=
  A349338.P1568544451792940700.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349338.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349389.P17688454280443951021

`A349387(n+1)+A349388(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349389.P17688454280443951021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349387 (n + 1) + A349388 (n + 1)

end

end A349389.P17688454280443951021

noncomputable section

/-- A349389: a(n) = A349387(n) + A349388(n).

Offset 1, canonical program `A349389.P17688454280443951021`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349389 (n : ℕ) : ℤ :=
  A349389.P17688454280443951021.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350072.P17523638723638629591

`A349162((n+1)²)`
-/

namespace A350072.P17523638723638629591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349162 ((n + 1) ^ 2)

end

end A350072.P17523638723638629591

noncomputable section

/-- A350072: a(n) = sigma(n^2) / gcd(sigma(n^2), A003961(n^2)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A350072.P17523638723638629591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350072 (n : ℕ) : ℤ :=
  A350072.P17523638723638629591.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350156.P10227631980383447506

`∑{d}[n+1, #*A007434(#)]`
-/

namespace A350156.P10227631980383447506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007434 d

end

end A350156.P10227631980383447506

noncomputable section

/-- A350156: Inverse Moebius transform of A000056.

Offset 1, canonical program `A350156.P10227631980383447506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350156 (n : ℕ) : ℤ :=
  A350156.P10227631980383447506.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350156.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351225.P10708990294611385540

`A276086(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351225.P10708990294611385540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - (n : ℤ)

end

end A351225.P10708990294611385540

noncomputable section

/-- A351225: a(n) = A276086(n) - n, where A276086 is the primorial base exp-function.

Offset 0, canonical program `A351225.P10708990294611385540`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(n)-n` (program `A351225.P10708990294611385540`, by `A351225.P10708990294611385540.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351225 (n : ℕ) : ℤ :=
  A351225.P10708990294611385540.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(n)-n` (program `A351225.P10708990294611385540`, by `A351225.P10708990294611385540.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351225.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A351252.P8473676555862948568

`A000203(n+1)*A276086(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351252.P8473676555862948568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A276086 (n + 1)

end

end A351252.P8473676555862948568

noncomputable section

/-- A351252: a(n) = sigma(n) * A276086(n), pointwise product of the sum of divisors function and the primorial base exp-function.

Offset 1, canonical program `A351252.P8473676555862948568`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A276086(n+1)` (program `A351252.P8473676555862948568`, by `A351252.P8473676555862948568.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351252 (n : ℕ) : ℤ :=
  A351252.P8473676555862948568.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A276086(n+1)` (program `A351252.P8473676555862948568`, by `A351252.P8473676555862948568.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351252.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A351560.P4314084197358316879

`A087207(A000203(n+1))`
-/

namespace A351560.P4314084197358316879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A000203 (n + 1)).toNat

end

end A351560.P4314084197358316879

noncomputable section

/-- A351560: a(n) is a binary representation of the primes that divide sigma(n) [the sum of divisors of n function], shown in decimal.

Offset 1, canonical program `A351560.P4314084197358316879`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351560 (n : ℕ) : ℤ :=
  A351560.P4314084197358316879.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351560.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A353471.P7162741328705860866

`A010051(n+1)+A280710(n+1)`
-/

namespace A353471.P7162741328705860866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A280710 (n + 1)

end

end A353471.P7162741328705860866

noncomputable section

/-- A353471: a(n) = 1 if n is a prime or a squarefree semiprime, otherwise 0.

Offset 1, canonical program `A353471.P7162741328705860866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353471 (n : ℕ) : ℤ :=
  A353471.P7162741328705860866.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353471.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353481.P14830098372141059552

`A008966(n+1)*A353480(n+1)`
-/

namespace A353481.P14830098372141059552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A353480 (n + 1)

end

end A353481.P14830098372141059552

noncomputable section

/-- A353481: a(n) = 1 if n is an odd squarefree semiprime, otherwise 0.

Offset 1, canonical program `A353481.P14830098372141059552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353481 (n : ℕ) : ℤ :=
  A353481.P14830098372141059552.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353486.P744867192901540933

`A276086(n)%4`
-/

namespace A353486.P744867192901540933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 n) 4

end

end A353486.P744867192901540933

noncomputable section

/-- A353486: Primorial base exp-function reduced modulo 4.

Offset 0, canonical program `A353486.P744867192901540933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353486 (n : ℕ) : ℤ :=
  A353486.P744867192901540933.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353486.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353487.P9784543688556847088

`A276086(2*n)%4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353487.P9784543688556847088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 (2 * n)) 4

end

end A353487.P9784543688556847088

noncomputable section

/-- A353487: a(n) = A276086(2*n) mod 4, where A276086 is the primorial base exp-function.

Offset 0, canonical program `A353487.P9784543688556847088`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(2*n)%4` (program `A353487.P9784543688556847088`, by `A353487.P9784543688556847088.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A353487 (n : ℕ) : ℤ :=
  A353487.P9784543688556847088.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(2*n)%4` (program `A353487.P9784543688556847088`, by `A353487.P9784543688556847088.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A353487.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A353557.P3482545693705023104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353557 (n : ℕ) : ℤ :=
  A353557.P3482545693705023104.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353557.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353563.P10149860776756761717

`A276086(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353563.P10149860776756761717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A000010 (n + 1)).toNat

end

end A353563.P10149860776756761717

noncomputable section

/-- A353563: Primorial base exp-function applied to Euler totient function: a(n) = A276086(phi(n)).

Offset 1, canonical program `A353563.P10149860776756761717`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(A000010(n+1))` (program `A353563.P10149860776756761717`, by `A353563.P10149860776756761717.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A353563 (n : ℕ) : ℤ :=
  A353563.P10149860776756761717.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(A000010(n+1))` (program `A353563.P10149860776756761717`, by `A353563.P10149860776756761717.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A353563.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A353636.P9241397115263292708

`A062401(n+1)-A000010(n+1)`
-/

namespace A353636.P9241397115263292708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1) - A000010 (n + 1)

end

end A353636.P9241397115263292708

noncomputable section

/-- A353636: Difference between phi(sigma(n)) and phi(n).

Offset 1, canonical program `A353636.P9241397115263292708`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353636 (n : ℕ) : ℤ :=
  A353636.P9241397115263292708.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353643.P5389742288665032552

`gcd(A000010(n+1), A062401(n+1))`
-/

namespace A353643.P5389742288665032552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A062401 (n + 1))

end

end A353643.P5389742288665032552

noncomputable section

/-- A353643: The greatest common divisor of phi(n) and phi(sigma(n)).

Offset 1, canonical program `A353643.P5389742288665032552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353643 (n : ℕ) : ℤ :=
  (A353643.P5389742288665032552.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353647.P4947391720707248585

`∑{d}[n+1, A008683((n+1)/#)*A062401(#)]`
-/

namespace A353647.P4947391720707248585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A062401 d

end

end A353647.P4947391720707248585

noncomputable section

/-- A353647: Möbius transform of A062401, where A062401(n) = phi(sigma(n)).

Offset 1, canonical program `A353647.P4947391720707248585`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353647 (n : ℕ) : ℤ :=
  A353647.P4947391720707248585.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353789.P12522694346514914050

`(n+1)*A003972(n+1)`
-/

namespace A353789.P12522694346514914050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003972 (n + 1)

end

end A353789.P12522694346514914050

noncomputable section

/-- A353789: Multiplicative with a(p^e) = (q - 1) * q^(e-1) * p^e, where q is the least prime greater than p.

Offset 1, canonical program `A353789.P12522694346514914050`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353789 (n : ℕ) : ℤ :=
  A353789.P12522694346514914050.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353789.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355442.P1744756958463337526

`gcd(A003961(n+1), A276086(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355442.P1744756958463337526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1)) (A276086 (n + 1))

end

end A355442.P1744756958463337526

noncomputable section

/-- A355442: a(n) = gcd(A003961(n), A276086(n)), where A003961 is fully multiplicative with a(p) = nextprime(p), and A276086 is primorial base exp-function.

Offset 1, canonical program `A355442.P1744756958463337526`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A003961(n+1), A276086(n+1))` (program `A355442.P1744756958463337526`, by `A355442.P1744756958463337526.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A355442 (n : ℕ) : ℤ :=
  (A355442.P1744756958463337526.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A003961(n+1), A276086(n+1))` (program `A355442.P1744756958463337526`, by `A355442.P1744756958463337526.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A355442.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A358840.P10818825119862171427

`A276086(n)%6`
-/

namespace A358840.P10818825119862171427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 n) 6

end

end A358840.P10818825119862171427

noncomputable section

/-- A358840: Primorial base exp-function reduced modulo 6.

Offset 0, canonical program `A358840.P10818825119862171427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358840 (n : ℕ) : ℤ :=
  A358840.P10818825119862171427.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358850.P6468020453041457067

`A276086(n)%12`
-/

namespace A358850.P6468020453041457067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 n) 12

end

end A358850.P6468020453041457067

noncomputable section

/-- A358850: Primorial base exp-function reduced modulo 12.

Offset 0, canonical program `A358850.P6468020453041457067`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358850 (n : ℕ) : ℤ :=
  A358850.P6468020453041457067.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358850.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359150.P10846391432532706989

`A066829(n+1)*A121262(n)`
-/

namespace A359150.P10846391432532706989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) * A121262 n

end

end A359150.P10846391432532706989

noncomputable section

/-- A359150: a(n) = 1 if n is a number of the form 4u+1 with an odd number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A359150.P10846391432532706989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359150 (n : ℕ) : ℤ :=
  A359150.P10846391432532706989.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359158.P14804396004552753222

`A353627(n+1)-A359156(n+1)`
-/

namespace A359158.P14804396004552753222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) - A359156 (n + 1)

end

end A359158.P14804396004552753222

noncomputable section

/-- A359158: a(n) = 1 if the odd part of n is squarefree and the number of prime factors of n (with multiplicity) is odd, otherwise 0.

Offset 1, canonical program `A359158.P14804396004552753222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359158 (n : ℕ) : ℤ :=
  A359158.P14804396004552753222.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359158.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359172.P12560099474824915828

`A011655(n+1)-A359170(n+1)`
-/

namespace A359172.P12560099474824915828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) - A359170 (n + 1)

end

end A359172.P12560099474824915828

noncomputable section

/-- A359172: a(n) = 1 if n is not a multiple of 3 and has an odd number of prime factors (with multiplicity), otherwise a(n) = 0.

Offset 1, canonical program `A359172.P12560099474824915828`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359172 (n : ℕ) : ℤ :=
  A359172.P12560099474824915828.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359591.P9068026625313844446

`(A008683(n+1)+A086831(n+1))/2`
-/

namespace A359591.P9068026625313844446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + A086831 (n + 1) : ℚ) / 2

end

end A359591.P9068026625313844446

noncomputable section

/-- A359591: Dirichlet inverse of A035263, where A035263(n) is parity of 2-adic valuation of 2n.

Offset 1, canonical program `A359591.P9068026625313844446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359591 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A359591.P9068026625313844446.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361019.P15075616182394612609

`2*A008683(n+1)-A086831(n+1)`
-/

namespace A361019.P15075616182394612609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008683 (n + 1) - A086831 (n + 1)

end

end A361019.P15075616182394612609

noncomputable section

/-- A361019: Dirichlet inverse of A038712.

Offset 1, canonical program `A361019.P15075616182394612609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361019 (n : ℕ) : ℤ :=
  A361019.P15075616182394612609.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361019.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362414.P9769977352830913817

`gcd(n+1, A127473(n+1))/A009195(n+1)`
-/

namespace A362414.P9769977352830913817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A127473 (n + 1)) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A362414.P9769977352830913817

noncomputable section

/-- A362414: a(n) = gcd(n, phi(n)^2) / gcd(n, phi(n)).

Offset 1, canonical program `A362414.P9769977352830913817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362414 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A362414.P9769977352830913817.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362951.P3946018214728712457

`A000120(A169814(n+1))`
-/

namespace A362951.P3946018214728712457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A169814 (n + 1)).toNat

end

end A362951.P3946018214728712457

noncomputable section

/-- A362951: a(n) is the Hamming distance between the binary expansions of n and phi(n) where phi is the Euler totient function (A000010).

Offset 1, canonical program `A362951.P3946018214728712457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362951 (n : ℕ) : ℤ :=
  A362951.P3946018214728712457.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362951.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A369779.P3838743971055881753

`∑{d}[n+1, A010051(#)*A002618((n+1)/#)]`
-/

namespace A369779.P3838743971055881753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369779.P3838743971055881753

noncomputable section

/-- A369779: a(n) = n * Sum_{p|n, p prime} phi(n/p) / p.

Offset 1, canonical program `A369779.P3838743971055881753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369779 (n : ℕ) : ℤ :=
  A369779.P3838743971055881753.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371098.P1484971539305867927

`gcd(2*n+1, A276086(2*n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371098.P1484971539305867927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A276086 (2 * n))

end

end A371098.P1484971539305867927

noncomputable section

/-- A371098: a(n) = gcd(2n+1, A276086(2n+1)), where A276086 is the primorial base exp-function.

Offset 0, canonical program `A371098.P1484971539305867927`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(2*n+1, A276086(2*n))` (program `A371098.P1484971539305867927`, by `A371098.P1484971539305867927.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371098 (n : ℕ) : ℤ :=
  (A371098.P1484971539305867927.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(2*n+1, A276086(2*n))` (program `A371098.P1484971539305867927`, by `A371098.P1484971539305867927.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371098.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A371099.P15014661802858807569

`gcd(36*n+9, A276086(36*n+9))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371099.P15014661802858807569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (36 * n + 9 : ℤ) (A276086 (36 * n + 9))

end

end A371099.P15014661802858807569

noncomputable section

/-- A371099: a(n) = gcd(36*n+9, A276086(36*n+9)), where A276086 is the primorial base exp-function.

Offset 0, canonical program `A371099.P15014661802858807569`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(36*n+9, A276086(36*n+9))` (program `A371099.P15014661802858807569`, by `A371099.P15014661802858807569.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371099 (n : ℕ) : ℤ :=
  (A371099.P15014661802858807569.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(36*n+9, A276086(36*n+9))` (program `A371099.P15014661802858807569`, by `A371099.P15014661802858807569.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371099.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A371357.P11199775498877504883

`A060818(n)*A000984(n)`
-/

namespace A371357.P11199775498877504883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 n * A000984 n

end

end A371357.P11199775498877504883

noncomputable section

/-- A371357: a(n) = 2^(n - HammingWeight(n)) * binomial(2*n, n).

Offset 0, canonical program `A371357.P11199775498877504883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371357 (n : ℕ) : ℤ :=
  A371357.P11199775498877504883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372475.P6789191976370700518

`A372472(n+1)+A372433(n+1)`
-/

namespace A372475.P6789191976370700518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372472 (n + 1) + A372433 (n + 1)

end

end A372475.P6789191976370700518

noncomputable section

/-- A372475: Length of binary expansion (or number of bits) of the n-th squarefree number.

Offset 1, canonical program `A372475.P6789191976370700518`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372475 (n : ℕ) : ℤ :=
  A372475.P6789191976370700518.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372635.P16336776361319886160

`A002088(n+1)²`
-/

namespace A372635.P16336776361319886160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) ^ 2

end

end A372635.P16336776361319886160

noncomputable section

/-- A372635: a(n) = Sum_{j=1..n} Sum_{k=1..n} phi(j)*phi(k).

Offset 1, canonical program `A372635.P16336776361319886160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372635 (n : ℕ) : ℤ :=
  A372635.P16336776361319886160.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373126.P14612012098336311250

`2^n-A372889(n)`
-/

namespace A373126.P14612012098336311250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A372889 n

end

end A373126.P14612012098336311250

noncomputable section

/-- A373126: Difference between 2^n and the greatest squarefree number <= 2^n.

Offset 0, canonical program `A373126.P14612012098336311250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373126 (n : ℕ) : ℤ :=
  A373126.P14612012098336311250.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373365.P4265331062570760901

`gcd(A001414(n+1), A064097(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373365.P4265331062570760901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A064097 (n + 1))

end

end A373365.P4265331062570760901

noncomputable section

/-- A373365: a(n) = gcd(A001414(n), A064097(n)), where A001414 is the sum of prime factors with repetition, and A064097 is a quasi-logarithm defined inductively by a(1) = 0 and a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if m,n > 1.

Offset 1, canonical program `A373365.P4265331062570760901`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373365 (n : ℕ) : ℤ :=
  (A373365.P4265331062570760901.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373365.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373370.P12452585226732295162

`gcd(A001222(n+1), A064097(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373370.P12452585226732295162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A064097 (n + 1))

end

end A373370.P12452585226732295162

noncomputable section

/-- A373370: a(n) = gcd(bigomega(n), A064097(n)), where bigomega is number of prime factors with repetition, and A064097 is a quasi-logarithm defined inductively by a(1) = 0 and a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if m,n > 1.

Offset 1, canonical program `A373370.P12452585226732295162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373370 (n : ℕ) : ℤ :=
  (A373370.P12452585226732295162.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373600.P8915145664239715331

`A001414(A276086(n))`
-/

namespace A373600.P8915145664239715331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A276086 n).toNat

end

end A373600.P8915145664239715331

noncomputable section

/-- A373600: a(n) is the sum of prime factors (with multiplicity) in A276086(n), where A276086 is the primorial base exp-function.

Offset 0, canonical program `A373600.P8915145664239715331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373600 (n : ℕ) : ℤ :=
  A373600.P8915145664239715331.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373605.P8586287855566647772

`A195017(A276086(n))`
-/

namespace A373605.P8586287855566647772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A276086 n).toNat

end

end A373605.P8586287855566647772

noncomputable section

/-- A373605: Sum of the even-indexed digits minus the sum of the odd-indexed digits in the primorial base representation (A049345) of n.

Offset 0, canonical program `A373605.P8586287855566647772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373605 (n : ℕ) : ℤ :=
  A373605.P8586287855566647772.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373844.P12610855575797094746

`A276086(1+A002110(row(n)+1)+A002110(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373844.P12610855575797094746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (1 + A002110 (SequenceMachineLib.triRow n + 1) + A002110 (SequenceMachineLib.triCol n + 1)).toNat

end

end A373844.P12610855575797094746

noncomputable section

/-- A373844: Triangle read by rows: T(n,k) = A276086(1 + A002110(n) + A002110(k)), 1 <= k <= n, where A276086 is the primorial base exp-function.

Offset 1, canonical program `A373844.P12610855575797094746`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(1+A002110(row(n)+1)+A002110(col(n)+1))` (program `A373844.P12610855575797094746`, by `A373844.P12610855575797094746.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373844 (n : ℕ) : ℤ :=
  A373844.P12610855575797094746.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(1+A002110(row(n)+1)+A002110(col(n)+1))` (program `A373844.P12610855575797094746`, by `A373844.P12610855575797094746.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373844.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A378543.P8833094378512870217

`∑{d}[n+1, A066829((n+1)/#)*#]`
-/

namespace A378543.P8833094378512870217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ)

end

end A378543.P8833094378512870217

noncomputable section

/-- A378543: Sum of divisors d of n such that n/d has an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378543.P8833094378512870217`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378543 (n : ℕ) : ℤ :=
  A378543.P8833094378512870217.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378607.P10144459662400142962

`∑{d}[n+1, A349388(#)]`
-/

namespace A378607.P10144459662400142962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349388 d

end

end A378607.P10144459662400142962

noncomputable section

/-- A378607: Dirichlet convolution of sigma and the Dirichlet inverse of A003961 (A346234).

Offset 1, canonical program `A378607.P10144459662400142962`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378607 (n : ℕ) : ℤ :=
  A378607.P10144459662400142962.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378607.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378642.P15085417897948943503

`n+1-A069932(n+1)`
-/

namespace A378642.P15085417897948943503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A069932 (n + 1)

end

end A378642.P15085417897948943503

noncomputable section

/-- A378642: Number of numbers m <= n such that phi(m) does not divide n, where phi is the Euler totient function (A000010).

Offset 1, canonical program `A378642.P15085417897948943503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378642 (n : ℕ) : ℤ :=
  A378642.P15085417897948943503.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378748.P8742583333347776614

`A378521(n+1)-A051953(n+1)`
-/

namespace A378748.P8742583333347776614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378521 (n + 1) - A051953 (n + 1)

end

end A378748.P8742583333347776614

noncomputable section

/-- A378748: Möbius transform of A378747.

Offset 1, canonical program `A378748.P8742583333347776614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378748 (n : ℕ) : ℤ :=
  A378748.P8742583333347776614.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378748.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378987.P6480789479262422065

`A083254(2*n+1)`
-/

namespace A378987.P6480789479262422065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (2 * n + 1)

end

end A378987.P6480789479262422065

noncomputable section

/-- A378987: Odd bisection of A083254, where A083254(n) = 2*phi(n)-n.

Offset 1, canonical program `A378987.P6480789479262422065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378987 (n : ℕ) : ℤ :=
  A378987.P6480789479262422065.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379484.P7184658253164234511

`A379473(A379481(n+1))`
-/

namespace A379484.P7184658253164234511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379473 (A379481 (n + 1)).toNat

end

end A379484.P7184658253164234511

noncomputable section

/-- A379484: a(n) is the highest power of 3 dividing sigma(A003961(n^2)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379484.P7184658253164234511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379484 (n : ℕ) : ℤ :=
  A379484.P7184658253164234511.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379487.P11509981562223596240

`gcd(n+1, A003961(n+1))*gcd(A000203(n+1), A276086(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379487.P11509981562223596240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003961 (n + 1)) * Int.gcd (A000203 (n + 1)) (A276086 (n + 1))

end

end A379487.P11509981562223596240

noncomputable section

/-- A379487: a(n) = gcd(n,A003961(n)) * gcd(sigma(n),A276086(n)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and A276086 is the primorial base exp-function.

Offset 1, canonical program `A379487.P11509981562223596240`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A003961(n+1))*gcd(A000203(n+1), A276086(n+1))` (program `A379487.P11509981562223596240`, by `A379487.P11509981562223596240.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379487 (n : ℕ) : ℤ :=
  (A379487.P11509981562223596240.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A003961(n+1))*gcd(A000203(n+1), A276086(n+1))` (program `A379487.P11509981562223596240`, by `A379487.P11509981562223596240.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379487.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379488.P16714666754279562112

`gcd(n+1, A276086(n+1))*gcd(A000203(n+1), A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379488.P16714666754279562112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A276086 (n + 1)) * Int.gcd (A000203 (n + 1)) (A003961 (n + 1))

end

end A379488.P16714666754279562112

noncomputable section

/-- A379488: a(n) = gcd(n,A276086(n)) * gcd(sigma(n),A003961(n)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and A276086 is the primorial base exp-function.

Offset 1, canonical program `A379488.P16714666754279562112`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A276086(n+1))*gcd(A000203(n+1), A003961(n+1))` (program `A379488.P16714666754279562112`, by `A379488.P16714666754279562112.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379488 (n : ℕ) : ℤ :=
  (A379488.P16714666754279562112.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A276086(n+1))*gcd(A000203(n+1), A003961(n+1))` (program `A379488.P16714666754279562112`, by `A379488.P16714666754279562112.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379488.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379489.P5639158952111483684

`gcd(n+1, A003961(n+1))*gcd(A000203(n+1), A276086(n+1))-gcd(n+1, A276086(n+1))*gcd(A000203(n+1), A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379489.P5639158952111483684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A003961 (n + 1)) * Int.gcd (A000203 (n + 1)) (A276086 (n + 1)) : ℤ) - (Int.gcd (n + 1 : ℤ) (A276086 (n + 1)) * Int.gcd (A000203 (n + 1)) (A003961 (n + 1)) : ℤ)

end

end A379489.P5639158952111483684

noncomputable section

/-- A379489: a(n) = gcd(n,A003961(n))*gcd(sigma(n),A276086(n)) - gcd(n,A276086(n))*gcd(sigma(n),A003961(n)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and A276086 is the primorial base exp-function.

Offset 1, canonical program `A379489.P5639158952111483684`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A003961(n+1))*gcd(A000203(n+1), A276086(n+1))-gcd(n+1, A276086(n+1))*gcd(A000203(n+1), A003961(n+1))` (program `A379489.P5639158952111483684`, by `A379489.P5639158952111483684.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379489 (n : ℕ) : ℤ :=
  A379489.P5639158952111483684.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A003961(n+1))*gcd(A000203(n+1), A276086(n+1))-gcd(n+1, A276086(n+1))*gcd(A000203(n+1), A003961(n+1))` (program `A379489.P5639158952111483684`, by `A379489.P5639158952111483684.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379489.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379493.P1723010228938902965

`A276086(A001065(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379493.P1723010228938902965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A001065 (n + 1)).toNat

end

end A379493.P1723010228938902965

noncomputable section

/-- A379493: a(n) = A276086(A001065(n)), where A276086 is the primorial base exp-function, and A001065 is the sum of proper divisors of n.

Offset 1, canonical program `A379493.P1723010228938902965`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(A001065(n+1))` (program `A379493.P1723010228938902965`, by `A379493.P1723010228938902965.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379493 (n : ℕ) : ℤ :=
  A379493.P1723010228938902965.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(A001065(n+1))` (program `A379493.P1723010228938902965`, by `A379493.P1723010228938902965.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379493.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379494.P5155282194616770280

`2*A276086(n+1)-A276086(A001065(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379494.P5155282194616770280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276086 (n + 1) - A276086 (A001065 (n + 1)).toNat

end

end A379494.P5155282194616770280

noncomputable section

/-- A379494: a(n) = 2*A276086(n) - A276086(A001065(n)), where A276086 is the primorial base exp-function, and A001065 is the sum of proper divisors of n.

Offset 1, canonical program `A379494.P5155282194616770280`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A276086(n+1)-A276086(A001065(n+1))` (program `A379494.P5155282194616770280`, by `A379494.P5155282194616770280.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379494 (n : ℕ) : ℤ :=
  A379494.P5155282194616770280.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A276086(n+1)-A276086(A001065(n+1))` (program `A379494.P5155282194616770280`, by `A379494.P5155282194616770280.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379494.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379498.P14632226456217932407

`A276086(1+n+1)-A276086(A001065(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379498.P14632226456217932407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (1 + (n + 1)) - A276086 (A001065 (n + 1)).toNat

end

end A379498.P14632226456217932407

noncomputable section

/-- A379498: a(n) = A276086(1+n) - A276086(A001065(n)), where A276086 is the primorial base exp-function, and A001065 is the sum of proper divisors of n.

Offset 1, canonical program `A379498.P14632226456217932407`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(1+n+1)-A276086(A001065(n+1))` (program `A379498.P14632226456217932407`, by `A379498.P14632226456217932407.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379498 (n : ℕ) : ℤ :=
  A379498.P14632226456217932407.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(1+n+1)-A276086(A001065(n+1))` (program `A379498.P14632226456217932407`, by `A379498.P14632226456217932407.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379498.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379715.P5673123717441379169

`A007434(A005117(n+1))`
-/

namespace A379715.P5673123717441379169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A005117 (n + 1)).toNat

end

end A379715.P5673123717441379169

noncomputable section

/-- A379715: The second Jordan totient function applied to the squarefree numbers.

Offset 1, canonical program `A379715.P5673123717441379169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379715 (n : ℕ) : ℤ :=
  A379715.P5673123717441379169.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379715.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379833.P6496859754452473676

`A007434(A000290(n+1))`
-/

namespace A379833.P6496859754452473676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A000290 (n + 1)).toNat

end

end A379833.P6496859754452473676

noncomputable section

/-- A379833: The second Jordan totient function applied to the squares.

Offset 1, canonical program `A379833.P6496859754452473676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379833 (n : ℕ) : ℤ :=
  A379833.P6496859754452473676.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379966.P12699400935038257798

`abs(A292273(n+1))`
-/

namespace A379966.P12699400935038257798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292273 (n + 1)|

end

end A379966.P12699400935038257798

noncomputable section

/-- A379966: a(n) = 1 if n is an even squarefree number, otherwise 0.

Offset 1, canonical program `A379966.P12699400935038257798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379966 (n : ℕ) : ℤ :=
  A379966.P12699400935038257798.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383286.P12214175577961306044

`∑{d}[n+1, A276086((n+1)/#)*A055615(#)]`
-/

namespace A383286.P12214175577961306044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276086 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A055615 d

end

end A383286.P12214175577961306044

noncomputable section

/-- A383286: Dirichlet convolution of A276086 (primorial base exp-function) with A055615 (Dirichlet inverse of n).

Offset 1, canonical program `A383286.P12214175577961306044`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383286 (n : ℕ) : ℤ :=
  A383286.P12214175577961306044.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385195.P13869607100043770004

`A138191(n+1)*A047994(n+1)`
-/

namespace A385195.P13869607100043770004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (n + 1) * A047994 (n + 1)

end

end A385195.P13869607100043770004

noncomputable section

/-- A385195: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is either 1 or 2.

Offset 1, canonical program `A385195.P13869607100043770004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385195 (n : ℕ) : ℤ :=
  A385195.P13869607100043770004.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385682.P9546998427617128553

`n*(A002088(n+1)-1)`
-/

namespace A385682.P9546998427617128553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002088 (n + 1) - 1)

end

end A385682.P9546998427617128553

noncomputable section

/-- A385682: a(n) = (n - 1) * Sum_{k=2..n} A000010(k).

Offset 1, canonical program `A385682.P9546998427617128553`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385682 (n : ℕ) : ℤ :=
  A385682.P9546998427617128553.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387879.P3115674822516309473

`A001222(A290103(n+1))`
-/

namespace A387879.P3115674822516309473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290103 (n + 1)).toNat

end

end A387879.P3115674822516309473

noncomputable section

/-- A387879: Number of prime factors with multiplicity (bigomega) of the least common multiple of the prime indices of n.

Offset 1, canonical program `A387879.P3115674822516309473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387879 (n : ℕ) : ℤ :=
  A387879.P3115674822516309473.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387879.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388018.P11038215183650310967

`A276086(floor(A000203(n+1)/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388018.P11038215183650310967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ⌊(A000203 (n + 1) : ℚ) / 2⌋.toNat

end

end A388018.P11038215183650310967

noncomputable section

/-- A388018: a(n) = A276086(floor(sigma(n)/2)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

Offset 1, canonical program `A388018.P11038215183650310967`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(floor(A000203(n+1)/2))` (program `A388018.P11038215183650310967`, by `A388018.P11038215183650310967.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388018 (n : ℕ) : ℤ :=
  A388018.P11038215183650310967.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(floor(A000203(n+1)/2))` (program `A388018.P11038215183650310967`, by `A388018.P11038215183650310967.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388018.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388021.P157890752316447162

`gcd(A276086(floor(A000203(n+1)/2)), A276086(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388021.P157890752316447162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 ⌊(A000203 (n + 1) : ℚ) / 2⌋.toNat) (A276086 (n + 1))

end

end A388021.P157890752316447162

noncomputable section

/-- A388021: a(n) = gcd(A276086(floor(sigma(n)/2)), A276086(n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

Offset 1, canonical program `A388021.P157890752316447162`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A276086(floor(A000203(n+1)/2)), A276086(n+1))` (program `A388021.P157890752316447162`, by `A388021.P157890752316447162.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388021 (n : ℕ) : ℤ :=
  (A388021.P157890752316447162.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A276086(floor(A000203(n+1)/2)), A276086(n+1))` (program `A388021.P157890752316447162`, by `A388021.P157890752316447162.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388021.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388031.P9747482596570530976

`A276086(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388031.P9747482596570530976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A000203 (n + 1)).toNat

end

end A388031.P9747482596570530976

noncomputable section

/-- A388031: a(n) = A276086(sigma(n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

Offset 1, canonical program `A388031.P9747482596570530976`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(A000203(n+1))` (program `A388031.P9747482596570530976`, by `A388031.P9747482596570530976.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388031 (n : ℕ) : ℤ :=
  A388031.P9747482596570530976.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(A000203(n+1))` (program `A388031.P9747482596570530976`, by `A388031.P9747482596570530976.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388031.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388032.P10905813676013906744

`gcd(A276086(A000203(n+1)), A276086(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388032.P10905813676013906744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (A000203 (n + 1)).toNat) (A276086 (2 * (n + 1)))

end

end A388032.P10905813676013906744

noncomputable section

/-- A388032: a(n) = gcd(A276086(sigma(n)), A276086(2*n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

Offset 1, canonical program `A388032.P10905813676013906744`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A276086(A000203(n+1)), A276086(2*(n+1)))` (program `A388032.P10905813676013906744`, by `A388032.P10905813676013906744.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388032 (n : ℕ) : ℤ :=
  (A388032.P10905813676013906744.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A276086(A000203(n+1)), A276086(2*(n+1)))` (program `A388032.P10905813676013906744`, by `A388032.P10905813676013906744.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388032.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388033.P14720664566435617461

`gcd(A276086(A000203(n+1)), A276086(3*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388033.P14720664566435617461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (A000203 (n + 1)).toNat) (A276086 (3 * (n + 1)))

end

end A388033.P14720664566435617461

noncomputable section

/-- A388033: a(n) = gcd(A276086(sigma(n)), A276086(3*n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

Offset 1, canonical program `A388033.P14720664566435617461`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A276086(A000203(n+1)), A276086(3*(n+1)))` (program `A388033.P14720664566435617461`, by `A388033.P14720664566435617461.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388033 (n : ℕ) : ℤ :=
  (A388033.P14720664566435617461.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A276086(A000203(n+1)), A276086(3*(n+1)))` (program `A388033.P14720664566435617461`, by `A388033.P14720664566435617461.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388033.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388264.P9362685053159324435

`gcd(A276086(n+1), A276086(A000203(n+1)-(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388264.P9362685053159324435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (n + 1)) (A276086 (A000203 (n + 1) - (n + 1 : ℤ)).toNat)

end

end A388264.P9362685053159324435

noncomputable section

/-- A388264: a(n) = gcd(A276086(n), A276086(sigma(n)-n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

Offset 1, canonical program `A388264.P9362685053159324435`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A276086(n+1), A276086(A000203(n+1)-(n+1)))` (program `A388264.P9362685053159324435`, by `A388264.P9362685053159324435.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388264 (n : ℕ) : ℤ :=
  (A388264.P9362685053159324435.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A276086(n+1), A276086(A000203(n+1)-(n+1)))` (program `A388264.P9362685053159324435`, by `A388264.P9362685053159324435.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388264.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388278.P45431919474992745

`gcd(A000203(n+1), A276086(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388278.P45431919474992745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A276086 (A000203 (n + 1)).toNat)

end

end A388278.P45431919474992745

noncomputable section

/-- A388278: a(n) = gcd(sigma(n), A276086(sigma(n))), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

Offset 1, canonical program `A388278.P45431919474992745`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A276086(A000203(n+1)))` (program `A388278.P45431919474992745`, by `A388278.P45431919474992745.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388278 (n : ℕ) : ℤ :=
  (A388278.P45431919474992745.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A276086(A000203(n+1)))` (program `A388278.P45431919474992745`, by `A388278.P45431919474992745.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388278.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388281.P10751153511483400946

`A276086(n+1)*A276086(A000203(n+1)-(n+1))-A276086(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388281.P10751153511483400946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) * A276086 (A000203 (n + 1) - (n + 1 : ℤ)).toNat - A276086 (A000203 (n + 1)).toNat

end

end A388281.P10751153511483400946

noncomputable section

/-- A388281: a(n) = A276086(n)*A276086(sigma(n)-n) - A276086(sigma(n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

Offset 1, canonical program `A388281.P10751153511483400946`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(n+1)*A276086(A000203(n+1)-(n+1))-A276086(A000203(n+1))` (program `A388281.P10751153511483400946`, by `A388281.P10751153511483400946.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388281 (n : ℕ) : ℤ :=
  A388281.P10751153511483400946.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(n+1)*A276086(A000203(n+1)-(n+1))-A276086(A000203(n+1))` (program `A388281.P10751153511483400946`, by `A388281.P10751153511483400946.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388281.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388282.P4645080312831076640

`A276086(n+1)*A276086(A000203(n+1)-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388282.P4645080312831076640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) * A276086 (A000203 (n + 1) - (n + 1 : ℤ)).toNat

end

end A388282.P4645080312831076640

noncomputable section

/-- A388282: a(n) = A276086(n) * A276086(sigma(n)-n), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

Offset 1, canonical program `A388282.P4645080312831076640`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(n+1)*A276086(A000203(n+1)-(n+1))` (program `A388282.P4645080312831076640`, by `A388282.P4645080312831076640.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388282 (n : ℕ) : ℤ :=
  A388282.P4645080312831076640.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(n+1)*A276086(A000203(n+1)-(n+1))` (program `A388282.P4645080312831076640`, by `A388282.P4645080312831076640.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388282.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A389978.P11057801239353336725

`(A367866(n+1)+A389977(n+1)+A367865(n+1)+A389775(n+1))/4`
-/

namespace A389978.P11057801239353336725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367866 (n + 1) + A389977 (n + 1) + A367865 (n + 1) + A389775 (n + 1) : ℚ) / 4

end

end A389978.P11057801239353336725

noncomputable section

/-- A389978: Arithmetic mean of A367866(n), A389977(n), A367865(n), and A389775(n).

Offset 1, canonical program `A389978.P11057801239353336725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389978 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389978.P11057801239353336725.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390442.P3251703464741091877

`A061503(10^n)`
-/

namespace A390442.P3251703464741091877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061503 (10 ^ n)

end

end A390442.P3251703464741091877

noncomputable section

/-- A390442: a(n) = Sum_{k<=10^n} d(k^2), where d(k^2) = number of divisors function A000005 for k^2.

Offset 0, canonical program `A390442.P3251703464741091877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390442 (n : ℕ) : ℤ :=
  A390442.P3251703464741091877.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390442.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A390755.P10814338958508066738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390755 (n : ℕ) : ℤ :=
  A390755.P10814338958508066738.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390755.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390801.P2099821867161505700

`(A010051(n+1)+1)*(n+1)*A117494(n+1)/2`
-/

namespace A390801.P2099821867161505700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A010051 (n + 1) + 1) * (n + 1 : ℤ) * A117494 (n + 1) : ℚ) / 2

end

end A390801.P2099821867161505700

noncomputable section

/-- A390801: The sum of the integers k from 1 to n such that gcd(n, k) is prime.

Offset 1, canonical program `A390801.P2099821867161505700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390801 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390801.P2099821867161505700.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390805.P3287936561210564327

`(n+1+A065333(n+1))*A372671(n+1)/2`
-/

namespace A390805.P3287936561210564327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) + A065333 (n + 1)) * A372671 (n + 1) : ℚ) / 2

end

end A390805.P3287936561210564327

noncomputable section

/-- A390805: The sum of the integers k from 1 to n such that gcd(n, k) is a 3-smooth number (A003586).

Offset 1, canonical program `A390805.P3287936561210564327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390805 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390805.P3287936561210564327.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390805.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392065.P5250998187842381599

`max(A056169(n+1), 1)`
-/

namespace A392065.P5250998187842381599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A056169 (n + 1)) (1 : ℤ)

end

end A392065.P5250998187842381599

noncomputable section

/-- A392065: a(n) = number of primes with unit exponent in the prime factorization of n, or 1 if no such primes exist.

Offset 1, canonical program `A392065.P5250998187842381599`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392065 (n : ℕ) : ℤ :=
  A392065.P5250998187842381599.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392065.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392085.P14049026985306902224

`A047994(A019554(n+1))`
-/

namespace A392085.P14049026985306902224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A019554 (n + 1)).toNat

end

end A392085.P14049026985306902224

noncomputable section

/-- A392085: The unitary totient of the smallest number whose square is divisible by n.

Offset 1, canonical program `A392085.P14049026985306902224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392085 (n : ℕ) : ℤ :=
  A392085.P14049026985306902224.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392087.P1327224941349964914

`A047994(A053143(n+1))`
-/

namespace A392087.P1327224941349964914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A053143 (n + 1)).toNat

end

end A392087.P1327224941349964914

noncomputable section

/-- A392087: The unitary totient of the smallest square divisible by n.

Offset 1, canonical program `A392087.P1327224941349964914`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392087 (n : ℕ) : ℤ :=
  A392087.P1327224941349964914.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392087.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392089.P14519463081902606176

`A047994(A197863(n+1))`
-/

namespace A392089.P14519463081902606176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A197863 (n + 1)).toNat

end

end A392089.P14519463081902606176

noncomputable section

/-- A392089: The unitary totient of the smallest powerful number that is divisible by n.

Offset 1, canonical program `A392089.P14519463081902606176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392089 (n : ℕ) : ℤ :=
  A392089.P14519463081902606176.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392089.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A392596.P4976257997501742737

`A276086(n)%360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392596.P4976257997501742737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 n) 360

end

end A392596.P4976257997501742737

noncomputable section

/-- A392596: a(n) = A276086(n) mod 360, where A276086 is the primorial base exp-function.

Offset 0, canonical program `A392596.P4976257997501742737`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(n)%360` (program `A392596.P4976257997501742737`, by `A392596.P4976257997501742737.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A392596 (n : ℕ) : ℤ :=
  A392596.P4976257997501742737.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276086(n)%360` (program `A392596.P4976257997501742737`, by `A392596.P4976257997501742737.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A392596.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392858.P10695519907855377116

`A028234(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392858.P10695519907855377116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A276086 n).toNat

end

end A392858.P10695519907855377116

noncomputable section

/-- A392858: a(n) = A028234(A276086(n)), where A276086 is the primorial base exp-function, and A028234 completely removes the smallest prime factor of its argument.

Offset 0, canonical program `A392858.P10695519907855377116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392858 (n : ℕ) : ℤ :=
  A392858.P10695519907855377116.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392858.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401936.P12641626855241721071

`A341526(2*(n+1))`
-/

namespace A401936.P12641626855241721071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (2 * (n + 1))

end

end A401936.P12641626855241721071

noncomputable section

/-- A401936: Numerator of ratio 2*n*sigma(A003961(2*n)) / sigma(2*n)*A003961(2*n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A401936.P12641626855241721071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401936 (n : ℕ) : ℤ :=
  A401936.P12641626855241721071.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401937.P5621126651802657141

`A341527(2*(n+1))`
-/

namespace A401937.P5621126651802657141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (2 * (n + 1))

end

end A401937.P5621126651802657141

noncomputable section

/-- A401937: Denominator of ratio 2*n*sigma(A003961(2*n)) / sigma(2*n)*A003961(2*n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A401937.P5621126651802657141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401937 (n : ℕ) : ℤ :=
  A401937.P5621126651802657141.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A402586.P6877875654712656001

`A341526(A003961(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402586.P6877875654712656001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (A003961 (2 * (n + 1))).toNat

end

end A402586.P6877875654712656001

noncomputable section

/-- A402586: a(n) = A341526(A003961(2*n)), where A341526(n) is the numerator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A402586.P6877875654712656001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402586 (n : ℕ) : ℤ :=
  A402586.P6877875654712656001.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A402587.P1443662691509151853

`A341527(A003961(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402587.P1443662691509151853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (A003961 (2 * (n + 1))).toNat

end

end A402587.P1443662691509151853

noncomputable section

/-- A402587: a(n) = A341527(A003961(2*n)), where A341527(n) is the denominator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A402587.P1443662691509151853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402587 (n : ℕ) : ℤ :=
  A402587.P1443662691509151853.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402587.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A341998.P3260792565066439335

`A003557(A003415(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341998.P3260792565066439335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003415 (n + 2)).toNat

end

end A341998.P3260792565066439335

noncomputable section

/-- A341998: Arithmetic derivative of n divided by its largest squarefree divisor: a(n) = A003557(A003415(n)).

Offset 2, canonical program `A341998.P3260792565066439335`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003557(A003415(n+2))` (program `A341998.P3260792565066439335`, by `A341998.P3260792565066439335.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A341998 (n : ℕ) : ℤ :=
  A341998.P3260792565066439335.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003557(A003415(n+2))` (program `A341998.P3260792565066439335`, by `A341998.P3260792565066439335.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A341998.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A342001.P4805983025243635594

`A003415(n+1)/A003557(n+1)`
-/

namespace A342001.P4805983025243635594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A342001.P4805983025243635594

noncomputable section

/-- A342001: Arithmetic derivative without its inherited divisor; the arithmetic derivative of n divided by A003557(n), which is a common divisor of both n and A003415(n).

Offset 1, canonical program `A342001.P4805983025243635594`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A342001.anchor (n : ℕ) (hn : 1 ≤ n) : A342001 n * A003557 n = A003415 n` in `Proof.A342.A342001`. -/
def A342001 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342001.P4805983025243635594.a (n - 1))

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A342001.anchor (n : ℕ) (hn : 1 ≤ n) : A342001 n * A003557 n = A003415 n` in `Proof.A342.A342001`. -/
def A342001.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A342014.P7987334312565012006

`A003415(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342014.P7987334312565012006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (n + 1)) (n + 1 : ℤ)

end

end A342014.P7987334312565012006

noncomputable section

/-- A342014: Arithmetic derivative of n, taken modulo n: a(n) = A003415(n) mod n.

Offset 1, canonical program `A342014.P7987334312565012006`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(n+1)%(n+1)` (program `A342014.P7987334312565012006`, by `A342014.P7987334312565012006.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342014 (n : ℕ) : ℤ :=
  A342014.P7987334312565012006.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(n+1)%(n+1)` (program `A342014.P7987334312565012006`, by `A342014.P7987334312565012006.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342014.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A342015.P8265712444697237280

`A003415(A276086(n))%A276086(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342015.P8265712444697237280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A276086 n).toNat) (A276086 n)

end

end A342015.P8265712444697237280

noncomputable section

/-- A342015: a(n) = A003415(A276086(n)) mod A276086(n).

Offset 0, canonical program `A342015.P8265712444697237280`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A276086(n))%A276086(n)` (program `A342015.P8265712444697237280`, by `A342015.P8265712444697237280.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342015 (n : ℕ) : ℤ :=
  A342015.P8265712444697237280.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A276086(n))%A276086(n)` (program `A342015.P8265712444697237280`, by `A342015.P8265712444697237280.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342015.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A342413.P16306425456188570454

`gcd(A000010(n+1), A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342413.P16306425456188570454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A003415 (n + 1))

end

end A342413.P16306425456188570454

noncomputable section

/-- A342413: a(n) = gcd(phi(n), A003415(n)), where A003415(n) is the arithmetic derivative of n, and phi is Euler totient function.

Offset 1, canonical program `A342413.P16306425456188570454`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000010(n+1), A003415(n+1))` (program `A342413.P16306425456188570454`, by `A342413.P16306425456188570454.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342413 (n : ℕ) : ℤ :=
  (A342413.P16306425456188570454.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000010(n+1), A003415(n+1))` (program `A342413.P16306425456188570454`, by `A342413.P16306425456188570454.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342413.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A342458.P90921969619416405

`gcd(A001615(n+1), A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342458.P90921969619416405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001615 (n + 1)) (A003415 (n + 1))

end

end A342458.P90921969619416405

noncomputable section

/-- A342458: a(n) = gcd(A001615(n), A003415(n)), where A001615 is Dedekind psi, and A003415 is the arithmetic derivative of n.

Offset 1, canonical program `A342458.P90921969619416405`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A001615(n+1), A003415(n+1))` (program `A342458.P90921969619416405`, by `A342458.P90921969619416405.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342458 (n : ℕ) : ℤ :=
  (A342458.P90921969619416405.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A001615(n+1), A003415(n+1))` (program `A342458.P90921969619416405`, by `A342458.P90921969619416405.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342458.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A342925.P15548023362340798578

`A003415(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342925.P15548023362340798578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000203 (n + 1)).toNat

end

end A342925.P15548023362340798578

noncomputable section

/-- A342925: a(n) = A003415(sigma(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A342925.P15548023362340798578`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A000203(n+1))` (program `A342925.P15548023362340798578`, by `A342925.P15548023362340798578.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342925 (n : ℕ) : ℤ :=
  A342925.P15548023362340798578.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A000203(n+1))` (program `A342925.P15548023362340798578`, by `A342925.P15548023362340798578.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342925.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A342926.P4470252803445258283

`A003415(A000203(n+1))-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342926.P4470252803445258283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000203 (n + 1)).toNat - (n + 1 : ℤ)

end

end A342926.P4470252803445258283

noncomputable section

/-- A342926: a(n) = A003415(sigma(n)) - n, where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A342926.P4470252803445258283`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A000203(n+1))-(n+1)` (program `A342926.P4470252803445258283`, by `A342926.P4470252803445258283.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342926 (n : ℕ) : ℤ :=
  A342926.P4470252803445258283.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A000203(n+1))-(n+1)` (program `A342926.P4470252803445258283`, by `A342926.P4470252803445258283.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342926.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A343223.P16005087766060085566

`gcd(A003415(n+1), A003415(A000203(n+1))-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343223.P16005087766060085566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A003415 (A000203 (n + 1)).toNat - (n + 1 : ℤ))

end

end A343223.P16005087766060085566

noncomputable section

/-- A343223: a(n) = gcd(A003415(n), A003415(sigma(n))-n), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343223.P16005087766060085566`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A003415(n+1), A003415(A000203(n+1))-(n+1))` (program `A343223.P16005087766060085566`, by `A343223.P16005087766060085566.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A343223 (n : ℕ) : ℤ :=
  (A343223.P16005087766060085566.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A003415(n+1), A003415(A000203(n+1))-(n+1))` (program `A343223.P16005087766060085566`, by `A343223.P16005087766060085566.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A343223.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A343224.P18101851413978261599

`A000203(n+1)-A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343224.P18101851413978261599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A003415 (n + 1)

end

end A343224.P18101851413978261599

noncomputable section

/-- A343224: a(n) = sigma(n) - A003415(n), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343224.P18101851413978261599`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A003415(n+1)` (program `A343224.P18101851413978261599`, by `A343224.P18101851413978261599.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A343224 (n : ℕ) : ℤ :=
  A343224.P18101851413978261599.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A003415(n+1)` (program `A343224.P18101851413978261599`, by `A343224.P18101851413978261599.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A343224.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A343226.P5865503827985673324

`gcd(A000203(n+1), n+1+A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343226.P5865503827985673324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) ((n + 1 : ℤ) + A003415 (n + 1))

end

end A343226.P5865503827985673324

noncomputable section

/-- A343226: a(n) = gcd(sigma(n), n+A003415(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343226.P5865503827985673324`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), n+1+A003415(n+1))` (program `A343226.P5865503827985673324`, by `A343226.P5865503827985673324.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A343226 (n : ℕ) : ℤ :=
  (A343226.P5865503827985673324.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), n+1+A003415(n+1))` (program `A343226.P5865503827985673324`, by `A343226.P5865503827985673324.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A343226.provenance : SequenceMachineLib.Provenance := .verified

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

/-- A343754: a(0) = 0, and for any n > 0, a(n+1) = a(n) - A065363(n+1) + 1.

Offset 0, canonical program `A343754.P7504119164661584635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343754 (n : ℕ) : ℤ :=
  A343754.P7504119164661584635.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343783.P5817121475055786338

`A053589(A000010(n+1))`
-/

namespace A343783.P5817121475055786338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A000010 (n + 1)).toNat

end

end A343783.P5817121475055786338

noncomputable section

/-- A343783: a(n) is the largest primorial number (A002110) which divides phi(n).

Offset 1, canonical program `A343783.P5817121475055786338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343783 (n : ℕ) : ℤ :=
  A343783.P5817121475055786338.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343783.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344024.P3749631349074452751

`A003415(A001615(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344024.P3749631349074452751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001615 (n + 1)).toNat

end

end A344024.P3749631349074452751

noncomputable section

/-- A344024: a(n) = A003415(A001615(n)).

Offset 1, canonical program `A344024.P3749631349074452751`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A001615(n+1))` (program `A344024.P3749631349074452751`, by `A344024.P3749631349074452751.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344024 (n : ℕ) : ℤ :=
  A344024.P3749631349074452751.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A001615(n+1))` (program `A344024.P3749631349074452751`, by `A344024.P3749631349074452751.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344024.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A344178.P7382453285315687724

`A003415(n+1)-A051953(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344178.P7382453285315687724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A051953 (n + 1)

end

end A344178.P7382453285315687724

noncomputable section

/-- A344178: Difference between the arithmetic derivative of n and the cototient of n: a(n) = A003415(n) - A051953(n).

Offset 1, canonical program `A344178.P7382453285315687724`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(n+1)-A051953(n+1)` (program `A344178.P7382453285315687724`, by `A344178.P7382453285315687724.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344178 (n : ℕ) : ℤ :=
  A344178.P7382453285315687724.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(n+1)-A051953(n+1)` (program `A344178.P7382453285315687724`, by `A344178.P7382453285315687724.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344178.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A345000.P1270652245702239418

`gcd(A003415(n), A003415(A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345000.P1270652245702239418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 n) (A003415 (A276086 n).toNat)

end

end A345000.P1270652245702239418

noncomputable section

/-- A345000: a(n) = gcd(A003415(n), A003415(A276086(n))), where A003415(n) is the arithmetic derivative of n, and A276086(n) gives the prime product form of primorial base expansion of n.

Offset 0, canonical program `A345000.P1270652245702239418`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A003415(n), A003415(A276086(n)))` (program `A345000.P1270652245702239418`, by `A345000.P1270652245702239418.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A345000 (n : ℕ) : ℤ :=
  (A345000.P1270652245702239418.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A003415(n), A003415(A276086(n)))` (program `A345000.P1270652245702239418`, by `A345000.P1270652245702239418.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A345000.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A345371.P15943345332420559631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345371 (n : ℕ) : ℤ :=
  A345371.P15943345332420559631.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345371.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346019.P9272715041891225070

`A011260(n+1)*A002884(n+1)/A000225(n+1)`
-/

namespace A346019.P9272715041891225070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011260 (n + 1) * A002884 (n + 1) : ℚ) / (A000225 (n + 1) : ℚ)

end

end A346019.P9272715041891225070

noncomputable section

/-- A346019: Number of n X n invertible matrices over GF(2) that have order 2^n-1.

Offset 1, canonical program `A346019.P9272715041891225070`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346019 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346019.P9272715041891225070.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346019.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347130.P18048451962218069273

`∑{d}[n+1, #*A003415((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347130.P18048451962218069273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347130.P18048451962218069273

noncomputable section

/-- A347130: a(n) = Sum_{d|n} d * A003415(n/d), where A003415 is the arithmetic derivative.

Offset 1, canonical program `A347130.P18048451962218069273`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A003415((n+1)/#)]` (program `A347130.P18048451962218069273`, by `A347130.P18048451962218069273.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A347130 (n : ℕ) : ℤ :=
  A347130.P18048451962218069273.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A003415((n+1)/#)]` (program `A347130.P18048451962218069273`, by `A347130.P18048451962218069273.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A347130.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A347131.P855661718135960566

`∑{d}[n+1, A000010((n+1)/#)*A003415(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347131.P855661718135960566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A003415 d

end

end A347131.P855661718135960566

noncomputable section

/-- A347131: a(n) = Sum_{d|n} phi(n/d) * A003415(d), where A003415 is the arithmetic derivative and phi is Euler totient function.

Offset 1, canonical program `A347131.P855661718135960566`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000010((n+1)/#)*A003415(#)]` (program `A347131.P855661718135960566`, by `A347131.P855661718135960566.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A347131 (n : ℕ) : ℤ :=
  A347131.P855661718135960566.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000010((n+1)/#)*A003415(#)]` (program `A347131.P855661718135960566`, by `A347131.P855661718135960566.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A347131.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A347132.P5241234760326282797

`∑{d}[n+1, A001615((n+1)/#)*A003415(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347132.P5241234760326282797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A003415 d

end

end A347132.P5241234760326282797

noncomputable section

/-- A347132: a(n) = Sum_{d|n} A001615(n/d) * A003415(d), where A003415 is the arithmetic derivative and A001615 is Dedekind psi function.

Offset 1, canonical program `A347132.P5241234760326282797`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A001615((n+1)/#)*A003415(#)]` (program `A347132.P5241234760326282797`, by `A347132.P5241234760326282797.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A347132 (n : ℕ) : ℤ :=
  A347132.P5241234760326282797.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A001615((n+1)/#)*A003415(#)]` (program `A347132.P5241234760326282797`, by `A347132.P5241234760326282797.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A347132.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A347133.P3990923410393341057

`∑{d}[n+1, A003415((n+1)/#)*A069359(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347133.P3990923410393341057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A069359 d

end

end A347133.P3990923410393341057

noncomputable section

/-- A347133: a(n) = Sum_{d|n} A003415(n/d) * A069359(d).

Offset 1, canonical program `A347133.P3990923410393341057`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A003415((n+1)/#)*A069359(#)]` (program `A347133.P3990923410393341057`, by `A347133.P3990923410393341057.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A347133 (n : ℕ) : ℤ :=
  A347133.P3990923410393341057.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A003415((n+1)/#)*A069359(#)]` (program `A347133.P3990923410393341057`, by `A347133.P3990923410393341057.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A347133.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A347870.P16417163983135192984

`A003415(A000203(n+1))%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347870.P16417163983135192984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A000203 (n + 1)).toNat) 2

end

end A347870.P16417163983135192984

noncomputable section

/-- A347870: a(n) = A003415(sigma(n)) mod 2, where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A347870.P16417163983135192984`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A000203(n+1))%2` (program `A347870.P16417163983135192984`, by `A347870.P16417163983135192984.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A347870 (n : ℕ) : ℤ :=
  A347870.P16417163983135192984.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A000203(n+1))%2` (program `A347870.P16417163983135192984`, by `A347870.P16417163983135192984.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A347870.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A347871.P15661038044456868434

`(n+1+A003415(A000203(n+1)))%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347871.P15661038044456868434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) + A003415 (A000203 (n + 1)).toNat) 2

end

end A347871.P15661038044456868434

noncomputable section

/-- A347871: a(n) = (n+A003415(sigma(n))) mod 2, where A003415 gives the arithmetic derivative of its argument.

Offset 1, canonical program `A347871.P15661038044456868434`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1+A003415(A000203(n+1)))%2` (program `A347871.P15661038044456868434`, by `A347871.P15661038044456868434.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A347871 (n : ℕ) : ℤ :=
  A347871.P15661038044456868434.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1+A003415(A000203(n+1)))%2` (program `A347871.P15661038044456868434`, by `A347871.P15661038044456868434.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A347871.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A347964.P3060589955124461694

`gcd(A003415(n+1), A003961(n+1))`
-/

namespace A347964.P3060589955124461694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A003961 (n + 1))

end

end A347964.P3060589955124461694

noncomputable section

/-- A347964: Greatest common divisor of A003415 (arithmetic derivative) and A003961 (prime shift towards larger primes).

Offset 1, canonical program `A347964.P3060589955124461694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347964 (n : ℕ) : ℤ :=
  (A347964.P3060589955124461694.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347965.P12359719817700726170

`∑{d}[n+1, A003415(#)*A003961((n+1)/#)]`
-/

namespace A347965.P12359719817700726170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347965.P12359719817700726170

noncomputable section

/-- A347965: Dirichlet convolution of A003415 (arithmetic derivative) with A003961 (prime shift towards larger primes).

Offset 1, canonical program `A347965.P12359719817700726170`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347965 (n : ℕ) : ℤ :=
  A347965.P12359719817700726170.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348028.P15680681678257223699

`gcd(A000203(n+1), A003415(n+1))`
-/

namespace A348028.P15680681678257223699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A003415 (n + 1))

end

end A348028.P15680681678257223699

noncomputable section

/-- A348028: Greatest common divisor of A003415 (arithmetic derivative) and sigma, the sum of divisors function.

Offset 1, canonical program `A348028.P15680681678257223699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348028 (n : ℕ) : ℤ :=
  (A348028.P15680681678257223699.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348028.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348281.P8709073695011581552

`∑{d}[n+1, A008966(#)*A003415(#)]`
-/

namespace A348281.P8709073695011581552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A003415 d

end

end A348281.P8709073695011581552

noncomputable section

/-- A348281: Sum of the arithmetic derivatives of the squarefree divisors of n: a(n) = Sum_{d|n} d' * mu(d)^2.

Offset 1, canonical program `A348281.P8709073695011581552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348281 (n : ℕ) : ℤ :=
  A348281.P8709073695011581552.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348281.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348492.P10916055508592838470

`gcd(A003415(n+1), A018804(n+1))`
-/

namespace A348492.P10916055508592838470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A018804 (n + 1))

end

end A348492.P10916055508592838470

noncomputable section

/-- A348492: Greatest common divisor of the arithmetic derivative (A003415) and Pillai's arithmetical function (A018804).

Offset 1, canonical program `A348492.P10916055508592838470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348492 (n : ℕ) : ℤ :=
  (A348492.P10916055508592838470.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348492.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348937.P9014571055681436291

`A003961(n+1)-A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348937.P9014571055681436291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A003415 (n + 1)

end

end A348937.P9014571055681436291

noncomputable section

/-- A348937: a(n) = A003961(n) - A003415(n), where A003961 shifts the prime factorization of n one step towards larger primes, and A003415 gives the arithmetic derivative of n.

Offset 1, canonical program `A348937.P9014571055681436291`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003961(n+1)-A003415(n+1)` (program `A348937.P9014571055681436291`, by `A348937.P9014571055681436291.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A348937 (n : ℕ) : ℤ :=
  A348937.P9014571055681436291.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003961(n+1)-A003415(n+1)` (program `A348937.P9014571055681436291`, by `A348937.P9014571055681436291.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A348937.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A349326.P1753618578232469732

`A001222(n+1)-A162641(n+1)`
-/

namespace A349326.P1753618578232469732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A162641 (n + 1)

end

end A349326.P1753618578232469732

noncomputable section

/-- A349326: a(n) is the number of prime powers (not including 1) that are bi-unitary divisors of n.

Offset 1, canonical program `A349326.P1753618578232469732`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349326 (n : ℕ) : ℤ :=
  A349326.P1753618578232469732.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349620.P12948975485756781096

`∑{d}[n+1, A003415((n+1)/#)*A097945(#)]`
-/

namespace A349620.P12948975485756781096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A097945 d

end

end A349620.P12948975485756781096

noncomputable section

/-- A349620: Dirichlet convolution of A003415 with the Dirichlet inverse of A003958.

Offset 1, canonical program `A349620.P12948975485756781096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349620 (n : ℕ) : ℤ :=
  A349620.P12948975485756781096.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349621.P12093437006858612415

`∑{d}[n+1, A003415((n+1)/#)*A063441(#)]`
-/

namespace A349621.P12093437006858612415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A063441 d

end

end A349621.P12093437006858612415

noncomputable section

/-- A349621: Dirichlet convolution of A003415 with the Dirichlet inverse of A003959.

Offset 1, canonical program `A349621.P12093437006858612415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349621 (n : ℕ) : ℤ :=
  A349621.P12093437006858612415.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349905.P349339303286256503

`A003415(A003961(n+1))`
-/

namespace A349905.P349339303286256503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003961 (n + 1)).toNat

end

end A349905.P349339303286256503

noncomputable section

/-- A349905: Arithmetic derivative of A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A349905.P349339303286256503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349905 (n : ℕ) : ℤ :=
  A349905.P349339303286256503.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349905.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351083.P7235252509183007653

`gcd(n, A003415(A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351083.P7235252509183007653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A003415 (A276086 n).toNat)

end

end A351083.P7235252509183007653

noncomputable section

/-- A351083: a(n) = gcd(n, A003415(A276086(n))), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

Offset 0, canonical program `A351083.P7235252509183007653`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, A003415(A276086(n)))` (program `A351083.P7235252509183007653`, by `A351083.P7235252509183007653.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351083 (n : ℕ) : ℤ :=
  (A351083.P7235252509183007653.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, A003415(A276086(n)))` (program `A351083.P7235252509183007653`, by `A351083.P7235252509183007653.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351083.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A351232.P1565197615898931278

`floor(A276086(n+2)/A003415(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351232.P1565197615898931278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276086 (n + 2) : ℚ) / (A003415 (n + 2) : ℚ)⌋

end

end A351232.P1565197615898931278

noncomputable section

/-- A351232: a(n) = floor(A276086(n) / A003415(n)), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

Offset 2, canonical program `A351232.P1565197615898931278`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A276086(n+2)/A003415(n+2))` (program `A351232.P1565197615898931278`, by `A351232.P1565197615898931278.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351232 (n : ℕ) : ℤ :=
  A351232.P1565197615898931278.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A276086(n+2)/A003415(n+2))` (program `A351232.P1565197615898931278`, by `A351232.P1565197615898931278.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351232.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A352031.P2060575896999822082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352031 (n : ℕ) : ℤ :=
  A352031.P2060575896999822082.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A352049.P5425156672999922043

`A051000(n+1)*A006519(n+1)^3-A000035(n+1)`
-/

namespace A352049.P5425156672999922043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051000 (n + 1) * A006519 (n + 1) ^ 3 - A000035 (n + 1)

end

end A352049.P5425156672999922043

noncomputable section

/-- A352049: Sum of the cubes of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352049.P5425156672999922043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352049 (n : ℕ) : ℤ :=
  A352049.P5425156672999922043.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352049.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A353350.P17688933372676458567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353350 (n : ℕ) : ℤ :=
  A353350.P17688933372676458567.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353350.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A353360.P3063535457221817968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353360 (n : ℕ) : ℤ :=
  A353360.P3063535457221817968.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353478.P1008730481002663857

`A064911(n+1)-A353480(n+1)`
-/

namespace A353478.P1008730481002663857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) - A353480 (n + 1)

end

end A353478.P1008730481002663857

noncomputable section

/-- A353478: a(n) = 1 if n is an even semiprime (2*prime), otherwise 0.

Offset 1, canonical program `A353478.P1008730481002663857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353478 (n : ℕ) : ℤ :=
  A353478.P1008730481002663857.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353493.P11274573970098312358

`A003415(n)%4`
-/

namespace A353493.P11274573970098312358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n) 4

end

end A353493.P11274573970098312358

noncomputable section

/-- A353493: The arithmetic derivative of n, reduced modulo 4.

Offset 0, canonical program `A353493.P11274573970098312358`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353493 (n : ℕ) : ℤ :=
  A353493.P11274573970098312358.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353493.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A358227.P15579769993062434402

`(A276086(n+2)%A003415(n+2))%2`
-/

namespace A358227.P15579769993062434402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A276086 (n + 2)) (A003415 (n + 2))) 2

end

end A358227.P15579769993062434402

noncomputable section

/-- A358227: Parity of A328382(n), where A328382(n) = A276086(n) mod A003415(n), with A003415 the arithmetic derivative and A276086 the primorial base exp-function.

Offset 2, canonical program `A358227.P15579769993062434402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358227 (n : ℕ) : ℤ :=
  A358227.P15579769993062434402.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358669.P10572792183562855357

`A003415(n)*A276086(n)`
-/

namespace A358669.P10572792183562855357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A276086 n

end

end A358669.P10572792183562855357

noncomputable section

/-- A358669: Pointwise product of the arithmetic derivative and the primorial base exp-function.

Offset 0, canonical program `A358669.P10572792183562855357`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358669 (n : ℕ) : ℤ :=
  A358669.P10572792183562855357.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358669.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359423.P3752607269913097873

`lcm(A003415(n), A276086(n))`
-/

namespace A359423.P3752607269913097873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003415 n) (A276086 n)

end

end A359423.P3752607269913097873

noncomputable section

/-- A359423: The least common multiple of the arithmetic derivative and the primorial base exp-function.

Offset 0, canonical program `A359423.P3752607269913097873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359423 (n : ℕ) : ℤ :=
  (A359423.P3752607269913097873.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359820.P4426895942293485706

`(n+A003415(n))%2`
-/

namespace A359820.P4426895942293485706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) + A003415 n) 2

end

end A359820.P4426895942293485706

noncomputable section

/-- A359820: a(n) = 1 if n and n' are of different parity, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415(n).

Offset 0, canonical program `A359820.P4426895942293485706`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359820 (n : ℕ) : ℤ :=
  A359820.P4426895942293485706.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359820.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A359832.P2867967108972259624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359832 (n : ℕ) : ℤ :=
  A359832.P2867967108972259624.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359832.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368647.P6890929061440035933

`A005090(n+1)-A005088(n+1)`
-/

namespace A368647.P6890929061440035933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1) - A005088 (n + 1)

end

end A368647.P6890929061440035933

noncomputable section

/-- A368647: The number of distinct primes of the form 3*k+2 dividing n minus the number of distinct primes of the form 3*k+1 dividing n.

Offset 1, canonical program `A368647.P6890929061440035933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368647 (n : ℕ) : ℤ :=
  A368647.P6890929061440035933.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369049.P9666257041072368809

`(n+2)%A003415(n+2)`
-/

namespace A369049.P9666257041072368809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A003415 (n + 2))

end

end A369049.P9666257041072368809

noncomputable section

/-- A369049: a(n) = n mod n', where n' is the arithmetic derivative of n, A003415.

Offset 2, canonical program `A369049.P9666257041072368809`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369049 (n : ℕ) : ℤ :=
  A369049.P9666257041072368809.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369049.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369052.P13766350415687932564

`n-2*A003415(n)`
-/

namespace A369052.P13766350415687932564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A003415 n

end

end A369052.P13766350415687932564

noncomputable section

/-- A369052: a(n) = n - n'*2, where n' is the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369052.P13766350415687932564`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369052 (n : ℕ) : ℤ :=
  A369052.P13766350415687932564.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369449.P8045217014488078156

`A003415(gcd(A003415(n), A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369449.P8045217014488078156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.gcd (A003415 n) (A276086 n))

end

end A369449.P8045217014488078156

noncomputable section

/-- A369449: a(n) = A003415(gcd(A003415(n), A276086(n))), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

Offset 0, canonical program `A369449.P8045217014488078156`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(gcd(A003415(n), A276086(n)))` (program `A369449.P8045217014488078156`, by `A369449.P8045217014488078156.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A369449 (n : ℕ) : ℤ :=
  A369449.P8045217014488078156.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(gcd(A003415(n), A276086(n)))` (program `A369449.P8045217014488078156`, by `A369449.P8045217014488078156.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A369449.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A369465.P18253036522274647247

`A003415(A000265(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369465.P18253036522274647247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000265 (n + 1)).toNat

end

end A369465.P18253036522274647247

noncomputable section

/-- A369465: Arithmetic derivative of the odd part of n: a(n) = A003415(A000265(n)).

Offset 1, canonical program `A369465.P18253036522274647247`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A000265(n+1))` (program `A369465.P18253036522274647247`, by `A369465.P18253036522274647247.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A369465 (n : ℕ) : ℤ :=
  A369465.P18253036522274647247.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A000265(n+1))` (program `A369465.P18253036522274647247`, by `A369465.P18253036522274647247.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A369465.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A369658.P409423305445294084

`A011655(n)*A079978(A003415(n))`
-/

namespace A369658.P409423305445294084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A079978 (A003415 n).toNat

end

end A369658.P409423305445294084

noncomputable section

/-- A369658: a(n) = 1 if n is not multiple of 3, but its arithmetic derivative is, otherwise 0.

Offset 0, canonical program `A369658.P409423305445294084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369658 (n : ℕ) : ℤ :=
  A369658.P409423305445294084.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369964.P5801669577561155730

`gcd(n, A276086(A003415(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369964.P5801669577561155730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276086 (A003415 n).toNat)

end

end A369964.P5801669577561155730

noncomputable section

/-- A369964: a(n) = gcd(n, A276086(A003415(n))), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

Offset 0, canonical program `A369964.P5801669577561155730`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, A276086(A003415(n)))` (program `A369964.P5801669577561155730`, by `A369964.P5801669577561155730.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A369964 (n : ℕ) : ℤ :=
  (A369964.P5801669577561155730.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, A276086(A003415(n)))` (program `A369964.P5801669577561155730`, by `A369964.P5801669577561155730.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A369964.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A369971.P10735076753554788043

`A003415(n)%A276086(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369971.P10735076753554788043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n) (A276086 n)

end

end A369971.P10735076753554788043

noncomputable section

/-- A369971: a(n) = A003415(n) mod A276086(n), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

Offset 0, canonical program `A369971.P10735076753554788043`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(n)%A276086(n)` (program `A369971.P10735076753554788043`, by `A369971.P10735076753554788043.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A369971 (n : ℕ) : ℤ :=
  A369971.P10735076753554788043.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(n)%A276086(n)` (program `A369971.P10735076753554788043`, by `A369971.P10735076753554788043.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A369971.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A370129.P9840769803165545033

`A003415(A002110(col(n))+A002110(row(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370129.P9840769803165545033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002110 (SequenceMachineLib.triCol n) + A002110 (SequenceMachineLib.triRow n)).toNat

end

end A370129.P9840769803165545033

noncomputable section

/-- A370129: Triangle read by rows: T(n,k) = A003415(A002110(n)+A002110(k)), 0 <= k <= n; arithmetic derivatives of the sums of two primorial numbers.

Offset 0, canonical program `A370129.P9840769803165545033`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A002110(col(n))+A002110(row(n)))` (program `A370129.P9840769803165545033`, by `A370129.P9840769803165545033.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A370129 (n : ℕ) : ℤ :=
  A370129.P9840769803165545033.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A002110(col(n))+A002110(row(n)))` (program `A370129.P9840769803165545033`, by `A370129.P9840769803165545033.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A370129.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A370136.P9101358364246055497

`A003415(A370135(n+1))`
-/

namespace A370136.P9101358364246055497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A370135 (n + 1)).toNat

end

end A370136.P9101358364246055497

noncomputable section

/-- A370136: Triangle read by rows: T(n,k) = arithmetic derivative of ((A002110(n) + A002110(k)) / A002110(k)), 1 <= k <= n.

Offset 1, canonical program `A370136.P9101358364246055497`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370136 (n : ℕ) : ℤ :=
  A370136.P9101358364246055497.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370136.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A371241.P3336735415354653583`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371241 (n : ℕ) : ℤ :=
  A371241.P3336735415354653583.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371241.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A373364.P8547950682954605811

`gcd(A001414(n+1), A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373364.P8547950682954605811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A003415 (n + 1))

end

end A373364.P8547950682954605811

noncomputable section

/-- A373364: a(n) = gcd(A001414(n), A003415(n)), where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373364.P8547950682954605811`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A001414(n+1), A003415(n+1))` (program `A373364.P8547950682954605811`, by `A373364.P8547950682954605811.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373364 (n : ℕ) : ℤ :=
  (A373364.P8547950682954605811.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A001414(n+1), A003415(n+1))` (program `A373364.P8547950682954605811`, by `A373364.P8547950682954605811.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373364.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373378.P10527804260792404236

`gcd(A003415(n+1), A059975(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373378.P10527804260792404236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A059975 (n + 1))

end

end A373378.P10527804260792404236

noncomputable section

/-- A373378: a(n) = gcd(A003415(n), A059975(n)), where A003415 is the arithmetic derivative and A059975 is fully additive with a(p) = p-1.

Offset 1, canonical program `A373378.P10527804260792404236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373378 (n : ℕ) : ℤ :=
  (A373378.P10527804260792404236.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373480.P17278960438644468592

`A003415(n+2)%A001414(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373480.P17278960438644468592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (n + 2)) (A001414 (n + 2))

end

end A373480.P17278960438644468592

noncomputable section

/-- A373480: a(n) = A003415(n) mod A001414(n), where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

Offset 2, canonical program `A373480.P17278960438644468592`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(n+2)%A001414(n+2)` (program `A373480.P17278960438644468592`, by `A373480.P17278960438644468592.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373480 (n : ℕ) : ℤ :=
  A373480.P17278960438644468592.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(n+2)%A001414(n+2)` (program `A373480.P17278960438644468592`, by `A373480.P17278960438644468592.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373480.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373845.P12208924988060939389

`A003415(1+A370121(C(row(n)+2, 2)+col(n)+1))`
-/

namespace A373845.P12208924988060939389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (1 + A370121 (Nat.choose (SequenceMachineLib.triRow n + 2) 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A373845.P12208924988060939389

noncomputable section

/-- A373845: Triangle read by rows: T(n,k) = arithmetic derivative of (1 + A002110(n) + A002110(k)), 1 <= k <= n, where A002110(n) is the n-th primorial number.

Offset 1, canonical program `A373845.P12208924988060939389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373845 (n : ℕ) : ℤ :=
  A373845.P12208924988060939389.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373849.P17528066615720663613

`A276086(n)-A003415(n)`
-/

namespace A373849.P17528066615720663613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A003415 n

end

end A373849.P17528066615720663613

noncomputable section

/-- A373849: Difference between the primorial base exp-function and the arithmetic derivative.

Offset 0, canonical program `A373849.P17528066615720663613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373849 (n : ℕ) : ℤ :=
  A373849.P17528066615720663613.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373849.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A378123.P719144829619954669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378123 (n : ℕ) : ℤ :=
  A378123.P719144829619954669.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379967.P12250939003195279045

`A003415(A003557(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379967.P12250939003195279045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003557 (n + 1)).toNat

end

end A379967.P12250939003195279045

noncomputable section

/-- A379967: Arithmetic derivative of {n divided by its largest squarefree divisor}: a(n) = A003415(A003557(n)).

Offset 1, canonical program `A379967.P12250939003195279045`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A003557(n+1))` (program `A379967.P12250939003195279045`, by `A379967.P12250939003195279045.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379967 (n : ℕ) : ℤ :=
  A379967.P12250939003195279045.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003415(A003557(n+1))` (program `A379967.P12250939003195279045`, by `A379967.P12250939003195279045.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379967.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A382489.P8206433590181445063`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382489 (n : ℕ) : ℤ :=
  A382489.P8206433590181445063.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382489.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A384042.P14644639506772566122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384042 (n : ℕ) : ℤ :=
  A384042.P14644639506772566122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384048.P15247859992876317530

`A047994(A057521(n+1))*A055231(n+1)`
-/

namespace A384048.P15247859992876317530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A057521 (n + 1)).toNat * A055231 (n + 1)

end

end A384048.P15247859992876317530

noncomputable section

/-- A384048: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is squarefree.

Offset 1, canonical program `A384048.P15247859992876317530`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384048 (n : ℕ) : ℤ :=
  A384048.P15247859992876317530.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384055.P10252134696873280874

`A047994(A006519(n+1))*A000265(n+1)`
-/

namespace A384055.P10252134696873280874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A006519 (n + 1)).toNat * A000265 (n + 1)

end

end A384055.P10252134696873280874

noncomputable section

/-- A384055: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is odd.

Offset 1, canonical program `A384055.P10252134696873280874`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384055 (n : ℕ) : ℤ :=
  A384055.P10252134696873280874.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384057.P11150408959898623205

`A047994(A065330(n+1))*A065331(n+1)`
-/

namespace A384057.P11150408959898623205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A065330 (n + 1)).toNat * A065331 (n + 1)

end

end A384057.P11150408959898623205

noncomputable section

/-- A384057: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a 3-smooth number.

Offset 1, canonical program `A384057.P11150408959898623205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384057 (n : ℕ) : ℤ :=
  A384057.P11150408959898623205.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384058.P8076363188625105423

`A047994(A065331(n+1))*A065330(n+1)`
-/

namespace A384058.P8076363188625105423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A065331 (n + 1)).toNat * A065330 (n + 1)

end

end A384058.P8076363188625105423

noncomputable section

/-- A384058: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a 5-rough number (A007310).

Offset 1, canonical program `A384058.P8076363188625105423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384058 (n : ℕ) : ℤ :=
  A384058.P8076363188625105423.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393041.P11346140411261592941

`A276084(A003415(n+2))`
-/

namespace A393041.P11346140411261592941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A003415 (n + 2)).toNat

end

end A393041.P11346140411261592941

noncomputable section

/-- A393041: Number of trailing zeros in the primorial base representation of the arithmetic derivative of n.

Offset 2, canonical program `A393041.P11346140411261592941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393041 (n : ℕ) : ℤ :=
  A393041.P11346140411261592941.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393041.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A394085.P10152136709517601280`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394085 (n : ℕ) : ℤ :=
  A394085.P10152136709517601280.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395042.P702826538726688441

`A006530(A003415(n+2))`
-/

namespace A395042.P702826538726688441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003415 (n + 2)).toNat

end

end A395042.P702826538726688441

noncomputable section

/-- A395042: Greatest prime dividing arithmetic derivative of n; and for primes p, a(p)=1.

Offset 2, canonical program `A395042.P702826538726688441`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395042 (n : ℕ) : ℤ :=
  A395042.P702826538726688441.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400173.P10105449556572112451

`∑{d}[n+1, A008836((n+1)/#)*A003415(#)]`
-/

namespace A400173.P10105449556572112451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A003415 d

end

end A400173.P10105449556572112451

noncomputable section

/-- A400173: Dirichlet convolution of the arithmetic derivative with Liouville's lambda.

Offset 1, canonical program `A400173.P10105449556572112451`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400173 (n : ℕ) : ℤ :=
  A400173.P10105449556572112451.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401022.P16118425534443193509

`A065331(n+1)*A065331(n+2)`
-/

namespace A401022.P16118425534443193509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1) * A065331 (n + 2)

end

end A401022.P16118425534443193509

noncomputable section

/-- A401022: Largest 3-smooth divisor of n*(n+1).

Offset 1, canonical program `A401022.P16118425534443193509`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401022 (n : ℕ) : ℤ :=
  A401022.P16118425534443193509.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401022.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A341655.P6120096683060314371

`A000005(A084920(n+1))`
-/

namespace A341655.P6120096683060314371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A084920 (n + 1)).toNat

end

end A341655.P6120096683060314371

noncomputable section

/-- A341655: a(n) is the number of divisors of prime(n)^2 - 1.

Offset 1, canonical program `A341655.P6120096683060314371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341655 (n : ℕ) : ℤ :=
  A341655.P6120096683060314371.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341655.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A343656.P8994259511323762319

`A000005(A009998(n))`
-/

namespace A343656.P8994259511323762319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009998 n).toNat

end

end A343656.P8994259511323762319

noncomputable section

/-- A343656: Array read by antidiagonals where A(n,k) is the number of divisors of n^k.

Offset 1, canonical program `A343656.P8994259511323762319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343656 (n : ℕ) : ℤ :=
  A343656.P8994259511323762319.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343657.P3086182184823910990

`∑{#}[n, A000005((#+1)^(n+1-(#+1)))]`
-/

namespace A343657.P3086182184823910990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (SequenceMachineLib.roundAway ((k + 1 : ℚ) ^ ((n + 1 : ℤ) - (k + 1 : ℤ) : ℤ))).toNat

end

end A343657.P3086182184823910990

noncomputable section

/-- A343657: Sum of number of divisors of x^y for each x >= 1, y >= 0, x + y = n.

Offset 1, canonical program `A343657.P3086182184823910990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343657 (n : ℕ) : ℤ :=
  A343657.P3086182184823910990.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343658.P5372349967032378966

`C(A000005(col(n)+1)+row(n)-col(n)-1, row(n)-col(n))`
-/

namespace A343658.P5372349967032378966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (SequenceMachineLib.triCol n + 1) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) - 1).toNat ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A343658.P5372349967032378966

noncomputable section

/-- A343658: Array read by antidiagonals where A(n,k) is the number of ways to choose a multiset of k divisors of n.

Offset 1, canonical program `A343658.P5372349967032378966`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343658 (n : ℕ) : ℤ :=
  (A343658.P5372349967032378966.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343877.P7620220508476975172

`1/2*A000005(n+1)²-3/2*A000005(n+1)+1`
-/

namespace A343877.P7620220508476975172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000005 (n + 1) ^ 2 : ℚ) - (3 : ℚ) / 2 * (A000005 (n + 1) : ℚ) + 1

end

end A343877.P7620220508476975172

noncomputable section

/-- A343877: Number of pairs (d1, d2) of divisors of n such that d1<d2, d1|n, d2|n, and d1 + d2 <= n.

Offset 1, canonical program `A343877.P7620220508476975172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343877 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343877.P7620220508476975172.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343877.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343936.P9493429556272935306

`C(A000005(n+1)+n+1-2, n)`
-/

namespace A343936.P9493429556272935306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1) + (n + 1 : ℤ) - 2).toNat n

end

end A343936.P9493429556272935306

noncomputable section

/-- A343936: Number of ways to choose a multiset of n-1 divisors of n.

Offset 1, canonical program `A343936.P9493429556272935306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343936 (n : ℕ) : ℤ :=
  (A343936.P9493429556272935306.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344080.P9379082641746424196

`∑{d}[n+1, A000005(#)^(n+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344080.P9379082641746424196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d ^ (n + 1)

end

end A344080.P9379082641746424196

noncomputable section

/-- A344080: a(n) = Sum_{d|n} tau(d)^n, where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344080.P9379082641746424196`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#)^(n+1)]` (program `A344080.P9379082641746424196`, by `A344080.P9379082641746424196.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344080 (n : ℕ) : ℤ :=
  A344080.P9379082641746424196.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#)^(n+1)]` (program `A344080.P9379082641746424196`, by `A344080.P9379082641746424196.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344080.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A344081.P5935643331061896633

`∑{d}[n+1, A000005(#)^#]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344081.P5935643331061896633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d ^ d

end

end A344081.P5935643331061896633

noncomputable section

/-- A344081: a(n) = Sum_{d|n} tau(d)^d, where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344081.P5935643331061896633`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#)^#]` (program `A344081.P5935643331061896633`, by `A344081.P5935643331061896633.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344081 (n : ℕ) : ℤ :=
  A344081.P5935643331061896633.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#)^#]` (program `A344081.P5935643331061896633`, by `A344081.P5935643331061896633.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344081.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A344082.P743711698128791202

`(n+1)*∑{d}[n+1, A000005(#)^3/#]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344082.P743711698128791202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (A000005 d ^ 3 : ℚ) / (d : ℚ))

end

end A344082.P743711698128791202

noncomputable section

/-- A344082: a(n) = n * Sum_{d|n} tau(d)^3 / d, where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344082.P743711698128791202`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344082 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344082.P743711698128791202.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344082.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344132.P14079198491351242809

`∑{d}[n+1, A000010((n+1)/#)*A000005(#)^3]`
-/

namespace A344132.P14079198491351242809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000005 d ^ 3

end

end A344132.P14079198491351242809

noncomputable section

/-- A344132: a(n) = Sum_{i|n, j|n, k|n} gcd(i,j,k).

Offset 1, canonical program `A344132.P14079198491351242809`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344132 (n : ℕ) : ℤ :=
  A344132.P14079198491351242809.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344138.P13199939970990476506

`∑{d}[n+1, A000010((n+1)/#)*A000005(#)^4]`
-/

namespace A344138.P13199939970990476506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000005 d ^ 4

end

end A344138.P13199939970990476506

noncomputable section

/-- A344138: a(n) = Sum_{x_1|n, x_2|n, x_3|n, x_4|n} gcd(x_1,x_2,x_3,x_4).

Offset 1, canonical program `A344138.P13199939970990476506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344138 (n : ℕ) : ℤ :=
  A344138.P13199939970990476506.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344139.P7680065088461015837

`∑{d}[n+1, A000010((n+1)/#)*A000005(#)^5]`
-/

namespace A344139.P7680065088461015837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000005 d ^ 5

end

end A344139.P7680065088461015837

noncomputable section

/-- A344139: a(n) = Sum_{x_1|n, x_2|n, x_3|n, x_4|n, x_5|n} gcd(x_1,x_2,x_3,x_4,x_5).

Offset 1, canonical program `A344139.P7680065088461015837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344139 (n : ℕ) : ℤ :=
  A344139.P7680065088461015837.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344140.P11728107494282189935

`∑{#}[n, A000005(gcd(#+1, n+1))^(n+1)]`
-/

namespace A344140.P11728107494282189935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (Nat.gcd (k + 1) (n + 1)) ^ (n + 1)

end

end A344140.P11728107494282189935

noncomputable section

/-- A344140: a(n) = Sum_{x_1|n, x_2|n, ... , x_n|n} gcd(x_1,x_2, ... ,x_n).

Offset 1, canonical program `A344140.P11728107494282189935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344140 (n : ℕ) : ℤ :=
  A344140.P11728107494282189935.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344140.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344194.P8007313908696058656

`∑{d}[n+1, A000010((n+1)/#)*A000005(#)^#]`
-/

namespace A344194.P8007313908696058656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000005 d ^ d

end

end A344194.P8007313908696058656

noncomputable section

/-- A344194: a(n) = Sum_{k=1..n} tau(gcd(k,n))^gcd(k,n), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344194.P8007313908696058656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344194 (n : ℕ) : ℤ :=
  A344194.P8007313908696058656.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344195.P3521261915566966378

`∑{#}[n, A000005(gcd(#+1, n+1))^((n+1)/gcd(#+1, n+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344195.P3521261915566966378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A000005 (Nat.gcd (k + 1) (n + 1)) : ℝ) ^ ((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ) : ℝ)

end

end A344195.P3521261915566966378

noncomputable section

/-- A344195: a(n) = Sum_{k=1..n} tau(gcd(k,n))^(n/gcd(k,n)), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344195.P3521261915566966378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344195 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344195.P3521261915566966378.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344221.P9319909059341751291

`∑{#}[n, A000005(gcd(#+1, n+1)^3)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344221.P9319909059341751291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (Nat.gcd (k + 1) (n + 1) ^ 3)

end

end A344221.P9319909059341751291

noncomputable section

/-- A344221: a(n) = Sum_{k=1..n} tau(gcd(k,n)^3), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344221.P9319909059341751291`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(gcd(#+1, n+1)^3)]` (program `A344221.P9319909059341751291`, by `A344221.P9319909059341751291.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344221 (n : ℕ) : ℤ :=
  A344221.P9319909059341751291.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(gcd(#+1, n+1)^3)]` (program `A344221.P9319909059341751291`, by `A344221.P9319909059341751291.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344221.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A344222.P752661265684727123

`∑{#}[n, A000005(gcd(#+1, n+1)^4)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344222.P752661265684727123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (Nat.gcd (k + 1) (n + 1) ^ 4)

end

end A344222.P752661265684727123

noncomputable section

/-- A344222: a(n) = Sum_{k=1..n} tau(gcd(k,n)^4), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344222.P752661265684727123`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(gcd(#+1, n+1)^4)]` (program `A344222.P752661265684727123`, by `A344222.P752661265684727123.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344222 (n : ℕ) : ℤ :=
  A344222.P752661265684727123.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(gcd(#+1, n+1)^4)]` (program `A344222.P752661265684727123`, by `A344222.P752661265684727123.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344222.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A344225.P6328565837246980582

`∑{#}[n, A000005(gcd(#+1, n+1)^((n+1)/gcd(#+1, n+1)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344225.P6328565837246980582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (SequenceMachineLib.roundAway ((Nat.gcd (k + 1) (n + 1) : ℝ) ^ ((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ) : ℝ))).toNat

end

end A344225.P6328565837246980582

noncomputable section

/-- A344225: a(n) = Sum_{k=1..n} tau(gcd(k,n)^(n/gcd(k,n))), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344225.P6328565837246980582`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(gcd(#+1, n+1)^((n+1)/gcd(#+1, n+1)))]` (program `A344225.P6328565837246980582`, by `A344225.P6328565837246980582.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344225 (n : ℕ) : ℤ :=
  A344225.P6328565837246980582.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(gcd(#+1, n+1)^((n+1)/gcd(#+1, n+1)))]` (program `A344225.P6328565837246980582`, by `A344225.P6328565837246980582.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A344225.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A344327.P15642823639116643076

`A000005((n+1)^4)`
-/

namespace A344327.P15642823639116643076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 4)

end

end A344327.P15642823639116643076

noncomputable section

/-- A344327: Number of divisors of n^4.

Offset 1, canonical program `A344327.P15642823639116643076`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344327 (n : ℕ) : ℤ :=
  A344327.P15642823639116643076.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344328.P7500446427768211364

`A000005((n+1)^5)`
-/

namespace A344328.P7500446427768211364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 5)

end

end A344328.P7500446427768211364

noncomputable section

/-- A344328: Number of divisors of n^5.

Offset 1, canonical program `A344328.P7500446427768211364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344328 (n : ℕ) : ℤ :=
  A344328.P7500446427768211364.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344622.P604899267648215376

`(n+1)*(n+2)/2-A000203(n+1)+A000005(n+1)`
-/

namespace A344622.P604899267648215376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℚ) / 2 - (A000203 (n + 1) : ℚ) + (A000005 (n + 1) : ℚ)

end

end A344622.P604899267648215376

noncomputable section

/-- A344622: a(n) = n*(n+1)/2 - sigma(n) + d(n).

Offset 1, canonical program `A344622.P604899267648215376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344622 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344622.P604899267648215376.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344864.P10480218057850576590

`A008683(A000005(n+1))`
-/

namespace A344864.P10480218057850576590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000005 (n + 1)).toNat

end

end A344864.P10480218057850576590

noncomputable section

/-- A344864: a(n) = mu(d(n)).

Offset 1, canonical program `A344864.P10480218057850576590`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344864 (n : ℕ) : ℤ :=
  A344864.P10480218057850576590.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344864.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345219.P8018862151870191580

`A000005(n+1)-A345220(n+1)`
-/

namespace A345219.P8018862151870191580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A345220 (n + 1)

end

end A345219.P8018862151870191580

noncomputable section

/-- A345219: Number of divisors d of n with an odd number of primes not exceeding d.

Offset 1, canonical program `A345219.P8018862151870191580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345219 (n : ℕ) : ℤ :=
  A345219.P8018862151870191580.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345219.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A345270.P9432890020347198030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345270 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345270.P9432890020347198030.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345270.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345271.P9011616503951983063

`∑{d}[n+1, (n+1)^A000005(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345271.P9011616503951983063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A000005 d : ℤ)

end

end A345271.P9011616503951983063

noncomputable section

/-- A345271: a(n) = Sum_{d|n} n^tau(d).

Offset 1, canonical program `A345271.P9011616503951983063`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A345271.anchor (n : ℕ) : (A345271 (n + 1) : ℚ) = ∑ d ∈ Nat.divisors ((n + 1)), (n + 1 : ℚ) ^ (A000005 d : ℤ)` in `Proof.A345.A345271`. -/
def A345271 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345271.P9011616503951983063.a (n - 1))

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A345271.anchor (n : ℕ) : (A345271 (n + 1) : ℚ) = ∑ d ∈ Nat.divisors ((n + 1)), (n + 1 : ℚ) ^ (A000005 d : ℤ)` in `Proof.A345.A345271`. -/
def A345271.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A345273.P16033558317031481753

`∑{d}[n+1, (n+1-#)^A000005(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345273.P16033558317031481753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) - (d : ℤ) : ℚ) ^ (A000005 d : ℤ)

end

end A345273.P16033558317031481753

noncomputable section

/-- A345273: a(n) = Sum_{d|n} (n-d)^tau(d).

Offset 1, canonical program `A345273.P16033558317031481753`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A345273.anchor (n : ℕ) : (A345273 (n + 1) : ℚ) = ∑ d ∈ Nat.divisors ((n + 1)), ((n + 1 : ℤ) - (d : ℤ) : ℚ) ^ (A000005 d : ℤ)` in `Proof.A345.A345273`. -/
def A345273 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345273.P16033558317031481753.a (n - 1))

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A345273.anchor (n : ℕ) : (A345273 (n + 1) : ℚ) = ∑ d ∈ Nat.divisors ((n + 1)), ((n + 1 : ℤ) - (d : ℤ) : ℚ) ^ (A000005 d : ℤ)` in `Proof.A345.A345273`. -/
def A345273.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A345274.P3409178840986352615

`∑{d}[n+1, (n+1-#)^A000005((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345274.P3409178840986352615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) - (d : ℤ) : ℚ) ^ (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ)

end

end A345274.P3409178840986352615

noncomputable section

/-- A345274: a(n) = Sum_{d|n} (n-d)^tau(n/d).

Offset 1, canonical program `A345274.P3409178840986352615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345274.P3409178840986352615.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345274.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345741.P11174214497306695299

`n+1+n*A000005(n+1)`
-/

namespace A345741.P11174214497306695299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (n : ℤ) * A000005 (n + 1)

end

end A345741.P11174214497306695299

noncomputable section

/-- A345741: a(n) = n + (n - 1) * d(n).

Offset 1, canonical program `A345741.P11174214497306695299`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345741 (n : ℕ) : ℤ :=
  A345741.P11174214497306695299.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345741.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A347191.P14197531322197098197

`A000005((n+2)²-1)`
-/

namespace A347191.P14197531322197098197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2) ^ 2 - 1)

end

end A347191.P14197531322197098197

noncomputable section

/-- A347191: Number of divisors of n^2-1.

Offset 2, canonical program `A347191.P14197531322197098197`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347191 (n : ℕ) : ℤ :=
  A347191.P14197531322197098197.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347405.P1587307323903821383

`∑{d}[n+1, 2^(A000005(#)-1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347405.P1587307323903821383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A000005 d - 1 : ℤ)

end

end A347405.P1587307323903821383

noncomputable section

/-- A347405: a(n) = Sum_{d|n} 2^(tau(d) - 1).

Offset 1, canonical program `A347405.P1587307323903821383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347405 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A347405.P1587307323903821383.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347405.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347992.P10468658472138835493

`∑{d}[n+1, (-1)^(A000005(#)-1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347992.P10468658472138835493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℚ) ^ (A000005 d - 1 : ℤ)

end

end A347992.P10468658472138835493

noncomputable section

/-- A347992: a(n) = Sum_{d|n} (-1)^(tau(d) - 1).

Offset 1, canonical program `A347992.P10468658472138835493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347992 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A347992.P10468658472138835493.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347992.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348155.P747794144108256640

`A000005(n+1)²+A001221(n+1)*(A000203(n+1)-A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348155.P747794144108256640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 + A001221 (n + 1) * (A000203 (n + 1) - A000005 (n + 1))

end

end A348155.P747794144108256640

noncomputable section

/-- A348155: a(n) = tau(n)^2 + omega(n)*(sigma(n) - tau(n)).

Offset 1, canonical program `A348155.P747794144108256640`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²+A001221(n+1)*(A000203(n+1)-A000005(n+1))` (program `A348155.P747794144108256640`, by `A348155.P747794144108256640.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A348155 (n : ℕ) : ℤ :=
  A348155.P747794144108256640.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²+A001221(n+1)*(A000203(n+1)-A000005(n+1))` (program `A348155.P747794144108256640`, by `A348155.P747794144108256640.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A348155.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A348161.P2836344488623969159

`1+ceil((A000005(n+1)-2)*A000005(n+1)/2)`
-/

namespace A348161.P2836344488623969159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌈((A000005 (n + 1) - 2) * A000005 (n + 1) : ℚ) / 2⌉

end

end A348161.P2836344488623969159

noncomputable section

/-- A348161: Number of factorizations of (n,n) into one or two pairs (i,j) with i > 0, j > 0 (and if i=1 then j=1).

Offset 1, canonical program `A348161.P2836344488623969159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348161 (n : ℕ) : ℤ :=
  A348161.P2836344488623969159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348161.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A348219.P15428353027639764716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348219 (n : ℕ) : ℤ :=
  A348219.P15428353027639764716.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348219.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348349.P4307122612343305050

`∑{d}[n+1, #^(A000005(#)-1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348349.P4307122612343305050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A000005 d - 1 : ℤ)

end

end A348349.P4307122612343305050

noncomputable section

/-- A348349: a(n) = Sum_{d|n} d^(tau(d) - 1).

Offset 1, canonical program `A348349.P4307122612343305050`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348349 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348349.P4307122612343305050.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349094.P5473457884382026223

`2^n-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349094.P5473457884382026223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000005 (n + 1)

end

end A349094.P5473457884382026223

noncomputable section

/-- A349094: a(n) = 2^(n-1) - tau(n) where tau(n) is the number of divisors of n.

Offset 1, canonical program `A349094.P5473457884382026223`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-A000005(n+1)` (program `A349094.P5473457884382026223`, by `A349094.P5473457884382026223.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A349094 (n : ℕ) : ℤ :=
  A349094.P5473457884382026223.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-A000005(n+1)` (program `A349094.P5473457884382026223`, by `A349094.P5473457884382026223.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A349094.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A349215.P7117496428552855771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349215 (n : ℕ) : ℤ :=
  A349215.P7117496428552855771.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349215.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A349217.P8454150560353347447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349217 (n : ℕ) : ℤ :=
  A349217.P8454150560353347447.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349217.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A350090.P13885599348416703739

`A000005(3*n*n+3*n+1)-1`
-/

namespace A350090.P13885599348416703739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n * n + 3 * n + 1) - 1

end

end A350090.P13885599348416703739

noncomputable section

/-- A350090: a(n) is the number of indices i in the range 0 <= i <= n-1 such that A003215(n) - A003215(i) is an oblong number (A002378), where A003215 are the hex numbers.

Offset 0, canonical program `A350090.P13885599348416703739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350090 (n : ℕ) : ℤ :=
  A350090.P13885599348416703739.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350102.P6516286652401420813

`a(n-1)+A000005(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A350102.P6516286652401420813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A000005 (n - 1)

end

end A350102.P6516286652401420813

noncomputable section

/-- A350102: Number of self-measuring subsets of the initial segment of the natural numbers strictly below n. Number of subsets S of [n] with S = distset(S).

Offset 0, canonical program `A350102.P6516286652401420813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350102 (n : ℕ) : ℤ :=
  A350102.P6516286652401420813.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350102.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351146.P4562565895174759191

`∑{#}[n, C(2*(n+1), n+1+#+1)*A000005(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351146.P4562565895174759191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * (n + 1)) (n + 1 + (k + 1)) : ℤ) * A000005 (k + 1)

end

end A351146.P4562565895174759191

noncomputable section

/-- A351146: a(n) = Sum_{k=1..n} binomial(2*n,n+k)*A000005(k).

Offset 1, canonical program `A351146.P4562565895174759191`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*(n+1), n+1+#+1)*A000005(#+1)]` (program `A351146.P4562565895174759191`, by `A351146.P4562565895174759191.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351146 (n : ℕ) : ℤ :=
  A351146.P4562565895174759191.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*(n+1), n+1+#+1)*A000005(#+1)]` (program `A351146.P4562565895174759191`, by `A351146.P4562565895174759191.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351146.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A351519.P5058596728449047522

`A000005(n+1)+A000720(n+1)-A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351519.P5058596728449047522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000720 (n + 1) - A001221 (n + 1)

end

end A351519.P5058596728449047522

noncomputable section

/-- A351519: a(n) = tau(n) + pi(n) - omega(n).

Offset 1, canonical program `A351519.P5058596728449047522`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+A000720(n+1)-A001221(n+1)` (program `A351519.P5058596728449047522`, by `A351519.P5058596728449047522.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351519 (n : ℕ) : ℤ :=
  A351519.P5058596728449047522.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+A000720(n+1)-A001221(n+1)` (program `A351519.P5058596728449047522`, by `A351519.P5058596728449047522.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351519.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A351520.P14176785441679004629

`A000005(n+1)+A013928(n+2)-A034444(n+1)`
-/

namespace A351520.P14176785441679004629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A013928 (n + 2) - A034444 (n + 1)

end

end A351520.P14176785441679004629

noncomputable section

/-- A351520: Number of numbers <= n that are either squarefree, a divisor of n, or both.

Offset 1, canonical program `A351520.P14176785441679004629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351520 (n : ℕ) : ℤ :=
  A351520.P14176785441679004629.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351561.P9711075868512573755

`A000005(n+1)+A051953(n+1)`
-/

namespace A351561.P9711075868512573755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A051953 (n + 1)

end

end A351561.P9711075868512573755

noncomputable section

/-- A351561: a(n) = n + d(n) - phi(n), where d is the number of divisors function, and phi is the Euler totient function.

Offset 1, canonical program `A351561.P9711075868512573755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351561 (n : ℕ) : ℤ :=
  A351561.P9711075868512573755.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353276.P10129707679809598286

`A000010(n+1)+A000005(n+1)^A001221(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353276.P10129707679809598286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) + (A000005 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ) - (A000203 (n + 1) : ℚ)

end

end A353276.P10129707679809598286

noncomputable section

/-- A353276: a(n) = phi(n) + tau(n)^omega(n) - sigma(n).

Offset 1, canonical program `A353276.P10129707679809598286`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A353276.anchor (n : ℕ) : (A353276 (n + 1) : ℚ) = (A000010 (n + 1) : ℚ) + (A000005 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ) - (A000203 (n + 1) : ℚ)` in `Proof.A353.A353276`. -/
def A353276 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353276.P10129707679809598286.a (n - 1))

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A353276.anchor (n : ℕ) : (A353276 (n + 1) : ℚ) = (A000010 (n + 1) : ℚ) + (A000005 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ) - (A000203 (n + 1) : ℚ)` in `Proof.A353.A353276`. -/
def A353276.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A356018.P4624671268453047338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356018 (n : ℕ) : ℤ :=
  A356018.P4624671268453047338.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356018.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356239.P6469084982882106675

`∑{#}[n, (#+1)^(n+1)*A000005(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356239.P6469084982882106675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((k + 1) ^ (n + 1) : ℤ) * A000005 (k + 1)

end

end A356239.P6469084982882106675

noncomputable section

/-- A356239: a(n) = Sum_{k=1..n} k^n * sigma_0(k).

Offset 1, canonical program `A356239.P6469084982882106675`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (#+1)^(n+1)*A000005(#+1)]` (program `A356239.P6469084982882106675`, by `A356239.P6469084982882106675.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356239 (n : ℕ) : ℤ :=
  A356239.P6469084982882106675.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (#+1)^(n+1)*A000005(#+1)]` (program `A356239.P6469084982882106675`, by `A356239.P6469084982882106675.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356239.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A356240.P16485830816563868298

`∑{#}[n, (#+1)^(n+1)*(A000005(#+1)-floor((n+1)/(#+1))^(n+1))]`
-/

namespace A356240.P16485830816563868298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((k + 1) ^ (n + 1) : ℤ) * (A000005 (k + 1) - ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ ^ (n + 1))

end

end A356240.P16485830816563868298

noncomputable section

/-- A356240: a(n) = Sum_{k=1..n} (k-1)^n * Sum_{j=1..floor(n/k)} j^n.

Offset 1, canonical program `A356240.P16485830816563868298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356240 (n : ℕ) : ℤ :=
  A356240.P16485830816563868298.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356372.P6539677546095747756

`∑{#}[n, C(2*(n+1), #+1)*A000005(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356372.P6539677546095747756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * (n + 1)) (k + 1) : ℤ) * A000005 (k + 1)

end

end A356372.P6539677546095747756

noncomputable section

/-- A356372: a(n) = Sum_{k=1..n} binomial(2*n, k) * A000005(k).

Offset 1, canonical program `A356372.P6539677546095747756`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*(n+1), #+1)*A000005(#+1)]` (program `A356372.P6539677546095747756`, by `A356372.P6539677546095747756.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356372 (n : ℕ) : ℤ :=
  A356372.P6539677546095747756.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*(n+1), #+1)*A000005(#+1)]` (program `A356372.P6539677546095747756`, by `A356372.P6539677546095747756.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356372.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A356574.P8488308911264119695

`∑{d}[n+1, A000005(#^4)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356574.P8488308911264119695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (d ^ 4)

end

end A356574.P8488308911264119695

noncomputable section

/-- A356574: a(n) = Sum_{d|n} tau(d^4), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A356574.P8488308911264119695`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#^4)]` (program `A356574.P8488308911264119695`, by `A356574.P8488308911264119695.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356574 (n : ℕ) : ℤ :=
  A356574.P8488308911264119695.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#^4)]` (program `A356574.P8488308911264119695`, by `A356574.P8488308911264119695.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356574.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A357259.P10940546597892317752

`ceil(A000005(n+1)/2)+1/2*∑{d}[n+1, abs(#-(n+1)/#)]`
-/

namespace A357259.P10940546597892317752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A000005 (n + 1) : ℚ) / 2⌉ : ℚ) + (1 : ℚ) / 2 * (∑ d ∈ Nat.divisors (f1 n), |(d : ℚ) - (n + 1 : ℚ) / (d : ℚ)|)

end

end A357259.P10940546597892317752

noncomputable section

/-- A357259: a(n) is the number of 2 X 2 Euclid-reduced matrices having determinant n.

Offset 1, canonical program `A357259.P10940546597892317752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357259.P10940546597892317752.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357259.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A358061.P11370879182037350058`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)%A000005(n+1)` (program `A358061.P11370879182037350058`, by `A358061.P11370879182037350058.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A358061 (n : ℕ) : ℤ :=
  A358061.P11370879182037350058.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)%A000005(n+1)` (program `A358061.P11370879182037350058`, by `A358061.P11370879182037350058.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A358061.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A358380.P4565112230755289123

`∑{d}[n+1, A000005(#^5)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A358380.P4565112230755289123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (d ^ 5)

end

end A358380.P4565112230755289123

noncomputable section

/-- A358380: a(n) = Sum_{d|n} tau(d^5), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A358380.P4565112230755289123`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#^5)]` (program `A358380.P4565112230755289123`, by `A358380.P4565112230755289123.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A358380 (n : ℕ) : ℤ :=
  A358380.P4565112230755289123.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#^5)]` (program `A358380.P4565112230755289123`, by `A358380.P4565112230755289123.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A358380.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A359037.P8951577004825294030

`A000005(n+1)*A000005((n+1)^3)`
-/

namespace A359037.P8951577004825294030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000005 ((n + 1) ^ 3)

end

end A359037.P8951577004825294030

noncomputable section

/-- A359037: a(n) = Sum_{d|n} tau(d^6), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A359037.P8951577004825294030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359037 (n : ℕ) : ℤ :=
  A359037.P8951577004825294030.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359038.P8986927019358252689

`∑{d}[n+1, A000005((n+1)^3*#)]`
-/

namespace A359038.P8986927019358252689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 ((n + 1) ^ 3 * d)

end

end A359038.P8986927019358252689

noncomputable section

/-- A359038: a(n) = Sum_{d|n} tau(d^7), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A359038.P8986927019358252689`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359038 (n : ℕ) : ℤ :=
  A359038.P8986927019358252689.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359211.P16936489386664645065

`A000005(3*(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359211.P16936489386664645065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (3 * (n + 1) - 1) : ℚ) / 2

end

end A359211.P16936489386664645065

noncomputable section

/-- A359211: a(n) = tau(3*n-1)/2, where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A359211.P16936489386664645065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359211 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A359211.P16936489386664645065.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359211.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359954.P14838428775144650798

`∑{d}[n+1, A000005(#)*A000010(#)*A008683((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359954.P14838428775144650798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000010 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359954.P14838428775144650798

noncomputable section

/-- A359954: a(n) = Sum_{d|n} tau(d)*phi(d)*mu(n/d).

Offset 1, canonical program `A359954.P14838428775144650798`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#)*A000010(#)*A008683((n+1)/#)]` (program `A359954.P14838428775144650798`, by `A359954.P14838428775144650798.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A359954 (n : ℕ) : ℤ :=
  A359954.P14838428775144650798.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#)*A000010(#)*A008683((n+1)/#)]` (program `A359954.P14838428775144650798`, by `A359954.P14838428775144650798.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A359954.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A360428.P14202328874071523169

`∑{d}[n+1, A008683((n+1)/#)*A000005(#)*#²]`
-/

namespace A360428.P14202328874071523169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000005 d * (d ^ 2 : ℤ)

end

end A360428.P14202328874071523169

noncomputable section

/-- A360428: Inverse Mobius transformation of A338164.

Offset 1, canonical program `A360428.P14202328874071523169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360428 (n : ℕ) : ℤ :=
  A360428.P14202328874071523169.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360429.P16462646638625319066

`∑{d}[n+1, A000005(#)*#²]`
-/

namespace A360429.P16462646638625319066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * (d ^ 2 : ℤ)

end

end A360429.P16462646638625319066

noncomputable section

/-- A360429: Inverse Mobius transformation of A034714.

Offset 1, canonical program `A360429.P16462646638625319066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360429 (n : ℕ) : ℤ :=
  A360429.P16462646638625319066.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360430.P14646993219273584393

`∑{d}[n+1, A001615((n+1)/#)*A000005(#)*#]`
-/

namespace A360430.P14646993219273584393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000005 d * (d : ℤ)

end

end A360430.P14646993219273584393

noncomputable section

/-- A360430: Dirichlet convolution of Dedekind psi by A038040.

Offset 1, canonical program `A360430.P14646993219273584393`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360430 (n : ℕ) : ℤ :=
  A360430.P14646993219273584393.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360430.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A361706.P7914681069526304893

`∑{d}[n+1, A000005((n+1)/#)*A000040(#)]`
-/

namespace A361706.P7914681069526304893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000040 d

end

end A361706.P7914681069526304893

noncomputable section

/-- A361706: Inverse Moebius transform applied twice to primes.

Offset 1, canonical program `A361706.P7914681069526304893`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361706 (n : ℕ) : ℤ :=
  A361706.P7914681069526304893.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363012.P12518514360202843483

`∑{d}[n+1, #*A000005(#)*A000010(#)*A008683((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A363012.P12518514360202843483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000005 d * A000010 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363012.P12518514360202843483

noncomputable section

/-- A363012: a(n) = Sum_{d|n} d*tau(d)*phi(d)*mu(n/d).

Offset 1, canonical program `A363012.P12518514360202843483`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000005(#)*A000010(#)*A008683((n+1)/#)]` (program `A363012.P12518514360202843483`, by `A363012.P12518514360202843483.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A363012 (n : ℕ) : ℤ :=
  A363012.P12518514360202843483.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000005(#)*A000010(#)*A008683((n+1)/#)]` (program `A363012.P12518514360202843483`, by `A363012.P12518514360202843483.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A363012.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A365207.P8652609855473738591

`A000005(A006519(n+1))*A034444(A000265(n+1))`
-/

namespace A365207.P8652609855473738591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006519 (n + 1)).toNat * A034444 (A000265 (n + 1)).toNat

end

end A365207.P8652609855473738591

noncomputable section

/-- A365207: The number of divisors d of n such that gcd(d, n/d) is a power of 2 (A000079).

Offset 1, canonical program `A365207.P8652609855473738591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365207 (n : ℕ) : ℤ :=
  A365207.P8652609855473738591.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365207.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A365208.P1092856368353075175`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365208 (n : ℕ) : ℤ :=
  A365208.P1092856368353075175.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365208.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A365210.P7966765262049614878`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365210 (n : ℕ) : ℤ :=
  A365210.P7966765262049614878.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365210.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365331.P9498320090856852280

`A000005(A008833(n+1))`
-/

namespace A365331.P9498320090856852280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008833 (n + 1)).toNat

end

end A365331.P9498320090856852280

noncomputable section

/-- A365331: The number of divisors of the largest square dividing n.

Offset 1, canonical program `A365331.P9498320090856852280`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365331 (n : ℕ) : ℤ :=
  A365331.P9498320090856852280.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365331.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A365348.P17779330658801885884

`A000005(A356191(n+1))`
-/

namespace A365348.P17779330658801885884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A356191 (n + 1)).toNat

end

end A365348.P17779330658801885884

noncomputable section

/-- A365348: The number of divisors of the smallest exponentially odd number divisible by n.

Offset 1, canonical program `A365348.P17779330658801885884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365348 (n : ℕ) : ℤ :=
  A365348.P17779330658801885884.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365490.P10530064324092144185

`A000005(A008835(n+1))`
-/

namespace A365490.P10530064324092144185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008835 (n + 1)).toNat

end

end A365490.P10530064324092144185

noncomputable section

/-- A365490: The number of divisors of the largest 4th power dividing n.

Offset 1, canonical program `A365490.P10530064324092144185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365490 (n : ℕ) : ℤ :=
  A365490.P10530064324092144185.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365491.P1731806866241579839

`A000005(A053166(n+1))`
-/

namespace A365491.P1731806866241579839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053166 (n + 1)).toNat

end

end A365491.P1731806866241579839

noncomputable section

/-- A365491: The number of divisors of the smallest number whose 4th power is divisible by n.

Offset 1, canonical program `A365491.P1731806866241579839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365491 (n : ℕ) : ℤ :=
  A365491.P1731806866241579839.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366441.P11350322075649191036

`A000005(A007310(n+1))`
-/

namespace A366441.P11350322075649191036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007310 (n + 1)).toNat

end

end A366441.P11350322075649191036

noncomputable section

/-- A366441: The number of divisors of the 5-rough numbers (A007310).

Offset 1, canonical program `A366441.P11350322075649191036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366441 (n : ℕ) : ℤ :=
  A366441.P11350322075649191036.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366771.P6017539246711155575

`A000005(A001045(n+1))`
-/

namespace A366771.P6017539246711155575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001045 (n + 1)).toNat

end

end A366771.P6017539246711155575

noncomputable section

/-- A366771: Number of divisors of A001045(n) (Jacobsthal numbers).

Offset 1, canonical program `A366771.P6017539246711155575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366771 (n : ℕ) : ℤ :=
  A366771.P6017539246711155575.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366782.P11732756249166605759

`A000005(A000073(n+2))`
-/

namespace A366782.P11732756249166605759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000073 (n + 2)).toNat

end

end A366782.P11732756249166605759

noncomputable section

/-- A366782: Number of divisors of A000073(n) (tribonacci numbers).

Offset 2, canonical program `A366782.P11732756249166605759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366782 (n : ℕ) : ℤ :=
  A366782.P11732756249166605759.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366782.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A366872.P9213635915992081364

`A000005(8+4*n)`
-/

namespace A366872.P9213635915992081364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 + 4 * n)

end

end A366872.P9213635915992081364

noncomputable section

/-- A366872: Number of closed chains of identical regular polygons with connecting inner vertices lying n vertices apart.

Offset 0, canonical program `A366872.P9213635915992081364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366872 (n : ℕ) : ℤ :=
  A366872.P9213635915992081364.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366872.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A370297.P12303585203069369868

`∑{d}[n+1, A008683(#)²*A000005((n+1)/#)²]`
-/

namespace A370297.P12303585203069369868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d ^ 2 * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2

end

end A370297.P12303585203069369868

noncomputable section

/-- A370297: Inverse Moebius transform of A322328.

Offset 1, canonical program `A370297.P12303585203069369868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370297 (n : ℕ) : ℤ :=
  A370297.P12303585203069369868.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370297.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372437.P319362007131086371

`A001511(n+2)-A055396(n+2)`
-/

namespace A372437.P319362007131086371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 2) - A055396 (n + 2)

end

end A372437.P319362007131086371

noncomputable section

/-- A372437: (Least binary index of n) minus (least prime index of n).

Offset 2, canonical program `A372437.P319362007131086371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372437 (n : ℕ) : ℤ :=
  A372437.P319362007131086371.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372437.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372709.P8939552730713478089

`∑{#}[n, A000005((n+1)*(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372709.P8939552730713478089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 ((n + 1) * (k + 1))

end

end A372709.P8939552730713478089

noncomputable section

/-- A372709: a(n) = Sum_{k=1..n} tau(n*k), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A372709.P8939552730713478089`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005((n+1)*(#+1))]` (program `A372709.P8939552730713478089`, by `A372709.P8939552730713478089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372709 (n : ℕ) : ℤ :=
  A372709.P8939552730713478089.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005((n+1)*(#+1))]` (program `A372709.P8939552730713478089`, by `A372709.P8939552730713478089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372709.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372713.P15261460817430982456

`A000005(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372713.P15261460817430982456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 1))

end

end A372713.P15261460817430982456

noncomputable section

/-- A372713: Number of divisors of 3n; a(n) = tau(3*n) = A000005(3*n).

Offset 1, canonical program `A372713.P15261460817430982456`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1))` (program `A372713.P15261460817430982456`, by `A372713.P15261460817430982456.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372713 (n : ℕ) : ℤ :=
  A372713.P15261460817430982456.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1))` (program `A372713.P15261460817430982456`, by `A372713.P15261460817430982456.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372713.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372714.P12117670402611410470

`A000005(3*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372714.P12117670402611410470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 1) - 1)

end

end A372714.P12117670402611410470

noncomputable section

/-- A372714: a(n) = tau(3*n-1) = A000005(3*n-1).

Offset 1, canonical program `A372714.P12117670402611410470`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1)-1)` (program `A372714.P12117670402611410470`, by `A372714.P12117670402611410470.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372714 (n : ℕ) : ℤ :=
  A372714.P12117670402611410470.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1)-1)` (program `A372714.P12117670402611410470`, by `A372714.P12117670402611410470.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372714.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372715.P12208428737339877040

`A000005(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372715.P12208428737339877040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 1)

end

end A372715.P12208428737339877040

noncomputable section

/-- A372715: a(n) = tau(3*n-2) = A000005(3*n-2).

Offset 1, canonical program `A372715.P12208428737339877040`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*n+1)` (program `A372715.P12208428737339877040`, by `A372715.P12208428737339877040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372715 (n : ℕ) : ℤ :=
  A372715.P12208428737339877040.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*n+1)` (program `A372715.P12208428737339877040`, by `A372715.P12208428737339877040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372715.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372784.P17501289729252677399

`A000005(4*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372784.P17501289729252677399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (n + 1))

end

end A372784.P17501289729252677399

noncomputable section

/-- A372784: a(n) = tau(4*n) = A000005(4*n).

Offset 1, canonical program `A372784.P17501289729252677399`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(4*(n+1))` (program `A372784.P17501289729252677399`, by `A372784.P17501289729252677399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372784 (n : ℕ) : ℤ :=
  A372784.P17501289729252677399.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(4*(n+1))` (program `A372784.P17501289729252677399`, by `A372784.P17501289729252677399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372784.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372785.P1137355158066766240

`A000005(5*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372785.P1137355158066766240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 1))

end

end A372785.P1137355158066766240

noncomputable section

/-- A372785: a(n) = tau(5*n) = A000005(5*n).

Offset 1, canonical program `A372785.P1137355158066766240`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(5*(n+1))` (program `A372785.P1137355158066766240`, by `A372785.P1137355158066766240.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372785 (n : ℕ) : ℤ :=
  A372785.P1137355158066766240.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(5*(n+1))` (program `A372785.P1137355158066766240`, by `A372785.P1137355158066766240.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372785.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372786.P3226320515726835874

`A000005(6*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372786.P3226320515726835874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * (n + 1))

end

end A372786.P3226320515726835874

noncomputable section

/-- A372786: Number of divisors of 6n; a(n) = tau(6*n) = A000005(6*n).

Offset 1, canonical program `A372786.P3226320515726835874`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(6*(n+1))` (program `A372786.P3226320515726835874`, by `A372786.P3226320515726835874.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372786 (n : ℕ) : ℤ :=
  A372786.P3226320515726835874.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(6*(n+1))` (program `A372786.P3226320515726835874`, by `A372786.P3226320515726835874.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372786.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372787.P5367107089574616924

`A000005(7*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372787.P5367107089574616924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * (n + 1))

end

end A372787.P5367107089574616924

noncomputable section

/-- A372787: a(n) = tau(7*n) = A000005(7*n).

Offset 1, canonical program `A372787.P5367107089574616924`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(7*(n+1))` (program `A372787.P5367107089574616924`, by `A372787.P5367107089574616924.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372787 (n : ℕ) : ℤ :=
  A372787.P5367107089574616924.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(7*(n+1))` (program `A372787.P5367107089574616924`, by `A372787.P5367107089574616924.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372787.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372788.P1588842482571205510

`A000005(8*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372788.P1588842482571205510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * (n + 1))

end

end A372788.P1588842482571205510

noncomputable section

/-- A372788: a(n) = tau(8*n) = A000005(8*n).

Offset 1, canonical program `A372788.P1588842482571205510`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(8*(n+1))` (program `A372788.P1588842482571205510`, by `A372788.P1588842482571205510.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372788 (n : ℕ) : ℤ :=
  A372788.P1588842482571205510.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(8*(n+1))` (program `A372788.P1588842482571205510`, by `A372788.P1588842482571205510.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372788.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372789.P9582021093738632599

`A000005(9*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372789.P9582021093738632599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (9 * (n + 1))

end

end A372789.P9582021093738632599

noncomputable section

/-- A372789: Number of divisors of 9n; a(n) = tau(9*n) = A000005(9*n).

Offset 1, canonical program `A372789.P9582021093738632599`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(9*(n+1))` (program `A372789.P9582021093738632599`, by `A372789.P9582021093738632599.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372789 (n : ℕ) : ℤ :=
  A372789.P9582021093738632599.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(9*(n+1))` (program `A372789.P9582021093738632599`, by `A372789.P9582021093738632599.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372789.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372790.P2447796418738080202

`A000005(10*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372790.P2447796418738080202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (n + 1))

end

end A372790.P2447796418738080202

noncomputable section

/-- A372790: a(n) = tau(10*n) = A000005(10*n).

Offset 1, canonical program `A372790.P2447796418738080202`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(10*(n+1))` (program `A372790.P2447796418738080202`, by `A372790.P2447796418738080202.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372790 (n : ℕ) : ℤ :=
  A372790.P2447796418738080202.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(10*(n+1))` (program `A372790.P2447796418738080202`, by `A372790.P2447796418738080202.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372790.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372791.P11603537677751678447

`A000005(11*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372791.P11603537677751678447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * (n + 1))

end

end A372791.P11603537677751678447

noncomputable section

/-- A372791: a(n) = tau(11*n) = A000005(11*n).

Offset 1, canonical program `A372791.P11603537677751678447`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(11*(n+1))` (program `A372791.P11603537677751678447`, by `A372791.P11603537677751678447.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372791 (n : ℕ) : ℤ :=
  A372791.P11603537677751678447.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(11*(n+1))` (program `A372791.P11603537677751678447`, by `A372791.P11603537677751678447.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372791.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372792.P6141643957369447150

`A000005(12*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372792.P6141643957369447150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * (n + 1))

end

end A372792.P6141643957369447150

noncomputable section

/-- A372792: Number of divisors of 12n; a(n) = tau(12*n) = A000005(12*n).

Offset 1, canonical program `A372792.P6141643957369447150`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(12*(n+1))` (program `A372792.P6141643957369447150`, by `A372792.P6141643957369447150.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372792 (n : ℕ) : ℤ :=
  A372792.P6141643957369447150.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(12*(n+1))` (program `A372792.P6141643957369447150`, by `A372792.P6141643957369447150.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372792.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372928.P7980517800335584119

`∑{d}[n+1, A008683((n+1)/#)*#^3*A000005(#)]`
-/

namespace A372928.P7980517800335584119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 3 : ℤ) * A000005 d

end

end A372928.P7980517800335584119

noncomputable section

/-- A372928: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, x_3, n)^3.

Offset 1, canonical program `A372928.P7980517800335584119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372928 (n : ℕ) : ℤ :=
  A372928.P7980517800335584119.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372931.P10430681316221614128

`∑{d}[n+1, A008683((n+1)/#)*#^4*A000005(#)]`
-/

namespace A372931.P10430681316221614128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 4 : ℤ) * A000005 d

end

end A372931.P10430681316221614128

noncomputable section

/-- A372931: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} gcd(x_1, x_2, x_3, x_4, n)^4.

Offset 1, canonical program `A372931.P10430681316221614128`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372931 (n : ℕ) : ℤ :=
  A372931.P10430681316221614128.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372931.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372939.P5922901756224703713

`∑{d}[n+1, A008683((n+1)/#)*#^(n+1)*A000005(#)]`
-/

namespace A372939.P5922901756224703713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ (n + 1) : ℤ) * A000005 d

end

end A372939.P5922901756224703713

noncomputable section

/-- A372939: a(n) = Sum_{1 <= x_1, x_2, ... , x_n <= n} gcd(x_1, x_2, ... , x_n, n)^n.

Offset 1, canonical program `A372939.P5922901756224703713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372939 (n : ℕ) : ℤ :=
  A372939.P5922901756224703713.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372997.P16707650036408767647

`∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^3)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372997.P16707650036408767647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ)) ^ 3)).toNat

end

end A372997.P16707650036408767647

noncomputable section

/-- A372997: a(n) = Sum_{k=1..n} tau( (n/gcd(k,n))^3 ).

Offset 1, canonical program `A372997.P16707650036408767647`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^3)]` (program `A372997.P16707650036408767647`, by `A372997.P16707650036408767647.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372997 (n : ℕ) : ℤ :=
  A372997.P16707650036408767647.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^3)]` (program `A372997.P16707650036408767647`, by `A372997.P16707650036408767647.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372997.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372999.P5772250302117947782

`∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^4)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372999.P5772250302117947782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ)) ^ 4)).toNat

end

end A372999.P5772250302117947782

noncomputable section

/-- A372999: a(n) = Sum_{k=1..n} tau( (n/gcd(k,n))^4 ).

Offset 1, canonical program `A372999.P5772250302117947782`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^4)]` (program `A372999.P5772250302117947782`, by `A372999.P5772250302117947782.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372999 (n : ℕ) : ℤ :=
  A372999.P5772250302117947782.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^4)]` (program `A372999.P5772250302117947782`, by `A372999.P5772250302117947782.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372999.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373002.P1557167078996298537

`∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^(n+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373002.P1557167078996298537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ)) ^ (n + 1))).toNat

end

end A373002.P1557167078996298537

noncomputable section

/-- A373002: a(n) = Sum_{k=1..n} tau( (n/gcd(k,n))^n ).

Offset 1, canonical program `A373002.P1557167078996298537`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^(n+1))]` (program `A373002.P1557167078996298537`, by `A373002.P1557167078996298537.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373002 (n : ℕ) : ℤ :=
  A373002.P1557167078996298537.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^(n+1))]` (program `A373002.P1557167078996298537`, by `A373002.P1557167078996298537.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373002.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373113.P16353525734578801021

`∑{#}[n+1+A000005(n+1)-1-(n+1), #+n+1]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373113.P16353525734578801021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000005 (n + 1) - 1 - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + (n + 1))

end

end A373113.P16353525734578801021

noncomputable section

/-- A373113: For n >= 1, a(n) = Sum_{i = n..(n + A000005(n) - 1)} i.

Offset 1, canonical program `A373113.P16353525734578801021`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n+1+A000005(n+1)-1-(n+1), #+n+1]` (program `A373113.P16353525734578801021`, by `A373113.P16353525734578801021.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373113 (n : ℕ) : ℤ :=
  (A373113.P16353525734578801021.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n+1+A000005(n+1)-1-(n+1), #+n+1]` (program `A373113.P16353525734578801021`, by `A373113.P16353525734578801021.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373113.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A374969.P4381911814034986725

`(n+2)*A000005(n+1)-2*A000203(n+1)`
-/

namespace A374969.P4381911814034986725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000005 (n + 1) - 2 * A000203 (n + 1)

end

end A374969.P4381911814034986725

noncomputable section

/-- A374969: Number of ordered solutions (x,y,z,w) to x*y + y*z + z*w + w*x = n with x,y,z,w >= 1.

Offset 1, canonical program `A374969.P4381911814034986725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374969 (n : ℕ) : ℤ :=
  A374969.P4381911814034986725.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374969.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374973.P9268558741575386359

`∑{#}[n-1, A000005(#+1)*A001157(n+1-(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374973.P9268558741575386359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000005 (k + 1) * A001157 (n + 1 - (k + 1))

end

end A374973.P9268558741575386359

noncomputable section

/-- A374973: a(n) = Sum_{k=1..n-1} tau(k) * sigma_2(n-k).

Offset 1, canonical program `A374973.P9268558741575386359`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000005(#+1)*A001157(n+1-(#+1))]` (program `A374973.P9268558741575386359`, by `A374973.P9268558741575386359.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374973 (n : ℕ) : ℤ :=
  A374973.P9268558741575386359.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000005(#+1)*A001157(n+1-(#+1))]` (program `A374973.P9268558741575386359`, by `A374973.P9268558741575386359.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374973.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A376514.P15209874510348841502

`A000005(n+1)-2^A001221(n+1)-A046660(n+1)`
-/

namespace A376514.P15209874510348841502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) - (2 : ℚ) ^ (A001221 (n + 1) : ℤ) - (A046660 (n + 1) : ℚ)

end

end A376514.P15209874510348841502

noncomputable section

/-- A376514: Number of divisors of n that are neither squarefree nor prime powers.

Offset 1, canonical program `A376514.P15209874510348841502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376514 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376514.P15209874510348841502.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376514.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377304.P8947951460209608358

`C(A000005(n+1)+2, 3)`
-/

namespace A377304.P8947951460209608358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1) + 2).toNat 3

end

end A377304.P8947951460209608358

noncomputable section

/-- A377304: a(n) is the number of distinct cuboids whose edges are divisors of n.

Offset 1, canonical program `A377304.P8947951460209608358`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377304 (n : ℕ) : ℤ :=
  (A377304.P8947951460209608358.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377304.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378216.P4619166357507459087

`2-A000005(n+1)`
-/

namespace A378216.P4619166357507459087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000005 (n + 1)

end

end A378216.P4619166357507459087

noncomputable section

/-- A378216: Dirichlet inverse of A174725.

Offset 1, canonical program `A378216.P4619166357507459087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378216 (n : ℕ) : ℤ :=
  A378216.P4619166357507459087.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378216.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A380447.P8742501224369410159

`(n+1)*A000005(n+1)-n*A001221(n+1)`
-/

namespace A380447.P8742501224369410159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) - (n : ℤ) * A001221 (n + 1)

end

end A380447.P8742501224369410159

noncomputable section

/-- A380447: Number of primes dividing n plus n times the number of nonprimes dividing n.

Offset 1, canonical program `A380447.P8742501224369410159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380447 (n : ℕ) : ℤ :=
  A380447.P8742501224369410159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382872.P13479336682410921135

`A000005(A018804(n+1))`
-/

namespace A382872.P13479336682410921135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A018804 (n + 1)).toNat

end

end A382872.P13479336682410921135

noncomputable section

/-- A382872: For n >= 1, a(n) is the number of divisors of Pillai's arithmetical function: Sum_{k=1..n} gcd(k, n) (A018804).

Offset 1, canonical program `A382872.P13479336682410921135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382872 (n : ℕ) : ℤ :=
  A382872.P13479336682410921135.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384195.P12788916049746499615

`A000005(n+3)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384195.P12788916049746499615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3) - A000005 (n + 1)

end

end A384195.P12788916049746499615

noncomputable section

/-- A384195: a(n) = tau(n+1) - tau(n-1), where tau(n) = A000005(n), the number of divisors of n.

Offset 2, canonical program `A384195.P12788916049746499615`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+3)-A000005(n+1)` (program `A384195.P12788916049746499615`, by `A384195.P12788916049746499615.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A384195 (n : ℕ) : ℤ :=
  A384195.P12788916049746499615.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+3)-A000005(n+1)` (program `A384195.P12788916049746499615`, by `A384195.P12788916049746499615.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A384195.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A386012.P11696724120379954040

`(n+1)^3*A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386012.P11696724120379954040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A000005 (n + 1)

end

end A386012.P11696724120379954040

noncomputable section

/-- A386012: a(n) = n^3*tau(n).

Offset 1, canonical program `A386012.P11696724120379954040`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3*A000005(n+1)` (program `A386012.P11696724120379954040`, by `A386012.P11696724120379954040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386012 (n : ℕ) : ℤ :=
  A386012.P11696724120379954040.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3*A000005(n+1)` (program `A386012.P11696724120379954040`, by `A386012.P11696724120379954040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386012.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386013.P12576186223749678081

`(n+1)^4*A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386013.P12576186223749678081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) * A000005 (n + 1)

end

end A386013.P12576186223749678081

noncomputable section

/-- A386013: a(n) = n^4*tau(n).

Offset 1, canonical program `A386013.P12576186223749678081`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4*A000005(n+1)` (program `A386013.P12576186223749678081`, by `A386013.P12576186223749678081.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386013 (n : ℕ) : ℤ :=
  A386013.P12576186223749678081.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4*A000005(n+1)` (program `A386013.P12576186223749678081`, by `A386013.P12576186223749678081.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386013.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A387633.P569874418725638644

`A000005(n+1)+n*A000005(A007947(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387633.P569874418725638644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A000005 (A007947 (n + 1)).toNat

end

end A387633.P569874418725638644

noncomputable section

/-- A387633: a(n) = tau(n) + (n-1) * tau(rad(n)).

Offset 1, canonical program `A387633.P569874418725638644`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+n*A000005(A007947(n+1))` (program `A387633.P569874418725638644`, by `A387633.P569874418725638644.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387633 (n : ℕ) : ℤ :=
  A387633.P569874418725638644.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+n*A000005(A007947(n+1))` (program `A387633.P569874418725638644`, by `A387633.P569874418725638644.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387633.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388270.P10233009455192801401

`A000005(n+1)*A009194(n+1)`
-/

namespace A388270.P10233009455192801401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A009194 (n + 1)

end

end A388270.P10233009455192801401

noncomputable section

/-- A388270: a(n) = d(n) * gcd(n, sigma(n)), where d is the number of divisors function (A000005), and sigma is the sum of divisors.

Offset 1, canonical program `A388270.P10233009455192801401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388270 (n : ℕ) : ℤ :=
  A388270.P10233009455192801401.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388270.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A391701.P296484889807869590`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*(A000203(n+1)-A000005(n+1))` (program `A391701.P296484889807869590`, by `A391701.P296484889807869590.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391701 (n : ℕ) : ℤ :=
  A391701.P296484889807869590.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*(A000203(n+1)-A000005(n+1))` (program `A391701.P296484889807869590`, by `A391701.P296484889807869590.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391701.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392758.P7232150328249216539

`A000005(n+1)-A257993(n+1)`
-/

namespace A392758.P7232150328249216539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A257993 (n + 1)

end

end A392758.P7232150328249216539

noncomputable section

/-- A392758: Number of divisors of n which are not primorials.

Offset 1, canonical program `A392758.P7232150328249216539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392758 (n : ℕ) : ℤ :=
  A392758.P7232150328249216539.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394391.P4992548440944162986

`A000005(n+1)²+(n+1-A000005(n+1))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394391.P4992548440944162986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 + ((n + 1 : ℤ) - A000005 (n + 1)) ^ 2

end

end A394391.P4992548440944162986

noncomputable section

/-- A394391: a(n) = tau(n)^2 + (n - tau(n))^2.

Offset 1, canonical program `A394391.P4992548440944162986`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²+(n+1-A000005(n+1))²` (program `A394391.P4992548440944162986`, by `A394391.P4992548440944162986.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394391 (n : ℕ) : ℤ :=
  A394391.P4992548440944162986.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²+(n+1-A000005(n+1))²` (program `A394391.P4992548440944162986`, by `A394391.P4992548440944162986.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394391.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A394470.P12281335905416762997`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394470 (n : ℕ) : ℤ :=
  A394470.P12281335905416762997.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394470.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A394651.P12518876512393771500`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394651 (n : ℕ) : ℤ :=
  A394651.P12518876512393771500.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394785.P5729035615530729007

`∑{#}[floor(sqrt(n/2))-1, A000005(n-(#+1)²)]`
-/

namespace A394785.P5729035615530729007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n : ℚ) / 2 : ℝ)⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000005 (n - (k + 1) ^ 2)

end

end A394785.P5729035615530729007

noncomputable section

/-- A394785: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x,y,z are positive integers satisfying x^2 <= y*z.

Offset 0, canonical program `A394785.P5729035615530729007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394785 (n : ℕ) : ℤ :=
  A394785.P5729035615530729007.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394785.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A395330.P17136906903227382088

`A000005((col(n)+1)*(row(n)-col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395330.P17136906903227382088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)).toNat

end

end A395330.P17136906903227382088

noncomputable section

/-- A395330: Symmetric array read by antidiagonals: A(n,k) = tau(n*k), where tau = A000005.

Offset 1, canonical program `A395330.P17136906903227382088`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005((col(n)+1)*(row(n)-col(n)+1))` (program `A395330.P17136906903227382088`, by `A395330.P17136906903227382088.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395330 (n : ℕ) : ℤ :=
  A395330.P17136906903227382088.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005((col(n)+1)*(row(n)-col(n)+1))` (program `A395330.P17136906903227382088`, by `A395330.P17136906903227382088.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395330.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395458.P9897769218609620014

`(n+1)*A000005(n+1)-n*A000005(A007947(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395458.P9897769218609620014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) - (n : ℤ) * A000005 (A007947 (n + 1)).toNat

end

end A395458.P9897769218609620014

noncomputable section

/-- A395458: a(n) = n*tau(n) - (n-1)*tau(rad(n)).

Offset 1, canonical program `A395458.P9897769218609620014`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000005(n+1)-n*A000005(A007947(n+1))` (program `A395458.P9897769218609620014`, by `A395458.P9897769218609620014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395458 (n : ℕ) : ℤ :=
  A395458.P9897769218609620014.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000005(n+1)-n*A000005(A007947(n+1))` (program `A395458.P9897769218609620014`, by `A395458.P9897769218609620014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395458.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A395491.P9780452655082946417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395491 (n : ℕ) : ℤ :=
  A395491.P9780452655082946417.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396515.P9540040117226872358

`A000005(n+1)+A396514(n+1)`
-/

namespace A396515.P9540040117226872358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A396514 (n + 1)

end

end A396515.P9540040117226872358

noncomputable section

/-- A396515: a(n) = Sum_{k=1..n} gcd(k,n)^(ceiling(n/k) - floor(n/k)).

Offset 1, canonical program `A396515.P9540040117226872358`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396515 (n : ℕ) : ℤ :=
  A396515.P9540040117226872358.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396515.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A396945.P1470108520854866059

`A000005(n^3+1)`
-/

namespace A396945.P1470108520854866059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 3 + 1)

end

end A396945.P1470108520854866059

noncomputable section

/-- A396945: Number of divisors of n^3 + 1.

Offset 0, canonical program `A396945.P1470108520854866059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396945 (n : ℕ) : ℤ :=
  A396945.P1470108520854866059.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398520.P3879229793699235213

`∑{#}[n, A000005(floor((n+1)/(#+1)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398520.P3879229793699235213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A398520.P3879229793699235213

noncomputable section

/-- A398520: a(n) = Sum_{k=1..n} tau(floor(n/k)), where tau(n) = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A398520.P3879229793699235213`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(floor((n+1)/(#+1)))]` (program `A398520.P3879229793699235213`, by `A398520.P3879229793699235213.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398520 (n : ℕ) : ℤ :=
  A398520.P3879229793699235213.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(floor((n+1)/(#+1)))]` (program `A398520.P3879229793699235213`, by `A398520.P3879229793699235213.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398520.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398826.P7098747537138350296

`A008284(C(n+1, 2)+A000005(n+1))`
-/

namespace A398826.P7098747537138350296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 ((Nat.choose (n + 1) 2 : ℤ) + A000005 (n + 1)).toNat

end

end A398826.P7098747537138350296

noncomputable section

/-- A398826: Number of partitions of n where the largest part is equal to the number of divisors of n.

Offset 1, canonical program `A398826.P7098747537138350296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398826 (n : ℕ) : ℤ :=
  A398826.P7098747537138350296.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398826.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398981.P1881830709133702135

`(A000005(n+1)-2)/gcd(A000005(n+1)-2, 2*(n+1)-A000203(n+1))`
-/

namespace A398981.P1881830709133702135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - 2 : ℚ) / (Int.gcd (A000005 (n + 1) - 2) ((2 * (n + 1) : ℤ) - A000203 (n + 1)) : ℚ)

end

end A398981.P1881830709133702135

noncomputable section

/-- A398981: a(n) is the number k such that 2*(k*n+v) = Sum_{d|n} (k*d+v), where k and v are coprime, not both are 0 and k*n+v>=0.

Offset 1, canonical program `A398981.P1881830709133702135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398981 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398981.P1881830709133702135.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398982.P10718508914280456224

`(2*(n+1)-A000203(n+1))/gcd(A000005(n+1)-2, 2*(n+1)-A000203(n+1))`
-/

namespace A398982.P10718508914280456224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A000203 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1) - 2) ((2 * (n + 1) : ℤ) - A000203 (n + 1)) : ℚ)

end

end A398982.P10718508914280456224

noncomputable section

/-- A398982: a(n) is the number k such that 2*(u*n+k) = Sum_{d|n} (u*d+k), where u and k are coprime not both are 0, and u*n+k >= 0.

Offset 1, canonical program `A398982.P10718508914280456224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398982 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398982.P10718508914280456224.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400415.P10373400726085747654

`(2*(n+1)-A000203(n+1))/gcd(A000005(n+1), 2*(n+1)-A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400415.P10373400726085747654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A000203 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) ((2 * (n + 1) : ℤ) - A000203 (n + 1)) : ℚ)

end

end A400415.P10373400726085747654

noncomputable section

/-- A400415: a(n) = (2*n-sigma(n))/gcd(tau(n), 2*n-sigma(n)), tau = A000005, sigma = A000203.

Offset 1, canonical program `A400415.P10373400726085747654`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400415 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400415.P10373400726085747654.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A402180.P6859304511720822064

`C(A001222(n+1)+A001221(n+1), A001221(n+1))-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402180.P6859304511720822064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A001222 (n + 1) + A001221 (n + 1)).toNat (A001221 (n + 1)).toNat : ℤ) - A000005 (n + 1)

end

end A402180.P6859304511720822064

noncomputable section

/-- A402180: a(n) = binomial(bigomega(n) + omega(n), omega(n)) - tau(n), where bigomega = A001222, omega = A001221, and tau = A000005.

Offset 1, canonical program `A402180.P6859304511720822064`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A001222(n+1)+A001221(n+1), A001221(n+1))-A000005(n+1)` (program `A402180.P6859304511720822064`, by `A402180.P6859304511720822064.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A402180 (n : ℕ) : ℤ :=
  A402180.P6859304511720822064.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A001222(n+1)+A001221(n+1), A001221(n+1))-A000005(n+1)` (program `A402180.P6859304511720822064`, by `A402180.P6859304511720822064.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A402180.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A341673.P2127911354198788227

`A054531(lt[A004736(n+1), A127013(n+1)])`
-/

namespace A341673.P2127911354198788227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341673.P2127911354198788227

noncomputable section

/-- A341673: Irregular triangle read by rows giving the strictly superior divisors of n.

Offset 1, canonical program `A341673.P2127911354198788227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A341673 (n : ℕ) : ℤ :=
  A341673.P2127911354198788227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A341673.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A341807.P4324225310795318934

`∑{#}[n, A341795(#+4)*A341795(n-#+4)]`
-/

namespace A341807.P4324225310795318934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A341795 (k + 4) * A341795 ((n : ℤ) - (k : ℤ) + 4).toNat

end

end A341807.P4324225310795318934

noncomputable section

/-- A341807: Number of ways to write n as an ordered sum of 8 nonzero tetrahedral numbers.

Offset 8, canonical program `A341807.P4324225310795318934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A341807 (n : ℕ) : ℤ :=
  A341807.P4324225310795318934.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A341807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341833.P641244807877016668

`∑{d}[n+1, A008683(#)*A341832((n+1)/#)]`
-/

namespace A341833.P641244807877016668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341833.P641244807877016668

noncomputable section

/-- A341833: Dirichlet g.f.: 1 / zeta(s)^7.

Offset 1, canonical program `A341833.P641244807877016668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341833 (n : ℕ) : ℤ :=
  A341833.P641244807877016668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341834.P10769813872850527674

`∑{d}[n+1, A007427(#)*A341832((n+1)/#)]`
-/

namespace A341834.P10769813872850527674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A341832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341834.P10769813872850527674

noncomputable section

/-- A341834: Dirichlet g.f.: 1 / zeta(s)^8.

Offset 1, canonical program `A341834.P10769813872850527674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341834 (n : ℕ) : ℤ :=
  A341834.P10769813872850527674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341983.P13865000426263133768

`∑{#}[n, A341982(#+2)*A341982(n-#+2)]`
-/

namespace A341983.P13865000426263133768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A341982 (k + 2) * A341982 ((n : ℤ) - (k : ℤ) + 2).toNat

end

end A341983.P13865000426263133768

noncomputable section

/-- A341983: Number of ways to write n as an ordered sum of 4 primes (counting 1 as a prime).

Offset 4, canonical program `A341983.P13865000426263133768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A341983 (n : ℕ) : ℤ :=
  A341983.P13865000426263133768.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A341983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341994.P382294230764417436

`1-A087049(A003415(n))`
-/

namespace A341994.P382294230764417436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087049 (A003415 n).toNat

end

end A341994.P382294230764417436

noncomputable section

/-- A341994: a(n) = 1 if the arithmetic derivative (A003415) of n is a squarefree number (A005117) > 1, otherwise 0.

Offset 0, canonical program `A341994.P382294230764417436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341994 (n : ℕ) : ℤ :=
  A341994.P382294230764417436.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342050.P901674950173142677

`lt[0, A353525(n+1)]+1`
-/

namespace A342050.P901674950173142677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342050.P901674950173142677

noncomputable section

/-- A342050: Numbers k which have an odd number of trailing zeros in their primorial base representation A049345(k).

Offset 1, canonical program `A342050.P901674950173142677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342050 (n : ℕ) : ℤ :=
  (A342050.P901674950173142677.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342165.P7458761941245466278

`A049084(1+n)+a(A066246(n+1))` with `a(0)=1`
-/

namespace A342165.P7458761941245466278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049084 (1 + n) + a (A066246 (n + 1)).toNat

end

end A342165.P7458761941245466278

noncomputable section

/-- A342165: A fractal-like sequence: erase the terms that have a prime index, the non-erased terms rebuild the original sequence.

Offset 1, canonical program `A342165.P7458761941245466278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342165 (n : ℕ) : ℤ :=
  A342165.P7458761941245466278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342165.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A343407.P13265504528403009423

`Δ[A069470(n)-row(n)]`
-/

namespace A343407.P13265504528403009423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069470 n - (SequenceMachineLib.triRow n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343407.P13265504528403009423

noncomputable section

/-- A343407: Number of proper divisors of n that are triangular numbers.

Offset 1, canonical program `A343407.P13265504528403009423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343407 (n : ℕ) : ℤ :=
  A343407.P13265504528403009423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343430.P15037986344255415619

`A038502(n+1)/A248909(n+1)`
-/

namespace A343430.P15037986344255415619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038502 (n + 1) : ℚ) / (A248909 (n + 1) : ℚ)

end

end A343430.P15037986344255415619

noncomputable section

/-- A343430: Part of n composed of prime factors of the form 3k-1.

Offset 1, canonical program `A343430.P15037986344255415619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343430 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343430.P15037986344255415619.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343430.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343431.P12258509485588509954

`A065330(n+1)/A248909(n+1)`
-/

namespace A343431.P12258509485588509954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065330 (n + 1) : ℚ) / (A248909 (n + 1) : ℚ)

end

end A343431.P12258509485588509954

noncomputable section

/-- A343431: Part of n composed of prime factors of the form 6k-1.

Offset 1, canonical program `A343431.P12258509485588509954`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343431 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343431.P12258509485588509954.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343431.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343794.P987061178062544182

`A055034(A000040(n+28))`
-/

namespace A343794.P987061178062544182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A000040 (n + 28)).toNat

end

end A343794.P987061178062544182

noncomputable section

/-- A343794: Numbers k > 0 such that 630*k + 315 is not an abundant number (A005101).

Offset 1, canonical program `A343794.P987061178062544182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A343794 (n : ℕ) : ℤ :=
  A343794.P987061178062544182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A343794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344219.P2835201160585401208

`∑{d}[1+n, A160893(#)]`
-/

namespace A344219.P2835201160585401208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160893 d

end

end A344219.P2835201160585401208

noncomputable section

/-- A344219: Number of cyclic subgroups of the group (C_n)^5, where C_n is the cyclic group of order n.

Offset 1, canonical program `A344219.P2835201160585401208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344219 (n : ℕ) : ℤ :=
  A344219.P2835201160585401208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344302.P4236038024037800704

`∑{d}[1+n, A160895(#)]`
-/

namespace A344302.P4236038024037800704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160895 d

end

end A344302.P4236038024037800704

noncomputable section

/-- A344302: Number of cyclic subgroups of the group (C_n)^6, where C_n is the cyclic group of order n.

Offset 1, canonical program `A344302.P4236038024037800704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344302 (n : ℕ) : ℤ :=
  A344302.P4236038024037800704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344303.P8014175782777952943

`∑{d}[1+n, A160897(#)]`
-/

namespace A344303.P8014175782777952943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160897 d

end

end A344303.P8014175782777952943

noncomputable section

/-- A344303: Number of cyclic subgroups of the group (C_n)^7, where C_n is the cyclic group of order n.

Offset 1, canonical program `A344303.P8014175782777952943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344303 (n : ℕ) : ℤ :=
  A344303.P8014175782777952943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344304.P18384751124128497285

`∑{d}[1+n, A160908(#)]`
-/

namespace A344304.P18384751124128497285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160908 d

end

end A344304.P18384751124128497285

noncomputable section

/-- A344304: Number of cyclic subgroups of the group (C_n)^8, where C_n is the cyclic group of order n.

Offset 1, canonical program `A344304.P18384751124128497285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344304 (n : ℕ) : ℤ :=
  A344304.P18384751124128497285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344305.P18133759731865914819

`∑{d}[1+n, A160953(#)]`
-/

namespace A344305.P18133759731865914819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160953 d

end

end A344305.P18133759731865914819

noncomputable section

/-- A344305: Number of cyclic subgroups of the group (C_n)^9, where C_n is the cyclic group of order n.

Offset 1, canonical program `A344305.P18133759731865914819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344305 (n : ℕ) : ℤ :=
  A344305.P18133759731865914819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344306.P7176140389783472047

`∑{d}[1+n, A160957(#)]`
-/

namespace A344306.P7176140389783472047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160957 d

end

end A344306.P7176140389783472047

noncomputable section

/-- A344306: Number of cyclic subgroups of the group (C_n)^10, where C_n is the cyclic group of order n.

Offset 1, canonical program `A344306.P7176140389783472047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344306 (n : ℕ) : ℤ :=
  A344306.P7176140389783472047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344306.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A344526.P8336464733172778549

`∑[A189393(1+n)]`
-/

namespace A344526.P8336464733172778549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189393 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344526.P8336464733172778549

noncomputable section

/-- A344526: a(n) = Sum_{k=1..n} k^3 * phi(k).

Offset 1, canonical program `A344526.P8336464733172778549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344526 (n : ℕ) : ℤ :=
  A344526.P8336464733172778549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344609.P17132378078969577972

`eq[0, A353669(n+1)]+1`
-/

namespace A344609.P17132378078969577972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344609.P17132378078969577972

noncomputable section

/-- A344609: Numbers whose alternating sum of prime indices is >= 0.

Offset 1, canonical program `A344609.P17132378078969577972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344609 (n : ℕ) : ℤ :=
  (A344609.P17132378078969577972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344609.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A346010.P5513981083379835901

`A000005(n+1)/gcd(A000005(n+1), A062799(n+1))`
-/

namespace A346010.P5513981083379835901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) (A062799 (n + 1)) : ℚ)

end

end A346010.P5513981083379835901

noncomputable section

/-- A346010: a(n) is the denominator of the average number of distinct prime factors of the divisors of n.

Offset 1, canonical program `A346010.P5513981083379835901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346010 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346010.P5513981083379835901.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346704.P9750174064402642821

`A346703(A032742(1+n))`
-/

namespace A346704.P9750174064402642821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (A032742 (1 + n)).toNat

end

end A346704.P9750174064402642821

noncomputable section

/-- A346704: Product of primes at even positions in the weakly increasing list (with multiplicity) of prime factors of n.

Offset 1, canonical program `A346704.P9750174064402642821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346704 (n : ℕ) : ℤ :=
  A346704.P9750174064402642821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347091.P10465094588197524565

`A332844(n+1)+A347090(n+1)`
-/

namespace A347091.P10465094588197524565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332844 (n + 1) + A347090 (n + 1)

end

end A347091.P10465094588197524565

noncomputable section

/-- A347091: Sum of A332844 and its Dirichlet inverse.

Offset 1, canonical program `A347091.P10465094588197524565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347091 (n : ℕ) : ℤ :=
  A347091.P10465094588197524565.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347095.P13848354769774225057

`A018804(n+1)+A101035(n+1)`
-/

namespace A347095.P13848354769774225057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + A101035 (n + 1)

end

end A347095.P13848354769774225057

noncomputable section

/-- A347095: Sum of Pillai's arithmetical function (A018804) and its Dirichlet inverse.

Offset 1, canonical program `A347095.P13848354769774225057`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347095 (n : ℕ) : ℤ :=
  A347095.P13848354769774225057.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347403.P8459567393901444890

`∑{d}[A063918(1+n), A026233(#)]`
-/

namespace A347403.P8459567393901444890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026233 d

end

end A347403.P8459567393901444890

noncomputable section

/-- A347403: Step at which n is removed by the sieve of Eratosthenes or 0 if n is prime.

Offset 1, canonical program `A347403.P8459567393901444890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347403 (n : ℕ) : ℤ :=
  A347403.P8459567393901444890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347403.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A348961.P8503093187257780372

`eq[1, A004736(A000190(n+1)²)]+1`
-/

namespace A348961.P8503093187257780372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000190 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348961.P8503093187257780372

noncomputable section

/-- A348961: Exponential harmonic (or e-harmonic) numbers of type 1: numbers k such that esigma(k) | k * d_e(k), where d_e(k) is the number of exponential divisors of k (A049419) and esigma(k) is their sum (A051377).

Offset 1, canonical program `A348961.P8503093187257780372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A348961 (n : ℕ) : ℤ :=
  (A348961.P8503093187257780372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A348961.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A349341.P4668944741167325365

`(-1)^n*A332793((n+1)/and(n+1, -(n+1)))`
-/

namespace A349341.P4668944741167325365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A332793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A349341.P4668944741167325365

noncomputable section

/-- A349341: Dirichlet inverse of A026741, which is defined as n if n is odd, n/2 if n is even.

Offset 1, canonical program `A349341.P4668944741167325365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349341 (n : ℕ) : ℤ :=
  A349341.P4668944741167325365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349609.P5905954280759614194

`∑{#}[n², A290081(#)]`
-/

namespace A349609.P5905954280759614194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A290081 k

end

end A349609.P5905954280759614194

noncomputable section

/-- A349609: Number of solutions to x^2 + y^2 <= n^2, where x, y are positive odd integers.

Offset 0, canonical program `A349609.P5905954280759614194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349609 (n : ℕ) : ℤ :=
  A349609.P5905954280759614194.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349664.P16095731674905498233

`A046079((1+n)²)`
-/

namespace A349664.P16095731674905498233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 ((1 + n) ^ 2)

end

end A349664.P16095731674905498233

noncomputable section

/-- A349664: a(n) is the number of solutions for n^4 = z^2 - x^2 with {z,x} >= 1.

Offset 1, canonical program `A349664.P16095731674905498233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A349664 (n : ℕ) : ℤ :=
  A349664.P16095731674905498233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A349664.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A349914.P5312422532609630114

`A000593(n+1)+A327278(n+1)`
-/

namespace A349914.P5312422532609630114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + A327278 (n + 1)

end

end A349914.P5312422532609630114

noncomputable section

/-- A349914: Sum of A000593 (the sum of odd divisors function) and its Dirichlet inverse.

Offset 1, canonical program `A349914.P5312422532609630114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327278, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349914 (n : ℕ) : ℤ :=
  A349914.P5312422532609630114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327278, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349914.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349996.P11167608155946690490

`record[A180304(n+1)/(n+1)]`
-/

namespace A349996.P11167608155946690490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180304 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349996.P11167608155946690490

noncomputable section

/-- A349996: Number of primes in an interval [k^2,(k+1)^2] setting a new record.

Offset 1, canonical program `A349996.P11167608155946690490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A349996 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349996.P11167608155946690490.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A349996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350704.P136889457551582597

`filter[A156543(n+1), A066247(#)]`
-/

namespace A350704.P136889457551582597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A350704.P136889457551582597

noncomputable section

/-- A350704: Composite numbers that have no Sophie Germain prime factors.

Offset 1, canonical program `A350704.P136889457551582597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4746 terms. -/
def A350704 (n : ℕ) : ℤ :=
  A350704.P136889457551582597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4746 terms. -/
def A350704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351140.P3457142688331789932

`A151800(1+a(n-1)+n)` with `a(0)=1`
-/

namespace A351140.P3457142688331789932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (1 + (a (n - 1) + (n : ℤ))).toNat

end

end A351140.P3457142688331789932

noncomputable section

/-- A351140: a(1) = 1, a(n) = smallest prime > a(n-1) + n.

Offset 1, canonical program `A351140.P3457142688331789932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A351140 (n : ℕ) : ℤ :=
  A351140.P3457142688331789932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A351140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351234.P8586845088624271478

`A276085(gcd(A003415(n), A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351234.P8586845088624271478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (Int.gcd (A003415 n) (A276086 n))

end

end A351234.P8586845088624271478

noncomputable section

/-- A351234: a(n) = A276085(gcd(A003415(n), A276086(n))).

Offset 0, canonical program `A351234.P8586845088624271478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351234 (n : ℕ) : ℤ :=
  A351234.P8586845088624271478.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351234.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351254.P11131871396321163023

`A276085(gcd(n, A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351254.P11131871396321163023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (Int.gcd (n : ℤ) (A276086 n))

end

end A351254.P11131871396321163023

noncomputable section

/-- A351254: a(n) = A276085(gcd(n, A276086(n))).

Offset 0, canonical program `A351254.P11131871396321163023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351254 (n : ℕ) : ℤ :=
  A351254.P11131871396321163023.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351254.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351308.P2387538369820116881

`∑{d}[n+1, A059479(#)*A076792((n+1)/#)]`
-/

namespace A351308.P2387538369820116881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059479 d * A076792 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351308.P2387538369820116881

noncomputable section

/-- A351308: Sum of the cubes of the square divisors of n.

Offset 1, canonical program `A351308.P2387538369820116881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351308 (n : ℕ) : ℤ :=
  A351308.P2387538369820116881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351359.P2301868971868708912

`A008965(n+1)-(A032190(n+1)+A000007(n))`
-/

namespace A351359.P2301868971868708912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) - (A032190 (n + 1) + A000007 n)

end

end A351359.P2301868971868708912

noncomputable section

/-- A351359: Number of binary necklaces with n beads and at least two consecutive black beads.

Offset 1, canonical program `A351359.P2301868971868708912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A351359 (n : ℕ) : ℤ :=
  A351359.P2301868971868708912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A351359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351419.P9638696259530144339

`A070777(1+n)*A351168(n+1)`
-/

namespace A351419.P9638696259530144339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070777 (1 + n) * A351168 (n + 1)

end

end A351419.P9638696259530144339

noncomputable section

/-- A351419: If n = p_1^e_1 * ... * p_k^e_k, where p_1 < ... < p_k are primes, then a(n) is obtained by replacing the last factor p_k^e_k by (p_k - 1)^(e_k + 1); a(1) = 1.

Offset 1, canonical program `A351419.P9638696259530144339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351419 (n : ℕ) : ℤ :=
  A351419.P9638696259530144339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351436.P14023172424886566728

`n+1-A351168(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351436.P14023172424886566728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A351168 (n + 1)

end

end A351436.P14023172424886566728

noncomputable section

/-- A351436: a(n) = n - A351168(n).

Offset 1, canonical program `A351436.P14023172424886566728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351436 (n : ℕ) : ℤ :=
  A351436.P14023172424886566728.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351436.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351566.P8477974116380664648

`A119288(A276086(n))`
-/

namespace A351566.P8477974116380664648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A276086 n).toNat

end

end A351566.P8477974116380664648

noncomputable section

/-- A351566: Radix of the second least significant nonzero digit in the primorial base expansion of n, or 1 if there is no such digit.

Offset 0, canonical program `A351566.P8477974116380664648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119288, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351566 (n : ℕ) : ℤ :=
  A351566.P8477974116380664648.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119288, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351566.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351567.P8907787081027038340

`A351563(A276086(n))`
-/

namespace A351567.P8907787081027038340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351563 (A276086 n).toNat

end

end A351567.P8907787081027038340

noncomputable section

/-- A351567: The second least significant nonzero digit in the primorial base expansion of n, or 0 if there is no such digit.

Offset 0, canonical program `A351567.P8907787081027038340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351567 (n : ℕ) : ℤ :=
  A351567.P8907787081027038340.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351567.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A353372.P6208270260937475359

`∑{d}[n+1, A353370(#)]`
-/

namespace A353372.P6208270260937475359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353370 d

end

end A353372.P6208270260937475359

noncomputable section

/-- A353372: Inverse Möbius transform of A353370.

Offset 1, canonical program `A353372.P6208270260937475359`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353370, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353372 (n : ℕ) : ℤ :=
  A353372.P6208270260937475359.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353370, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353495.P18134118446726127472

`col(A003415(n)%4)`
-/

namespace A353495.P18134118446726127472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Int.tmod (A003415 n) 4).toNat

end

end A353495.P18134118446726127472

noncomputable section

/-- A353495: a(n) = 1 if the arithmetic derivative of n is of the form 4k+2, otherwise 0.

Offset 0, canonical program `A353495.P18134118446726127472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353495 (n : ℕ) : ℤ :=
  (A353495.P18134118446726127472.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353809.P4442062719913416770

`and(A000007(A002654(n+1)), A038459(n+1))`
-/

namespace A353809.P4442062719913416770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000007 (A002654 (n + 1)).toNat) (A038459 (n + 1))

end

end A353809.P4442062719913416770

noncomputable section

/-- A353809: a(n) = 1 if n is of the form 4m+1 and is not the sum of two squares, otherwise 0.

Offset 1, canonical program `A353809.P4442062719913416770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353809 (n : ℕ) : ℤ :=
  A353809.P4442062719913416770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353813.P9696873974332679712

`A010052(A002654(n+1)+2)`
-/

namespace A353813.P9696873974332679712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A002654 (n + 1) + 2).toNat

end

end A353813.P9696873974332679712

noncomputable section

/-- A353813: a(n) = 1 if n has exactly one prime factor of form 4*k+1 (when counted with multiplicity) and no prime factor 4*k+3 with odd multiplicity, otherwise 0.

Offset 1, canonical program `A353813.P9696873974332679712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353813 (n : ℕ) : ℤ :=
  A353813.P9696873974332679712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353814.P3429435947782467007

`floor(atan(A002654(n+1)))`
-/

namespace A353814.P3429435947782467007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A002654 (n + 1) : ℝ)⌋

end

end A353814.P3429435947782467007

noncomputable section

/-- A353814: a(n) = 1 if n is the sum of 2 distinct nonzero squares, 0 otherwise.

Offset 1, canonical program `A353814.P3429435947782467007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353814 (n : ℕ) : ℤ :=
  A353814.P3429435947782467007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354032.P649758389095353398

`col(A065387(n+1)%4)`
-/

namespace A354032.P649758389095353398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Int.tmod (A065387 (n + 1)) 4).toNat

end

end A354032.P649758389095353398

noncomputable section

/-- A354032: a(n) = 1 if phi(n)+sigma(n) == 2 (mod 4), otherwise 0.

Offset 1, canonical program `A354032.P649758389095353398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354032 (n : ℕ) : ℤ :=
  (A354032.P649758389095353398.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354037.P4958314769297818345

`C(2, and(3, A058344(n+1))+2)`
-/

namespace A354037.P4958314769297818345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.land 3 (A058344 (n + 1)) + 2).toNat

end

end A354037.P4958314769297818345

noncomputable section

/-- A354037: a(n) = 1 if sigma(n)-n is a multiple of 4, otherwise 0.

Offset 1, canonical program `A354037.P4958314769297818345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354037 (n : ℕ) : ℤ :=
  (A354037.P4958314769297818345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354097.P17117314635888337060

`A121262(A051953(n+1))`
-/

namespace A354097.P17117314635888337060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A051953 (n + 1)).toNat

end

end A354097.P17117314635888337060

noncomputable section

/-- A354097: a(n) = 1 if n-phi(n) is a multiple of 4, otherwise 0.

Offset 1, canonical program `A354097.P17117314635888337060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354097 (n : ℕ) : ℤ :=
  A354097.P17117314635888337060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354144.P17756084495947685987

`lt[A000005(n+1), A001222(n+1)+3]+1`
-/

namespace A354144.P17756084495947685987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A354144.P17756084495947685987

noncomputable section

/-- A354144: Prime powers together with semiprimes.

Offset 1, canonical program `A354144.P17756084495947685987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354144 (n : ℕ) : ℤ :=
  (A354144.P17756084495947685987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354357.P12412967713382681019

`filter[A354356(n+1), A187074(#)]`
-/

namespace A354357.P12412967713382681019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A354357.P12412967713382681019

noncomputable section

/-- A354357: Numbers k, not divisible by 2 or 3, such that sigma(k) is 3-smooth (has no larger prime factors than 3).

Offset 1, canonical program `A354357.P12412967713382681019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. -/
def A354357 (n : ℕ) : ℤ :=
  A354357.P12412967713382681019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. -/
def A354357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354712.P14554876448672424869

`eq[2, A007318(a((n+1)%A000005(n)))]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A354712.P14554876448672424869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f2 =>
  A007318 (f2 (Int.tmod (n + 1 : ℤ) (A000005 n)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354712.P14554876448672424869

noncomputable section

/-- A354712: Nonprime numbers k such that the number of divisors of k divides k-1.

Offset 1, canonical program `A354712.P14554876448672424869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6741 terms. -/
def A354712 (n : ℕ) : ℤ :=
  (A354712.P14554876448672424869.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6741 terms. -/
def A354712.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A354968.P3698403877843165482

`A057103(2+n)/24`
-/

namespace A354968.P3698403877843165482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057103 (2 + n) : ℚ) / 24

end

end A354968.P3698403877843165482

noncomputable section

/-- A354968: Triangle read by rows: T(n, k) = n*k*(n+k)*(n-k)/6.

Offset 2, canonical program `A354968.P3698403877843165482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354968 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A354968.P3698403877843165482.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354996.P13597777377575640034

`floor(A346418(1+n)/2)`
-/

namespace A354996.P13597777377575640034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A346418 (1 + n) : ℚ) / 2⌋

end

end A354996.P13597777377575640034

noncomputable section

/-- A354996: a(n) = 1 if n > A034699(n)^2, otherwise 0, where A034699(n) is the largest prime power factor of n.

Offset 1, canonical program `A354996.P13597777377575640034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354996 (n : ℕ) : ℤ :=
  A354996.P13597777377575640034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355003.P5537165438358420567

`gcd(A003415(n+1), A277791(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355003.P5537165438358420567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A277791 (n + 1))

end

end A355003.P5537165438358420567

noncomputable section

/-- A355003: a(n) = gcd(A003415(n), A277791(n)), where A003415 is the arithmetic derivative and A277791 is the denominator of sum of reciprocals of proper divisors of n.

Offset 1, canonical program `A355003.P5537165438358420567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277791, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355003 (n : ℕ) : ℤ :=
  (A355003.P5537165438358420567.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277791, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355173.P10850783007037289585

`A009766(abs(2-n)+2)-A130020(n)`
-/

namespace A355173.P10850783007037289585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (|2 - (n : ℤ)| + 2).toNat - A130020 n

end

end A355173.P10850783007037289585

noncomputable section

/-- A355173: The Fuss-Catalan triangle of order 1, read by rows. Related to binary trees.

Offset 0, canonical program `A355173.P10850783007037289585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355173 (n : ℕ) : ℤ :=
  A355173.P10850783007037289585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355173.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A355441.P11054304664303938252

`eq[2, A000005(∑[A020639(n+2)])]+2`
-/

namespace A355441.P11054304664303938252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A355441.P11054304664303938252

noncomputable section

/-- A355441: Numbers k such that the sum of the least prime factors of i=2..k is prime.

Offset 1, canonical program `A355441.P11054304664303938252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A355441 (n : ℕ) : ℤ :=
  (A355441.P11054304664303938252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A355441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355451.P3968050885105735617

`A059841(n+1)*(1-A264739(n+1))`
-/

namespace A355451.P3968050885105735617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) * (1 - A264739 (n + 1))

end

end A355451.P3968050885105735617

noncomputable section

/-- A355451: a(n) = 1 if n is even and phi(x) = n has no solutions, otherwise 0.

Offset 1, canonical program `A355451.P3968050885105735617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355451 (n : ℕ) : ℤ :=
  A355451.P3968050885105735617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355815.P16895010949600209990

`gcd(A276086(n+1), A277791(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355815.P16895010949600209990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (n + 1)) (A277791 (n + 1))

end

end A355815.P16895010949600209990

noncomputable section

/-- A355815: a(n) = gcd(A276086(n), A277791(n)), where A276086 is primorial base exp-function and A277791 is the denominator of sum of reciprocals of proper divisors of n.

Offset 1, canonical program `A355815.P16895010949600209990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277791, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355815 (n : ℕ) : ℤ :=
  (A355815.P16895010949600209990.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277791, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355815.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A355940.P3503418342827386624

`A063524(A355934(n+1))`
-/

namespace A355940.P3503418342827386624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A355934 (n + 1)).toNat

end

end A355940.P3503418342827386624

noncomputable section

/-- A355940: a(n) = 1 if A003973(n) is a multiple of A000203(n), otherwise 0.

Offset 1, canonical program `A355940.P3503418342827386624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355940 (n : ℕ) : ℤ :=
  A355940.P3503418342827386624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356306.P4886106723290676406

`and(A141304(A009262(n+1)), A355931(n+1))`
-/

namespace A356306.P4886106723290676406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141304 (A009262 (n + 1)).toNat) (A355931 (n + 1))

end

end A356306.P4886106723290676406

noncomputable section

/-- A356306: The nearest common ancestor of A000265(n) and gcd(A000265(n), sigma(n)) in the A253563-tree.

Offset 1, canonical program `A356306.P4886106723290676406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A356306 (n : ℕ) : ℤ :=
  A356306.P4886106723290676406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A356306.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A356441.P14709428699551281835

`comp[A356438(1+n)-1]+1`
-/

namespace A356441.P14709428699551281835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356438 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356441.P14709428699551281835

noncomputable section

/-- A356441: Numbers k such that A309892(k) < k/gpf(k), where gpf = A006530; complement of A356438.

Offset 1, canonical program `A356441.P14709428699551281835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356441 (n : ℕ) : ℤ :=
  (A356441.P14709428699551281835.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358040.P3658536414461284730

`A000005(A004709(n+1))`
-/

namespace A358040.P3658536414461284730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004709 (n + 1)).toNat

end

end A358040.P3658536414461284730

noncomputable section

/-- A358040: a(n) is the number of divisors of the n-th cubefree number.

Offset 1, canonical program `A358040.P3658536414461284730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358040 (n : ℕ) : ℤ :=
  A358040.P3658536414461284730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358040.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A358531.P7250430587380128327

`A258026(n+1)+2`
-/

namespace A358531.P7250430587380128327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1) + 2

end

end A358531.P7250430587380128327

noncomputable section

/-- A358531: Indices of the primes in A358530.

Offset 1, canonical program `A358531.P7250430587380128327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358531 (n : ℕ) : ℤ :=
  A358531.P7250430587380128327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358531.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358557.P6214688678443015509

`comp[A098464(n+1)-1]+1`
-/

namespace A358557.P6214688678443015509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098464 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A358557.P6214688678443015509

noncomputable section

/-- A358557: Numbers k for which denominator(H(k)) < LCM(1..k), where harmonic numbers H(k) = Sum_{i=1..k} 1/i = r(k)/q(k).

Offset 1, canonical program `A358557.P6214688678443015509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358557 (n : ℕ) : ℤ :=
  (A358557.P6214688678443015509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358755.P6116751823785190623

`(row(row(A053589(n+1))+1)+1)%2`
-/

namespace A358755.P6116751823785190623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (SequenceMachineLib.triRow (A053589 (n + 1)).toNat + 1) + 1) % 2

end

end A358755.P6116751823785190623

noncomputable section

/-- A358755: a(n) = 1 if A053669(n) [the smallest prime not dividing n] is of the form 6m-1, otherwise a(n) = 0.

Offset 1, canonical program `A358755.P6116751823785190623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358755 (n : ℕ) : ℤ :=
  (A358755.P6116751823785190623.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358755.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359159.P5613364767986315554

`filter[A026424(n+1), A353627(#)]`
-/

namespace A359159.P5613364767986315554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A359159.P5613364767986315554

noncomputable section

/-- A359159: Numbers whose odd part is squarefree and the number of prime factors (with multiplicity) is odd.

Offset 1, canonical program `A359159.P5613364767986315554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8081 terms. -/
def A359159 (n : ℕ) : ℤ :=
  A359159.P5613364767986315554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8081 terms. -/
def A359159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359167.P9620402831004912511

`lt[0, A359166(n+1)]+1`
-/

namespace A359167.P9620402831004912511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359167.P9620402831004912511

noncomputable section

/-- A359167: Numbers k for which there is an even number of prime factors (when counted with multiplicity) in k*sigma(k), where sigma is the sum of divisors function.

Offset 1, canonical program `A359167.P9620402831004912511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359167 (n : ℕ) : ℤ :=
  (A359167.P9620402831004912511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359171.P16462800136344119530

`lt[0, A359170(1+n)]+1`
-/

namespace A359171.P16462800136344119530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359170 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359171.P16462800136344119530

noncomputable section

/-- A359171: Nonmultiples of 3 that have an even number of prime factors (with multiplicity).

Offset 1, canonical program `A359171.P16462800136344119530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359171 (n : ℕ) : ℤ :=
  (A359171.P16462800136344119530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359300.P10070037077430120154

`A087030(n+1)-(A175851(n+2)+A151800(n+1))`
-/

namespace A359300.P10070037077430120154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087030 (n + 1) - (A175851 (n + 2) + A151800 (n + 1))

end

end A359300.P10070037077430120154

noncomputable section

/-- A359300: a(n) = (distance from n to nearest prime >= n) - (distance from n to nearest prime <= n).

Offset 2, canonical program `A359300.P10070037077430120154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359300 (n : ℕ) : ℤ :=
  A359300.P10070037077430120154.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359300.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359468.P5001194192329973265

`lt[0, A359467(n+1)]+1`
-/

namespace A359468.P5001194192329973265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359468.P5001194192329973265

noncomputable section

/-- A359468: Numbers that are either multiples of 4 with their odd part squarefree, or that are not multiples of 4 and not squarefree.

Offset 1, canonical program `A359468.P5001194192329973265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359468 (n : ℕ) : ℤ :=
  (A359468.P5001194192329973265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359468.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359485.P1680214592273319641

`∑{d}[n+1, A002131(#)*A328254((n+1)/#)]`
-/

namespace A359485.P1680214592273319641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359485.P1680214592273319641

noncomputable section

/-- A359485: a(1) = 1, a(2) = -5; a(n) = -n^2 * Sum_{d|n, d < n} a(d) / d^2.

Offset 1, canonical program `A359485.P1680214592273319641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359485 (n : ℕ) : ℤ :=
  A359485.P1680214592273319641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359485.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A360108.P2921032980542756694

`A090885(A276086(n))`
-/

namespace A360108.P2921032980542756694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (A276086 n).toNat

end

end A360108.P2921032980542756694

noncomputable section

/-- A360108: Sum of squares of digits of primorial base expansion of n.

Offset 0, canonical program `A360108.P2921032980542756694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360108 (n : ℕ) : ℤ :=
  A360108.P2921032980542756694.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360108.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360157.P13836560514213852483

`A068068(A066990(n+1)/A007947(n+1))`
-/

namespace A360157.P13836560514213852483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (SequenceMachineLib.roundAway ((A066990 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A360157.P13836560514213852483

noncomputable section

/-- A360157: a(n) is the number of unitary divisors of n that are odd squares.

Offset 1, canonical program `A360157.P13836560514213852483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360157 (n : ℕ) : ℤ :=
  A360157.P13836560514213852483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360163.P4073483441112475958

`(A069290(n+1)+A347176(n+1))/2`
-/

namespace A360163.P4073483441112475958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069290 (n + 1) + A347176 (n + 1) : ℚ) / 2

end

end A360163.P4073483441112475958

noncomputable section

/-- A360163: a(n) is the sum of the square roots of the divisors of n that are odd squares.

Offset 1, canonical program `A360163.P4073483441112475958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360163 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360163.P4073483441112475958.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360163.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A360452.P5231315610190854606

`record[A049691(n)-a(n-1)]` with `a(0)=0`
-/

namespace A360452.P5231315610190854606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A049691 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360452.P5231315610190854606

noncomputable section

/-- A360452: Number of fractions c/d with |c| <= d <= 2n and odd denominator when factors of 2 are canceled.

Offset 0, canonical program `A360452.P5231315610190854606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1458 terms. -/
def A360452 (n : ℕ) : ℤ :=
  A360452.P5231315610190854606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1458 terms. -/
def A360452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360477.P935886871947782901

`comp[A359869(n+1)-1]+1`
-/

namespace A360477.P935886871947782901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359869 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A360477.P935886871947782901

noncomputable section

/-- A360477: Numbers whose product of distinct prime factors is greater than or equal to the sum of its prime factors (with repetition).

Offset 1, canonical program `A360477.P935886871947782901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360477 (n : ℕ) : ℤ :=
  (A360477.P935886871947782901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360477.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A360944.P4031922297665866421

`eq[2, A035214(sqrt(A127473(n+1)))]+1`
-/

namespace A360944.P4031922297665866421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360944.P4031922297665866421

noncomputable section

/-- A360944: Numbers m such that phi(m) is a triangular number, where phi is the Euler totient function (A000010).

Offset 1, canonical program `A360944.P4031922297665866421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A360944 (n : ℕ) : ℤ :=
  (A360944.P4031922297665866421.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A360944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361023.P14930666905499730848

`A000035(A017666(n+1))`
-/

namespace A361023.P14930666905499730848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A017666 (n + 1)).toNat

end

end A361023.P14930666905499730848

noncomputable section

/-- A361023: a(n) = 1 if A007814(sigma(n)) >= A007814(n), otherwise 0, where A007814(n) gives the 2-adic valuation of n.

Offset 1, canonical program `A361023.P14930666905499730848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361023 (n : ℕ) : ℤ :=
  A361023.P14930666905499730848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361023.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361116.P7100103913625895617

`1-A361115(n)`
-/

namespace A361116.P7100103913625895617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361115 n

end

end A361116.P7100103913625895617

noncomputable section

/-- A361116: a(n)=0 if A361102(n) is divisible by 3, otherwise 1.

Offset 0, canonical program `A361116.P7100103913625895617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361116 (n : ℕ) : ℤ :=
  A361116.P7100103913625895617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361116.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A361982.P15206867661244181468

`∑[A332793(1+n)]`
-/

namespace A361982.P15206867661244181468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332793 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361982.P15206867661244181468

noncomputable section

/-- A361982: a(n) = 1 + Sum_{k=2..n} (-1)^k * k * a(floor(n/k)).

Offset 1, canonical program `A361982.P15206867661244181468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361982 (n : ℕ) : ℤ :=
  A361982.P15206867661244181468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361983.P5895448872655417569

`∑[(1+n)*A332793(n+1)]`
-/

namespace A361983.P5895448872655417569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A332793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361983.P5895448872655417569

noncomputable section

/-- A361983: a(n) = 1 + Sum_{k=2..n} (-1)^k * k^2 * a(floor(n/k)).

Offset 1, canonical program `A361983.P5895448872655417569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361983 (n : ℕ) : ℤ :=
  A361983.P5895448872655417569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361987.P7806764670259422939

`(1+n)*A332793(n+1)`
-/

namespace A361987.P7806764670259422939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A332793 (n + 1)

end

end A361987.P7806764670259422939

noncomputable section

/-- A361987: a(1) = 1; a(n) = n^2 * Sum_{d|n, d < n} (-1)^(n/d) a(d) / d^2.

Offset 1, canonical program `A361987.P7806764670259422939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361987 (n : ℕ) : ℤ :=
  A361987.P7806764670259422939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362008.P15802057352919654675

`eq[9, dr(A051953(n+1))]+1`
-/

namespace A362008.P15802057352919654675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A051953 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A362008.P15802057352919654675

noncomputable section

/-- A362008: Numbers whose Euler's cototient is divisible by 9.

Offset 1, canonical program `A362008.P15802057352919654675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A362008 (n : ℕ) : ℤ :=
  (A362008.P15802057352919654675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A362008.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A362613.P4984319992968099454

`A001221(n+1)-A001221(A062760(n+1))`
-/

namespace A362613.P4984319992968099454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A062760 (n + 1)).toNat

end

end A362613.P4984319992968099454

noncomputable section

/-- A362613: Number of co-modes in the prime factorization of n.

Offset 1, canonical program `A362613.P4984319992968099454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362613 (n : ℕ) : ℤ :=
  A362613.P4984319992968099454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362613.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A362721.P8009614910184197219

`abs(A076272(n+1)*2-3-n)`
-/

namespace A362721.P8009614910184197219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076272 (n + 1) * 2 - 3 - (n : ℤ)|

end

end A362721.P8009614910184197219

noncomputable section

/-- A362721: Number of numbers k, 1 <= k <= n, such that pi(k) = pi(n-k+1).

Offset 1, canonical program `A362721.P8009614910184197219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362721 (n : ℕ) : ℤ :=
  A362721.P8009614910184197219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362739.P16135793602072361606

`A004526(A108514(n+3))`
-/

namespace A362739.P16135793602072361606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A108514 (n + 3)).toNat

end

end A362739.P16135793602072361606

noncomputable section

/-- A362739: The smallest integer with three (not necessarily distinct) divisors that add to n.

Offset 3, canonical program `A362739.P16135793602072361606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A362739 (n : ℕ) : ℤ :=
  A362739.P16135793602072361606.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A362739.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A364307.P8166646294760291665

`∩[A006073(n+1), A074851(n+1)]`
-/

namespace A364307.P8166646294760291665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364307.P8166646294760291665

noncomputable section

/-- A364307: Numbers k such that k, k+1 and k+2 have exactly 2 distinct prime factors.

Offset 1, canonical program `A364307.P8166646294760291665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A364307 (n : ℕ) : ℤ :=
  (A364307.P8166646294760291665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A364307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364933.P7847543960833524069

`A109606(n+1)-A055631(n+1)`
-/

namespace A364933.P7847543960833524069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A055631 (n + 1)

end

end A364933.P7847543960833524069

noncomputable section

/-- A364933: a(n) = Sum_{k=1..n} A191898(n,k)*[A191904(n,k) = A191898(n,k)].

Offset 1, canonical program `A364933.P7847543960833524069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364933 (n : ℕ) : ℤ :=
  A364933.P7847543960833524069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364933.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A365784.P9414466859234964261

`A126706(n+1)/A365783(n+1)`
-/

namespace A365784.P9414466859234964261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126706 (n + 1) : ℚ) / (A365783 (n + 1) : ℚ)

end

end A365784.P9414466859234964261

noncomputable section

/-- A365784: a(n) = A126706(n) divided by its squarefree kernel.

Offset 1, canonical program `A365784.P9414466859234964261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, A365783, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365784 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365784.P9414466859234964261.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, A365783, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365784.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365871.P3627370264345146378

`∩[A365870(n+1)-1, A365870(n+1)]`
-/

namespace A365871.P3627370264345146378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365870 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365871.P3627370264345146378

noncomputable section

/-- A365871: Starts of runs of 3 consecutive integers whose exponent of least prime factor in their prime factorization is even.

Offset 1, canonical program `A365871.P3627370264345146378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A365871 (n : ℕ) : ℤ :=
  (A365871.P3627370264345146378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A365871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366524.P3925531874289408800

`A366523(A019554((n+1)*A019554(n+1)))`
-/

namespace A366524.P3925531874289408800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366523 (A019554 ((n + 1 : ℤ) * A019554 (n + 1)).toNat).toNat

end

end A366524.P3925531874289408800

noncomputable section

/-- A366524: Largest square divisor of n which is < sqrt(n), for n >= 2; a(1) = 1.

Offset 1, canonical program `A366524.P3925531874289408800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366524 (n : ℕ) : ℤ :=
  A366524.P3925531874289408800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366902.P5586725290956182853

`∏{e}[1+n, A159481(#)]`
-/

namespace A366902.P5586725290956182853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A159481 (Nat.factorization (f1 n) p)

end

end A366902.P5586725290956182853

noncomputable section

/-- A366902: The number of exponentially evil divisors of n.

Offset 1, canonical program `A366902.P5586725290956182853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366902 (n : ℕ) : ℤ :=
  A366902.P5586725290956182853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366927.P14498948693066181777

`a(A351168(n+1)-1)+1` with `a(0)=0`
-/

namespace A366927.P14498948693066181777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A351168 (n + 1) - 1).toNat + 1

end

end A366927.P14498948693066181777

noncomputable section

/-- A366927: Number of distinct primes p used in the mapping of k = k - k/p terminating at 1, where p is any of the prime factors of k.

Offset 1, canonical program `A366927.P14498948693066181777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A366927 (n : ℕ) : ℤ :=
  (A366927.P14498948693066181777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A366927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367203.P9050632869691583128

`A000188(n+1)*A001616(n+1)`
-/

namespace A367203.P9050632869691583128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A001616 (n + 1)

end

end A367203.P9050632869691583128

noncomputable section

/-- A367203: Product of p^(v_p(n)-1) + p^(2*floor(v_p(n)/2)) over all prime divisors p of n with valuation v_p(n).

Offset 1, canonical program `A367203.P9050632869691583128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367203 (n : ℕ) : ℤ :=
  A367203.P9050632869691583128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367203.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A367512.P6814161711481593875`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367512 (n : ℕ) : ℤ :=
  A367512.P6814161711481593875.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367512.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A368542.P12499842272717580429

`∑{d}[n+1, A059841(#-1)*A364252((n+1)/#)]`
-/

namespace A368542.P12499842272717580429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A364252 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368542.P12499842272717580429

noncomputable section

/-- A368542: The number of divisors of n whose prime factors are all Mersenne primes (A000668).

Offset 1, canonical program `A368542.P12499842272717580429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368542 (n : ℕ) : ℤ :=
  A368542.P12499842272717580429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368638.P17895984335423066018

`∑[A103116(n)]+1`
-/

namespace A368638.P17895984335423066018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A368638.P17895984335423066018

noncomputable section

/-- A368638: a(n) is the number of triangular partitions whose Young diagram fits inside a square of side n.

Offset 0, canonical program `A368638.P17895984335423066018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368638 (n : ℕ) : ℤ :=
  A368638.P17895984335423066018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368638.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368929.P5346765697596700696

`∑{d}[n+1, A063445(#)*A326238((n+1)/#)]`
-/

namespace A368929.P5346765697596700696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A326238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368929.P5346765697596700696

noncomputable section

/-- A368929: Dirichlet g.f.: zeta(s-2)^2 * (1 - 2^(3-s)) / zeta(s).

Offset 1, canonical program `A368929.P5346765697596700696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368929 (n : ℕ) : ℤ :=
  A368929.P5346765697596700696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369209.P4800567984806134755

`eq[3, A006530(A000005(n+1))]+1`
-/

namespace A369209.P4800567984806134755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369209.P4800567984806134755

noncomputable section

/-- A369209: Numbers whose number of divisors has the largest prime factor 3.

Offset 1, canonical program `A369209.P4800567984806134755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369209 (n : ℕ) : ℤ :=
  (A369209.P4800567984806134755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369359.P11914376555270565853

`A225034(n)-A002426(n)`
-/

namespace A369359.P11914376555270565853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - A002426 n

end

end A369359.P11914376555270565853

noncomputable section

/-- A369359: a(n) is the total semiperimeter over all Motzkin polyominoes of length n.

Offset 0, canonical program `A369359.P11914376555270565853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369359 (n : ℕ) : ℤ :=
  A369359.P11914376555270565853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369359.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A369894.P8931189529321044323

`∑{d}[1+n, A347134(#)]`
-/

namespace A369894.P8931189529321044323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347134 d

end

end A369894.P8931189529321044323

noncomputable section

/-- A369894: a(n) = n * Sum_{p|n, p prime} tau(n/p) / p.

Offset 1, canonical program `A369894.P8931189529321044323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369894 (n : ℕ) : ℤ :=
  A369894.P8931189529321044323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369967.P2338115965869939887

`1-A011558(A003415(n))`
-/

namespace A369967.P2338115965869939887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011558 (A003415 n).toNat

end

end A369967.P2338115965869939887

noncomputable section

/-- A369967: a(n) = 1 if the arithmetic derivative of n is a multiple of 5, otherwise 0.

Offset 0, canonical program `A369967.P2338115965869939887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369967 (n : ℕ) : ℤ :=
  A369967.P2338115965869939887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369967.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A370596.P8786147750041386051

`eq[0, A007920(val(n+1, 2))]+1`
-/

namespace A370596.P8786147750041386051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A370596.P8786147750041386051

noncomputable section

/-- A370596: Numbers k such that A007814(k) is a prime number.

Offset 1, canonical program `A370596.P8786147750041386051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370596 (n : ℕ) : ℤ :=
  (A370596.P8786147750041386051.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370899.P10835421738952848629

`∑[(-1)^n*A047994(n+1)]`
-/

namespace A370899.P10835421738952848629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370899.P10835421738952848629

noncomputable section

/-- A370899: Partial alternating sums of the unitary totient function (A047994).

Offset 1, canonical program `A370899.P10835421738952848629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370899 (n : ℕ) : ℤ :=
  A370899.P10835421738952848629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370906.P14316792219775904459

`∑[(-1)^n*A206369(n+1)]`
-/

namespace A370906.P14316792219775904459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A206369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370906.P14316792219775904459

noncomputable section

/-- A370906: Partial alternating sums of the alternating sum of divisors function (A206369).

Offset 1, canonical program `A370906.P14316792219775904459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370906 (n : ℕ) : ℤ :=
  A370906.P14316792219775904459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371239.P1240619195337993519

`filter[A032924(n+1), A359377(#)]`
-/

namespace A371239.P1240619195337993519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A371239.P1240619195337993519

noncomputable section

/-- A371239: Squarefree numbers that are zeroless in base 3 (A032924).

Offset 1, canonical program `A371239.P1240619195337993519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1703 terms. -/
def A371239 (n : ℕ) : ℤ :=
  A371239.P1240619195337993519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1703 terms. -/
def A371239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371628.P15621552581421940745

`∑{d}[n+1, A084220(#)*A189393((n+1)/#)]`
-/

namespace A371628.P15621552581421940745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084220 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371628.P15621552581421940745

noncomputable section

/-- A371628: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} ( gcd(x_1, n)/gcd(x_1, x_2, x_3, x_4, n) )^3.

Offset 1, canonical program `A371628.P15621552581421940745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371628 (n : ℕ) : ℤ :=
  A371628.P15621552581421940745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371906.P9399350463171032498

`xor(A087207(n+1), a(n-1))` with `a(0)=0`
-/

namespace A371906.P9399350463171032498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (A087207 (n + 1)) (a (n - 1))

end

end A371906.P9399350463171032498

noncomputable section

/-- A371906: a(n) = sum of 2^(k-1) such that floor(n/prime(k)) is odd.

Offset 1, canonical program `A371906.P9399350463171032498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A371906 (n : ℕ) : ℤ :=
  A371906.P9399350463171032498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A371906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372503.P833081788414773444

`A001222(n+1)-A349258(n+1)`
-/

namespace A372503.P833081788414773444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A349258 (n + 1)

end

end A372503.P833081788414773444

noncomputable section

/-- A372503: The number of prime powers that are noninfinitary divisors of n.

Offset 1, canonical program `A372503.P833081788414773444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372503 (n : ℕ) : ℤ :=
  A372503.P833081788414773444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372511.P6889518927263151039

`∑[A290081(n)]`
-/

namespace A372511.P6889518927263151039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372511.P6889518927263151039

noncomputable section

/-- A372511: Number of solutions to x^2 + y^2 <= n, where x, y are positive odd integers.

Offset 0, canonical program `A372511.P6889518927263151039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A372511 (n : ℕ) : ℤ :=
  A372511.P6889518927263151039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A372511.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372566.P10239918502240805923

`lt[1, A372565(n+1)]+1`
-/

namespace A372566.P10239918502240805923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A372566.P10239918502240805923

noncomputable section

/-- A372566: Numbers k such that k, sigma(k) and A003961(k) have a common divisor larger than 1, where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372566.P10239918502240805923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8327 terms. -/
def A372566 (n : ℕ) : ℤ :=
  (A372566.P10239918502240805923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8327 terms. -/
def A372566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372576.P10992458721375840572

`A276085(n+1)%360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372576.P10992458721375840572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 1)) 360

end

end A372576.P10992458721375840572

noncomputable section

/-- A372576: a(n) = A276085(n) mod 360, where A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A372576.P10992458721375840572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372576 (n : ℕ) : ℤ :=
  A372576.P10992458721375840572.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372576.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372619.P8959484213038358129

`A372673(1+n)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A372619.P8959484213038358129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A372673 (1 + n) + SequenceMachineLib.triUpLeft a n

end

end A372619.P8959484213038358129

noncomputable section

/-- A372619: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = 1/(phi(k)) * Sum_{j=1..n} phi(k*j).

Offset 1, canonical program `A372619.P8959484213038358129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372619 (n : ℕ) : ℤ :=
  A372619.P8959484213038358129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372621.P4182524832015078441

`∑[A195459(1+n)]`
-/

namespace A372621.P4182524832015078441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372621.P4182524832015078441

noncomputable section

/-- A372621: a(n) = (1/2) * Sum_{k=1..n} phi(3*k).

Offset 1, canonical program `A372621.P4182524832015078441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372621 (n : ℕ) : ℤ :=
  A372621.P4182524832015078441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372622.P10529144845107002393

`∑[A359101(1+n)]`
-/

namespace A372622.P10529144845107002393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359101 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372622.P10529144845107002393

noncomputable section

/-- A372622: a(n) = (1/4) * Sum_{k=1..n} phi(5*k).

Offset 1, canonical program `A372622.P10529144845107002393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372622 (n : ℕ) : ℤ :=
  A372622.P10529144845107002393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372638.P16267323820796582946

`∑[A359102(1+n)]`
-/

namespace A372638.P16267323820796582946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359102 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372638.P16267323820796582946

noncomputable section

/-- A372638: a(n) = (1/6) * Sum_{k=1..n} phi(7*k).

Offset 1, canonical program `A372638.P16267323820796582946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372638 (n : ℕ) : ℤ :=
  A372638.P16267323820796582946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372639.P13949775401824829229

`∑[A372672(1+n)]`
-/

namespace A372639.P13949775401824829229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372672 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372639.P13949775401824829229

noncomputable section

/-- A372639: a(n) = (1/4) * Sum_{k=1..n} phi(10*k).

Offset 1, canonical program `A372639.P13949775401824829229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372639 (n : ℕ) : ℤ :=
  A372639.P13949775401824829229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372639.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372950.P9193589771118210262

`∑{d}[n+1, A068970(#)*A238533((n+1)/#)]`
-/

namespace A372950.P9193589771118210262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068970 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372950.P9193589771118210262

noncomputable section

/-- A372950: a(n) = Sum_{1 <= x_1, x_2 <= n} ( n/gcd(x_1, x_2, n) )^3.

Offset 1, canonical program `A372950.P9193589771118210262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372950 (n : ℕ) : ℤ :=
  A372950.P9193589771118210262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373061.P12381271773894797464

`∑{d}[1+n, #*A341772(#)]`
-/

namespace A373061.P12381271773894797464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A341772 d

end

end A373061.P12381271773894797464

noncomputable section

/-- A373061: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, n)/gcd(x_1, x_2, x_3, n).

Offset 1, canonical program `A373061.P12381271773894797464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373061 (n : ℕ) : ℤ :=
  A373061.P12381271773894797464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373129.P16918047502827028780

`∑{d}[n+1, A002618(#)*A372227((n+1)/#)]`
-/

namespace A373129.P16918047502827028780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A372227 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373129.P16918047502827028780

noncomputable section

/-- A373129: a(n) = Sum_{1 <= x_1, x_2 <= n} sigma( n/gcd(x_1, x_2, n) ).

Offset 1, canonical program `A373129.P16918047502827028780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373129 (n : ℕ) : ℤ :=
  A373129.P16918047502827028780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373145.P6066227124448221809

`gcd(A003415(n+1), A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373145.P6066227124448221809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A276085 (n + 1))

end

end A373145.P6066227124448221809

noncomputable section

/-- A373145: a(n) = gcd(A003415(n), A276085(n)), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373145.P6066227124448221809`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373145 (n : ℕ) : ℤ :=
  (A373145.P6066227124448221809.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373146.P15020100916809049614

`A276085(n+1)-A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373146.P15020100916809049614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (n + 1) - A003415 (n + 1)

end

end A373146.P15020100916809049614

noncomputable section

/-- A373146: a(n) = A276085(n) - A003415(n), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373146.P15020100916809049614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373146 (n : ℕ) : ℤ :=
  A373146.P15020100916809049614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373146.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373147.P3382100505561380020

`A003415(n+2)%A276085(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373147.P3382100505561380020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (n + 2)) (A276085 (n + 2))

end

end A373147.P3382100505561380020

noncomputable section

/-- A373147: a(n) = A003415(n) mod A276085(n), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 2, canonical program `A373147.P3382100505561380020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373147 (n : ℕ) : ℤ :=
  A373147.P3382100505561380020.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373148.P6189189648227648503

`A276085(n+2)%A003415(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373148.P6189189648227648503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 2)) (A003415 (n + 2))

end

end A373148.P6189189648227648503

noncomputable section

/-- A373148: a(n) = A276085(n) mod A003415(n), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 2, canonical program `A373148.P6189189648227648503`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373148 (n : ℕ) : ℤ :=
  A373148.P6189189648227648503.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373148.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373153.P18185026118129223806

`A234045(A065331(1+n))`
-/

namespace A373153.P18185026118129223806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234045 (A065331 (1 + n)).toNat

end

end A373153.P18185026118129223806

noncomputable section

/-- A373153: a(n) is -1, 0, or 1 such that a(n) == A276085(n) (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373153.P18185026118129223806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373153 (n : ℕ) : ℤ :=
  A373153.P18185026118129223806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373158.P5262006199716644131

`A276085(A003961(n+1))`
-/

namespace A373158.P5262006199716644131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A003961 (n + 1)).toNat

end

end A373158.P5262006199716644131

noncomputable section

/-- A373158: Fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373158.P5262006199716644131`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373158 (n : ℕ) : ℤ :=
  A373158.P5262006199716644131.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373158.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373184.P13347508952625175779

`A168570(n+1)+A327625(n+1)+A284413(n+1)`
-/

namespace A373184.P13347508952625175779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (n + 1) + (A327625 (n + 1) + A284413 (n + 1))

end

end A373184.P13347508952625175779

noncomputable section

/-- A373184: G.f. A(x) satisfies A(x) = 1/(1 - x)^2 - 1 + A(x^3).

Offset 1, canonical program `A373184.P13347508952625175779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373184 (n : ℕ) : ℤ :=
  A373184.P13347508952625175779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373186.P9548359750285709063

`∑{d}[n+1, A057661(#)*A195459((n+1)/#)]`
-/

namespace A373186.P9548359750285709063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A195459 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373186.P9548359750285709063

noncomputable section

/-- A373186: Expansion of Sum_{k>=0} x^(3^k) / (1 - x^(3^k))^3.

Offset 1, canonical program `A373186.P9548359750285709063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1835 terms. -/
def A373186 (n : ℕ) : ℤ :=
  A373186.P9548359750285709063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1835 terms. -/
def A373186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373253.P13431068862952068197

`(1+A003415(n))%3-1`
-/

namespace A373253.P13431068862952068197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 + A003415 n) 3 - 1

end

end A373253.P13431068862952068197

noncomputable section

/-- A373253: a(n) is -1, 0, or 1 such that a(n) == A003415(n) (mod 3), where A003415 is the arithmetic derivative.

Offset 0, canonical program `A373253.P13431068862952068197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373253 (n : ℕ) : ℤ :=
  A373253.P13431068862952068197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373253.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373361.P8190983480698914622

`gcd(n+1, A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373361.P8190983480698914622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A276085 (n + 1))

end

end A373361.P8190983480698914622

noncomputable section

/-- A373361: a(n) = gcd(n, A276085(n)), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373361.P8190983480698914622`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373361 (n : ℕ) : ℤ :=
  (A373361.P8190983480698914622.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373362.P8186546928861798187

`gcd(A001414(n+1), A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373362.P8186546928861798187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A276085 (n + 1))

end

end A373362.P8186546928861798187

noncomputable section

/-- A373362: a(n) = gcd(A001414(n), A276085(n)), where A001414 is the sum of prime factors with repetition, and A276085 is the primorial base log-function.

Offset 1, canonical program `A373362.P8186546928861798187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373362 (n : ℕ) : ℤ :=
  (A373362.P8186546928861798187.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373384.P6850270848834805582

`filter[3*(n+1), A373383(#)]`
-/

namespace A373384.P6850270848834805582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j) = 1) n)

end

end A373384.P6850270848834805582

noncomputable section

/-- A373384: Numbers k that are multiples of 3 and also A059975(k) is a multiple of 3, where A059975 is fully additive with a(p) = p-1.

Offset 1, canonical program `A373384.P6850270848834805582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373384 (n : ℕ) : ℤ :=
  (A373384.P6850270848834805582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373397.P14400357127221746357

`∑{d}[n+1, A372671(#)*A373156((n+1)/#)]`
-/

namespace A373397.P14400357127221746357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372671 d * A373156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373397.P14400357127221746357

noncomputable section

/-- A373397: Expansion of Sum_{k>=0} x^(6^k) / (1 - x^(6^k))^2.

Offset 1, canonical program `A373397.P14400357127221746357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373397 (n : ℕ) : ℤ :=
  A373397.P14400357127221746357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373591.P16264058647901355878

`A001222(A248909(n+1))`
-/

namespace A373591.P16264058647901355878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A248909 (n + 1)).toNat

end

end A373591.P16264058647901355878

noncomputable section

/-- A373591: Number of primes congruent to 1 modulo 3 dividing n (with multiplicity).

Offset 1, canonical program `A373591.P16264058647901355878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373591 (n : ℕ) : ℤ :=
  A373591.P16264058647901355878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373648.P4935592686855343092

`A296023(1+n)-1`
-/

namespace A373648.P4935592686855343092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296023 (1 + n) - 1

end

end A373648.P4935592686855343092

noncomputable section

/-- A373648: Integers k such that there are i groups of order k+i up to isomorphism, for i=1,2.

Offset 1, canonical program `A373648.P4935592686855343092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A373648 (n : ℕ) : ℤ :=
  A373648.P4935592686855343092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A373648.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373835.P5094601012644144841

`gcd(A001222(n+1), A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373835.P5094601012644144841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A276085 (n + 1))

end

end A373835.P5094601012644144841

noncomputable section

/-- A373835: a(n) = gcd(bigomega(n), A276085(n)), where bigomega (A001222), and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373835.P5094601012644144841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373835 (n : ℕ) : ℤ :=
  (A373835.P5094601012644144841.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373835.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A373842.P10561834911187279729

`A003415(A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373842.P10561834911187279729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A276085 (n + 1)).toNat

end

end A373842.P10561834911187279729

noncomputable section

/-- A373842: a(n) = A003415(A276085(n)), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373842.P10561834911187279729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373842 (n : ℕ) : ℤ :=
  A373842.P10561834911187279729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373842.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373850.P7662047302507533988

`A276085(n+2)%A001222(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373850.P7662047302507533988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 2)) (A001222 (n + 2))

end

end A373850.P7662047302507533988

noncomputable section

/-- A373850: a(n) = A276085(n) mod bigomega(n), where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 2, canonical program `A373850.P7662047302507533988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373850 (n : ℕ) : ℤ :=
  A373850.P7662047302507533988.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373993.P4411129616619949872

`C(n, lcm(A000005(n+1), n))`
-/

namespace A373993.P4411129616619949872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.lcm (A000005 (n + 1)) (n : ℤ))

end

end A373993.P4411129616619949872

noncomputable section

/-- A373993: a(n) = 1 if the number of divisors of n divides n-1, otherwise 0.

Offset 1, canonical program `A373993.P4411129616619949872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373993 (n : ℕ) : ℤ :=
  (A373993.P4411129616619949872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374112.P8766406934857238661

`gcd(A113177(n+1), A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374112.P8766406934857238661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113177 (n + 1)) (A276085 (n + 1))

end

end A374112.P8766406934857238661

noncomputable section

/-- A374112: a(n) = gcd(A113177(n), A276085(n)), where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374112.P8766406934857238661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374112 (n : ℕ) : ℤ :=
  (A374112.P8766406934857238661.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374132.P16381188138359471221

`val(A276085(n+2), 2)`
-/

namespace A374132.P16381188138359471221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276085 (n + 2)).toNat 2

end

end A374132.P16381188138359471221

noncomputable section

/-- A374132: The 2-adic valuation of A276085(n), where A276085 is the primorial base log-function.

Offset 2, canonical program `A374132.P16381188138359471221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374132 (n : ℕ) : ℤ :=
  (A374132.P16381188138359471221.a (n - 2) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374133.P4729042848230009534

`val(A276085(n+2), 3)`
-/

namespace A374133.P4729042848230009534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276085 (n + 2)).toNat 3

end

end A374133.P4729042848230009534

noncomputable section

/-- A374133: The 3-adic valuation of A276085(n), where A276085 is the primorial base log-function.

Offset 2, canonical program `A374133.P4729042848230009534`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374133 (n : ℕ) : ℤ :=
  (A374133.P4729042848230009534.a (n - 2) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374133.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A375108.P3999526629064181679

`A363887(2+n)-A363888(n+2)`
-/

namespace A375108.P3999526629064181679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363887 (2 + n) - A363888 (n + 2)

end

end A375108.P3999526629064181679

noncomputable section

/-- A375108: Expansion of Sum_{k in Z} x^(3*k) / (1 - x^(7*k+3)).

Offset 0, canonical program `A375108.P3999526629064181679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375108 (n : ℕ) : ℤ :=
  A375108.P3999526629064181679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375257.P7772889362552758042

`eq[1, A180017(n)+2]`
-/

namespace A375257.P7772889362552758042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375257.P7772889362552758042

noncomputable section

/-- A375257: Numbers whose sum of base-2 digits is 1 more than their sum of base-3 digits.

Offset 1, canonical program `A375257.P7772889362552758042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A375257 (n : ℕ) : ℤ :=
  (A375257.P7772889362552758042.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A375257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376131.P331097049803313439

`∑[A376132(n+1)]-A376132(n+1)`
-/

namespace A376131.P331097049803313439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A376132 (n + 1)

end

end A376131.P331097049803313439

noncomputable section

/-- A376131: Total number of times all nodes fire in a chip-firing game starting with 2n chips at the root on an infinite binary tree with a loop at the root.

Offset 1, canonical program `A376131.P331097049803313439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376131 (n : ℕ) : ℤ :=
  A376131.P331097049803313439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376172.P11575196301997982904

`lt[A327219(or(2, A051904(n+1))), 1]+1`
-/

namespace A376172.P11575196301997982904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 (Int.lor 2 (A051904 (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A376172.P11575196301997982904

noncomputable section

/-- A376172: Numbers whose prime factorization has an even minimum exponent.

Offset 1, canonical program `A376172.P11575196301997982904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A376172 (n : ℕ) : ℤ :=
  (A376172.P11575196301997982904.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A376172.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A376366.P16346461924270472844

`A368779(n+1)-A376365(n+1)`
-/

namespace A376366.P16346461924270472844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368779 (n + 1) - A376365 (n + 1)

end

end A376366.P16346461924270472844

noncomputable section

/-- A376366: The number of non-unitary prime divisors of the cubefree numbers.

Offset 1, canonical program `A376366.P16346461924270472844`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368779, A376365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376366 (n : ℕ) : ℤ :=
  A376366.P16346461924270472844.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368779, A376365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376397.P17216428278803912418

`∑[A276075(1+n)]`
-/

namespace A376397.P17216428278803912418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376397.P17216428278803912418

noncomputable section

/-- A376397: a(n) = A276075(n!), where A276075 is the factorial base log-function.

Offset 1, canonical program `A376397.P17216428278803912418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A376397 (n : ℕ) : ℤ :=
  A376397.P17216428278803912418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A376397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376398.P11062521250475746961

`∑[A276085(1+n)]`
-/

namespace A376398.P11062521250475746961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376398.P11062521250475746961

noncomputable section

/-- A376398: a(n) = A276085(n!), where A276085 is the primorial base log-function.

Offset 1, canonical program `A376398.P11062521250475746961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A376398 (n : ℕ) : ℤ :=
  A376398.P11062521250475746961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A376398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376663.P2676070495033295066

`A051904(A338041(3*(n+1))+A000005(n+3)*A060819(n+5))`
-/

namespace A376663.P2676070495033295066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A338041 (3 * (n + 1)) + A000005 (n + 3) * A060819 (n + 5)).toNat

end

end A376663.P2676070495033295066

noncomputable section

/-- A376663: Largest frequency of n in the multiset of multinomial coefficients k!/(x_1! * ... * x_j!) with 1 <= x_1 <= ... <= x_j for a fixed k = x_1 + ... + x_j, i.e., maximum number of times that n appears in a row of A036038.

Offset 1, canonical program `A376663.P2676070495033295066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A376663 (n : ℕ) : ℤ :=
  A376663.P2676070495033295066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A376663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376715.P13326971557905108235

`filter[A265640(1+n), A066247(#)]`
-/

namespace A376715.P13326971557905108235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A376715.P13326971557905108235

noncomputable section

/-- A376715: Composite numbers in A265640.

Offset 1, canonical program `A376715.P13326971557905108235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5018 terms. -/
def A376715 (n : ℕ) : ℤ :=
  A376715.P13326971557905108235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5018 terms. -/
def A376715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376720.P17042756248652470706

`A126706(1+n)*A365783(n+1)`
-/

namespace A376720.P17042756248652470706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (1 + n) * A365783 (n + 1)

end

end A376720.P17042756248652470706

noncomputable section

/-- A376720: Product of numbers m that are neither squarefree nor prime powers and rad(m), where rad = A007947.

Offset 1, canonical program `A376720.P17042756248652470706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376720 (n : ℕ) : ℤ :=
  A376720.P17042756248652470706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376885.P14720572819041160036

`∑{e}[1+n, A276150(#)]`
-/

namespace A376885.P14720572819041160036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A276150 (Nat.factorization (f1 n) p)

end

end A376885.P14720572819041160036

noncomputable section

/-- A376885: The number of factors of n of the form p^(k!) counted with multiplicity, where p is a prime and k >= 1, when the factorization is uniquely done using the factorial-base representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A376885.P14720572819041160036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376885 (n : ℕ) : ℤ :=
  A376885.P14720572819041160036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377278.P11682108343684824947

`A000203(A059268(n))*A000203(A059268(n+1))`
-/

namespace A377278.P11682108343684824947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A059268 n).toNat * A000203 (A059268 (n + 1)).toNat

end

end A377278.P11682108343684824947

noncomputable section

/-- A377278: Denominators in a harmonic triangle; q-analog of A126615, here q = 2.

Offset 1, canonical program `A377278.P11682108343684824947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A377278 (n : ℕ) : ℤ :=
  A377278.P11682108343684824947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A377278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377540.P8485193340030685808

`eq[1, A161996(n+1)]+1`
-/

namespace A377540.P8485193340030685808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377540.P8485193340030685808

noncomputable section

/-- A377540: Numbers k such that at least one of the numbers 6k-1 or 6k+1 is prime.

Offset 1, canonical program `A377540.P8485193340030685808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377540 (n : ℕ) : ℤ :=
  (A377540.P8485193340030685808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377816.P4596076651778180258

`eq[2, A000005(A336643(n+1))%4]+1`
-/

namespace A377816.P4596076651778180258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A336643 (n + 1)).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377816.P4596076651778180258

noncomputable section

/-- A377816: Numbers that have a single even exponent in their prime factorization.

Offset 1, canonical program `A377816.P4596076651778180258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377816 (n : ℕ) : ℤ :=
  (A377816.P4596076651778180258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377816.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A378036.P4355795129430558583

`A378033(n+2)-A378033(n+1)`
-/

namespace A378036.P4355795129430558583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (n + 2) - A378033 (n + 1)

end

end A378036.P4355795129430558583

noncomputable section

/-- A378036: First differences of A378033 (greatest positive integer < n that is 1 or nonsquarefree).

Offset 1, canonical program `A378036.P4355795129430558583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378033, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378036 (n : ℕ) : ℤ :=
  A378036.P4355795129430558583.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378033, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378040.P15613936278681359725

`record[A377783(A100727(n))]`
-/

namespace A378040.P15613936278681359725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (A100727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P15613936278681359725

noncomputable section

/-- A378040: Union of A377783(n) = least nonsquarefree number > prime(n).

Offset 1, canonical program `A378040.P15613936278681359725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378040 (n : ℕ) : ℤ :=
  A378040.P15613936278681359725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378085.P15528226860395995619

`1-Δ[A378619(1+n)]`
-/

namespace A378085.P15528226860395995619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378619 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A378085.P15528226860395995619

noncomputable section

/-- A378085: First differences of A070321 (greatest squarefree number <= n).

Offset 1, canonical program `A378085.P15528226860395995619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378085 (n : ℕ) : ℤ :=
  A378085.P15528226860395995619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378085.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A378228.P6353953585605752908

`(1+n)*A378221(n+1)`
-/

namespace A378228.P6353953585605752908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A378221 (n + 1)

end

end A378228.P6353953585605752908

noncomputable section

/-- A378228: Dirichlet inverse of A341528, where A341528(n) = n * sigma(A003961(n)), and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378228.P6353953585605752908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378228 (n : ℕ) : ℤ :=
  A378228.P6353953585605752908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378620.P6069083703779704707

`∩[A068360(n+1), A270192(n+1)]`
-/

namespace A378620.P6069083703779704707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378620.P6069083703779704707

noncomputable section

/-- A378620: Lesser prime index of twin primes with nonsquarefree mean.

Offset 1, canonical program `A378620.P6069083703779704707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378620 (n : ℕ) : ℤ :=
  (A378620.P6069083703779704707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378996.P6732452737629520424

`A017666(2*(n+1))`
-/

namespace A378996.P6732452737629520424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (2 * (n + 1))

end

end A378996.P6732452737629520424

noncomputable section

/-- A378996: Denominator of sigma(2*n)/(2*n).

Offset 1, canonical program `A378996.P6732452737629520424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378996 (n : ℕ) : ℤ :=
  A378996.P6732452737629520424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378996.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379028.P7022439097960608132

`∏{e}[1+n, A000005(#+1)]`
-/

namespace A379028.P7022439097960608132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.factorization (f1 n) p + 1)

end

end A379028.P7022439097960608132

noncomputable section

/-- A379028: The number of modified exponential divisors of n.

Offset 1, canonical program `A379028.P7022439097960608132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379028 (n : ℕ) : ℤ :=
  A379028.P7022439097960608132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379219.P16078624363697017036

`∑{d}[n+1, A379109(#)]`
-/

namespace A379219.P16078624363697017036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A379109 d

end

end A379219.P16078624363697017036

noncomputable section

/-- A379219: Dirichlet inverse of A379218.

Offset 1, canonical program `A379219.P16078624363697017036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379219 (n : ℕ) : ℤ :=
  A379219.P16078624363697017036.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379239.P18266908757629048078

`eq[1, A379238(1+n)]+1`
-/

namespace A379239.P18266908757629048078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379238 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379239.P18266908757629048078

noncomputable section

/-- A379239: Numbers k for which A003961(k)-sigma(k) is prime, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379239.P18266908757629048078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379239 (n : ℕ) : ℤ :=
  (A379239.P18266908757629048078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379239.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379475.P1067079414493059860

`n²%A372565(n+1)`
-/

namespace A379475.P1067079414493059860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A372565 (n + 1))

end

end A379475.P1067079414493059860

noncomputable section

/-- A379475: a(n) = 1 if A372565(n) > 1, otherwise 0, where A372565(n) is the greatest common divisor of n, sigma(n) and A003961(n).

Offset 1, canonical program `A379475.P1067079414493059860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379475 (n : ℕ) : ℤ :=
  A379475.P1067079414493059860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379477.P1420737164069677363

`eq[1, A379476(1+n)]+1`
-/

namespace A379477.P1420737164069677363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379477.P1420737164069677363

noncomputable section

/-- A379477: Numbers k such that A003961(k)-2k and A003961(k)-sigma(k) have a common divisor > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379477.P1420737164069677363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379477 (n : ℕ) : ℤ :=
  (A379477.P1420737164069677363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379714.P17882990982975447119

`∑[A049419(1+n)*(-1)^n]`
-/

namespace A379714.P17882990982975447119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (1 + n) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379714.P17882990982975447119

noncomputable section

/-- A379714: Partial alternating sums of the number of exponential divisors function (A049419).

Offset 1, canonical program `A379714.P17882990982975447119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379714 (n : ℕ) : ℤ :=
  A379714.P17882990982975447119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379717.P10074037294569084625

`A007434(A004709(n+1))`
-/

namespace A379717.P10074037294569084625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A004709 (n + 1)).toNat

end

end A379717.P10074037294569084625

noncomputable section

/-- A379717: The second Jordan totient function applied to the cubefree numbers.

Offset 1, canonical program `A379717.P10074037294569084625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379717 (n : ℕ) : ℤ :=
  A379717.P10074037294569084625.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379717.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A379970.P2983459517443085042

`and(1, n*A341635(n+1))`
-/

namespace A379970.P2983459517443085042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A341635 (n + 1))

end

end A379970.P2983459517443085042

noncomputable section

/-- A379970: a(n) = 1 if n is twice its squarefree kernel (A007949), otherwise 0.

Offset 1, canonical program `A379970.P2983459517443085042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379970 (n : ℕ) : ℤ :=
  A379970.P2983459517443085042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380288.P9721759158945038093

`A000005(n+1)-A379590(n+1)`
-/

namespace A380288.P9721759158945038093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A379590 (n + 1)

end

end A380288.P9721759158945038093

noncomputable section

/-- A380288: a(n) is the number of divisors d of n such that 2^d - 1 is not prime.

Offset 1, canonical program `A380288.P9721759158945038093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380288 (n : ℕ) : ℤ :=
  A380288.P9721759158945038093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380329.P10962560740174300545

`A151800((or(-1, a(n-1))^5+n)*A151800(n))` with `a(0)=2`
-/

namespace A380329.P10962560740174300545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 ((Int.lor (-1) (a (n - 1)) ^ 5 + (n : ℤ)) * A151800 n).toNat

end

end A380329.P10962560740174300545

noncomputable section

/-- A380329: a(n) = A151800((n-1)*A151800(n)).

Offset 0, canonical program `A380329.P10962560740174300545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A380329 (n : ℕ) : ℤ :=
  A380329.P10962560740174300545.a n

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

/-! ## A380952.P15515145725321038377

`n*A046161(n)-A173384(n)`
-/

namespace A380952.P15515145725321038377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A046161 n - A173384 n

end

end A380952.P15515145725321038377

noncomputable section

/-- A380952: a(n) = 2^(2*n - HammingWeight(n)) * [x^n] ((x - 1)^(-2) - (1 - x)^(-3/2)).

Offset 0, canonical program `A380952.P15515145725321038377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A380952 (n : ℕ) : ℤ :=
  A380952.P15515145725321038377.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A380952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381241.P648882658982533390

`record[A381096(n+1)]`
-/

namespace A381241.P648882658982533390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381241.P648882658982533390

noncomputable section

/-- A381241: Records in A381096.

Offset 1, canonical program `A381241.P648882658982533390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A381241 (n : ℕ) : ℤ :=
  A381241.P648882658982533390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A381241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381973.P5402880455865549250

`eq[1, A003415(A004128(n))]`
-/

namespace A381973.P5402880455865549250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A004128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381973.P5402880455865549250

noncomputable section

/-- A381973: Numbers m such that Sum_{k >= 0} floor(m/3^k) is prime.

Offset 1, canonical program `A381973.P5402880455865549250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A381973 (n : ℕ) : ℤ :=
  (A381973.P5402880455865549250.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A381973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382662.P17606153397219342384

`A047994(A004709(n+1))`
-/

namespace A382662.P17606153397219342384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A004709 (n + 1)).toNat

end

end A382662.P17606153397219342384

noncomputable section

/-- A382662: The unitary totient function applied to the cubefree numbers (A004709).

Offset 1, canonical program `A382662.P17606153397219342384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382662 (n : ℕ) : ℤ :=
  A382662.P17606153397219342384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382662.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A383287.P10993191168392929584

`A121262(A276075(n+1))`
-/

namespace A383287.P10993191168392929584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A276075 (n + 1)).toNat

end

end A383287.P10993191168392929584

noncomputable section

/-- A383287: a(n) = 1 if A276075(n) is a multiple of 4, otherwise 0, where A276075 is fully additive with a(p) = PrimePi(p)!.

Offset 1, canonical program `A383287.P10993191168392929584`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383287 (n : ℕ) : ℤ :=
  A383287.P10993191168392929584.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384021.P6096998698699556837

`∪[A000079(n), A030130(n+2)]`
-/

namespace A384021.P6096998698699556837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384021.P6096998698699556837

noncomputable section

/-- A384021: Powers of 2 along with numbers one power of 2 less than binary repunits, but the power of two subtracted does not flip the leading bit.

Offset 1, canonical program `A384021.P6096998698699556837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384021 (n : ℕ) : ℤ :=
  (A384021.P6096998698699556837.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384021.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A384423.P1983985072499211494

`∑{e}[1+n, A047994(#)]`
-/

namespace A384423.P1983985072499211494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A047994 (Nat.factorization (f1 n) p)

end

end A384423.P1983985072499211494

noncomputable section

/-- A384423: The number of prime powers (not including 1) p^e that divide n such that e is unitarily coprime to the p-adic valuation of n.

Offset 1, canonical program `A384423.P1983985072499211494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384423 (n : ℕ) : ℤ :=
  A384423.P1983985072499211494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384556.P4300059835760640918

`A007947(n+1)*A367990(n+1)`
-/

namespace A384556.P4300059835760640918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A367990 (n + 1)

end

end A384556.P4300059835760640918

noncomputable section

/-- A384556: The sum of the exponential divisors of n that are cubefree.

Offset 1, canonical program `A384556.P4300059835760640918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384556 (n : ℕ) : ℤ :=
  A384556.P4300059835760640918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384710.P3301350355556147673

`1+n-A062830(n)`
-/

namespace A384710.P3301350355556147673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) - A062830 n

end

end A384710.P3301350355556147673

noncomputable section

/-- A384710: a(n) = Sum_{k=0..n} [gcd(k, n) = 1], where [.] are the Iverson brackets.

Offset 0, canonical program `A384710.P3301350355556147673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384710 (n : ℕ) : ℤ :=
  A384710.P3301350355556147673.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385147.P4172335762244898518

`∑[A066781(1+n)]`
-/

namespace A385147.P4172335762244898518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385147.P4172335762244898518

noncomputable section

/-- A385147: a(n) = Sum_{i=1..n} 2^phi(i), where phi=A000010.

Offset 1, canonical program `A385147.P4172335762244898518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A385147 (n : ℕ) : ℤ :=
  A385147.P4172335762244898518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A385147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385183.P5225721144157549085

`A341674(lt[1, A341674(1+n)]+1)`
-/

namespace A385183.P5225721144157549085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341674 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A385183.P5225721144157549085

noncomputable section

/-- A385183: The v sequence in quartets (1,u,v,w); see A385182.

Offset 1, canonical program `A385183.P5225721144157549085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7491 terms. -/
def A385183 (n : ℕ) : ℤ :=
  A385183.P5225721144157549085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7491 terms. -/
def A385183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385186.P17516618380962078124

`2*A147846(1+n)`
-/

namespace A385186.P17516618380962078124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147846 (1 + n)

end

end A385186.P17516618380962078124

noncomputable section

/-- A385186: Oblong numbers of the form k*(k + 1) such that at least one of k and k + 1 is prime.

Offset 1, canonical program `A385186.P17516618380962078124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385186 (n : ℕ) : ℤ :=
  A385186.P17516618380962078124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385374.P17225711820736057586

`A060016(A000005(1+n)+∑[n])`
-/

namespace A385374.P17225711820736057586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (A000005 (1 + n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A385374.P17225711820736057586

noncomputable section

/-- A385374: a(n) is the number of partitions of n into tau(n) distinct parts.

Offset 1, canonical program `A385374.P17225711820736057586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A385374 (n : ℕ) : ℤ :=
  A385374.P17225711820736057586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A385374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385822.P1570709262193700311

`comp[A039770(1+n)-1]+1`
-/

namespace A385822.P1570709262193700311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A385822.P1570709262193700311

noncomputable section

/-- A385822: Numbers k such that phi(k) is not a perfect square.

Offset 1, canonical program `A385822.P1570709262193700311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385822 (n : ℕ) : ℤ :=
  (A385822.P1570709262193700311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385822.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387362.P10061794841326187916

`∩[A003277(n+1)-2, A003277(n+1)]`
-/

namespace A387362.P10061794841326187916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387362.P10061794841326187916

noncomputable section

/-- A387362: Cyclic numbers k such that k+2 is also a cyclic number.

Offset 1, canonical program `A387362.P10061794841326187916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5319 terms. -/
def A387362 (n : ℕ) : ℤ :=
  (A387362.P10061794841326187916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5319 terms. -/
def A387362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387728.P12558144183525184501

`lt[A387726(1+n), n+1]+1`
-/

namespace A387728.P12558144183525184501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387726 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387728.P12558144183525184501

noncomputable section

/-- A387728: Numbers k such that the powerful part of the sum of divisors of k (A387726) is less than k.

Offset 1, canonical program `A387728.P12558144183525184501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9195 terms. -/
def A387728 (n : ℕ) : ℤ :=
  (A387728.P12558144183525184501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9195 terms. -/
def A387728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387892.P9700329356770673450

`lt[A344753(n+1), A000203(n+1)]+1`
-/

namespace A387892.P9700329356770673450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A387892.P9700329356770673450

noncomputable section

/-- A387892: Psi-deficient numbers: numbers k such that psi(k) < 2*k.

Offset 1, canonical program `A387892.P9700329356770673450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8262 terms. -/
def A387892 (n : ℕ) : ℤ :=
  (A387892.P9700329356770673450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8262 terms. -/
def A387892.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A388972.P1578162226267152276

`eq[1, gcd(3, A049419(n+1))]+1`
-/

namespace A388972.P1578162226267152276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A049419 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A388972.P1578162226267152276

noncomputable section

/-- A388972: Numbers whose number of exponential divisors is a power of 2.

Offset 1, canonical program `A388972.P1578162226267152276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9581 terms. -/
def A388972 (n : ℕ) : ℤ :=
  (A388972.P1578162226267152276.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9581 terms. -/
def A388972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390252.P14317934682542997083

`∪[A280076(1+n), A386637(n+1)]`
-/

namespace A390252.P14317934682542997083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390252.P14317934682542997083

noncomputable section

/-- A390252: Numbers k such that sigma(k) = psi(k) + omega(k)^3.

Offset 1, canonical program `A390252.P14317934682542997083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 991 terms. -/
def A390252 (n : ℕ) : ℤ :=
  (A390252.P14317934682542997083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 991 terms. -/
def A390252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390804.P18010543064015329428

`(A062570(n+1)+A209229(n+1))*(n+1)/2`
-/

namespace A390804.P18010543064015329428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A062570 (n + 1) + A209229 (n + 1)) * (n + 1 : ℤ) : ℚ) / 2

end

end A390804.P18010543064015329428

noncomputable section

/-- A390804: The sum of the integers k from 1 to n such that gcd(n, k) is a power of 2.

Offset 1, canonical program `A390804.P18010543064015329428`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390804 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390804.P18010543064015329428.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390804.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A391793.P952432281470037196

`∑{d}[n+1, A253206(#)*A307425((n+1)/#)]`
-/

namespace A391793.P952432281470037196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253206 d * A307425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A391793.P952432281470037196

noncomputable section

/-- A391793: Multiplicative sequence a(n) with a(p^e) = ((e mod 5) * ((e mod 5) - 5) + 4) / 2 for prime p and e > 0.

Offset 1, canonical program `A391793.P952432281470037196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391793 (n : ℕ) : ℤ :=
  A391793.P952432281470037196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391797.P8977873502925423305

`lt[A110854(n+1), 0]+1`
-/

namespace A391797.P8977873502925423305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110854 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A391797.P8977873502925423305

noncomputable section

/-- A391797: Numbers k such that prime(2*k + 2) - prime(2*k) < prime(2*k + 1) - prime(2*k - 1).

Offset 1, canonical program `A391797.P8977873502925423305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4493 terms. -/
def A391797 (n : ℕ) : ℤ :=
  (A391797.P8977873502925423305.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4493 terms. -/
def A391797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391799.P6194458329291869633

`lt[0, A110854(n+1)]+1`
-/

namespace A391799.P6194458329291869633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110854 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391799.P6194458329291869633

noncomputable section

/-- A391799: Numbers k such that prime(2*k + 2) - prime(2*k) > prime(2*k + 1) - prime(2*k - 1).

Offset 1, canonical program `A391799.P6194458329291869633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4535 terms. -/
def A391799 (n : ℕ) : ℤ :=
  (A391799.P6194458329291869633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4535 terms. -/
def A391799.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392111.P5877037555755260078

`∪[(1+25*n)²², A268328(n+1)]`
-/

namespace A392111.P5877037555755260078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((1 + 25 * n) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392111.P5877037555755260078

noncomputable section

/-- A392111: Numbers k such that 5*k - (greatest prime < 5*k) = (least prime > 5*k) - 5*k.

Offset 1, canonical program `A392111.P5877037555755260078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A392111 (n : ℕ) : ℤ :=
  (A392111.P5877037555755260078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A392111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392114.P6166494852546552160

`A072570(2+n)/6`
-/

namespace A392114.P6166494852546552160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072570 (2 + n) : ℚ) / 6

end

end A392114.P6166494852546552160

noncomputable section

/-- A392114: Numbers k such that 6*k - (greatest prime < 6*n) = (least prime > 6*n) - 6*k.

Offset 1, canonical program `A392114.P6166494852546552160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392114.P6166494852546552160.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392341.P7067263475065933608

`A370905(1+n)-A000196(n+1)`
-/

namespace A392341.P7067263475065933608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370905 (1 + n) - A000196 (n + 1)

end

end A392341.P7067263475065933608

noncomputable section

/-- A392341: Number of pairs (x, y) with 1 <= x < y <= n such that gcd(x, y) is a perfect square.

Offset 1, canonical program `A392341.P7067263475065933608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392341 (n : ℕ) : ℤ :=
  A392341.P7067263475065933608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392341.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392632.P57096770616822519

`eq[1, A392630(1+n)]+1`
-/

namespace A392632.P57096770616822519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392630 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392632.P57096770616822519

noncomputable section

/-- A392632: Numbers k whose squarefree kernel is the only exponential divisor of k that is a number whose number of divisors is a power of 2.

Offset 1, canonical program `A392632.P57096770616822519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8914 terms. -/
def A392632 (n : ℕ) : ℤ :=
  (A392632.P57096770616822519.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8914 terms. -/
def A392632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392841.P5224296855695962585

`val(A165404(1+n), 2)`
-/

namespace A392841.P5224296855695962585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165404 (1 + n)).toNat 2

end

end A392841.P5224296855695962585

noncomputable section

/-- A392841: Number of trailing zeros in a type of Zeckendorf expansion based on the Fibonacci numbers of odd index.

Offset 1, canonical program `A392841.P5224296855695962585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A392841 (n : ℕ) : ℤ :=
  (A392841.P5224296855695962585.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A392841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393043.P12511231345253403073

`eq[2, gcd(6, A003415(n))]`
-/

namespace A393043.P12511231345253403073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A003415 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393043.P12511231345253403073

noncomputable section

/-- A393043: Numbers such that the least prime not dividing their arithmetic derivative is 3.

Offset 1, canonical program `A393043.P12511231345253403073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3079 terms. -/
def A393043 (n : ℕ) : ℤ :=
  (A393043.P12511231345253403073.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3079 terms. -/
def A393043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393450.P12893032744760769802

`lt[A004741(n+1)², n+2]`
-/

namespace A393450.P12893032744760769802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A393450.P12893032744760769802

noncomputable section

/-- A393450: Consider the square spiral with its cells numbered starting at 0, as in A308884 and A274641. Two players, Black and Red, take turns. When it is Black's turn, he places a king at the smallest unoccupied cell not attacked by an existing Red king, and when it is Red's turn, she places a king at the smallest unoccupied cell not attacked by an existing Black king. Sequence lists squares occupied by a Black king.

Offset 0, canonical program `A393450.P12893032744760769802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A393450 (n : ℕ) : ℤ :=
  (A393450.P12893032744760769802.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A393450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393562.P13338399434190979828

`A247367(n)+A000196(n)`
-/

namespace A393562.P13338399434190979828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247367 n + A000196 n

end

end A393562.P13338399434190979828

noncomputable section

/-- A393562: a(n) is the number of unit squares in the square lattice, divided by 4, that have at least one vertex strictly inside and at least one vertex strictly outside the circle x^2 + y^2 = n.

Offset 0, canonical program `A393562.P13338399434190979828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393562 (n : ℕ) : ℤ :=
  A393562.P13338399434190979828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395040.P5833351531975797005

`A276085(A003415(A276086(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395040.P5833351531975797005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A003415 (A276086 (n + 1)).toNat).toNat

end

end A395040.P5833351531975797005

noncomputable section

/-- A395040: a(n) = A276085(A003415(A276086(n))).

Offset 1, canonical program `A395040.P5833351531975797005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395040 (n : ℕ) : ℤ :=
  A395040.P5833351531975797005.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395041.P15644609999811788398

`A276085(A003415(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395041.P15644609999811788398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A003415 (n + 2)).toNat

end

end A395041.P15644609999811788398

noncomputable section

/-- A395041: a(n) = A276085(A003415(n)), where A003415 is the arithmetic derivative and A276085 is fully additive with a(p) = p#/p.

Offset 2, canonical program `A395041.P15644609999811788398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395041 (n : ℕ) : ℤ :=
  A395041.P15644609999811788398.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395052.P17255678126455795144

`A006530(A276085(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395052.P17255678126455795144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A276085 (n + 2)).toNat

end

end A395052.P17255678126455795144

noncomputable section

/-- A395052: a(n) = A006530(A276085(n)), where A006530 gives the largest prime factor of n, and A276085 is fully additive with a(p) = p#/p.

Offset 2, canonical program `A395052.P17255678126455795144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395052 (n : ℕ) : ℤ :=
  A395052.P17255678126455795144.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395253.P6857231362227604878

`Δ[A395251(1+n)]`
-/

namespace A395253.P6857231362227604878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395251 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395253.P6857231362227604878

noncomputable section

/-- A395253: Differences of A395251.

Offset 1, canonical program `A395253.P6857231362227604878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395253 (n : ℕ) : ℤ :=
  A395253.P6857231362227604878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395766.P2737168039498040355

`eq[1, A003415(A126084(n))]`
-/

namespace A395766.P2737168039498040355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A126084 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395766.P2737168039498040355

noncomputable section

/-- A395766: Indices k such that the cumulative bitwise XOR of the first k primes is prime.

Offset 1, canonical program `A395766.P2737168039498040355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A395766 (n : ℕ) : ℤ :=
  (A395766.P2737168039498040355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A395766.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395959.P2730340011751273461

`2*n+A395958(2*n)`
-/

namespace A395959.P2730340011751273461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A395958 (2 * n)

end

end A395959.P2730340011751273461

noncomputable section

/-- A395959: Numbers k such that A395958(k) = 0.

Offset 1, canonical program `A395959.P2730340011751273461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395959 (n : ℕ) : ℤ :=
  A395959.P2730340011751273461.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395960.P5958715908451391238

`2*n+1-A395958(2*n)`
-/

namespace A395960.P5958715908451391238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A395958 (2 * n)

end

end A395960.P5958715908451391238

noncomputable section

/-- A395960: Numbers k such that A395958(k) = 1.

Offset 1, canonical program `A395960.P5958715908451391238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395960 (n : ℕ) : ℤ :=
  A395960.P5958715908451391238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396005.P3331202337071795760

`eq[A000005(n+2), A000005(A004277(n))]`
-/

namespace A396005.P3331202337071795760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396005.P3331202337071795760

noncomputable section

/-- A396005: Numbers k such that tau(2*k) = tau(k + 2) where tau = A000005.

Offset 1, canonical program `A396005.P3331202337071795760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1407 terms. -/
def A396005 (n : ℕ) : ℤ :=
  (A396005.P3331202337071795760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1407 terms. -/
def A396005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396757.P17629373591554347018

`∑{d}[n+1, A002618(#)*A372952((n+1)/#)]`
-/

namespace A396757.P17629373591554347018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396757.P17629373591554347018

noncomputable section

/-- A396757: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} gcd(x_1, x_2, x_3, n)/gcd(x_1, x_2, x_3, x_4, n).

Offset 1, canonical program `A396757.P17629373591554347018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396757 (n : ℕ) : ℤ :=
  A396757.P17629373591554347018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396830.P2907240804271392718

`∑{d}[n+1, A002618(#)*A372961((n+1)/#)]`
-/

namespace A396830.P2907240804271392718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A372961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396830.P2907240804271392718

noncomputable section

/-- A396830: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} gcd(x_1, x_2, x_3, x_4, n)/gcd(x_1, x_2, x_3, x_4, x_5, n).

Offset 1, canonical program `A396830.P2907240804271392718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396830 (n : ℕ) : ℤ :=
  A396830.P2907240804271392718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397387.P3236873794457607494

`∩[floor(A003277(n+3)/2), A003277(n+1)]`
-/

namespace A397387.P3236873794457607494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003277 (n + 3) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397387.P3236873794457607494

noncomputable section

/-- A397387: Sophie Germain cyclic numbers: numbers k such that k and 2*k+1 are both cyclic numbers (A003277).

Offset 1, canonical program `A397387.P3236873794457607494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2711 terms. -/
def A397387 (n : ℕ) : ℤ :=
  (A397387.P3236873794457607494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2711 terms. -/
def A397387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398144.P14755306268000008284

`A057627(n+1)²+A070548(n+1)²+A070549(n+1)²`
-/

namespace A398144.P14755306268000008284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (n + 1) ^ 2 + A070548 (n + 1) ^ 2 + A070549 (n + 1) ^ 2

end

end A398144.P14755306268000008284

noncomputable section

/-- A398144: a(n) is the number of pairs (i,j) with mu(i) = mu(j), 1 <= i,j <= n, where mu = A008683 (Moebius function).

Offset 1, canonical program `A398144.P14755306268000008284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070548, A070549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398144 (n : ℕ) : ℤ :=
  A398144.P14755306268000008284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070548, A070549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398144.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399155.P3147471134997394495

`A175126(n+2)-A309892(n+2)`
-/

namespace A399155.P3147471134997394495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (n + 2) - A309892 (n + 2)

end

end A399155.P3147471134997394495

noncomputable section

/-- A399155: a(n) = f(n) - g(n), where f(n) is the number of steps to reach 0 by repeatedly subtracting the smallest prime factor of the current value, and g(n) is the number of steps to reach 0 by repeatedly subtracting the largest prime factor.

Offset 2, canonical program `A399155.P3147471134997394495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399155 (n : ℕ) : ℤ :=
  A399155.P3147471134997394495.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399188.P10361508471299617653

`eq[-1, a(A000005(n+1))%2]+1` with `a(0)=7, a(1)=1, a(2)=-2, a(3)=-1, a(4)=4`
-/

namespace A399188.P10361508471299617653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 1, -2, -1, 4] fun n f2 =>
  Int.tmod (f2 (A000005 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A399188.P10361508471299617653

noncomputable section

/-- A399188: Numbers x such that recursion {x -> A000005(x)+1} reaches a fixed-point of 4 rather than 3.

Offset 1, canonical program `A399188.P10361508471299617653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399188 (n : ℕ) : ℤ :=
  (A399188.P10361508471299617653.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399872.P15818502093124915241

`∑{d}[n+1, A008683((n+1)/#)*A208775(#)]`
-/

namespace A399872.P15818502093124915241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A208775 d

end

end A399872.P15818502093124915241

noncomputable section

/-- A399872: Cyclically smooth Lyndon words with 6 colors.

Offset 1, canonical program `A399872.P15818502093124915241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A208775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399872 (n : ℕ) : ℤ :=
  A399872.P15818502093124915241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A208775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399872.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399969.P7561850304085371636

`lt[(n+3)%A000005(n+1), 1]+1`
-/

namespace A399969.P7561850304085371636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A399969.P7561850304085371636

noncomputable section

/-- A399969: Numbers k such that the number of divisors of k divides k + 2.

Offset 1, canonical program `A399969.P7561850304085371636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7108 terms. -/
def A399969 (n : ℕ) : ℤ :=
  (A399969.P7561850304085371636.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7108 terms. -/
def A399969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400140.P15113358589886893370

`∑{d}[n+1, A074823(#)*A369308((n+1)/#)]`
-/

namespace A400140.P15113358589886893370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074823 d * A369308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400140.P15113358589886893370

noncomputable section

/-- A400140: The number of divisors d of n such that gcid(d, n/d) is a square, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400140.P15113358589886893370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400140 (n : ℕ) : ℤ :=
  A400140.P15113358589886893370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400259.P12374509986453713779

`A276150(A003415(n))`
-/

namespace A400259.P12374509986453713779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A003415 n).toNat

end

end A400259.P12374509986453713779

noncomputable section

/-- A400259: Sum of digits when n' [the arithmetic derivative of n] is written in primorial base (A049345).

Offset 0, canonical program `A400259.P12374509986453713779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400259 (n : ℕ) : ℤ :=
  A400259.P12374509986453713779.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400451.P13155712066239824629

`A059268(n)*A062111(n)`
-/

namespace A400451.P13155712066239824629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A062111 n

end

end A400451.P13155712066239824629

noncomputable section

/-- A400451: Distinct values of A400450 in increasing order.

Offset 1, canonical program `A400451.P13155712066239824629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400451 (n : ℕ) : ℤ :=
  A400451.P13155712066239824629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400730.P15721063541631280415

`eq[2, A006530(A000005(n²+1))]`
-/

namespace A400730.P15721063541631280415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000005 (n ^ 2 + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400730.P15721063541631280415

noncomputable section

/-- A400730: Numbers k such that k^2 + 1 is an exponentially odd number (A268335).

Offset 1, canonical program `A400730.P15721063541631280415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A400730 (n : ℕ) : ℤ :=
  (A400730.P15721063541631280415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A400730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401066.P9367389379466931953

`A276085(n+1)%A006530(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401066.P9367389379466931953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 1)) (A006530 (n + 1))

end

end A401066.P9367389379466931953

noncomputable section

/-- A401066: a(n) = A276085(n) mod A006530(n), where A276085 is fully additive with a(p) = p#/p, and A006530(n) is the largest prime dividing n.

Offset 1, canonical program `A401066.P9367389379466931953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401066 (n : ℕ) : ℤ :=
  A401066.P9367389379466931953.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401085.P16377491220029045574

`∑{d}[n+1, A008833(#)*A369308((n+1)/#)]`
-/

namespace A401085.P16377491220029045574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d * A369308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401085.P16377491220029045574

noncomputable section

/-- A401085: The total sum of square divisors of the square divisors of n.

Offset 1, canonical program `A401085.P16377491220029045574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401085 (n : ℕ) : ℤ :=
  A401085.P16377491220029045574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401192.P10263266885400746723

`(A058026(2*(n+3)-5)+3+2*A000086(2*(n+3)-5))/6`
-/

namespace A401192.P10263266885400746723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058026 (2 * (n + 3) - 5) + 3 + 2 * A000086 (2 * (n + 3) - 5) : ℚ) / 6

end

end A401192.P10263266885400746723

noncomputable section

/-- A401192: a(n) is the number of inequivalent lattice triangles containing n lattice points, with no boundary lattice points other than their three vertices.

Offset 3, canonical program `A401192.P10263266885400746723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401192.P10263266885400746723.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401380.P625096873618411014

`A401379((n+1)²)`
-/

namespace A401380.P625096873618411014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401379 ((n + 1) ^ 2)

end

end A401380.P625096873618411014

noncomputable section

/-- A401380: Number of distinct prime factors in the largest divisor of sigma(n^2) that are coprime with n^2, where sigma is the sum of divisors function.

Offset 1, canonical program `A401380.P625096873618411014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401379, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401380 (n : ℕ) : ℤ :=
  A401380.P625096873618411014.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401379, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401380.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401393.P699306461951382071

`(n+1)/A305007(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401393.P699306461951382071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A305007 (n + 1) : ℚ)

end

end A401393.P699306461951382071

noncomputable section

/-- A401393: a(n) = n / A305007(n), where A305007 are the denominators of coefficients in expansion of Sum_{k>=1} x^k/(k*(1 + x^k)).

Offset 1, canonical program `A401393.P699306461951382071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305007, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401393 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401393.P699306461951382071.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305007, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401421.P9073841599611467425

`A007947(n+1)*A295295(n+1)`
-/

namespace A401421.P9073841599611467425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A295295 (n + 1)

end

end A401421.P9073841599611467425

noncomputable section

/-- A401421: The sum of coreful divisors of n (A284318) that are cubefree (A004709).

Offset 1, canonical program `A401421.P9073841599611467425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401421 (n : ℕ) : ℤ :=
  A401421.P9073841599611467425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401709.P2327155422441615527

`gcd(A133900(n+1), A272211(n+1))`
-/

namespace A401709.P2327155422441615527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133900 (n + 1)) (A272211 (n + 1))

end

end A401709.P2327155422441615527

noncomputable section

/-- A401709: a(n) = sigma(n)/d, where d is the largest divisor d of sigma(n) that is relatively prime with n.

Offset 1, canonical program `A401709.P2327155422441615527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401709 (n : ℕ) : ℤ :=
  (A401709.P2327155422441615527.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401716.P8478935060395761402

`A355447(n+1)*A401714(n+1)`
-/

namespace A401716.P8478935060395761402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1) * A401714 (n + 1)

end

end A401716.P8478935060395761402

noncomputable section

/-- A401716: a(n) = 1 if A003557(n) < A053669(n) and n is neither squarefree nor prime power, otherwise 0, where A003557(n) is n divided by its squarefree kernel, and A053669(n) is the smallest prime not dividing n.

Offset 1, canonical program `A401716.P8478935060395761402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355447, A401714, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A401716 (n : ℕ) : ℤ :=
  A401716.P8478935060395761402.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355447, A401714, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A401716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401919.P14921605172644302542

`A276085(n+1)%A007947(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401919.P14921605172644302542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 1)) (A007947 (n + 1))

end

end A401919.P14921605172644302542

noncomputable section

/-- A401919: a(n) = A276085(n) mod A007947(n), where A276085 is fully additive with a(p) = p#/p, and A007947 is squarefree kernel (rad).

Offset 1, canonical program `A401919.P14921605172644302542`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401919 (n : ℕ) : ℤ :=
  A401919.P14921605172644302542.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401919.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401926.P808076150525910650

`A124859(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401926.P808076150525910650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A276086 n).toNat

end

end A401926.P808076150525910650

noncomputable section

/-- A401926: a(n) = A124859(A276086(n)), where A124859 is multiplicative with p^e -> primorial(e), and A276086 is the primorial base exp-function.

Offset 0, canonical program `A401926.P808076150525910650`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124859, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401926 (n : ℕ) : ℤ :=
  A401926.P808076150525910650.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124859, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A402169.P15384791389062127097

`char[∑[A101660(n+2)]]`
-/

namespace A402169.P15384791389062127097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A402169.P15384791389062127097

noncomputable section

/-- A402169: Limiting firing word at a distant square for a stack of coins, when each square with at least two coins simultaneously sends one coin to each of the next two squares on its right at every tick.

Offset 1, canonical program `A402169.P15384791389062127097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A402169 (n : ℕ) : ℤ :=
  (A402169.P15384791389062127097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A402169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341831.P2337335291110956279

`∑{d}[n+1, A341832(#)]`
-/

namespace A341831.P2337335291110956279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341832 d

end

end A341831.P2337335291110956279

noncomputable section

/-- A341831: Dirichlet g.f.: 1 / zeta(s)^5.

Offset 1, canonical program `A341831.P2337335291110956279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341831 (n : ℕ) : ℤ :=
  A341831.P2337335291110956279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341945.P12472051479292995867

`ceil(A341982(n+2)/2)`
-/

namespace A341945.P12472051479292995867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A341982 (n + 2) : ℚ) / 2⌉

end

end A341945.P12472051479292995867

noncomputable section

/-- A341945: Number of partitions of n into 2 primes (counting 1 as a prime).

Offset 2, canonical program `A341945.P12472051479292995867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341945 (n : ℕ) : ℤ :=
  A341945.P12472051479292995867.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342003.P12697586407558100656

`A051903(A003415(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342003.P12697586407558100656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A003415 (n + 2)).toNat

end

end A342003.P12697586407558100656

noncomputable section

/-- A342003: Maximal exponent in the prime factorization of the arithmetic derivative of n: a(n) = A051903(A003415(n)).

Offset 2, canonical program `A342003.P12697586407558100656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342003 (n : ℕ) : ℤ :=
  A342003.P12697586407558100656.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342661.P14453427561393418862

`(n+1)*A000203(A064989(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342661.P14453427561393418862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A064989 (n + 1)).toNat

end

end A342661.P14453427561393418862

noncomputable section

/-- A342661: a(n) = n * sigma(A064989(n)), where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p, and sigma gives the sum of the divisors of its argument.

Offset 1, canonical program `A342661.P14453427561393418862`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000203(A064989(n+1))` (program `A342661.P14453427561393418862`, by `A342661.P14453427561393418862.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342661 (n : ℕ) : ℤ :=
  A342661.P14453427561393418862.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000203(A064989(n+1))` (program `A342661.P14453427561393418862`, by `A342661.P14453427561393418862.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342661.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A342662.P18301386623075577230

`A000203(n+1)*A064989(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342662.P18301386623075577230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A064989 (n + 1)

end

end A342662.P18301386623075577230

noncomputable section

/-- A342662: a(n) = sigma(n) * A064989(n), where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p, and sigma is the sum of the divisors of n.

Offset 1, canonical program `A342662.P18301386623075577230`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A064989(n+1)` (program `A342662.P18301386623075577230`, by `A342662.P18301386623075577230.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342662 (n : ℕ) : ℤ :=
  A342662.P18301386623075577230.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A064989(n+1)` (program `A342662.P18301386623075577230`, by `A342662.P18301386623075577230.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342662.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A342670.P1189800651237020186

`gcd((n+1)*A000203(A064989(n+1)), A000203(n+1)*A064989(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342670.P1189800651237020186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * A000203 (A064989 (n + 1)).toNat) (A000203 (n + 1) * A064989 (n + 1))

end

end A342670.P1189800651237020186

noncomputable section

/-- A342670: a(n) = gcd(n*sigma(A064989(n)), sigma(n)*A064989(n)), where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p, and sigma gives the sum of the divisors of its argument.

Offset 1, canonical program `A342670.P1189800651237020186`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd((n+1)*A000203(A064989(n+1)), A000203(n+1)*A064989(n+1))` (program `A342670.P1189800651237020186`, by `A342670.P1189800651237020186.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342670 (n : ℕ) : ℤ :=
  (A342670.P1189800651237020186.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd((n+1)*A000203(A064989(n+1)), A000203(n+1)*A064989(n+1))` (program `A342670.P1189800651237020186`, by `A342670.P1189800651237020186.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A342670.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A343809.P14166176633036238854

`A061802(A350174(n))-n`
-/

namespace A343809.P14166176633036238854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 (A350174 n).toNat - (n : ℤ)

end

end A343809.P14166176633036238854

noncomputable section

/-- A343809: Divide the positive integers into subsets of lengths given by successive primes, then reverse the order of terms in each subset.

Offset 1, canonical program `A343809.P14166176633036238854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343809 (n : ℕ) : ℤ :=
  A343809.P14166176633036238854.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345463.P16392055412775158657

`A001037(n+1)*A002884(n+1)/A000225(n+1)`
-/

namespace A345463.P16392055412775158657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (n + 1) * A002884 (n + 1) : ℚ) / (A000225 (n + 1) : ℚ)

end

end A345463.P16392055412775158657

noncomputable section

/-- A345463: Number of n X n matrices over GF(2) whose characteristic polynomial is irreducible.

Offset 1, canonical program `A345463.P16392055412775158657`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345463 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345463.P16392055412775158657.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345463.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A345978.P5377370654684222569

`-A307013(n)`
-/

namespace A345978.P5377370654684222569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A307013 n

end

end A345978.P5377370654684222569

noncomputable section

/-- A345978: Third coordinate of the points of a counterclockwise spiral on a hexagonal grid in a symmetric redundant hexagonal coordinate system.

Offset 0, canonical program `A345978.P5377370654684222569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345978 (n : ℕ) : ℤ :=
  A345978.P5377370654684222569.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346403.P9961998828298484879

`A000203(A253641(n+1))`
-/

namespace A346403.P9961998828298484879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A253641 (n + 1)).toNat

end

end A346403.P9961998828298484879

noncomputable section

/-- A346403: a(1)=1; for n>1, a(n) gives the sum of the exponents in the different ways to write n as n = x^y, 2 <= x, 1 <= y.

Offset 1, canonical program `A346403.P9961998828298484879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346403 (n : ℕ) : ℤ :=
  A346403.P9961998828298484879.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347188.P3985644836251358168

`(1+A200649(n+1))*a(n-A130312(n))` with `a(0)=1`
-/

namespace A347188.P3985644836251358168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A200649 (n + 1)) * a ((n : ℤ) - A130312 n).toNat

end

end A347188.P3985644836251358168

noncomputable section

/-- A347188: a(n) = A346422(4*A003754(n-1) + 3) for n > 1 with a(1) = 1.

Offset 1, canonical program `A347188.P3985644836251358168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130312, A200649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347188 (n : ℕ) : ℤ :=
  A347188.P3985644836251358168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130312, A200649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347694.P10574536759058824548

`A001751(A099802(n+1)+A000720(n+1))`
-/

namespace A347694.P10574536759058824548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (A099802 (n + 1) + A000720 (n + 1)).toNat

end

end A347694.P10574536759058824548

noncomputable section

/-- A347694: Largest k <= 2*n such that k is a prime or twice a prime.

Offset 1, canonical program `A347694.P10574536759058824548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A347694 (n : ℕ) : ℤ :=
  A347694.P10574536759058824548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A347694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348196.P10190356890292704948

`A066339((n+1)²)`
-/

namespace A348196.P10190356890292704948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 ((n + 1) ^ 2)

end

end A348196.P10190356890292704948

noncomputable section

/-- A348196: Number of primes of the form 4k+1 < n^2.

Offset 1, canonical program `A348196.P10190356890292704948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348196 (n : ℕ) : ℤ :=
  A348196.P10190356890292704948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348750.P7590902845171157499

`A064989(A064989(A000203(A003961(A003961(n+1)))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348750.P7590902845171157499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A000203 (A003961 (A003961 (n + 1)).toNat).toNat).toNat).toNat

end

end A348750.P7590902845171157499

noncomputable section

/-- A348750: a(n) = A064989(A064989(sigma(A003961(A003961(n))))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A348750.P7590902845171157499`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A064989(A000203(A003961(A003961(n+1)))))` (program `A348750.P7590902845171157499`, by `A348750.P7590902845171157499.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A348750 (n : ℕ) : ℤ :=
  A348750.P7590902845171157499.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A064989(A000203(A003961(A003961(n+1)))))` (program `A348750.P7590902845171157499`, by `A348750.P7590902845171157499.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A348750.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A348993.P3859083894911945124

`A064989(A000203(n+1)/gcd(A000203(n+1), A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348993.P3859083894911945124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A003961 (n + 1)) : ℚ))).toNat

end

end A348993.P3859083894911945124

noncomputable section

/-- A348993: a(n) = A064989(sigma(n) / gcd(sigma(n), A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, while A064989 shifts it back towards smaller primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A348993.P3859083894911945124`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A000203(n+1)/gcd(A000203(n+1), A003961(n+1)))` (program `A348993.P3859083894911945124`, by `A348993.P3859083894911945124.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A348993 (n : ℕ) : ℤ :=
  A348993.P3859083894911945124.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A000203(n+1)/gcd(A000203(n+1), A003961(n+1)))` (program `A348993.P3859083894911945124`, by `A348993.P3859083894911945124.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A348993.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A349125.P4936637679341869880

`A008683(n+1)*A064989(n+1)`
-/

namespace A349125.P4936637679341869880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A064989 (n + 1)

end

end A349125.P4936637679341869880

noncomputable section

/-- A349125: Dirichlet inverse of A064989, where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p.

Offset 1, canonical program `A349125.P4936637679341869880`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349125 (n : ℕ) : ℤ :=
  A349125.P4936637679341869880.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349127.P5140744659870694440

`∑{d}[n+1, A008683(#)*A064989((n+1)/#)]`
-/

namespace A349127.P5140744659870694440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349127.P5140744659870694440

noncomputable section

/-- A349127: Möbius transform of A064989, where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p.

Offset 1, canonical program `A349127.P5140744659870694440`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349127 (n : ℕ) : ℤ :=
  A349127.P5140744659870694440.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349127.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349128.P12048701012685724267

`A000010(A064989(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349128.P12048701012685724267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A064989 (n + 1)).toNat

end

end A349128.P12048701012685724267

noncomputable section

/-- A349128: a(n) = phi(A064989(n)), where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p, and phi is Euler totient function.

Offset 1, canonical program `A349128.P12048701012685724267`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A064989(n+1))` (program `A349128.P12048701012685724267`, by `A349128.P12048701012685724267.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A349128 (n : ℕ) : ℤ :=
  A349128.P12048701012685724267.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A064989(n+1))` (program `A349128.P12048701012685724267`, by `A349128.P12048701012685724267.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A349128.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A349163.P5024977655063574088

`A064989(gcd(A000203(n+1), A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349163.P5024977655063574088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.gcd (A000203 (n + 1)) (A003961 (n + 1)))

end

end A349163.P5024977655063574088

noncomputable section

/-- A349163: a(n) = A064989(gcd(sigma(n), A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, while A064989 shifts it back towards smaller primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A349163.P5024977655063574088`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(gcd(A000203(n+1), A003961(n+1)))` (program `A349163.P5024977655063574088`, by `A349163.P5024977655063574088.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A349163 (n : ℕ) : ℤ :=
  A349163.P5024977655063574088.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(gcd(A000203(n+1), A003961(n+1)))` (program `A349163.P5024977655063574088`, by `A349163.P5024977655063574088.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A349163.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A349164.P10379583617981606493

`A064989(A003961(n+1)/gcd(A000203(n+1), A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349164.P10379583617981606493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A003961 (n + 1)) : ℚ))).toNat

end

end A349164.P10379583617981606493

noncomputable section

/-- A349164: a(n) = A064989(A003961(n) / gcd(sigma(n), A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, while A064989 shifts it back towards smaller primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A349164.P10379583617981606493`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A003961(n+1)/gcd(A000203(n+1), A003961(n+1)))` (program `A349164.P10379583617981606493`, by `A349164.P10379583617981606493.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A349164 (n : ℕ) : ℤ :=
  A349164.P10379583617981606493.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A003961(n+1)/gcd(A000203(n+1), A003961(n+1)))` (program `A349164.P10379583617981606493`, by `A349164.P10379583617981606493.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A349164.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A349382.P6298685267400545813

`∑{d}[n+1, A064989((n+1)/#)*A346234(#)]`
-/

namespace A349382.P6298685267400545813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A346234 d

end

end A349382.P6298685267400545813

noncomputable section

/-- A349382: Dirichlet convolution of A064989 with A346234 (Dirichlet inverse of A003961), where A003961 and A064989 are fully multiplicative sequences that shift the prime factorization of n one step towards larger and smaller primes respectively.

Offset 1, canonical program `A349382.P6298685267400545813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349382 (n : ℕ) : ℤ :=
  A349382.P6298685267400545813.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349382.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350073.P10296783642631124026

`A064989(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350073.P10296783642631124026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000203 (n + 1)).toNat

end

end A350073.P10296783642631124026

noncomputable section

/-- A350073: a(n) = A064989(sigma(n)), where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p.

Offset 1, canonical program `A350073.P10296783642631124026`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A000203(n+1))` (program `A350073.P10296783642631124026`, by `A350073.P10296783642631124026.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A350073 (n : ℕ) : ℤ :=
  A350073.P10296783642631124026.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A000203(n+1))` (program `A350073.P10296783642631124026`, by `A350073.P10296783642631124026.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A350073.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A350091.P9691971184485335330

`(A347840(n+1)-1)/2`
-/

namespace A350091.P9691971184485335330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347840 (n + 1) - 1 : ℚ) / 2

end

end A350091.P9691971184485335330

noncomputable section

/-- A350091: a(n) = a(floor(n/4)) for n == 2 (mod 4), otherwise n.

Offset 0, canonical program `A350091.P9691971184485335330`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347840, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350091 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350091.P9691971184485335330.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347840, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351449.P13924172491932163526

`A064989(A295294(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351449.P13924172491932163526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A295294 (A003961 (n + 1)).toNat).toNat

end

end A351449.P13924172491932163526

noncomputable section

/-- A351449: a(n) = A064989(A295294(A003961(n))).

Offset 1, canonical program `A351449.P13924172491932163526`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A295294(A003961(n+1)))` (program `A351449.P13924172491932163526`, by `A351449.P13924172491932163526.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351449 (n : ℕ) : ℤ :=
  A351449.P13924172491932163526.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A295294(A003961(n+1)))` (program `A351449.P13924172491932163526`, by `A351449.P13924172491932163526.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351449.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A351450.P4010795598885041516

`A064989(A048250(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351450.P4010795598885041516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A048250 (A003961 (n + 1)).toNat).toNat

end

end A351450.P4010795598885041516

noncomputable section

/-- A351450: a(n) = A064989(A048250(A003961(n))).

Offset 1, canonical program `A351450.P4010795598885041516`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A048250(A003961(n+1)))` (program `A351450.P4010795598885041516`, by `A351450.P4010795598885041516.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351450 (n : ℕ) : ℤ :=
  A351450.P4010795598885041516.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A048250(A003961(n+1)))` (program `A351450.P4010795598885041516`, by `A351450.P4010795598885041516.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351450.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A351451.P11572919348595548671

`A064989(A092261(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351451.P11572919348595548671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A092261 (A003961 (n + 1)).toNat).toNat

end

end A351451.P11572919348595548671

noncomputable section

/-- A351451: a(n) = A064989(A092261(A003961(n))).

Offset 1, canonical program `A351451.P11572919348595548671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351451 (n : ℕ) : ℤ :=
  A351451.P11572919348595548671.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351455.P6293380018795775580

`A064989(A001615(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351455.P6293380018795775580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A001615 (A003961 (n + 1)).toNat).toNat

end

end A351455.P6293380018795775580

noncomputable section

/-- A351455: a(n) = A064989(A001615(A003961(n))).

Offset 1, canonical program `A351455.P6293380018795775580`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A001615(A003961(n+1)))` (program `A351455.P6293380018795775580`, by `A351455.P6293380018795775580.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351455 (n : ℕ) : ℤ :=
  A351455.P6293380018795775580.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A001615(A003961(n+1)))` (program `A351455.P6293380018795775580`, by `A351455.P6293380018795775580.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A351455.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A353472.P5128305465245498163

`A353473(n+1)+A353474(n+1)`
-/

namespace A353472.P5128305465245498163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353473 (n + 1) + A353474 (n + 1)

end

end A353472.P5128305465245498163

noncomputable section

/-- A353472: a(n) = 1 if n is a product of a prime and the square of a different prime (p^2 * q), otherwise 0.

Offset 1, canonical program `A353472.P5128305465245498163`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353473, A353474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353472 (n : ℕ) : ℤ :=
  A353472.P5128305465245498163.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353473, A353474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353578.P14417588411300845885

`4*A353579(1+n)-1`
-/

namespace A353578.P14417588411300845885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A353579 (1 + n) - 1

end

end A353578.P14417588411300845885

noncomputable section

/-- A353578: Numbers in the smallest subset of N containing 3 and closed under the mappings k->2k + 1, k->8k + 3, and k->16k + 3.

Offset 1, canonical program `A353578.P14417588411300845885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A353578 (n : ℕ) : ℤ :=
  A353578.P14417588411300845885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A353578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353747.P3016860989461656940

`A000010(n+1)+A064989(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353747.P3016860989461656940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A064989 (n + 1)

end

end A353747.P3016860989461656940

noncomputable section

/-- A353747: a(n) = phi(n) + A064989(n), where phi is Euler totient function, and A064989 shifts the prime factorization one step towards lower primes.

Offset 1, canonical program `A353747.P3016860989461656940`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)+A064989(n+1)` (program `A353747.P3016860989461656940`, by `A353747.P3016860989461656940.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A353747 (n : ℕ) : ℤ :=
  A353747.P3016860989461656940.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)+A064989(n+1)` (program `A353747.P3016860989461656940`, by `A353747.P3016860989461656940.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A353747.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A353748.P1336225986400836670

`A000010(n+1)-A064989(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353748.P1336225986400836670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A064989 (n + 1)

end

end A353748.P1336225986400836670

noncomputable section

/-- A353748: a(n) = phi(n) - A064989(n), where phi is Euler totient function, and A064989 shifts the prime factorization one step towards lower primes.

Offset 1, canonical program `A353748.P1336225986400836670`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)-A064989(n+1)` (program `A353748.P1336225986400836670`, by `A353748.P1336225986400836670.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A353748 (n : ℕ) : ℤ :=
  A353748.P1336225986400836670.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)-A064989(n+1)` (program `A353748.P1336225986400836670`, by `A353748.P1336225986400836670.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A353748.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A353749.P17113213992478630795

`A000010(n+1)*A064989(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353749.P17113213992478630795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A064989 (n + 1)

end

end A353749.P17113213992478630795

noncomputable section

/-- A353749: a(n) = phi(n) * A064989(n), where phi is Euler totient function, and A064989 shifts the prime factorization one step towards lower primes.

Offset 1, canonical program `A353749.P17113213992478630795`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*A064989(n+1)` (program `A353749.P17113213992478630795`, by `A353749.P17113213992478630795.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A353749 (n : ℕ) : ℤ :=
  A353749.P17113213992478630795.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*A064989(n+1)` (program `A353749.P17113213992478630795`, by `A353749.P17113213992478630795.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A353749.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A353750.P913636982312885297

`A000010(A000203(n+1))*A064989(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353750.P913636982312885297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat * A064989 (A000203 (n + 1)).toNat

end

end A353750.P913636982312885297

noncomputable section

/-- A353750: a(n) = phi(sigma(n)) * A064989(sigma(n)), where A064989 shifts the prime factorization one step towards lower primes.

Offset 1, canonical program `A353750.P913636982312885297`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A000203(n+1))*A064989(A000203(n+1))` (program `A353750.P913636982312885297`, by `A353750.P913636982312885297.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A353750 (n : ℕ) : ℤ :=
  A353750.P913636982312885297.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A000203(n+1))*A064989(A000203(n+1))` (program `A353750.P913636982312885297`, by `A353750.P913636982312885297.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A353750.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A354145.P1495722706327817375

`∩[A102467(1+n), A125493(n+1)]`
-/

namespace A354145.P1495722706327817375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354145.P1495722706327817375

noncomputable section

/-- A354145: Deficient numbers that are neither prime powers nor semiprimes.

Offset 1, canonical program `A354145.P1495722706327817375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 551 terms. -/
def A354145 (n : ℕ) : ℤ :=
  (A354145.P1495722706327817375.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 551 terms. -/
def A354145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354195.P18136762875265386675

`A064989(A000203(A000203(A003961(n+1))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354195.P18136762875265386675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000203 (A000203 (A003961 (n + 1)).toNat).toNat).toNat

end

end A354195.P18136762875265386675

noncomputable section

/-- A354195: a(n) = A064989(sigma(sigma(A003961(n)))), where A003961 shifts the prime factorization one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354195.P18136762875265386675`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A000203(A000203(A003961(n+1))))` (program `A354195.P18136762875265386675`, by `A354195.P18136762875265386675.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A354195 (n : ℕ) : ℤ :=
  A354195.P18136762875265386675.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A000203(A000203(A003961(n+1))))` (program `A354195.P18136762875265386675`, by `A354195.P18136762875265386675.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A354195.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A354196.P12893256437602308760

`A064989(A064989(A000203(A000203(A003961(A003961(n+1))))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354196.P12893256437602308760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A000203 (A000203 (A003961 (A003961 (n + 1)).toNat).toNat).toNat).toNat).toNat

end

end A354196.P12893256437602308760

noncomputable section

/-- A354196: a(n) = A064989(A064989(sigma(sigma(A003961(A003961(n)))))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354196.P12893256437602308760`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A064989(A000203(A000203(A003961(A003961(n+1))))))` (program `A354196.P12893256437602308760`, by `A354196.P12893256437602308760.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A354196 (n : ℕ) : ℤ :=
  A354196.P12893256437602308760.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A064989(A000203(A000203(A003961(A003961(n+1))))))` (program `A354196.P12893256437602308760`, by `A354196.P12893256437602308760.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A354196.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A354197.P10444904739021847792

`A064989(A000203(A000203(A000203(A003961(n+1)))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354197.P10444904739021847792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000203 (A000203 (A000203 (A003961 (n + 1)).toNat).toNat).toNat).toNat

end

end A354197.P10444904739021847792

noncomputable section

/-- A354197: a(n) = A064989(sigma(sigma(sigma(A003961(n))))), where A003961 shifts the prime factorization one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354197.P10444904739021847792`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A000203(A000203(A000203(A003961(n+1)))))` (program `A354197.P10444904739021847792`, by `A354197.P10444904739021847792.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A354197 (n : ℕ) : ℤ :=
  A354197.P10444904739021847792.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A000203(A000203(A000203(A003961(n+1)))))` (program `A354197.P10444904739021847792`, by `A354197.P10444904739021847792.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A354197.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A354198.P6367835848595341422

`A064989(A064989(A000203(A000203(A000203(A003961(A003961(n+1)))))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354198.P6367835848595341422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (A000203 (A000203 (A000203 (A003961 (A003961 (n + 1)).toNat).toNat).toNat).toNat).toNat).toNat

end

end A354198.P6367835848595341422

noncomputable section

/-- A354198: a(n) = A064989(A064989(sigma(sigma(sigma(A003961(A003961(n))))))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354198.P6367835848595341422`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A064989(A000203(A000203(A000203(A003961(A003961(n+1)))))))` (program `A354198.P6367835848595341422`, by `A354198.P6367835848595341422.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A354198 (n : ℕ) : ℤ :=
  A354198.P6367835848595341422.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A064989(A064989(A000203(A000203(A000203(A003961(A003961(n+1)))))))` (program `A354198.P6367835848595341422`, by `A354198.P6367835848595341422.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A354198.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A354346.P4007007454875220424

`2*(n+1)-A064989(A000203(A000203(A003961(n+1))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354346.P4007007454875220424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A064989 (A000203 (A000203 (A003961 (n + 1)).toNat).toNat).toNat

end

end A354346.P4007007454875220424

noncomputable section

/-- A354346: a(n) = 2*n - A064989(sigma(sigma(A003961(n)))), where A003961 shifts the prime factorization one step towards larger primes, and A064989 shifts it back towards smaller primes.

Offset 1, canonical program `A354346.P4007007454875220424`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-A064989(A000203(A000203(A003961(n+1))))` (program `A354346.P4007007454875220424`, by `A354346.P4007007454875220424.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A354346 (n : ℕ) : ℤ :=
  A354346.P4007007454875220424.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-A064989(A000203(A000203(A003961(n+1))))` (program `A354346.P4007007454875220424`, by `A354346.P4007007454875220424.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A354346.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A354365.P13135757245906452931

`A055615(n+1)/gcd(A055615(n+1), A064989(n+1))`
-/

namespace A354365.P13135757245906452931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (Int.gcd (A055615 (n + 1)) (A064989 (n + 1)) : ℚ)

end

end A354365.P13135757245906452931

noncomputable section

/-- A354365: Numerators of Dirichlet inverse of primorial deflation fraction A319626(n) / A319627(n).

Offset 1, canonical program `A354365.P13135757245906452931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354365 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A354365.P13135757245906452931.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354365.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A354366.P16295444334938845799

`A064989(n+1)/gcd(A055615(n+1), A064989(n+1))`
-/

namespace A354366.P16295444334938845799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (Int.gcd (A055615 (n + 1)) (A064989 (n + 1)) : ℚ)

end

end A354366.P16295444334938845799

noncomputable section

/-- A354366: Denominators of Dirichlet inverse of primorial deflation fraction A319626(n) / A319627(n).

Offset 1, canonical program `A354366.P16295444334938845799`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354366 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A354366.P16295444334938845799.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354366.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A354766.P15707321161267585685

`∑{d}[n+1, A278085(#)]`
-/

namespace A354766.P15707321161267585685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A278085 d

end

end A354766.P15707321161267585685

noncomputable section

/-- A354766: 1/4 of the total number of integral quadruples with sum = n and sum of squares = n^2.

Offset 1, canonical program `A354766.P15707321161267585685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354766 (n : ℕ) : ℤ :=
  A354766.P15707321161267585685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354796.P879171962740530169

`A059481(n)*A165680(A127739(n+1))`
-/

namespace A354796.P879171962740530169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A165680 (A127739 (n + 1)).toNat

end

end A354796.P879171962740530169

noncomputable section

/-- A354796: Triangle read by rows. T(n, k) = Gamma(k + n) / k! for n >= 1 and 0 <= k <= n, T(0, 0) = 1.

Offset 0, canonical program `A354796.P879171962740530169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1537 terms. -/
def A354796 (n : ℕ) : ℤ :=
  A354796.P879171962740530169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1537 terms. -/
def A354796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355222.P17906569904308679321

`A182324(n)-A054054(A056142(n))`
-/

namespace A355222.P17906569904308679321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n - A054054 (A056142 n).toNat

end

end A355222.P17906569904308679321

noncomputable section

/-- A355222: The k-th leftmost digit of a(n) is the greatest of the k leftmost digits of n.

Offset 0, canonical program `A355222.P17906569904308679321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355222 (n : ℕ) : ℤ :=
  A355222.P17906569904308679321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355222.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358776.P5160008666837522864

`filter[A036554(n+1), A353669(#)]`
-/

namespace A358776.P5160008666837522864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A358776.P5160008666837522864

noncomputable section

/-- A358776: Positive integers with an even number of prime factors (counting repetitions) that sum to an odd number.

Offset 1, canonical program `A358776.P5160008666837522864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A358776 (n : ℕ) : ℤ :=
  A358776.P5160008666837522864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A358776.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359590.P10814553005928793103

`A359834(4*(n+1))`
-/

namespace A359590.P10814553005928793103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359834 (4 * (n + 1))

end

end A359590.P10814553005928793103

noncomputable section

/-- A359590: Absolute values of A355690, where A355690 is the Dirichlet inverse of the characteristic function of numbers not congruent to 2 mod 4.

Offset 1, canonical program `A359590.P10814553005928793103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359590 (n : ℕ) : ℤ :=
  A359590.P10814553005928793103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359612.P6274791202035646067

`A080367(A304776(2+n))`
-/

namespace A359612.P6274791202035646067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080367 (A304776 (2 + n)).toNat

end

end A359612.P6274791202035646067

noncomputable section

/-- A359612: Largest prime factor with minimal exponent in canonical prime factorization of n.

Offset 2, canonical program `A359612.P6274791202035646067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A359612 (n : ℕ) : ℤ :=
  A359612.P6274791202035646067.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A359612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360758.P7102341119995455638

`eq[2, A096501(A003415(n)+1)]`
-/

namespace A360758.P7102341119995455638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360758.P7102341119995455638

noncomputable section

/-- A360758: Numbers k for which k' - 1 and k' + 1 are twin primes, where the prime denotes the arithmetic derivative.

Offset 1, canonical program `A360758.P7102341119995455638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360758 (n : ℕ) : ℤ :=
  (A360758.P7102341119995455638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360758.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A361760.P2724643918178383863

`A000040(n+1)*A061214(n+1)`
-/

namespace A361760.P2724643918178383863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A061214 (n + 1)

end

end A361760.P2724643918178383863

noncomputable section

/-- A361760: a(n) = Product_{i=prime(n)..prime(n+1)-1} i.

Offset 1, canonical program `A361760.P2724643918178383863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061214, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361760 (n : ℕ) : ℤ :=
  A361760.P2724643918178383863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061214, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361760.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361761.P7731919579724070524

`A006094(n+1)*A061214(n+1)`
-/

namespace A361761.P7731919579724070524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A061214 (n + 1)

end

end A361761.P7731919579724070524

noncomputable section

/-- A361761: a(n) = Product_{i=prime(n)..prime(n+1)} i.

Offset 1, canonical program `A361761.P7731919579724070524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061214, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361761 (n : ℕ) : ℤ :=
  A361761.P7731919579724070524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061214, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362620.P6988714165435039532

`comp[A362619(1+n)-1]+1`
-/

namespace A362620.P6988714165435039532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362619 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A362620.P6988714165435039532

noncomputable section

/-- A362620: Numbers whose greatest prime factor is not a mode, meaning it appears fewer times than some other.

Offset 1, canonical program `A362620.P6988714165435039532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5781 terms. -/
def A362620 (n : ℕ) : ℤ :=
  (A362620.P6988714165435039532.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5781 terms. -/
def A362620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363421.P10423583748182634991

`A363735(n)-((∏{e}[n, #+1]+1)*(n-1)+2)`
-/

namespace A363421.P10423583748182634991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363735 n - (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 : ℕ) : ℤ) * ((n : ℤ) - 1) + 2)

end

end A363421.P10423583748182634991

noncomputable section

/-- A363421: a(n) = Sum_{k=0..n}(n^[not(k | n)] - n^[k | n]), where '[ ]' denotes the Iverson bracket.

Offset 0, canonical program `A363421.P10423583748182634991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363421 (n : ℕ) : ℤ :=
  A363421.P10423583748182634991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363878.P17368432943258259261

`A363795(7*(n+1)-4)`
-/

namespace A363878.P17368432943258259261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (7 * (n + 1) - 4)

end

end A363878.P17368432943258259261

noncomputable section

/-- A363878: Number of divisors of 7*n-4 of form 7*k+2.

Offset 1, canonical program `A363878.P17368432943258259261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363878 (n : ℕ) : ℤ :=
  A363878.P17368432943258259261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363879.P16011273899818667065

`A363795(7*n+1)`
-/

namespace A363879.P16011273899818667065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (7 * n + 1)

end

end A363879.P16011273899818667065

noncomputable section

/-- A363879: Number of divisors of 7*n-6 of form 7*k+2.

Offset 1, canonical program `A363879.P16011273899818667065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363879 (n : ℕ) : ℤ :=
  A363879.P16011273899818667065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363885.P8366996725641736141

`A363795(7*(n+1)-3)`
-/

namespace A363885.P8366996725641736141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (7 * (n + 1) - 3)

end

end A363885.P8366996725641736141

noncomputable section

/-- A363885: Number of divisors of 7*n-3 of form 7*k+2.

Offset 1, canonical program `A363885.P8366996725641736141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363885 (n : ℕ) : ℤ :=
  A363885.P8366996725641736141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363885.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A364104.P16883579566316415671

`A363929(4+5*n)`
-/

namespace A364104.P16883579566316415671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (4 + 5 * n)

end

end A364104.P16883579566316415671

noncomputable section

/-- A364104: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-1)).

Offset 1, canonical program `A364104.P16883579566316415671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364104 (n : ℕ) : ℤ :=
  A364104.P16883579566316415671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364105.P1924825563724486364

`A363929(3+5*n)`
-/

namespace A364105.P1924825563724486364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (3 + 5 * n)

end

end A364105.P1924825563724486364

noncomputable section

/-- A364105: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(5*k-1)).

Offset 1, canonical program `A364105.P1924825563724486364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364105 (n : ℕ) : ℤ :=
  A364105.P1924825563724486364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364106.P3387051768492882436

`A363929(2+5*n)`
-/

namespace A364106.P3387051768492882436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (2 + 5 * n)

end

end A364106.P3387051768492882436

noncomputable section

/-- A364106: Expansion of Sum_{k>0} k * x^(3*k) / (1 - x^(5*k-1)).

Offset 1, canonical program `A364106.P3387051768492882436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364106 (n : ℕ) : ℤ :=
  A364106.P3387051768492882436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364107.P11243191280621098222

`A363929(1+5*n)`
-/

namespace A364107.P11243191280621098222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (1 + 5 * n)

end

end A364107.P11243191280621098222

noncomputable section

/-- A364107: Expansion of Sum_{k>0} k * x^(4*k) / (1 - x^(5*k-1)).

Offset 1, canonical program `A364107.P11243191280621098222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364107 (n : ℕ) : ℤ :=
  A364107.P11243191280621098222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364834.P10638082941698399586

`∑[(1+n)%A370566(1+n)]`
-/

namespace A364834.P10638082941698399586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 + n : ℤ) (A370566 (1 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364834.P10638082941698399586

noncomputable section

/-- A364834: Sum of positive integers <= n which are multiples of 2 or 5.

Offset 1, canonical program `A364834.P10638082941698399586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364834 (n : ℕ) : ℤ :=
  A364834.P10638082941698399586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364905.P262514306637378074

`filter[A073249(n+1), A373975(#)]`
-/

namespace A364905.P262514306637378074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A364905.P262514306637378074

noncomputable section

/-- A364905: Sphenic numbers with no squarefree neighbors.

Offset 1, canonical program `A364905.P262514306637378074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1965 terms. -/
def A364905 (n : ℕ) : ℤ :=
  A364905.P262514306637378074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1965 terms. -/
def A364905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366256.P11528095633646086388

`lt[0, A366255(n)]`
-/

namespace A366256.P11528095633646086388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A366256.P11528095633646086388

noncomputable section

/-- A366256: Positions of odd numbers in May code (A303767).

Offset 1, canonical program `A366256.P11528095633646086388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366256 (n : ℕ) : ℤ :=
  (A366256.P11528095633646086388.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366257.P194233725417520756

`eq[0, A366255(n)]`
-/

namespace A366257.P194233725417520756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366257.P194233725417520756

noncomputable section

/-- A366257: Positions of even numbers in May code (A303767).

Offset 1, canonical program `A366257.P194233725417520756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366257 (n : ℕ) : ℤ :=
  (A366257.P194233725417520756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366257.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A366562.P1526609418940830950

`∏{p}[n+1, 1-#]*A229297((n+1)²/∏{p}[n+1, #])`
-/

namespace A366562.P1526609418940830950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) * A229297 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A366562.P1526609418940830950

noncomputable section

/-- A366562: a(n) = Sum_{k=1..n} A366561(n,k)*A023900(k)/n.

Offset 1, canonical program `A366562.P1526609418940830950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A366562 (n : ℕ) : ℤ :=
  A366562.P1526609418940830950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A366562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366807.P2511539940093670206

`A020639(A120944(n+1))*A120944(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366807.P2511539940093670206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A120944 (n + 1)).toNat * A120944 (n + 1)

end

end A366807.P2511539940093670206

noncomputable section

/-- A366807: a(n) = A020639(A120944(n))*A120944(n).

Offset 1, canonical program `A366807.P2511539940093670206`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366807 (n : ℕ) : ℤ :=
  A366807.P2511539940093670206.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366959.P2192269047836251233

`eq[A054054(n)+2, A054055(n)]`
-/

namespace A366959.P2192269047836251233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366959.P2192269047836251233

noncomputable section

/-- A366959: Numbers whose difference between the largest and smallest digits is equal to 2.

Offset 1, canonical program `A366959.P2192269047836251233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A366959 (n : ℕ) : ℤ :=
  (A366959.P2192269047836251233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A366959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366962.P16010517358609303097

`eq[A054054(n)+2, A054055(n)-3]`
-/

namespace A366962.P16010517358609303097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366962.P16010517358609303097

noncomputable section

/-- A366962: Numbers whose difference between the largest and smallest digits is equal to 5.

Offset 1, canonical program `A366962.P16010517358609303097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A366962 (n : ℕ) : ℤ :=
  (A366962.P16010517358609303097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A366962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369021.P17917779173175254819

`∩[A369020(n+1)-1, A369020(n+1)]`
-/

namespace A369021.P17917779173175254819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369020 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369021.P17917779173175254819

noncomputable section

/-- A369021: Numbers k such that k, k+1 and k+2 have the same maximal exponent in their prime factorization.

Offset 1, canonical program `A369021.P17917779173175254819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3566 terms. -/
def A369021 (n : ℕ) : ℤ :=
  (A369021.P17917779173175254819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3566 terms. -/
def A369021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369252.P4904178596976423146

`A003415(A046316(n+1))`
-/

namespace A369252.P4904178596976423146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A046316 (n + 1)).toNat

end

end A369252.P4904178596976423146

noncomputable section

/-- A369252: Arithmetic derivative applied to the numbers of the form p*q*r where p,q,r are (not necessarily distinct) odd primes.

Offset 1, canonical program `A369252.P4904178596976423146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369252 (n : ℕ) : ℤ :=
  A369252.P4904178596976423146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369432.P9081295232160425038

`∑{#}[n, (-1)^(n-#)*C(n, #)*A059712(#+1)]`
-/

namespace A369432.P9081295232160425038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A059712 (k + 1) : ℚ)

end

end A369432.P9081295232160425038

noncomputable section

/-- A369432: Number of Dyck excursions with catastrophes from (0,0) to (n,0).

Offset 0, canonical program `A369432.P9081295232160425038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A369432 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369432.P9081295232160425038.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A369432.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A370478.P15478939800162583735

`Δ[Δ[A370477(n)-A026012(n)]]`
-/

namespace A370478.P15478939800162583735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370477 n - A026012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370478.P15478939800162583735

noncomputable section

/-- A370478: G.f. satisfies A(x) = ( 1 + x * (A(x)^(1/3) / (1-x))^(3/2) )^3.

Offset 0, canonical program `A370478.P15478939800162583735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A370478 (n : ℕ) : ℤ :=
  A370478.P15478939800162583735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A370478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370695.P1861615935770778993

`Δ[A270386(n)-A307678(n)]`
-/

namespace A370695.P1861615935770778993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270386 n - A307678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370695.P1861615935770778993

noncomputable section

/-- A370695: G.f. A(x) satisfies A(x) = (1 + x*A(x)^(3/4) / (1-x))^4.

Offset 0, canonical program `A370695.P1861615935770778993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A370695 (n : ℕ) : ℤ :=
  A370695.P1861615935770778993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A370695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371188.P488392441008500169

`lt[A368712(1+n), 2]+1`
-/

namespace A371188.P488392441008500169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368712 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A371188.P488392441008500169

noncomputable section

/-- A371188: Indices of the squarefree numbers in the sequence of cubefree numbers.

Offset 1, canonical program `A371188.P488392441008500169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7305 terms. -/
def A371188 (n : ℕ) : ℤ :=
  (A371188.P488392441008500169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7305 terms. -/
def A371188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372023.P12562919444290838036

`A040000(n)*A099323(n)`
-/

namespace A372023.P12562919444290838036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A099323 n

end

end A372023.P12562919444290838036

noncomputable section

/-- A372023: Expansion of ( (1 + 3*x)/(1 - x) )^(1/2).

Offset 0, canonical program `A372023.P12562919444290838036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A372023 (n : ℕ) : ℤ :=
  A372023.P12562919444290838036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A372023.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373149.P16458993901171327611

`A001414(A064989(n+1))+val(n+1, 2)`
-/

namespace A373149.P16458993901171327611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A064989 (n + 1)).toNat + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A373149.P16458993901171327611

noncomputable section

/-- A373149: Fully additive with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

Offset 1, canonical program `A373149.P16458993901171327611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373149 (n : ℕ) : ℤ :=
  A373149.P16458993901171327611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373303.P10871280826768265393

`A371176(n+2)-A371176(n+1)`
-/

namespace A373303.P10871280826768265393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (n + 2) - A371176 (n + 1)

end

end A373303.P10871280826768265393

noncomputable section

/-- A373303: First differences of A371176.

Offset 1, canonical program `A373303.P10871280826768265393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373303 (n : ℕ) : ℤ :=
  A373303.P10871280826768265393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373303.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373336.P12067862293443695425

`A279061(n+1)-A363795(n+1)`
-/

namespace A373336.P12067862293443695425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (n + 1) - A363795 (n + 1)

end

end A373336.P12067862293443695425

noncomputable section

/-- A373336: Expansion of Sum_{k>=1} x^k / (1 + x^k + x^(2*k) + x^(3*k) + x^(4*k) + x^(5*k) + x^(6*k)).

Offset 1, canonical program `A373336.P12067862293443695425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, A363795, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373336 (n : ℕ) : ℤ :=
  A373336.P12067862293443695425.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, A363795, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373703.P799095936400560943

`A062760(n+1)*A066636(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373703.P799095936400560943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1) * A066636 (n + 1)

end

end A373703.P799095936400560943

noncomputable section

/-- A373703: a(n) = A062760(n)*A066636(n).

Offset 1, canonical program `A373703.P799095936400560943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062760, A066636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373703 (n : ℕ) : ℤ :=
  A373703.P799095936400560943.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062760, A066636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373703.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373947.P8857403306256119126

`A037201(n+2)/2`
-/

namespace A373947.P8857403306256119126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037201 (n + 2) : ℚ) / 2

end

end A373947.P8857403306256119126

noncomputable section

/-- A373947: Halved and run-compressed first differences of consecutive odd primes.

Offset 1, canonical program `A373947.P8857403306256119126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373947 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373947.P8857403306256119126.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374047.P15202425446373321383

`filter[A374109(n+1), A166486(#)]`
-/

namespace A374047.P15202425446373321383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A374047.P15202425446373321383

noncomputable section

/-- A374047: Numbers k for which A328845(k) is odd, where A328845 is the first Fibonacci based variant of arithmetic derivative.

Offset 1, canonical program `A374047.P15202425446373321383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9593 terms. -/
def A374047 (n : ℕ) : ℤ :=
  A374047.P15202425446373321383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9593 terms. -/
def A374047.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A374324.P17751175072152199206

`A051903(A368714(n+1))`
-/

namespace A374324.P17751175072152199206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A368714 (n + 1)).toNat

end

end A374324.P17751175072152199206

noncomputable section

/-- A374324: The maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is even.

Offset 1, canonical program `A374324.P17751175072152199206`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368714, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374324 (n : ℕ) : ℤ :=
  A374324.P17751175072152199206.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368714, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374325.P10189443371500912035

`A051903(A369937(n+1))`
-/

namespace A374325.P10189443371500912035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A369937 (n + 1)).toNat

end

end A374325.P10189443371500912035

noncomputable section

/-- A374325: The maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a square.

Offset 1, canonical program `A374325.P10189443371500912035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374325 (n : ℕ) : ℤ :=
  A374325.P10189443371500912035.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374327.P9816410102867330981

`A051903(A369938(n+1))`
-/

namespace A374327.P9816410102867330981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A369938 (n + 1)).toNat

end

end A374327.P9816410102867330981

noncomputable section

/-- A374327: The maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a power of 2.

Offset 1, canonical program `A374327.P9816410102867330981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374327 (n : ℕ) : ℤ :=
  A374327.P9816410102867330981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374586.P1168262897995380025

`A051903(A336064(n+1))`
-/

namespace A374586.P1168262897995380025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A336064 (n + 1)).toNat

end

end A374586.P1168262897995380025

noncomputable section

/-- A374586: The maximum exponent in the prime factorization of the numbers that are divisible by the maximum exponent in their prime factorization.

Offset 1, canonical program `A374586.P1168262897995380025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A336064, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374586 (n : ℕ) : ℤ :=
  A374586.P1168262897995380025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A336064, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374587.P4037298411033951044

`A051903(A368715(n+1))`
-/

namespace A374587.P4037298411033951044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A368715 (n + 1)).toNat

end

end A374587.P4037298411033951044

noncomputable section

/-- A374587: The maximum exponent in the prime factorization of the numbers that are not coprime to the maximum exponent in their prime factorization.

Offset 1, canonical program `A374587.P4037298411033951044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368715, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374587 (n : ℕ) : ℤ :=
  A374587.P4037298411033951044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368715, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374587.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A375272.P13151626788742865521

`log2(A331109(n+1))`
-/

namespace A375272.P13151626788742865521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A331109 (n + 1) : ℝ)

end

end A375272.P13151626788742865521

noncomputable section

/-- A375272: The number of factors of n of the form p^Fibonacci(k), where p is a prime and k >= 2, when the factorization is uniquely done using the dual Zeckendorf representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A375272.P13151626788742865521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375272 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375272.P13151626788742865521.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375272.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A375769.P9275196494981059329

`A130233(A375768(1+n))`
-/

namespace A375769.P9275196494981059329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A375768 (1 + n)).toNat

end

end A375769.P9275196494981059329

noncomputable section

/-- A375769: The indices of the terms of A375768 in the Fibonacci sequence.

Offset 1, canonical program `A375769.P9275196494981059329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375769 (n : ℕ) : ℤ :=
  A375769.P9275196494981059329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375779.P16239665562094852958

`fo[A176988(n)-1]`
-/

namespace A375779.P16239665562094852958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176988 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A375779.P16239665562094852958

noncomputable section

/-- A375779: Noll index series of Zernike polynomials converted to ANSI index.

Offset 1, canonical program `A375779.P16239665562094852958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A375779 (n : ℕ) : ℤ :=
  (A375779.P16239665562094852958.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A375779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375848.P1903731771788089328

`filter[A051903(n+1), A001285(#)]`
-/

namespace A375848.P1903731771788089328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001285 (f1 j).toNat = 1) n)

end

end A375848.P1903731771788089328

noncomputable section

/-- A375848: The maximum exponent in the prime factorization of the numbers whose maximum exponent in their prime factorization is an evil number (A374590).

Offset 1, canonical program `A375848.P1903731771788089328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375848 (n : ℕ) : ℤ :=
  A375848.P1903731771788089328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376141.P3226871347673056162

`A051903(A369020(n+1))`
-/

namespace A376141.P3226871347673056162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A369020 (n + 1)).toNat

end

end A376141.P3226871347673056162

noncomputable section

/-- A376141: The maximum exponent in the prime factorization of the numbers k such that k and k+1 have the same maximum exponent in their prime factorization.

Offset 1, canonical program `A376141.P3226871347673056162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369020, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376141 (n : ℕ) : ℤ :=
  A376141.P3226871347673056162.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369020, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376141.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376833.P3930033897863993129

`A119288(A120944(n+1))`
-/

namespace A376833.P3930033897863993129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A120944 (n + 1)).toNat

end

end A376833.P3930033897863993129

noncomputable section

/-- A376833: Second smallest prime factor of numbers m that are both squarefree and composite.

Offset 1, canonical program `A376833.P3930033897863993129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119288, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376833 (n : ℕ) : ℤ :=
  A376833.P3930033897863993129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119288, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377160.P11394877982396804790

`lt[2, A176166(1+n)]+1`
-/

namespace A377160.P11394877982396804790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176166 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377160.P11394877982396804790

noncomputable section

/-- A377160: Numbers k such that A000217(k) is not cubefree.

Offset 1, canonical program `A377160.P11394877982396804790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A377160 (n : ℕ) : ℤ :=
  (A377160.P11394877982396804790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A377160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378032.P1075511213774378918

`A378033(A000040(n+1))`
-/

namespace A378032.P1075511213774378918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (A000040 (n + 1)).toNat

end

end A378032.P1075511213774378918

noncomputable section

/-- A378032: a(1) = a(2) = 1; a(n>2) is the greatest nonsquarefree number < prime(n).

Offset 1, canonical program `A378032.P1075511213774378918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378033, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378032 (n : ℕ) : ℤ :=
  A378032.P1075511213774378918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378033, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378032.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A381313.P16274540658270787532

`lt[2, A375669(n+1)]+1`
-/

namespace A381313.P16274540658270787532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A381313.P16274540658270787532

noncomputable section

/-- A381313: Numbers that are divisible by the cube of an odd prime.

Offset 1, canonical program `A381313.P16274540658270787532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 490 terms. -/
def A381313 (n : ℕ) : ℤ :=
  (A381313.P16274540658270787532.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 490 terms. -/
def A381313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382415.P6643677276476163217

`comp[A023721(1+n)]`
-/

namespace A382415.P6643677276476163217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382415.P6643677276476163217

noncomputable section

/-- A382415: Numbers with at least one zero in their base-5 representation.

Offset 1, canonical program `A382415.P6643677276476163217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382415 (n : ℕ) : ℤ :=
  (A382415.P6643677276476163217.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382965.P13561959687665380359

`A046660(A067259(n+1))`
-/

namespace A382965.P13561959687665380359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A067259 (n + 1)).toNat

end

end A382965.P13561959687665380359

noncomputable section

/-- A382965: The number of non-unitary prime divisors of the n-th cubefree number that is not squarefree.

Offset 1, canonical program `A382965.P13561959687665380359`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382965 (n : ℕ) : ℤ :=
  A382965.P13561959687665380359.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382967.P10174972740496609768

`eq[2, A299090(1+n)]+1`
-/

namespace A382967.P10174972740496609768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382967.P10174972740496609768

noncomputable section

/-- A382967: Biquadratefree numbers (A046100) that are not squarefree (A005117).

Offset 1, canonical program `A382967.P10174972740496609768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382967 (n : ℕ) : ℤ :=
  (A382967.P10174972740496609768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383276.P454612654592047912

`fp[A383278(n+1)]+1`
-/

namespace A383276.P454612654592047912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A383276.P454612654592047912

noncomputable section

/-- A383276: Numbers of the form A034444(k) * k.

Offset 1, canonical program `A383276.P454612654592047912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A383276 (n : ℕ) : ℤ :=
  (A383276.P454612654592047912.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A383276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383423.P9146618663533705755

`∩[floor(ϕ*n)-1, A383427(n+1)]`
-/

namespace A383423.P9146618663533705755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383423.P9146618663533705755

noncomputable section

/-- A383423: Indices k such that A003849(k) = 0 and A383422(k) = 0.

Offset 1, canonical program `A383423.P9146618663533705755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5623 terms. -/
def A383423 (n : ℕ) : ℤ :=
  (A383423.P9146618663533705755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5623 terms. -/
def A383423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384038.P3168787220566685781

`A002884(n)*A006098(n)`
-/

namespace A384038.P3168787220566685781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002884 n * A006098 n

end

end A384038.P3168787220566685781

noncomputable section

/-- A384038: Number of 2n X 2n matrices M over GF(2) such that the column space of M is equal to the null space of M.

Offset 0, canonical program `A384038.P3168787220566685781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384038 (n : ℕ) : ℤ :=
  A384038.P3168787220566685781.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384038.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384231.P10287591200021798730

`gcd(A062878(n), A087133(n+1))`
-/

namespace A384231.P10287591200021798730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062878 n) (A087133 (n + 1))

end

end A384231.P10287591200021798730

noncomputable section

/-- A384231: Index of the largest odd noncomposite divisor in the list of divisors of n.

Offset 1, canonical program `A384231.P10287591200021798730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A384231 (n : ℕ) : ℤ :=
  (A384231.P10287591200021798730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A384231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384657.P17476913378836847897

`lt[n+1, A384655(n+1)]+1`
-/

namespace A384657.P17476913378836847897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A384657.P17476913378836847897

noncomputable section

/-- A384657: Numbers k such that A384655(k) > k.

Offset 1, canonical program `A384657.P17476913378836847897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A384657 (n : ℕ) : ℤ :=
  (A384657.P17476913378836847897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A384657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385056.P8356949584126606895

`∩[A038618(n+1), A062372(n+1)]`
-/

namespace A385056.P8356949584126606895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385056.P8356949584126606895

noncomputable section

/-- A385056: Prime numbers whose digit product is a positive cube.

Offset 1, canonical program `A385056.P8356949584126606895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A385056 (n : ℕ) : ℤ :=
  (A385056.P8356949584126606895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A385056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386253.P11103916408010267952

`A054054(n)^A054055(n)+n`
-/

namespace A386253.P11103916408010267952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054054 n : ℚ) ^ (A054055 n : ℤ) + (n : ℚ)

end

end A386253.P11103916408010267952

noncomputable section

/-- A386253: a(n) = (smallest digit of n)^(largest digit of n) + n.

Offset 0, canonical program `A386253.P11103916408010267952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386253 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A386253.P11103916408010267952.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386253.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A386320.P14006571934998227672

`∩[A038604(n+1), A038618(n+1)]`
-/

namespace A386320.P14006571934998227672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386320.P14006571934998227672

noncomputable section

/-- A386320: Primes without {0, 2} as digits.

Offset 1, canonical program `A386320.P14006571934998227672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A386320 (n : ℕ) : ℤ :=
  (A386320.P14006571934998227672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A386320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386321.P12129189404841943891

`∩[A038611(n+1), A038618(n+1)]`
-/

namespace A386321.P12129189404841943891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386321.P12129189404841943891

noncomputable section

/-- A386321: Primes without {0, 3} as digits.

Offset 1, canonical program `A386321.P12129189404841943891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4539 terms. -/
def A386321 (n : ℕ) : ℤ :=
  (A386321.P12129189404841943891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4539 terms. -/
def A386321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386684.P6936343892752032316

`filter[A067259(n+1), A049240(#)]`
-/

namespace A386684.P6936343892752032316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A386684.P6936343892752032316

noncomputable section

/-- A386684: Cubefree nonsquares with at least one prime power factor that is not square.

Offset 1, canonical program `A386684.P6936343892752032316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A386684 (n : ℕ) : ℤ :=
  A386684.P6936343892752032316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A386684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387096.P7323598219798929571

`lt[A111972(n+1), A001222(n+1)]+1`
-/

namespace A387096.P7323598219798929571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A387096.P7323598219798929571

noncomputable section

/-- A387096: Numbers k such that k < prime(bigomega(k))#, where prime(bigomega(k))# is the product of the first bigomega(k) primes and bigomega(k) is the number of prime divisors of k (counted multiplicity).

Offset 1, canonical program `A387096.P7323598219798929571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4433 terms. -/
def A387096 (n : ℕ) : ℤ :=
  (A387096.P7323598219798929571.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4433 terms. -/
def A387096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388983.P17500820432191245093

`filter[A228056(n+1), A355447(#)]`
-/

namespace A388983.P17500820432191245093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A388983.P17500820432191245093

noncomputable section

/-- A388983: Numbers, not powers of primes, that are of the form p * m^2, where p is prime and m by necessity > 1.

Offset 1, canonical program `A388983.P17500820432191245093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9010 terms. -/
def A388983 (n : ℕ) : ℤ :=
  A388983.P17500820432191245093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9010 terms. -/
def A388983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389425.P17457791161868218869

`A199716(n+2)-A199716(n+1)`
-/

namespace A389425.P17457791161868218869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199716 (n + 2) - A199716 (n + 1)

end

end A389425.P17457791161868218869

noncomputable section

/-- A389425: First differences of A199716.

Offset 1, canonical program `A389425.P17457791161868218869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389425 (n : ℕ) : ℤ :=
  A389425.P17457791161868218869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389923.P14713725332339076935

`A371176(lt[runs[floor(n/ϕ)], 2]-1)`
-/

namespace A389923.P14713725332339076935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n - 1)

end

end A389923.P14713725332339076935

noncomputable section

/-- A389923: Standard composition numbers of integer compositions with last part = length.

Offset 1, canonical program `A389923.P14713725332339076935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A389923 (n : ℕ) : ℤ :=
  A389923.P14713725332339076935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A389923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390361.P11253792903099633654

`eq[1, A050361(2*(n+1))]+1`
-/

namespace A390361.P11253792903099633654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390361.P11253792903099633654

noncomputable section

/-- A390361: Numbers k such that the first sums of 1-prepended prime indices of k are all distinct. Positions of strict rows in A390308.

Offset 1, canonical program `A390361.P11253792903099633654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390361 (n : ℕ) : ℤ :=
  (A390361.P11253792903099633654.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391023.P8301791934320593997

`filter[A067259(1+n), A355447(#)]`
-/

namespace A391023.P8301791934320593997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A391023.P8301791934320593997

noncomputable section

/-- A391023: Numbers with more than 1 distinct prime factor and whose largest prime factor exponent is 2.

Offset 1, canonical program `A391023.P8301791934320593997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A391023 (n : ℕ) : ℤ :=
  A391023.P8301791934320593997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A391023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391356.P14254972347099434704

`∩[A000027(2*(n+2)), A390790(n+1)]/2`
-/

namespace A391356.P14254972347099434704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390790 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A391356.P14254972347099434704

noncomputable section

/-- A391356: Numbers k such that 4*k - (greatest prime < 4*k) > (least prime > 4*k) - 4*k.

Offset 1, canonical program `A391356.P14254972347099434704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. -/
def A391356 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391356.P14254972347099434704.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. -/
def A391356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391585.P14461622973833260868

`∪[A003714(n), A048717(n)]`
-/

namespace A391585.P14461622973833260868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391585.P14461622973833260868

noncomputable section

/-- A391585: Numbers k such that 3*k = A048720(m,k) for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391585.P14461622973833260868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391585 (n : ℕ) : ℤ :=
  (A391585.P14461622973833260868.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391585.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-- A391733: Numbers in whose binary expansion there is exactly one run of 1-bits with an odd length, while all other runs of 1-bits are of an even length (or absent).

Offset 1, canonical program `A391733.P1683383338998513801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A391733 (n : ℕ) : ℤ :=
  (A391733.P1683383338998513801.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A391733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392013.P4907640714609065482

`A049419(A138302(n+1))`
-/

namespace A392013.P4907640714609065482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A138302 (n + 1)).toNat

end

end A392013.P4907640714609065482

noncomputable section

/-- A392013: The number of exponential divisors of the exponentially-2^n numbers.

Offset 1, canonical program `A392013.P4907640714609065482`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392013 (n : ℕ) : ℤ :=
  A392013.P4907640714609065482.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392280.P9803896424176821439

`A053644(A372604(n+1)+A372603(n+1))`
-/

namespace A392280.P9803896424176821439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A372604 (n + 1) + A372603 (n + 1)).toNat

end

end A392280.P9803896424176821439

noncomputable section

/-- A392280: The maximum exponent in the prime factorization of the smallest multiple of n whose prime factorization exponents are all powers of 2.

Offset 1, canonical program `A392280.P9803896424176821439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392280 (n : ℕ) : ℤ :=
  A392280.P9803896424176821439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394049.P14023928957558719581

`A020639(A120944(n+1))²*A119288(A120944(n+1))`
-/

namespace A394049.P14023928957558719581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A120944 (n + 1)).toNat ^ 2 * A119288 (A120944 (n + 1)).toNat

end

end A394049.P14023928957558719581

noncomputable section

/-- A394049: Smallest number k that is neither squarefree nor squareful such that rad(k) | s(n), where s = A120944 is the sequence of squarefree composite numbers and rad = A007947.

Offset 1, canonical program `A394049.P14023928957558719581`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119288, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394049 (n : ℕ) : ℤ :=
  A394049.P14023928957558719581.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119288, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394571.P16805881212187566263

`∩[A047845(n+1), A094550(n+1)]`
-/

namespace A394571.P16805881212187566263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394571.P16805881212187566263

noncomputable section

/-- A394571: Positive integers k such that (2*k)^m + 1 is composite for every m >= 1 that is not a power of 2 with value >= 4.

Offset 1, canonical program `A394571.P16805881212187566263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7723 terms. -/
def A394571 (n : ℕ) : ℤ :=
  (A394571.P16805881212187566263.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7723 terms. -/
def A394571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395114.P315620387427671144

`A005590(A103354(2+n))`
-/

namespace A395114.P315620387427671144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A103354 (2 + n)).toNat

end

end A395114.P315620387427671144

noncomputable section

/-- A395114: Irregular triangle, next row is the previous row with the difference between consecutive numbers inserted between, starting with row 1 1.

Offset 1, canonical program `A395114.P315620387427671144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395114 (n : ℕ) : ℤ :=
  A395114.P315620387427671144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395433.P17346962326993188646

`A063934(A099801(1+n))`
-/

namespace A395433.P17346962326993188646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (A099801 (1 + n)).toNat

end

end A395433.P17346962326993188646

noncomputable section

/-- A395433: a(n) is the median of the odd primes less than 2n.

Offset 2, canonical program `A395433.P17346962326993188646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395433 (n : ℕ) : ℤ :=
  A395433.P17346962326993188646.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395817.P7759252888401829851

`A135210(1+n)+1`
-/

namespace A395817.P7759252888401829851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (1 + n) + 1

end

end A395817.P7759252888401829851

noncomputable section

/-- A395817: Strictly increasing minimal sequence where consecutive terms can be added digit-by-digit without carrying in base 10.

Offset 1, canonical program `A395817.P7759252888401829851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A395817 (n : ℕ) : ℤ :=
  A395817.P7759252888401829851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A395817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396710.P10226979819799223403

`A259936(A066636(n+1))`
-/

namespace A396710.P10226979819799223403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259936 (A066636 (n + 1)).toNat

end

end A396710.P10226979819799223403

noncomputable section

/-- A396710: Number of unordered factorizations of n into exactly k squarefree factors, where k is the maximum exponent in the prime factorization of n.

Offset 1, canonical program `A396710.P10226979819799223403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 415 terms. -/
def A396710 (n : ℕ) : ℤ :=
  A396710.P10226979819799223403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 415 terms. -/
def A396710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397287.P13110243874882363043

`A232006(C(row(n)+col(n)+1, 2)+col(n))`
-/

namespace A397287.P13110243874882363043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (Nat.choose (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) 2 + SequenceMachineLib.triCol n)

end

end A397287.P13110243874882363043

noncomputable section

/-- A397287: Triangle read by rows: T(n, k) = k*(k + n)^(n - 1) for n > 0 and T(0, k) = 1.

Offset 0, canonical program `A397287.P13110243874882363043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397287 (n : ℕ) : ℤ :=
  A397287.P13110243874882363043.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397287.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A398874.P18069216164434100368

`2*a(n-1)-a(n-2)+A001037(n+1)` with `a(0)=3, a(1)=6`
-/

namespace A398874.P18069216164434100368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  2 * a (n - 1) - a (n - 2) + A001037 (n + 1)

end

end A398874.P18069216164434100368

noncomputable section

/-- A398874: Number of recursive calls made by the binary Fredricksen-Kessler-Maiorana (FKM) recursive generator when generating a de Bruijn sequence of order n.

Offset 1, canonical program `A398874.P18069216164434100368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398874 (n : ℕ) : ℤ :=
  A398874.P18069216164434100368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398874.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398913.P9418002320819438425

`A135278(n)*A232006(n)`
-/

namespace A398913.P9418002320819438425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A232006 n

end

end A398913.P9418002320819438425

noncomputable section

/-- A398913: Table read by rows: the number of functions f: [n] -> [n] where the longest initial run of strictly increasing values has length k.

Offset 0, canonical program `A398913.P9418002320819438425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1712 terms. -/
def A398913 (n : ℕ) : ℤ :=
  A398913.P9418002320819438425.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1712 terms. -/
def A398913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398936.P16638885120004625840

`∩[A023444(A246298(n+1)), A246293(n+1)]`
-/

namespace A398936.P16638885120004625840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A246298 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398936.P16638885120004625840

noncomputable section

/-- A398936: Nonnegative integers k satisfying sin(k) > sin(k+1) > sin(k+2) > sin(k+3) > sin(k+4) < sin(k+5).

Offset 1, canonical program `A398936.P16638885120004625840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A398936 (n : ℕ) : ℤ :=
  (A398936.P16638885120004625840.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A398936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399608.P14830845885840932624

`filter[A020639(2*n+3), A003415(A161351(#))]`
-/

namespace A399608.P14830845885840932624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A003415 (A161351 (f1 j).toNat).toNat = 1) n)

end

end A399608.P14830845885840932624

noncomputable section

/-- A399608: Primes p such that A161351(p) is a prime.

Offset 1, canonical program `A399608.P14830845885840932624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A399608 (n : ℕ) : ℤ :=
  A399608.P14830845885840932624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A399608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400152.P13396492285516406969

`A053585(A276086(n))`
-/

namespace A400152.P13396492285516406969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A276086 n).toNat

end

end A400152.P13396492285516406969

noncomputable section

/-- A400152: a(n) = p^{the most significant digit of n in primorial base, A049345}, where p is the corresponding radix prime; a(0) = 1.

Offset 0, canonical program `A400152.P13396492285516406969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053585, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400152 (n : ℕ) : ℤ :=
  A400152.P13396492285516406969.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053585, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342081.P11150505954464620574

`∪[A067133(n+1), A085681(n+1)]`
-/

namespace A342081.P11150505954464620574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342081.P11150505954464620574

noncomputable section

/-- A342081: Numbers without an inferior odd divisor > 1.

Offset 1, canonical program `A342081.P11150505954464620574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342081 (n : ℕ) : ℤ :=
  (A342081.P11150505954464620574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356750.P4038975246333945320

`∩[A092361(n+1), A098903(n+1)]`
-/

namespace A356750.P4038975246333945320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356750.P4038975246333945320

noncomputable section

/-- A356750: Palindromic odd numbers with an odd number of distinct prime factors.

Offset 1, canonical program `A356750.P4038975246333945320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A356750 (n : ℕ) : ℤ :=
  (A356750.P4038975246333945320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A356750.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A362030.P12016388317107495669

`A062050(A258410(1+n))`
-/

namespace A362030.P12016388317107495669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A258410 (1 + n)).toNat

end

end A362030.P12016388317107495669

noncomputable section

/-- A362030: Irregular triangle read by rows where row n contains the balanced binary words of length 2n interpreted as binary numbers.

Offset 1, canonical program `A362030.P12016388317107495669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A362030 (n : ℕ) : ℤ :=
  A362030.P12016388317107495669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A362030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372149.P9160410468226310656

`∩[A059708(n+1), A092361(n+1)]`
-/

namespace A372149.P9160410468226310656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372149.P9160410468226310656

noncomputable section

/-- A372149: Palindrome numbers consisting only of odd digits.

Offset 1, canonical program `A372149.P9160410468226310656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A372149 (n : ℕ) : ℤ :=
  (A372149.P9160410468226310656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A372149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375428.P12692162474110378037

`A000045(A375429(n+1))`
-/

namespace A375428.P12692162474110378037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A375429 (n + 1)).toNat

end

end A375428.P12692162474110378037

noncomputable section

/-- A375428: The maximum exponent in the unique factorization of n in terms of distinct terms of A115975 using the Zeckendorf representation of the exponents in the prime factorization of n; a(1) = 0.

Offset 1, canonical program `A375428.P12692162474110378037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375428 (n : ℕ) : ℤ :=
  A375428.P12692162474110378037.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375430.P12365232080766673945

`A000045(A375431(n+1))`
-/

namespace A375430.P12365232080766673945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A375431 (n + 1)).toNat

end

end A375430.P12365232080766673945

noncomputable section

/-- A375430: The maximum exponent in the unique factorization of n in terms of distinct terms of A115975 using the dual Zeckendorf representation of the exponents in the prime factorization of n; a(1) = 0.

Offset 1, canonical program `A375430.P12365232080766673945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375431, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375430 (n : ℕ) : ℤ :=
  A375430.P12365232080766673945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375431, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375430.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A380117.P852758399818597968

`n+1-A380118(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380117.P852758399818597968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A380118 (n + 1)

end

end A380117.P852758399818597968

noncomputable section

/-- A380117: a(n) = n - A380118(n).

Offset 1, canonical program `A380117.P852758399818597968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380118, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380117 (n : ℕ) : ℤ :=
  A380117.P852758399818597968.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380118, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380117.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A381950.P2231247661708583555

`filter[A381956(n+1), A379952(#)]`
-/

namespace A381950.P2231247661708583555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A381950.P2231247661708583555

noncomputable section

/-- A381950: Odd numbers whose prime factorization has an even maximum exponent.

Offset 1, canonical program `A381950.P2231247661708583555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2014 terms. -/
def A381950 (n : ℕ) : ℤ :=
  A381950.P2231247661708583555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2014 terms. -/
def A381950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382417.P7643387567039946399

`comp[A255805(1+n)]`
-/

namespace A382417.P7643387567039946399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255805 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382417.P7643387567039946399

noncomputable section

/-- A382417: Numbers with at least one zero in their base-8 representation.

Offset 1, canonical program `A382417.P7643387567039946399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6381 terms. -/
def A382417 (n : ℕ) : ℤ :=
  (A382417.P7643387567039946399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6381 terms. -/
def A382417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382720.P11103476103859492823

`∏{digits}[A007094(A037474(n)), #+1]`
-/

namespace A382720.P11103476103859492823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037474 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A382720.P11103476103859492823

noncomputable section

/-- A382720: Number of entries in the n-th row of Pascal's triangle not divisible by 7.

Offset 0, canonical program `A382720.P11103476103859492823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. -/
def A382720 (n : ℕ) : ℤ :=
  (A382720.P11103476103859492823.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. -/
def A382720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385128.P3222418224828136052

`A000005(n+1)-A385129(n+1)`
-/

namespace A385128.P3222418224828136052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A385129 (n + 1)

end

end A385128.P3222418224828136052

noncomputable section

/-- A385128: The number of divisors of n whose maximum exponent in their prime factorization is even.

Offset 1, canonical program `A385128.P3222418224828136052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385128 (n : ℕ) : ℤ :=
  A385128.P3222418224828136052.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385130.P7942154568102987716

`A000203(n+1)-A385131(n+1)`
-/

namespace A385130.P7942154568102987716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A385131 (n + 1)

end

end A385130.P7942154568102987716

noncomputable section

/-- A385130: The sum of divisors of n whose maximum exponent in their prime factorization is even.

Offset 1, canonical program `A385130.P7942154568102987716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385130 (n : ℕ) : ℤ :=
  A385130.P7942154568102987716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385132.P10498133729348376008

`n+1-A385133(n+1)`
-/

namespace A385132.P10498133729348376008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A385133 (n + 1)

end

end A385132.P10498133729348376008

noncomputable section

/-- A385132: The number of integers k from 1 to n such that gcd(n, k) has an even maximum exponent in its prime factorization.

Offset 1, canonical program `A385132.P10498133729348376008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385133, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385132 (n : ℕ) : ℤ :=
  A385132.P10498133729348376008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385133, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385132.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A386323.P8391634571326051456

`∩[A038613(n+1), A038618(n+1)]`
-/

namespace A386323.P8391634571326051456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P8391634571326051456

noncomputable section

/-- A386323: Primes without {0, 5} as digits.

Offset 1, canonical program `A386323.P8391634571326051456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6265 terms. -/
def A386323 (n : ℕ) : ℤ :=
  (A386323.P8391634571326051456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6265 terms. -/
def A386323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386324.P16760202649174605299

`∩[A038614(n+1), A038618(n+1)]`
-/

namespace A386324.P16760202649174605299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386324.P16760202649174605299

noncomputable section

/-- A386324: Primes without {0, 6} as digits.

Offset 1, canonical program `A386324.P16760202649174605299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6574 terms. -/
def A386324 (n : ℕ) : ℤ :=
  (A386324.P16760202649174605299.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6574 terms. -/
def A386324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386326.P17139648770102794594

`∩[A038616(n+1), A038618(n+1)]`
-/

namespace A386326.P17139648770102794594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386326.P17139648770102794594

noncomputable section

/-- A386326: Primes without {0, 8} as digits.

Offset 1, canonical program `A386326.P17139648770102794594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6650 terms. -/
def A386326 (n : ℕ) : ℤ :=
  (A386326.P17139648770102794594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6650 terms. -/
def A386326.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391958.P6800546754486593406

`A011371(n)+2*A187059(n)`
-/

namespace A391958.P6800546754486593406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + 2 * A187059 n

end

end A391958.P6800546754486593406

noncomputable section

/-- A391958: First column of A391957.

Offset 0, canonical program `A391958.P6800546754486593406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391958 (n : ℕ) : ℤ :=
  A391958.P6800546754486593406.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398802.P9625537072785539984

`∩[A048109(n+1), A398375(n+1)]`
-/

namespace A398802.P9625537072785539984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398802.P9625537072785539984

noncomputable section

/-- A398802: Numbers k of the form q(k)^2 * rad(k), where rad = A007947, and q(k) the second smallest distinct prime factor of k.

Offset 1, canonical program `A398802.P9625537072785539984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A398802 (n : ℕ) : ℤ :=
  (A398802.P9625537072785539984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A398802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399670.P8950561546072788312

`∪[A007624(n+1), A122181(n+1)]`
-/

namespace A399670.P8950561546072788312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399670.P8950561546072788312

noncomputable section

/-- A399670: Numbers with at least 6 divisors.

Offset 1, canonical program `A399670.P8950561546072788312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399670 (n : ℕ) : ℤ :=
  (A399670.P8950561546072788312.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355433.P16718409258377503773

`∩[A048098(n+1)-1, A048098(n+1)]`
-/

namespace A355433.P16718409258377503773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355433.P16718409258377503773

noncomputable section

/-- A355433: Numbers k such that k is sqrt(k)-smooth and k+1 is sqrt(k+1)-smooth.

Offset 1, canonical program `A355433.P16718409258377503773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2103 terms. -/
def A355433 (n : ℕ) : ℤ :=
  (A355433.P16718409258377503773.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2103 terms. -/
def A355433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341916.P8321041437383261742

`fo[A341915(n)]`
-/

namespace A341916.P8321041437383261742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A341916.P8321041437383261742

noncomputable section

/-- A341916: Inverse permutation to A341915.

Offset 0, canonical program `A341916.P8321041437383261742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A341916 (n : ℕ) : ℤ :=
  (A341916.P8321041437383261742.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A341916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343504.P12989595719974363290

`lcm(a(A257687(n)), A099563(n))` with `a(0)=1`
-/

namespace A343504.P12989595719974363290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A257687 n).toNat : ℤ) (A099563 n)

end

end A343504.P12989595719974363290

noncomputable section

/-- A343504: a(n) is the least common multiple of the nonzero digits in factorial base expansion of n.

Offset 0, canonical program `A343504.P12989595719974363290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343504 (n : ℕ) : ℤ :=
  (A343504.P12989595719974363290.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343504.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A347239.P8303490879322250829

`A347236(n+1)+A347238(n+1)`
-/

namespace A347239.P8303490879322250829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347236 (n + 1) + A347238 (n + 1)

end

end A347239.P8303490879322250829

noncomputable section

/-- A347239: Sum of A347236 and its Dirichlet inverse.

Offset 1, canonical program `A347239.P8303490879322250829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347238, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347239 (n : ℕ) : ℤ :=
  A347239.P8303490879322250829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347238, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348677.P12041509539647670039

`A001223(A000720(A262275(n+1))-1)`
-/

namespace A348677.P12041509539647670039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (A262275 (n + 1)).toNat - 1).toNat

end

end A348677.P12041509539647670039

noncomputable section

/-- A348677: a(n) is the difference between A262275(n) and the next lower prime.

Offset 1, canonical program `A348677.P12041509539647670039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348677 (n : ℕ) : ℤ :=
  A348677.P12041509539647670039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349230.P2013382610802091613

`eq[2, A105570(n)+A081221(n+1)]`
-/

namespace A349230.P2013382610802091613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + A081221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349230.P2013382610802091613

noncomputable section

/-- A349230: Numbers k such that k and k+3 are consecutive squarefree numbers.

Offset 1, canonical program `A349230.P2013382610802091613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3571 terms. -/
def A349230 (n : ℕ) : ℤ :=
  (A349230.P2013382610802091613.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3571 terms. -/
def A349230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349911.P3479604530463811039

`A008683(n+1)*A053575(n+1)`
-/

namespace A349911.P3479604530463811039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A053575 (n + 1)

end

end A349911.P3479604530463811039

noncomputable section

/-- A349911: Dirichlet inverse of A336466, which is fully multiplicative with a(p) = oddpart(p-1).

Offset 1, canonical program `A349911.P3479604530463811039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349911 (n : ℕ) : ℤ :=
  A349911.P3479604530463811039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349911.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358179.P5604913156474970621

`A038580(A262275(n+1))`
-/

namespace A358179.P5604913156474970621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A262275 (n + 1)).toNat

end

end A358179.P5604913156474970621

noncomputable section

/-- A358179: Prime numbers with prime indices in A333244.

Offset 1, canonical program `A358179.P5604913156474970621`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358179 (n : ℕ) : ℤ :=
  A358179.P5604913156474970621.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358179.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359433.P4608172396385939507

`(-1)^∑{e}[n+1, #]*A125131(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A359433.P4608172396385939507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A125131 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A359433.P4608172396385939507

noncomputable section

/-- A359433: Dirichlet inverse of A071773.

Offset 1, canonical program `A359433.P4608172396385939507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359433 (n : ℕ) : ℤ :=
  A359433.P4608172396385939507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359433.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A363904.P4106271239872733580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363904 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363904.P4106271239872733580.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363976.P4088196395977743014

`A026741(A363971(n+1)+A363902(n+1))`
-/

namespace A363976.P4088196395977743014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A363971 (n + 1) + A363902 (n + 1)).toNat

end

end A363976.P4088196395977743014

noncomputable section

/-- A363976: Expansion of Sum_{k>0} x^(2*k) / (1 - x^(3*k))^3.

Offset 1, canonical program `A363976.P4088196395977743014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A363976 (n : ℕ) : ℤ :=
  A363976.P4088196395977743014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A363976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364043.P10368916526282945248

`A083911(n+1)-A083916(n+1)`
-/

namespace A364043.P10368916526282945248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083911 (n + 1) - A083916 (n + 1)

end

end A364043.P10368916526282945248

noncomputable section

/-- A364043: Expansion of Sum_{k>0} x^k / (1 + x^(5*k)).

Offset 1, canonical program `A364043.P10368916526282945248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364043 (n : ℕ) : ℤ :=
  A364043.P10368916526282945248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364082.P8960664835970015103

`A363903(3+4*n)`
-/

namespace A364082.P8960664835970015103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 (3 + 4 * n)

end

end A364082.P8960664835970015103

noncomputable section

/-- A364082: Expansion of Sum_{k>0} k * x^(3*k-2) / (1 - x^(4*k-3)).

Offset 1, canonical program `A364082.P8960664835970015103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364082 (n : ℕ) : ℤ :=
  A364082.P8960664835970015103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364083.P8333759366889863168

`A363903(1+4*n)`
-/

namespace A364083.P8333759366889863168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 (1 + 4 * n)

end

end A364083.P8333759366889863168

noncomputable section

/-- A364083: Expansion of Sum_{k>0} k * x^k / (1 - x^(4*k-3)).

Offset 1, canonical program `A364083.P8333759366889863168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364083 (n : ℕ) : ℤ :=
  A364083.P8333759366889863168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365857.P2641707062679739397

`A032189(2*(1+n))`
-/

namespace A365857.P2641707062679739397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032189 (2 * (1 + n))

end

end A365857.P2641707062679739397

noncomputable section

/-- A365857: Number of cyclic compositions of 2*n into odd parts.

Offset 1, canonical program `A365857.P2641707062679739397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A365857 (n : ℕ) : ℤ :=
  A365857.P2641707062679739397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A365857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366147.P10283015225632227018

`A000005(A360539(n+1))`
-/

namespace A366147.P10283015225632227018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A360539 (n + 1)).toNat

end

end A366147.P10283015225632227018

noncomputable section

/-- A366147: The number of divisors of the cubefree part of n (A360539).

Offset 1, canonical program `A366147.P10283015225632227018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366147 (n : ℕ) : ℤ :=
  A366147.P10283015225632227018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366833.P5308282873906407344

`Δ[A024620(1+n)]`
-/

namespace A366833.P5308282873906407344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024620 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366833.P5308282873906407344

noncomputable section

/-- A366833: Number of times n appears in A362965 (number of primes <= the n-th prime power).

Offset 1, canonical program `A366833.P5308282873906407344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366833 (n : ℕ) : ℤ :=
  A366833.P5308282873906407344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366833.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368170.P3442294360750229433

`A390371(A057521(n+1))`
-/

namespace A368170.P3442294360750229433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (A057521 (n + 1)).toNat

end

end A368170.P3442294360750229433

noncomputable section

/-- A368170: The largest cubefull exponentially odd divisor of n.

Offset 1, canonical program `A368170.P3442294360750229433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368170 (n : ℕ) : ℤ :=
  A368170.P3442294360750229433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368886.P14991200523902703916

`(n+1)/A368884(n+1)`
-/

namespace A368886.P14991200523902703916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368884 (n + 1) : ℚ)

end

end A368886.P14991200523902703916

noncomputable section

/-- A368886: The largest unitary divisor of n without an exponent 2 in its prime factorization (A337050).

Offset 1, canonical program `A368886.P14991200523902703916`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368886 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368886.P14991200523902703916.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369719.P18303552168383655355

`A000005(A356193(n+1))`
-/

namespace A369719.P18303552168383655355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A356193 (n + 1)).toNat

end

end A369719.P18303552168383655355

noncomputable section

/-- A369719: The number of divisors of the smallest cubefull number that is a multiple of n.

Offset 1, canonical program `A369719.P18303552168383655355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369719 (n : ℕ) : ℤ :=
  A369719.P18303552168383655355.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370427.P3544381458467413037

`A175298(n)-n`
-/

namespace A370427.P3544381458467413037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n - (n : ℤ)

end

end A370427.P3544381458467413037

noncomputable section

/-- A370427: a(n) is the least k >= 0 such that n OR k is a binary palindrome (where OR denotes the bitwise OR operator).

Offset 0, canonical program `A370427.P3544381458467413037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370427 (n : ℕ) : ℤ :=
  A370427.P3544381458467413037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370427.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A371442.P15531083043545525994

`A309952(A377414(n))`
-/

namespace A371442.P15531083043545525994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A377414 n).toNat

end

end A371442.P15531083043545525994

noncomputable section

/-- A371442: For any positive integer n with binary digits (b_1, ..., b_w) (where b_1 = 1), the binary digits of a(n) are (b_1, b_3, ..., b_{2*ceiling(w/2)-1}); a(0) = 0.

Offset 0, canonical program `A371442.P15531083043545525994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A371442 (n : ℕ) : ℤ :=
  A371442.P15531083043545525994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A371442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373125.P1876854732026961662

`A372683(n)-2^n`
-/

namespace A373125.P1876854732026961662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372683 n - (2 ^ n : ℤ)

end

end A373125.P1876854732026961662

noncomputable section

/-- A373125: Difference between 2^n and the least squarefree number >= 2^n.

Offset 0, canonical program `A373125.P1876854732026961662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373125 (n : ℕ) : ℤ :=
  A373125.P1876854732026961662.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373125.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373710.P531801342748455708

`A069011(A091018(n))`
-/

namespace A373710.P531801342748455708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 (A091018 n).toNat

end

end A373710.P531801342748455708

noncomputable section

/-- A373710: Triangle read by rows: T(n,k) is the area of the square whose vertices divide the sides n of a circumscribed square into integer sections k and n - k, 0 <= k <= floor(n/2).

Offset 0, canonical program `A373710.P531801342748455708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A373710 (n : ℕ) : ℤ :=
  A373710.P531801342748455708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A373710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378087.P5730754973821830144

`Δ[A081221(n+1)]+1`
-/

namespace A378087.P5730754973821830144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A378087.P5730754973821830144

noncomputable section

/-- A378087: First-differences of A067535 (least positive integer >= n that is squarefree).

Offset 1, canonical program `A378087.P5730754973821830144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378087 (n : ℕ) : ℤ :=
  A378087.P5730754973821830144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378662.P11219609030214075406

`∑{d}[n+1, A341612(#)]`
-/

namespace A378662.P11219609030214075406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341612 d

end

end A378662.P11219609030214075406

noncomputable section

/-- A378662: Number of divisors d of n such that sigma(d) <= 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A378662.P11219609030214075406`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378662 (n : ℕ) : ℤ :=
  A378662.P11219609030214075406.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381218.P12547036818025043636

`filter[A098903(n+1), A359372(#)]`
-/

namespace A381218.P12547036818025043636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A381218.P12547036818025043636

noncomputable section

/-- A381218: Odd numbers with both an odd number of prime factors (counted with multiplicity) and an odd number of distinct prime factors. (Intersection of A067019 and A098903.)

Offset 1, canonical program `A381218.P12547036818025043636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8656 terms. -/
def A381218 (n : ℕ) : ℤ :=
  A381218.P12547036818025043636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8656 terms. -/
def A381218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382810.P4884462468454984887

`∩[A023201(n+1)-10, A023201(n+1)]`
-/

namespace A382810.P4884462468454984887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382810.P4884462468454984887

noncomputable section

/-- A382810: Primes p such that p + 6, p + 10 and p + 16 are also primes.

Offset 1, canonical program `A382810.P4884462468454984887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A382810 (n : ℕ) : ℤ :=
  (A382810.P4884462468454984887.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A382810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384049.P5600847465475785129

`A047994(A360540(n+1))*A360539(n+1)`
-/

namespace A384049.P5600847465475785129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A360540 (n + 1)).toNat * A360539 (n + 1)

end

end A384049.P5600847465475785129

noncomputable section

/-- A384049: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is cubefree.

Offset 1, canonical program `A384049.P5600847465475785129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384049 (n : ℕ) : ℤ :=
  A384049.P5600847465475785129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384051.P18231078601636617959

`A047994(A360539(n+1))*A360540(n+1)`
-/

namespace A384051.P18231078601636617959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A360539 (n + 1)).toNat * A360540 (n + 1)

end

end A384051.P18231078601636617959

noncomputable section

/-- A384051: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a cubefull number.

Offset 1, canonical program `A384051.P18231078601636617959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384051 (n : ℕ) : ℤ :=
  A384051.P18231078601636617959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384526.P14913814158777160632

`∩[A023201(n+1)-14, A023201(n+1)]`
-/

namespace A384526.P14913814158777160632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) - 14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384526.P14913814158777160632

noncomputable section

/-- A384526: Primes p such that p + 6, p + 14 and p + 20 are also primes.

Offset 1, canonical program `A384526.P14913814158777160632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A384526 (n : ℕ) : ℤ :=
  (A384526.P14913814158777160632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A384526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385137.P2260347267990170437

`∑{d}[1+n, A372671(#)]`
-/

namespace A385137.P2260347267990170437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372671 d

end

end A385137.P2260347267990170437

noncomputable section

/-- A385137: The sum of divisors d of n such that n/d is a 3-smooth number (A003586).

Offset 1, canonical program `A385137.P2260347267990170437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385137 (n : ℕ) : ℤ :=
  A385137.P2260347267990170437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392090.P974268744326610450

`A047994(A356193(n+1))`
-/

namespace A392090.P974268744326610450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A356193 (n + 1)).toNat

end

end A392090.P974268744326610450

noncomputable section

/-- A392090: The unitary totient of the smallest cubefull number that is divisible by n.

Offset 1, canonical program `A392090.P974268744326610450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392090 (n : ℕ) : ℤ :=
  A392090.P974268744326610450.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392090.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A400858.P1113492866222533395

`A091186(A091018(n))`
-/

namespace A400858.P1113492866222533395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091186 (A091018 n).toNat

end

end A400858.P1113492866222533395

noncomputable section

/-- A400858: Irregular triangle read by rows: the stretched Riordan array ( 1/(1 - x), x^2/(1 - x - x^2) ).

Offset 0, canonical program `A400858.P1113492866222533395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A400858 (n : ℕ) : ℤ :=
  A400858.P1113492866222533395.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A400858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342122.P12413058708882309644

`A030101(n+1)%(n+1)`
-/

namespace A342122.P12413058708882309644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030101 (n + 1)) (n + 1 : ℤ)

end

end A342122.P12413058708882309644

noncomputable section

/-- A342122: a(n) is the remainder when the binary reverse of n is divided by n.

Offset 1, canonical program `A342122.P12413058708882309644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342122 (n : ℕ) : ℤ :=
  A342122.P12413058708882309644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342123.P13583459305600407061

`(n+1)%A030101(n+1)`
-/

namespace A342123.P13583459305600407061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A030101 (n + 1))

end

end A342123.P13583459305600407061

noncomputable section

/-- A342123: a(n) is the remainder when n is divided by its binary reverse.

Offset 1, canonical program `A342123.P13583459305600407061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342123 (n : ℕ) : ℤ :=
  A342123.P13583459305600407061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342123.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A370932.P13320794588529421501

`fo[A071770(n)]`
-/

namespace A370932.P13320794588529421501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071770 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A370932.P13320794588529421501

noncomputable section

/-- A370932: For any number n >= 0 with ternary expansion Sum_{i >= 0} t_i * 3^i, a(n) = Sum_{i >= 0} ((Sum_{j >= 0} (-1)^j * t_{i+j}) mod 3) * 3^i.

Offset 0, canonical program `A370932.P13320794588529421501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370932 (n : ℕ) : ℤ :=
  (A370932.P13320794588529421501.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372885.P2835536282125461072

`A000040(A372886(1+n))`
-/

namespace A372885.P2835536282125461072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A372886 (1 + n)).toNat

end

end A372885.P2835536282125461072

noncomputable section

/-- A372885: Prime numbers whose binary indices (positions of ones in reversed binary expansion) sum to another prime number.

Offset 1, canonical program `A372885.P2835536282125461072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A372885 (n : ℕ) : ℤ :=
  A372885.P2835536282125461072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A372885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373316.P9821015898385036712

`filter[filter[2*(n+1), A294930(#)]-2, A294930(#)]`
-/

namespace A373316.P9821015898385036712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => A294930 (f2 j) = 1) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A373316.P9821015898385036712

noncomputable section

/-- A373316: Numbers k such that k and k+2 are both primitive abundant numbers.

Offset 1, canonical program `A373316.P9821015898385036712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A373316 (n : ℕ) : ℤ :=
  A373316.P9821015898385036712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A373316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376295.P17984946659745279071

`A030101(A047778(n+1))`
-/

namespace A376295.P17984946659745279071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A047778 (n + 1)).toNat

end

end A376295.P17984946659745279071

noncomputable section

/-- A376295: The binary expansion of a(n) is the reversal of the concatenation of the binary expansions of 1,...,n.

Offset 1, canonical program `A376295.P17984946659745279071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376295 (n : ℕ) : ℤ :=
  A376295.P17984946659745279071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376295.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A378299.P15957382925163367627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378299 (n : ℕ) : ℤ :=
  A378299.P15957382925163367627.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378299.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A389826.P9330026923282160192

`floor((n+1)*A030101(n+1)/(n+1+A030101(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389826.P9330026923282160192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * A030101 (n + 1) : ℚ) / ((n + 1 : ℤ) + A030101 (n + 1) : ℚ)⌋

end

end A389826.P9330026923282160192

noncomputable section

/-- A389826: a(n) = floor(n*A030101(n)/(n + A030101(n))).

Offset 1, canonical program `A389826.P9330026923282160192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389826 (n : ℕ) : ℤ :=
  A389826.P9330026923282160192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389826.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A353830.P1157779251727351386

`-A338241(A140263(2*n))`
-/

namespace A353830.P1157779251727351386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A338241 (A140263 (2 * n)).toNat

end

end A353830.P1157779251727351386

noncomputable section

/-- A353830: The positions of nonzero digits in the balanced ternary expansions of n and a(n) are the same, and the k-th rightmost nonzero digit in a(n) equals the product of the k rightmost nonzero digits in n.

Offset 0, canonical program `A353830.P1157779251727351386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. -/
def A353830 (n : ℕ) : ℤ :=
  A353830.P1157779251727351386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. -/
def A353830.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A365785.P6855440073540334258

`A387944(A365783(n+1))`
-/

namespace A365785.P6855440073540334258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387944 (A365783 (n + 1)).toNat

end

end A365785.P6855440073540334258

noncomputable section

/-- A365785: a(n) = k such that A120944(k) is the squarefree kernel of A126706(n).

Offset 1, canonical program `A365785.P6855440073540334258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7774 terms. -/
def A365785 (n : ℕ) : ℤ :=
  A365785.P6855440073540334258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7774 terms. -/
def A365785.provenance : SequenceMachineLib.Provenance := .conjectured

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

