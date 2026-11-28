import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A297168.P17205494295370266601

`A156552(n+1)-A297112(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A297168.P17205494295370266601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - A297112 (n + 1)

end

end A297168.P17205494295370266601

noncomputable section

/-- A297168: Difference between A156552 and its Moebius transform: a(n) = A156552(n) - A297112(n).

Offset 1, canonical program `A297168.P17205494295370266601`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297168 (n : ℕ) : ℤ :=
  A297168.P17205494295370266601.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297168.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A328406.P1357222180229612223

`A328404(A276087(n))`
-/

namespace A328406.P1357222180229612223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 (A276087 n).toNat

end

end A328406.P1357222180229612223

noncomputable section

/-- A328406: The length of primorial base expansion (number of significant digits) of A276086(A276086(A276086(n))), where A276086(n) converts primorial base expansion of n into its prime product form.

Offset 0, canonical program `A328406.P1357222180229612223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328406 (n : ℕ) : ℤ :=
  A328406.P1357222180229612223.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328406.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A341354.P10498031235136680432

`A341353(2*(n+1))`
-/

namespace A341354.P10498031235136680432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341353 (2 * (n + 1))

end

end A341354.P10498031235136680432

noncomputable section

/-- A341354: Greatest k such that 3^k divides A156552(2*n); number of trailing 1-digits in the ternary expansion of A156552(n).

Offset 1, canonical program `A341354.P10498031235136680432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341354 (n : ℕ) : ℤ :=
  A341354.P10498031235136680432.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341354.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346475.P9151679520085451721

`A342919(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346475.P9151679520085451721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342919 (A276086 n).toNat

end

end A346475.P9151679520085451721

noncomputable section

/-- A346475: a(n) = A342919(A276086(n)).

Offset 0, canonical program `A346475.P9151679520085451721`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346475 (n : ℕ) : ℤ :=
  A346475.P9151679520085451721.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347876.P12593403235840957228

`A323905(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347876.P12593403235840957228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323905 (A000203 (n + 1)).toNat

end

end A347876.P12593403235840957228

noncomputable section

/-- A347876: a(n) = A323905(sigma(n)), where A323905(x) = A156552(x) - A048675(x).

Offset 1, canonical program `A347876.P12593403235840957228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347876 (n : ℕ) : ℤ :=
  A347876.P12593403235840957228.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347876.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348501.P16232126763047677745

`A348496(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348501.P16232126763047677745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348496 (A276086 n).toNat

end

end A348501.P16232126763047677745

noncomputable section

/-- A348501: a(n) = A348496(A276086(n)), where A348496(n) = A348495(n) / A003557(n).

Offset 0, canonical program `A348501.P16232126763047677745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348501 (n : ℕ) : ℤ :=
  A348501.P16232126763047677745.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353364.P13744888192732770382

`∑{d}[n+1, A332814(#)]`
-/

namespace A353364.P13744888192732770382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332814 d

end

end A353364.P13744888192732770382

noncomputable section

/-- A353364: Inverse Möbius transform of A332814.

Offset 1, canonical program `A353364.P13744888192732770382`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353364 (n : ℕ) : ℤ :=
  A353364.P13744888192732770382.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353364.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353573.P14624218144452605318

`gcd(A342002(n), A353572(n))`
-/

namespace A353573.P14624218144452605318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342002 n) (A353572 n)

end

end A353573.P14624218144452605318

noncomputable section

/-- A353573: Greatest common divisor of A342002 and its shifted variant, where A342002(n) = A003415(A276086(n)) / A003557(A276086(n)) and A276086 is the primorial base exp-function.

Offset 0, canonical program `A353573.P14624218144452605318`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353573 (n : ℕ) : ℤ :=
  (A353573.P14624218144452605318.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353641.P17870588084467332955

`A353640(2*n+1)`
-/

namespace A353641.P17870588084467332955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353640 (2 * n + 1)

end

end A353641.P17870588084467332955

noncomputable section

/-- A353641: Odd bisection of A353640.

Offset 0, canonical program `A353641.P17870588084467332955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353641 (n : ℕ) : ℤ :=
  A353641.P17870588084467332955.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353641.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353642.P12124461592786815874

`A353640(2*n)`
-/

namespace A353642.P12124461592786815874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353640 (2 * n)

end

end A353642.P12124461592786815874

noncomputable section

/-- A353642: Even bisection of A353640.

Offset 0, canonical program `A353642.P12124461592786815874`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353642 (n : ℕ) : ℤ :=
  A353642.P12124461592786815874.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359769.P3510413858819511961

`A353557(n+1)-A353556(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359769.P3510413858819511961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) - A353556 (n + 1)

end

end A359769.P3510413858819511961

noncomputable section

/-- A359769: a(n) = A353557(n) - A353556(n).

Offset 1, canonical program `A359769.P3510413858819511961`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359769 (n : ℕ) : ℤ :=
  A359769.P3510413858819511961.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360122.P15509949373770710154

`A360121(n+1)%2`
-/

namespace A360122.P15509949373770710154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360121 (n + 1)) 2

end

end A360122.P15509949373770710154

noncomputable section

/-- A360122: Parity of A360121, where A360121 is Dirichlet convolution of A342001 with A342002.

Offset 1, canonical program `A360122.P15509949373770710154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360122 (n : ℕ) : ℤ :=
  A360122.P15509949373770710154.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365455.P7995944567857351454

`A000203(n+1)/A365454(n+1)`
-/

namespace A365455.P7995944567857351454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A365454 (n + 1) : ℚ)

end

end A365455.P7995944567857351454

noncomputable section

/-- A365455: a(n) = sigma(n) / gcd(sigma(n), A156552(2*n)).

Offset 1, canonical program `A365455.P7995944567857351454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365455 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365455.P7995944567857351454.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365456.P15316815011431485056

`A156552(2*(n+1))/A365454(n+1)`
-/

namespace A365456.P15316815011431485056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156552 (2 * (n + 1)) : ℚ) / (A365454 (n + 1) : ℚ)

end

end A365456.P15316815011431485056

noncomputable section

/-- A365456: a(n) = A156552(2*n) / gcd(sigma(n), A156552(2*n)).

Offset 1, canonical program `A365456.P15316815011431485056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365456 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365456.P15316815011431485056.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365456.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391936.P10178395136109041373

`∑{#}[A328404(n)-1, A276086(n)%A000040(#+1)*A002110(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391936.P10178395136109041373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Int.tmod (A276086 n) (A000040 (k + 1)) * A002110 k

end

end A391936.P10178395136109041373

noncomputable section

/-- A391936: a(n) = Sum_{i=1..A328404(n)} (A276086(n) mod prime(i))*A002110(i-1), where A276086 is the primorial base exp-function, and A328404(n) gives the length of A276086(n) in primorial base representation.

Offset 0, canonical program `A391936.P10178395136109041373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391936 (n : ℕ) : ℤ :=
  A391936.P10178395136109041373.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A289618.P14878026680756617388

`A289617(n+1)-A046645(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289618.P14878026680756617388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289617 (n + 1) - A046645 (n + 1)

end

end A289618.P14878026680756617388

noncomputable section

/-- A289618: a(n) = A289617(n) - A046645(n) = A005187(A001222(n)) - A046645(n).

Offset 1, canonical program `A289618.P14878026680756617388`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289618 (n : ℕ) : ℤ :=
  A289618.P14878026680756617388.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A290104.P8109031732429300831

`A003963(n+1)/A290103(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290104.P8109031732429300831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (A290103 (n + 1) : ℚ)

end

end A290104.P8109031732429300831

noncomputable section

/-- A290104: a(n) = A003963(n) / A290103(n).

Offset 1, canonical program `A290104.P8109031732429300831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290104 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290104.P8109031732429300831.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A290106.P12749971107555885401

`A003963(n+1)/A156061(n+1)`
-/

namespace A290106.P12749971107555885401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (A156061 (n + 1) : ℚ)

end

end A290106.P12749971107555885401

noncomputable section

/-- A290106: a(1) = 1; for n > 1, if n = Product prime(k)^e(k), then a(n) = Product (k)^(e(k)-1).

Offset 1, canonical program `A290106.P12749971107555885401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290106 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290106.P12749971107555885401.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A305439.P10396080351550377806

`A046645(n+1)-A007949(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305439.P10396080351550377806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007949 (n + 1)

end

end A305439.P10396080351550377806

noncomputable section

/-- A305439: a(n) = A046645(n) - A007949(n); the 2-adic valuation of A317932.

Offset 1, canonical program `A305439.P10396080351550377806`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305439 (n : ℕ) : ℤ :=
  A305439.P10396080351550377806.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305439.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A318440.P5886094417818087707

`A046645(n+1)-A007814(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318440.P5886094417818087707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007814 (n + 1)

end

end A318440.P5886094417818087707

noncomputable section

/-- A318440: a(n) = A046645(n) - A007814(n); the 2-adic valuation of A299150.

Offset 1, canonical program `A318440.P5886094417818087707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318440 (n : ℕ) : ℤ :=
  A318440.P5886094417818087707.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318440.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A318656.P13008805478963827236

`2*A007814(n+1)-A046645(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318656.P13008805478963827236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) - A046645 (n + 1)

end

end A318656.P13008805478963827236

noncomputable section

/-- A318656: The 2-adic valuation of ratio A318649(n)/A318512(n); a(n) = 2*A007814(n) - A046645(n).

Offset 1, canonical program `A318656.P13008805478963827236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318656 (n : ℕ) : ℤ :=
  A318656.P13008805478963827236.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A320042.P13296018025758099294

`2*A092339(n+1)-A000523(n+1)`
-/

namespace A320042.P13296018025758099294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092339 (n + 1) - A000523 (n + 1)

end

end A320042.P13296018025758099294

noncomputable section

/-- A320042: a(n) = a(floor(n/2)) + (-1)^(n*(n+1)/2) with a(1)=0.

Offset 1, canonical program `A320042.P13296018025758099294`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320042 (n : ℕ) : ℤ :=
  A320042.P13296018025758099294.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324049.P10386040346488594592

`A002487(A324051(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324049.P10386040346488594592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A324051 (n + 2)).toNat

end

end A324049.P10386040346488594592

noncomputable section

/-- A324049: a(n) = A002487(A324051(n)).

Offset 2, canonical program `A324049.P10386040346488594592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324049 (n : ℕ) : ℤ :=
  A324049.P10386040346488594592.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324049.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A327669.P18256832601895895184

`∑{d}[n+1, #*A092248(#)]`
-/

namespace A327669.P18256832601895895184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A092248 d

end

end A327669.P18256832601895895184

noncomputable section

/-- A327669: Sum of divisors of n that have an odd number of distinct prime factors.

Offset 1, canonical program `A327669.P18256832601895895184`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327669 (n : ℕ) : ℤ :=
  A327669.P18256832601895895184.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327669.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A330908.P5206692806244212137

`a(n-1)+A083399(a(n-1))` with `a(0)=1`
-/

namespace A330908.P5206692806244212137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A083399 (a (n - 1)).toNat

end

end A330908.P5206692806244212137

noncomputable section

/-- A330908: a(n+1) = a(n) + (number of divisors of a(n) that are not divisors of other divisors of a(n)) for n>1; a(1)=1.

Offset 1, canonical program `A330908.P5206692806244212137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330908 (n : ℕ) : ℤ :=
  A330908.P5206692806244212137.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336695.P1370634628440282469

`A331410(1+A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336695.P1370634628440282469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (1 + A000203 (n + 1)).toNat

end

end A336695.P1370634628440282469

noncomputable section

/-- A336695: a(n) = A331410(1+sigma(n)), where A331410 is totally additive with a(2) = 0 and a(p) = 1 + a(p+1) for odd primes.

Offset 1, canonical program `A336695.P1370634628440282469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336695 (n : ℕ) : ℤ :=
  A336695.P1370634628440282469.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336695.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336921.P608047927114178291

`A331410(n+1)-A087436(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336921.P608047927114178291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A087436 (n + 1)

end

end A336921.P608047927114178291

noncomputable section

/-- A336921: a(n) = A331410(n) - A087436(n).

Offset 1, canonical program `A336921.P608047927114178291`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336921 (n : ℕ) : ℤ :=
  A336921.P608047927114178291.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336922.P363598391234132890

`A331410(n+1)-A005087(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336922.P363598391234132890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A005087 (n + 1)

end

end A336922.P363598391234132890

noncomputable section

/-- A336922: a(n) = A331410(n) - A005087(n).

Offset 1, canonical program `A336922.P363598391234132890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336922 (n : ℕ) : ℤ :=
  A336922.P363598391234132890.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336929.P9204731604146529055

`A331410(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336929.P9204731604146529055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A000203 (n + 1)).toNat

end

end A336929.P9204731604146529055

noncomputable section

/-- A336929: a(n) = A331410(sigma(n)), where A331410 is totally additive with a(2) = 0 and a(p) = 1 + a(p+1) for odd primes.

Offset 1, canonical program `A336929.P9204731604146529055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336929 (n : ℕ) : ℤ :=
  A336929.P9204731604146529055.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342652.P13786797168414532036

`A331410(A156552(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342652.P13786797168414532036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A156552 (n + 2)).toNat

end

end A342652.P13786797168414532036

noncomputable section

/-- A342652: a(n) = A331410(A156552(n)).

Offset 2, canonical program `A342652.P13786797168414532036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342652 (n : ℕ) : ℤ :=
  A342652.P13786797168414532036.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346474.P11205063548151232191

`A342414(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346474.P11205063548151232191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (A276086 n).toNat

end

end A346474.P11205063548151232191

noncomputable section

/-- A346474: a(n) = A342414(A276086(n)).

Offset 0, canonical program `A346474.P11205063548151232191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346474 (n : ℕ) : ℤ :=
  A346474.P11205063548151232191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348502.P17248974182733576859

`A348498(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348502.P17248974182733576859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348498 (A276086 n).toNat

end

end A348502.P17248974182733576859

noncomputable section

/-- A348502: a(n) = A348498(A276086(n)).

Offset 0, canonical program `A348502.P17248974182733576859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348502 (n : ℕ) : ℤ :=
  A348502.P17248974182733576859.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348502.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353673.P8628848255766858977

`A000035(n+1)*A092248(n+1)`
-/

namespace A353673.P8628848255766858977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A092248 (n + 1)

end

end A353673.P8628848255766858977

noncomputable section

/-- A353673: a(n) = 1 if n is an odd number with an odd number of distinct prime factors, otherwise 0.

Offset 1, canonical program `A353673.P8628848255766858977`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353673 (n : ℕ) : ℤ :=
  A353673.P8628848255766858977.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353673.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364559.P17766999660544483635

`A005941(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364559.P17766999660544483635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (n + 1) - (n + 1 : ℤ)

end

end A364559.P17766999660544483635

noncomputable section

/-- A364559: a(n) = A005941(n) - n.

Offset 1, canonical program `A364559.P17766999660544483635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364559 (n : ℕ) : ℤ :=
  A364559.P17766999660544483635.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364559.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366789.P13497469237350801223

`A000265(A003963(n+1))`
-/

namespace A366789.P13497469237350801223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003963 (n + 1)).toNat

end

end A366789.P13497469237350801223

noncomputable section

/-- A366789: Fully multiplicative with a(p) = oddpart(primepi(p)).

Offset 1, canonical program `A366789.P13497469237350801223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366789 (n : ℕ) : ℤ :=
  A366789.P13497469237350801223.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366789.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369001.P2904300838152435751

`A059841(A083345(n+1))`
-/

namespace A369001.P2904300838152435751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A083345 (n + 1)).toNat

end

end A369001.P2904300838152435751

noncomputable section

/-- A369001: a(n) = 1 if n' / gcd(n,n') is even, otherwise 0, where n' stands for the arithmetic derivative of n, A003415.

Offset 1, canonical program `A369001.P2904300838152435751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369001 (n : ℕ) : ℤ :=
  A369001.P2904300838152435751.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369001.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369004.P12527556560787931006

`A121262(A083345(n+1))`
-/

namespace A369004.P12527556560787931006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A083345 (n + 1)).toNat

end

end A369004.P12527556560787931006

noncomputable section

/-- A369004: a(n) = 1 if n' / gcd(n,n') is a multiple of 4, otherwise 0, where n' stands for the arithmetic derivative of n, A003415(n).

Offset 1, canonical program `A369004.P12527556560787931006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369004 (n : ℕ) : ℤ :=
  A369004.P12527556560787931006.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369004.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369009.P4673910545614244830

`A342001(n+1)-A083345(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369009.P4673910545614244830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1) - A083345 (n + 1)

end

end A369009.P4673910545614244830

noncomputable section

/-- A369009: a(n) = A342001(n) - A083345(n).

Offset 1, canonical program `A369009.P4673910545614244830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369009 (n : ℕ) : ℤ :=
  A369009.P4673910545614244830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369068.P8273252883148060062

`∑{d}[n+1, A008683((n+1)/#)*A083345(#)]`
-/

namespace A369068.P8273252883148060062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A083345 d

end

end A369068.P8273252883148060062

noncomputable section

/-- A369068: Möbius transform of A083345, where A083345(n) = n' / gcd(n,n'), and n' stands for the arithmetic derivative of n, A003415.

Offset 1, canonical program `A369068.P8273252883148060062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369068 (n : ℕ) : ℤ :=
  A369068.P8273252883148060062.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369068.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369069.P14663404320964368568

`∑{d}[n+1, A008836((n+1)/#)*A083345(#)]`
-/

namespace A369069.P14663404320964368568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A083345 d

end

end A369069.P14663404320964368568

noncomputable section

/-- A369069: Dirichlet convolution of Liouville's lambda (A008836) with A083345, where A083345(n) = n' / gcd(n,n'), and n' stands for the arithmetic derivative of n, A003415.

Offset 1, canonical program `A369069.P14663404320964368568`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369069 (n : ℕ) : ℤ :=
  A369069.P14663404320964368568.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369455.P11186501427320355121

`∑{d}[n+1, A055615((n+1)/#)*A083345(#)]`
-/

namespace A369455.P11186501427320355121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A083345 d

end

end A369455.P11186501427320355121

noncomputable section

/-- A369455: Dirichlet convolution of A083345 with A055615 (Dirichlet inverse of n), where A083345(n) = (n'/gcd(n,n')) and n' is the arithmetic derivative of n.

Offset 1, canonical program `A369455.P11186501427320355121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369455 (n : ℕ) : ℤ :=
  A369455.P11186501427320355121.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369643.P13743877449333020422

`A079978(A083345(n+1))`
-/

namespace A369643.P13743877449333020422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A083345 (n + 1)).toNat

end

end A369643.P13743877449333020422

noncomputable section

/-- A369643: a(n) = 1 if n' / gcd(n,n') is a multiple of 3, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415.

Offset 1, canonical program `A369643.P13743877449333020422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369643 (n : ℕ) : ℤ :=
  A369643.P13743877449333020422.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373363.P15575351710331824762

`gcd(A001414(n+1), A083345(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373363.P15575351710331824762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A083345 (n + 1))

end

end A373363.P15575351710331824762

noncomputable section

/-- A373363: a(n) = gcd(A001414(n), A083345(n)), where A001414 is the sum of prime factors with repetition, and A083345 is the numerator of the sum of the inverses of prime factors with repetition.

Offset 1, canonical program `A373363.P15575351710331824762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373363 (n : ℕ) : ℤ :=
  (A373363.P15575351710331824762.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373366.P11726240671660243097

`gcd(A064097(n+1), A083345(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373366.P11726240671660243097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064097 (n + 1)) (A083345 (n + 1))

end

end A373366.P11726240671660243097

noncomputable section

/-- A373366: a(n) = gcd(A064097(n), A083345(n)).

Offset 1, canonical program `A373366.P11726240671660243097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373366 (n : ℕ) : ℤ :=
  (A373366.P11726240671660243097.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373366.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373377.P8579628552957542061

`gcd(A059975(n+1), A083345(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373377.P8579628552957542061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059975 (n + 1)) (A083345 (n + 1))

end

end A373377.P8579628552957542061

noncomputable section

/-- A373377: a(n) = gcd(A059975(n), A083345(n)), where A059975 is fully additive with a(p) = p-1, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

Offset 1, canonical program `A373377.P8579628552957542061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373377 (n : ℕ) : ℤ :=
  (A373377.P8579628552957542061.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375782.P12848737483940934003

`1+A007814(A085062(n+1))`
-/

namespace A375782.P12848737483940934003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A007814 (A085062 (n + 1)).toNat

end

end A375782.P12848737483940934003

noncomputable section

/-- A375782: The 2-adic valuation of the result, starting from n, of Collatz steps x -> (3x+1)/2 while odd.

Offset 1, canonical program `A375782.P12848737483940934003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375782 (n : ℕ) : ℤ :=
  A375782.P12848737483940934003.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379222.P16799102987765888211

`A378999(2*n+1)`
-/

namespace A379222.P16799102987765888211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378999 (2 * n + 1)

end

end A379222.P16799102987765888211

noncomputable section

/-- A379222: Number of trailing 1-bits in the binary representation of the sum of the divisors of the n-th odd square: a(n) = sigma((2*n-1)^2).

Offset 1, canonical program `A379222.P16799102987765888211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379222 (n : ℕ) : ℤ :=
  A379222.P16799102987765888211.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380344.P8003750175292629096

`A003963(n+1)-A001414(n+1)`
-/

namespace A380344.P8003750175292629096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A001414 (n + 1)

end

end A380344.P8003750175292629096

noncomputable section

/-- A380344: Product of prime indices minus sum of prime factors of n.

Offset 1, canonical program `A380344.P8003750175292629096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380344 (n : ℕ) : ℤ :=
  A380344.P8003750175292629096.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380344.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380409.P2904522340196299969

`A003963(n+1)+A001414(n+1)`
-/

namespace A380409.P2904522340196299969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) + A001414 (n + 1)

end

end A380409.P2904522340196299969

noncomputable section

/-- A380409: Product of prime indices plus sum of prime factors.

Offset 1, canonical program `A380409.P2904522340196299969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380409 (n : ℕ) : ℤ :=
  A380409.P2904522340196299969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380409.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380986.P1159317715938728299

`A003963(n+1)-A156061(n+1)`
-/

namespace A380986.P1159317715938728299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A156061 (n + 1)

end

end A380986.P1159317715938728299

noncomputable section

/-- A380986: Product of prime indices of n (with multiplicity) minus product of distinct prime indices of n.

Offset 1, canonical program `A380986.P1159317715938728299`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380986 (n : ℕ) : ℤ :=
  A380986.P1159317715938728299.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386602.P2913812941752451551

`∑{#}[floor(sqrt(10^n))-1, A008683(#+1)*A061202(floor(10^n/(#+1)²))]`
-/

namespace A386602.P2913812941752451551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (10 ^ n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A008683 (k + 1) * A061202 ⌊(10 ^ n : ℚ) / ((k + 1) ^ 2 : ℚ)⌋.toNat

end

end A386602.P2913812941752451551

noncomputable section

/-- A386602: a(n) = Sum_{k<=10^n} d(k)^2, where d(k) = number of divisors function A000005.

Offset 0, canonical program `A386602.P2913812941752451551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386602 (n : ℕ) : ℤ :=
  A386602.P2913812941752451551.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394497.P5937869929885374420

`2*A085062(n)+1`
-/

namespace A394497.P5937869929885374420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085062 n + 1

end

end A394497.P5937869929885374420

noncomputable section

/-- A394497: Recurrence: a(2*n + 1) = 2*n + 1, a(2*n) = 3*a(n).

Offset 1, canonical program `A394497.P5937869929885374420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394497 (n : ℕ) : ℤ :=
  A394497.P5937869929885374420.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A301631.P6121766463098486196

`A000108(n)*A000265(n+1)²-A075101(n+1)²/4`
-/

namespace A301631.P6121766463098486196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n * A000265 (n + 1) ^ 2 : ℚ) - (A075101 (n + 1) ^ 2 : ℚ) / 4

end

end A301631.P6121766463098486196

noncomputable section

/-- A301631: Numerator of population variance of n-th row of Pascal's triangle.

Offset 0, canonical program `A301631.P6121766463098486196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301631 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A301631.P6121766463098486196.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301631.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A323160.P16832328256614807770

`gcd(n+1, A323159(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323160.P16832328256614807770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A323159 (n + 1))

end

end A323160.P16832328256614807770

noncomputable section

/-- A323160: a(n) = gcd(n, A323159(n)) = gcd(n, A034448(n), A048250(n)).

Offset 1, canonical program `A323160.P16832328256614807770`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A323159(n+1))` (program `A323160.P16832328256614807770`, by `A323160.P16832328256614807770.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A323160 (n : ℕ) : ℤ :=
  (A323160.P16832328256614807770.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A323159(n+1))` (program `A323160.P16832328256614807770`, by `A323160.P16832328256614807770.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A323160.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A325813.P255509125670812564

`gcd(A034448(n+1)-(n+1), n+1-A048146(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325813.P255509125670812564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (n + 1) - (n + 1 : ℤ)) ((n + 1 : ℤ) - A048146 (n + 1))

end

end A325813.P255509125670812564

noncomputable section

/-- A325813: a(n) = gcd(A034448(n)-n, n-A048146(n)), where A034448 and A048146 are respectively the sum of unitary and non-unitary divisors of n.

Offset 1, canonical program `A325813.P255509125670812564`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A034448(n+1)-(n+1), n+1-A048146(n+1))` (program `A325813.P255509125670812564`, by `A325813.P255509125670812564.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A325813 (n : ℕ) : ℤ :=
  (A325813.P255509125670812564.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A034448(n+1)-(n+1), n+1-A048146(n+1))` (program `A325813.P255509125670812564`, by `A325813.P255509125670812564.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A325813.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A325814.P16316630090321165520

`n+1-A048146(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325814.P16316630090321165520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A048146 (n + 1)

end

end A325814.P16316630090321165520

noncomputable section

/-- A325814: a(n) = n - A048146(n), where A048146 is the sum of non-unitary divisors of n.

Offset 1, canonical program `A325814.P16316630090321165520`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-A048146(n+1)` (program `A325814.P16316630090321165520`, by `A325814.P16316630090321165520.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A325814 (n : ℕ) : ℤ :=
  A325814.P16316630090321165520.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-A048146(n+1)` (program `A325814.P16316630090321165520`, by `A325814.P16316630090321165520.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A325814.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A325937.P7515168000438611485

`A048272(n+1)+(-1)^(n+1)`
-/

namespace A325937.P7515168000438611485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) + (-1) ^ (n + 1)

end

end A325937.P7515168000438611485

noncomputable section

/-- A325937: Expansion of Sum_{k>=1} (-1)^(k + 1) * x^(2*k) / (1 - x^k).

Offset 1, canonical program `A325937.P7515168000438611485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325937 (n : ℕ) : ℤ :=
  A325937.P7515168000438611485.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325939.P14233231963195728863

`1-A048272(n+1)`
-/

namespace A325939.P14233231963195728863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A048272 (n + 1)

end

end A325939.P14233231963195728863

noncomputable section

/-- A325939: Expansion of Sum_{k>=1} x^(2*k) / (1 + x^k).

Offset 1, canonical program `A325939.P14233231963195728863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325939 (n : ℕ) : ℤ :=
  A325939.P14233231963195728863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325940.P5826704247194185154

`A048272(n+1)-A002129(n+1)`
-/

namespace A325940.P5826704247194185154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - A002129 (n + 1)

end

end A325940.P5826704247194185154

noncomputable section

/-- A325940: Expansion of Sum_{k>=1} x^(2*k) / (1 + x^k)^2.

Offset 1, canonical program `A325940.P5826704247194185154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325940 (n : ℕ) : ℤ :=
  A325940.P5826704247194185154.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325941.P481027245925735307

`A000593(n+1)-(n+1)*A048272(n+1)`
-/

namespace A325941.P481027245925735307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - (n + 1 : ℤ) * A048272 (n + 1)

end

end A325941.P481027245925735307

noncomputable section

/-- A325941: Expansion of Sum_{k>=1} k * x^(2*k) / (1 + x^k)^2.

Offset 1, canonical program `A325941.P481027245925735307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325941 (n : ℕ) : ℤ :=
  A325941.P481027245925735307.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325974.P5304343172121658747

`A000203(n+1)-A325973(n+1)`
-/

namespace A325974.P5304343172121658747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325973 (n + 1)

end

end A325974.P5304343172121658747

noncomputable section

/-- A325974: Arithmetic mean of {sum of non-unitary divisors} and {sum of nonsquarefree divisors}: a(n) = (1/2)*(A048146(n) + A162296(n)).

Offset 1, canonical program `A325974.P5304343172121658747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325974 (n : ℕ) : ℤ :=
  A325974.P5304343172121658747.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325977.P12931186378742614702

`(A034460(n+1)+A325313(n+1))/2`
-/

namespace A325977.P12931186378742614702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) + A325313 (n + 1) : ℚ) / 2

end

end A325977.P12931186378742614702

noncomputable section

/-- A325977: a(n) = (1/2)*(A034448(n)+A048250(n)-2*n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A325977.P12931186378742614702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325977 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325977.P12931186378742614702.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A328620.P5130248213212259229

`A079067(A276086(n))`
-/

namespace A328620.P5130248213212259229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A276086 n).toNat

end

end A328620.P5130248213212259229

noncomputable section

/-- A328620: Number of nonleading zeros in primorial base expansion of n, a(0) = 0 by convention.

Offset 0, canonical program `A328620.P5130248213212259229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328620 (n : ℕ) : ℤ :=
  A328620.P5130248213212259229.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332882.P15306502482901872650

`A034448(n+1)/A323166(n+1)`
-/

namespace A332882.P15306502482901872650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A323166 (n + 1) : ℚ)

end

end A332882.P15306502482901872650

noncomputable section

/-- A332882: If n = Product (p_j^k_j) then a(n) = numerator of Product (1 + 1/p_j^k_j).

Offset 1, canonical program `A332882.P15306502482901872650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332882 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332882.P15306502482901872650.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332882.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332883.P3376569476005531227

`(n+1)/A323166(n+1)`
-/

namespace A332883.P3376569476005531227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A323166 (n + 1) : ℚ)

end

end A332883.P3376569476005531227

noncomputable section

/-- A332883: If n = Product (p_j^k_j) then a(n) = denominator of Product (1 + 1/p_j^k_j).

Offset 1, canonical program `A332883.P3376569476005531227`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332883.P3376569476005531227.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348504.P8886190148475080709

`A000203(n+1)/A348503(n+1)`
-/

namespace A348504.P8886190148475080709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P8886190148475080709

noncomputable section

/-- A348504: a(n) = sigma(n) / gcd(sigma(n), usigma(n)), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

Offset 1, canonical program `A348504.P8886190148475080709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348504.P8886190148475080709.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348504.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348505.P18197901835979243919

`A034448(n+1)/A348503(n+1)`
-/

namespace A348505.P18197901835979243919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348505.P18197901835979243919

noncomputable section

/-- A348505: a(n) = usigma(n) / gcd(sigma(n), usigma(n)), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

Offset 1, canonical program `A348505.P18197901835979243919`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348505.P18197901835979243919.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348505.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348984.P8034432277354798354

`gcd(A000203(n+1), A325973(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348984.P8034432277354798354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A325973 (n + 1))

end

end A348984.P8034432277354798354

noncomputable section

/-- A348984: a(n) = gcd(sigma(n), A325973(n)), where A325973 is the arithmetic mean of {sum of squarefree divisors} and {sum of unitary divisors}.

Offset 1, canonical program `A348984.P8034432277354798354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348984 (n : ℕ) : ℤ :=
  (A348984.P8034432277354798354.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349000.P1791452410364978276

`A323166(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349000.P1791452410364978276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323166 (A276086 n).toNat

end

end A349000.P1791452410364978276

noncomputable section

/-- A349000: a(n) = A323166(A276086(n)), where A323166(n) = gcd(n, usigma(n)), usigma (A034448) is multiplicative with a(p^e) = (p^e)+1, and A276086 gives the prime product form of primorial base expansion of n.

Offset 0, canonical program `A349000.P1791452410364978276`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A323166(A276086(n))` (program `A349000.P1791452410364978276`, by `A349000.P1791452410364978276.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A349000 (n : ℕ) : ℤ :=
  A349000.P1791452410364978276.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A323166(A276086(n))` (program `A349000.P1791452410364978276`, by `A349000.P1791452410364978276.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A349000.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A349910.P15708250188466983779

`A336840(n+1)-A048673(n+1)`
-/

namespace A349910.P15708250188466983779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336840 (n + 1) - A048673 (n + 1)

end

end A349910.P15708250188466983779

noncomputable section

/-- A349910: a(n) = Sum_{d|n, d<n} A048673(d).

Offset 1, canonical program `A349910.P15708250188466983779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349910 (n : ℕ) : ℤ :=
  A349910.P15708250188466983779.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353375.P197900174002010438

`A000005(n+1)-A353376(n+1)`
-/

namespace A353375.P197900174002010438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353376 (n + 1)

end

end A353375.P197900174002010438

noncomputable section

/-- A353375: Number of divisors of n that are not in A345452.

Offset 1, canonical program `A353375.P197900174002010438`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353375 (n : ℕ) : ℤ :=
  A353375.P197900174002010438.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353812.P18155869108031714769

`A347870(n+1)-A353811(n+1)`
-/

namespace A353812.P18155869108031714769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (n + 1) - A353811 (n + 1)

end

end A353812.P18155869108031714769

noncomputable section

/-- A353812: a(n) = 1 if sigma(n) is of the form 4m+2, otherwise 0.

Offset 1, canonical program `A353812.P18155869108031714769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353812 (n : ℕ) : ℤ :=
  A353812.P18155869108031714769.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353812.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A354506.P3830637102415007409

`(n+1)!*∑{#}[n, A048272(#+1)/((#+1)*(n+1-(#+1))!)]`
-/

namespace A354506.P3830637102415007409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (A048272 (k + 1) : ℚ) / ((k + 1) * Nat.factorial ((n + 1 : ℤ) - (k + 1 : ℤ)).toNat : ℚ))

end

end A354506.P3830637102415007409

noncomputable section

/-- A354506: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} (-1)^(k/d+1) )/(k * (n-k)!).

Offset 1, canonical program `A354506.P3830637102415007409`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A354506.P3830637102415007409.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363615.P15240525384775454564

`(A321543(n+1)-3*A002129(n+1)+2*A048272(n+1))/2`
-/

namespace A363615.P15240525384775454564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321543 (n + 1) - 3 * A002129 (n + 1) + 2 * A048272 (n + 1) : ℚ) / 2

end

end A363615.P15240525384775454564

noncomputable section

/-- A363615: Expansion of Sum_{k>0} x^(3*k)/(1+x^k)^3.

Offset 1, canonical program `A363615.P15240525384775454564`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363615.P15240525384775454564.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363615.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363629.P1618946847333743156

`-(A002129(n+1)+A048272(n+1))`
-/

namespace A363629.P1618946847333743156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A002129 (n + 1) + A048272 (n + 1))

end

end A363629.P1618946847333743156

noncomputable section

/-- A363629: Expansion of Sum_{k>0} (1/(1+x^k)^2 - 1).

Offset 1, canonical program `A363629.P1618946847333743156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363629 (n : ℕ) : ℤ :=
  A363629.P1618946847333743156.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364343.P7180893498198076980

`(n+1)/2*(A002129(n+1)+A048272(n+1))`
-/

namespace A364343.P7180893498198076980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A002129 (n + 1) + A048272 (n + 1) : ℚ)

end

end A364343.P7180893498198076980

noncomputable section

/-- A364343: Expansion of Sum_{k>0} k * x^k/(1 + x^k)^3.

Offset 1, canonical program `A364343.P7180893498198076980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364343.P7180893498198076980.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364351.P8907097505146139643

`(n+1)/2*(A000593(n+1)+(n+1)*A048272(n+1))`
-/

namespace A364351.P8907097505146139643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000593 (n + 1) + (n + 1 : ℤ) * A048272 (n + 1) : ℚ)

end

end A364351.P8907097505146139643

noncomputable section

/-- A364351: Expansion of Sum_{k>0} k^2 * x^k/(1 + x^k)^3.

Offset 1, canonical program `A364351.P8907097505146139643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364351 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364351.P8907097505146139643.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364351.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A365334.P7348562216077771551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365334 (n : ℕ) : ℤ :=
  A365334.P7348562216077771551.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365334.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A365336.P7053891073090803951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365336 (n : ℕ) : ℤ :=
  A365336.P7053891073090803951.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369258.P16975426313700226545

`A001227(n+1)-A369257(n+1)`
-/

namespace A369258.P16975426313700226545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A369257 (n + 1)

end

end A369258.P16975426313700226545

noncomputable section

/-- A369258: a(n) = number of odd divisors of n that have an odd number of prime factors with multiplicity.

Offset 1, canonical program `A369258.P16975426313700226545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369258 (n : ℕ) : ℤ :=
  A369258.P16975426313700226545.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369258.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A380322.P10413619903168285691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380322 (n : ℕ) : ℤ :=
  A380322.P10413619903168285691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389074.P18108287681303167250

`A034448(n+1)/A323159(n+1)`
-/

namespace A389074.P18108287681303167250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A323159 (n + 1) : ℚ)

end

end A389074.P18108287681303167250

noncomputable section

/-- A389074: Numerator of ratio A034448(n) / A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389074.P18108287681303167250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389074.P18108287681303167250.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389074.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389075.P12257504307077228747

`A048250(n+1)/A323159(n+1)`
-/

namespace A389075.P12257504307077228747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A323159 (n + 1) : ℚ)

end

end A389075.P12257504307077228747

noncomputable section

/-- A389075: Denominator of ratio A034448(n) / A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389075.P12257504307077228747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389075 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389075.P12257504307077228747.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389075.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389170.P11666675562721126669

`A057723(n+1)-A048146(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389170.P11666675562721126669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - A048146 (n + 1)

end

end A389170.P11666675562721126669

noncomputable section

/-- A389170: a(n) = A057723(n) - A048146(n), where A048146 is sum of non-unitary divisors and A057723 is sum of positive divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A389170.P11666675562721126669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389170 (n : ℕ) : ℤ :=
  A389170.P11666675562721126669.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389170.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389171.P8921738463794581484

`n+1+A048146(n+1)-A057723(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389171.P8921738463794581484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A048146 (n + 1) - A057723 (n + 1)

end

end A389171.P8921738463794581484

noncomputable section

/-- A389171: a(n) = n + A048146(n) - A057723(n), where A048146 is sum of non-unitary divisors and A057723 is sum of positive divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A389171.P8921738463794581484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389171 (n : ℕ) : ℤ :=
  A389171.P8921738463794581484.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389171.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285389.P15180177278250206425

`A000079(A285406(n+1))`
-/

namespace A285389.P15180177278250206425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A285406 (n + 1)).toNat

end

end A285389.P15180177278250206425

noncomputable section

/-- A285389: Denominator of Sum_{k=0..n^2-1} (-1)^k*sqrt(Pi)/(Gamma(1/2-k)*Gamma(1+k))/n.

Offset 1, canonical program `A285389.P15180177278250206425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285389 (n : ℕ) : ℤ :=
  A285389.P15180177278250206425.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A305461.P8154523107859240476

`A056671(n+1)*A365404(n+1)`
-/

namespace A305461.P8154523107859240476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A365404 (n + 1)

end

end A305461.P8154523107859240476

noncomputable section

/-- A305461: The number of one-digit numbers, k, in base n such that k^2 and k^3 end in the same digit.

Offset 1, canonical program `A305461.P8154523107859240476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305461 (n : ℕ) : ℤ :=
  A305461.P8154523107859240476.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336931.P13387050893284357146

`A336932(n+1)-A295664(n+1)`
-/

namespace A336931.P13387050893284357146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336932 (n + 1) - A295664 (n + 1)

end

end A336931.P13387050893284357146

noncomputable section

/-- A336931: Difference between the 2-adic valuation of A003973(n) [= the sum of divisors of the prime shifted n] and the 2-adic valuation of the number of divisors of n.

Offset 1, canonical program `A336931.P13387050893284357146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336931 (n : ℕ) : ℤ :=
  A336931.P13387050893284357146.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336931.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284721.P10544259295797594701

`A284723(Δ[n²])`
-/

namespace A284721.P10544259295797594701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284723 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284721.P10544259295797594701

noncomputable section

/-- A284721: Smallest odd prime that is relatively prime to 2n+1.

Offset 0, canonical program `A284721.P10544259295797594701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284721 (n : ℕ) : ℤ :=
  A284721.P10544259295797594701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284763.P1818093997007848111

`record[lcm(n+1, A398543(n+1))]`
-/

namespace A284763.P1818093997007848111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A398543 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284763.P1818093997007848111

noncomputable section

/-- A284763: Numbers n such that A279513(n) is squarefree.

Offset 1, canonical program `A284763.P1818093997007848111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7335 terms. -/
def A284763 (n : ℕ) : ℤ :=
  (A284763.P1818093997007848111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7335 terms. -/
def A284763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285974.P3656503811059212892

`∑[gcd(2, A277822(n))]`
-/

namespace A285974.P3656503811059212892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A277822 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285974.P3656503811059212892

noncomputable section

/-- A285974: Positions of 1 in A285972; complement of A285973.

Offset 1, canonical program `A285974.P3656503811059212892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285974 (n : ℕ) : ℤ :=
  (A285974.P3656503811059212892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289142.P13751019807834784748

`lt[0, A373371(n+1)]+1`
-/

namespace A289142.P13751019807834784748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289142.P13751019807834784748

noncomputable section

/-- A289142: Numbers whose sum of prime factors (taken with multiplicity) is divisible by 3.

Offset 1, canonical program `A289142.P13751019807834784748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289142 (n : ℕ) : ℤ :=
  (A289142.P13751019807834784748.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289555.P9214579124908911506

`lt[A122179(n+1), 2]+1`
-/

namespace A289555.P9214579124908911506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A289555.P9214579124908911506

noncomputable section

/-- A289555: Numbers that are not the product of two distinct composite numbers (A002808).

Offset 1, canonical program `A289555.P9214579124908911506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6428 terms. -/
def A289555 (n : ℕ) : ℤ :=
  (A289555.P9214579124908911506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6428 terms. -/
def A289555.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A294576.P1869408469664451945

`∩[A294575(n+1), A005408(n)]`
-/

namespace A294576.P1869408469664451945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294576.P1869408469664451945

noncomputable section

/-- A294576: Odd numbers n such that 2 * A243823(n) > n.

Offset 1, canonical program `A294576.P1869408469664451945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A294576 (n : ℕ) : ℤ :=
  (A294576.P1869408469664451945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A294576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297106.P12266069838798532026

`A088617(∑{p}[n+1, gcd(n, #)]²)*A297112(n+1)`
-/

namespace A297106.P12266069838798532026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) ^ 2) * A297112 (n + 1)

end

end A297106.P12266069838798532026

noncomputable section

/-- A297106: Xor-Moebius transform of A156552.

Offset 1, canonical program `A297106.P12266069838798532026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A297106 (n : ℕ) : ℤ :=
  A297106.P12266069838798532026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A297106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297156.P15478329871067049887

`∑{d}[n+1, A008683(#)*A243354((n+1)/#)]`
-/

namespace A297156.P15478329871067049887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A243354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297156.P15478329871067049887

noncomputable section

/-- A297156: Möbius transform of A243354.

Offset 1, canonical program `A297156.P15478329871067049887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A297156 (n : ℕ) : ℤ :=
  A297156.P15478329871067049887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A297156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298075.P4691434882581935082

`∩[A290450(n+1), A151800(A290450(n+1))]`
-/

namespace A298075.P4691434882581935082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A290450 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298075.P4691434882581935082

noncomputable section

/-- A298075: Primes p whose last digit is the same as that of both its predecessor prime and its successor prime.

Offset 1, canonical program `A298075.P4691434882581935082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A298075 (n : ℕ) : ℤ :=
  (A298075.P4691434882581935082.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A298075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300861.P7350183992813062012

`record[A300858(n+1)]`
-/

namespace A300861.P7350183992813062012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300861.P7350183992813062012

noncomputable section

/-- A300861: Records in A300858.

Offset 1, canonical program `A300861.P7350183992813062012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A300861 (n : ℕ) : ℤ :=
  A300861.P7350183992813062012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A300861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302242.P10573320807127788977

`∑{e}[A003963(1+n), #]`
-/

namespace A302242.P10573320807127788977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A302242.P10573320807127788977

noncomputable section

/-- A302242: Total weight of the n-th multiset multisystem. Totally additive with a(prime(n)) = Omega(n).

Offset 1, canonical program `A302242.P10573320807127788977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302242 (n : ℕ) : ℤ :=
  (A302242.P10573320807127788977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302505.P9712776648172350976

`eq[0, A056674(A003963(n+1))]+1`
-/

namespace A302505.P9712776648172350976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302505.P9712776648172350976

noncomputable section

/-- A302505: Numbers whose prime indices are squarefree and have disjoint prime indices.

Offset 1, canonical program `A302505.P9712776648172350976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3172 terms. -/
def A302505 (n : ℕ) : ℤ :=
  (A302505.P9712776648172350976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3172 terms. -/
def A302505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304183.P16998250907067850540

`(A001615(n+1)-A304182(n+1))/2`
-/

namespace A304183.P16998250907067850540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) - A304182 (n + 1) : ℚ) / 2

end

end A304183.P16998250907067850540

noncomputable section

/-- A304183: Number of primitive inequivalent oblique sublattices of rectangular lattice of index n.

Offset 1, canonical program `A304183.P16998250907067850540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304183 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A304183.P16998250907067850540.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304183.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A305566.P17970018183238645294

`∑{d}[n+1, A008683(#)*A076078((n+1)/#)]-A069626(n+1)`
-/

namespace A305566.P17970018183238645294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A076078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A069626 (n + 1)

end

end A305566.P17970018183238645294

noncomputable section

/-- A305566: Number of finite sets of relatively prime positive integers > 1 with least common multiple n.

Offset 1, canonical program `A305566.P17970018183238645294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305566 (n : ℕ) : ℤ :=
  A305566.P17970018183238645294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307150.P13642716402476447275

`A120229(A073675(n+1))`
-/

namespace A307150.P13642716402476447275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120229 (A073675 (n + 1)).toNat

end

end A307150.P13642716402476447275

noncomputable section

/-- A307150: Row 6 of array in A059897.

Offset 1, canonical program `A307150.P13642716402476447275`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073675, A120229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307150 (n : ℕ) : ℤ :=
  A307150.P13642716402476447275.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073675, A120229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309332.P8696043785207923791

`A110654(A160651(1+n))-1`
-/

namespace A309332.P8696043785207923791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A160651 (1 + n)).toNat - 1

end

end A309332.P8696043785207923791

noncomputable section

/-- A309332: Number of ways the n-th triangular number T(n) = A000217(n) can be written as the sum of two positive triangular numbers.

Offset 1, canonical program `A309332.P8696043785207923791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309332 (n : ℕ) : ℤ :=
  A309332.P8696043785207923791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314134.P13249333215816617724

`A313739(n)+∑[A022003(n)]`
-/

namespace A314134.P13249333215816617724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314134.P13249333215816617724

noncomputable section

/-- A314134: Coordination sequence Gal.6.624.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314134.P13249333215816617724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314134 (n : ℕ) : ℤ :=
  A314134.P13249333215816617724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315499.P582473207499707061

`A313739(n)+A004525(n)`
-/

namespace A315499.P582473207499707061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + A004525 n

end

end A315499.P582473207499707061

noncomputable section

/-- A315499: Coordination sequence Gal.6.643.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315499.P582473207499707061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315499 (n : ℕ) : ℤ :=
  A315499.P582473207499707061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317797.P6848879990228861065

`∑{d}[n+1, A034676(#)*A111938((n+1)/#)]`
-/

namespace A317797.P6848879990228861065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034676 d * A111938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317797.P6848879990228861065

noncomputable section

/-- A317797: Sum of the norm of divisors of n over Gaussian integers, with associated divisors counted only once.

Offset 1, canonical program `A317797.P6848879990228861065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317797 (n : ℕ) : ℤ :=
  A317797.P6848879990228861065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318871.P7890432203308369722

`fp[A003963(n+1)]+1`
-/

namespace A318871.P7890432203308369722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A318871.P7890432203308369722

noncomputable section

/-- A318871: Minimum Heinz number of a factorization of n into factors > 1.

Offset 1, canonical program `A318871.P7890432203308369722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A318871 (n : ℕ) : ℤ :=
  (A318871.P7890432203308369722.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A318871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319050.P16412716037196313642

`∩[A049098(1+n), A049232(n+1)]`
-/

namespace A319050.P16412716037196313642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319050.P16412716037196313642

noncomputable section

/-- A319050: Primes p such that neither p + 1 nor p + 2 is squarefree.

Offset 1, canonical program `A319050.P16412716037196313642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319050 (n : ℕ) : ℤ :=
  (A319050.P16412716037196313642.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322431.P11477619645148095533

`eq[0, A121444(n)]`
-/

namespace A322431.P11477619645148095533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322431.P11477619645148095533

noncomputable section

/-- A322431: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^10 is zero.

Offset 1, canonical program `A322431.P11477619645148095533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3981 terms. -/
def A322431 (n : ℕ) : ℤ :=
  (A322431.P11477619645148095533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3981 terms. -/
def A322431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322826.P10701091715248651785

`A243283(A322820(1+n))`
-/

namespace A322826.P10701091715248651785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A322820 (1 + n)).toNat

end

end A322826.P10701091715248651785

noncomputable section

/-- A322826: Lexicographically earliest such sequence a that a(i) = a(j) => A052126(i) = A052126(j) for all i, j.

Offset 1, canonical program `A322826.P10701091715248651785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322826 (n : ℕ) : ℤ :=
  A322826.P10701091715248651785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322994.P18269496398397725618

`∑{d}[n+1, A008683((n+1)/#)*A322993(#)]`
-/

namespace A322994.P18269496398397725618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A322993 d

end

end A322994.P18269496398397725618

noncomputable section

/-- A322994: Möbius transform of A322993.

Offset 1, canonical program `A322994.P18269496398397725618`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322994 (n : ℕ) : ℤ :=
  A322994.P18269496398397725618.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323154.P14116477510633869356

`A000007(A048146(n+1)%(n+1))`
-/

namespace A323154.P14116477510633869356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A048146 (n + 1)) (n + 1 : ℤ)).toNat

end

end A323154.P14116477510633869356

noncomputable section

/-- A323154: a(n) = 1 if n divides A048146(n) = (sigma(n)-usigma(n)), 0 otherwise.

Offset 1, canonical program `A323154.P14116477510633869356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323154 (n : ℕ) : ℤ :=
  A323154.P14116477510633869356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324758.P290710550398794177

`eq[1, gcd(n+1, A003963(n+1))]+1`
-/

namespace A324758.P290710550398794177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003963 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324758.P290710550398794177

noncomputable section

/-- A324758: Heinz numbers of integer partitions containing no prime indices of the parts.

Offset 1, canonical program `A324758.P290710550398794177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4949 terms. -/
def A324758 (n : ℕ) : ℤ :=
  (A324758.P290710550398794177.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4949 terms. -/
def A324758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324812.P15702729500118577564

`record[(n+1)*A324822(n+1)]`
-/

namespace A324812.P15702729500118577564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A324822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324812.P15702729500118577564

noncomputable section

/-- A324812: Numbers k such that A156552(k) is a square.

Offset 1, canonical program `A324812.P15702729500118577564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3400 terms. -/
def A324812 (n : ℕ) : ℤ :=
  A324812.P15702729500118577564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3400 terms. -/
def A324812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324850.P6488381581613318012

`eq[0, (n+1)%A003963(n+1)]+1`
-/

namespace A324850.P6488381581613318012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A003963 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324850.P6488381581613318012

noncomputable section

/-- A324850: Numbers divisible by the product of their prime indices.

Offset 1, canonical program `A324850.P6488381581613318012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A324850 (n : ℕ) : ℤ :=
  (A324850.P6488381581613318012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A324850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324932.P11249719822832322357

`(n+1)/gcd(n+1, A003963(n+1))`
-/

namespace A324932.P11249719822832322357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A003963 (n + 1)) : ℚ)

end

end A324932.P11249719822832322357

noncomputable section

/-- A324932: Numerator in the division of n by the product of prime indices of n.

Offset 1, canonical program `A324932.P11249719822832322357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324932.P11249719822832322357.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324933.P518208270905765173

`lcm(n+1, A003963(n+1))/(n+1)`
-/

namespace A324933.P518208270905765173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A003963 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A324933.P518208270905765173

noncomputable section

/-- A324933: Denominator in the division of n by the product of prime indices of n.

Offset 1, canonical program `A324933.P518208270905765173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324933 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324933.P518208270905765173.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325032.P537868440864324573

`A003963(A003963(1+n))`
-/

namespace A325032.P537868440864324573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A003963 (1 + n)).toNat

end

end A325032.P537868440864324573

noncomputable section

/-- A325032: Product of products of the multisets of prime indices of each prime index of n.

Offset 1, canonical program `A325032.P537868440864324573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325032 (n : ℕ) : ℤ :=
  A325032.P537868440864324573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325499.P806690597136758802

`Δ[lt[0, A182582(n+1)]]`
-/

namespace A325499.P806690597136758802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325499.P806690597136758802

noncomputable section

/-- A325499: Difference sequence of A325424.

Offset 1, canonical program `A325499.P806690597136758802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325499 (n : ℕ) : ℤ :=
  A325499.P806690597136758802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325539.P1534976636247493424

`eq[A065333(n+1), A182582(n+1)]`
-/

namespace A325539.P1534976636247493424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325539.P1534976636247493424

noncomputable section

/-- A325539: a(n) is the least number not 2*a(m)+1 or 3*a(m)+2 for any m < n.

Offset 1, canonical program `A325539.P1534976636247493424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5834 terms. -/
def A325539 (n : ℕ) : ℤ :=
  (A325539.P1534976636247493424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5834 terms. -/
def A325539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325544.P6522877462310908339

`A196050(n)+a(n-1)` with `a(0)=1`
-/

namespace A325544.P6522877462310908339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A196050 n + a (n - 1)

end

end A325544.P6522877462310908339

noncomputable section

/-- A325544: Number of nodes in the rooted tree with Matula-Goebel number n!.

Offset 0, canonical program `A325544.P6522877462310908339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325544 (n : ℕ) : ℤ :=
  A325544.P6522877462310908339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327477.P17478202587199191785

`Δ[A327471(abs(1-n))]`
-/

namespace A327477.P17478202587199191785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327471 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327477.P17478202587199191785

noncomputable section

/-- A327477: Number of subsets of {1..n} containing n whose mean is not an element.

Offset 0, canonical program `A327477.P17478202587199191785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327477 (n : ℕ) : ℤ :=
  A327477.P17478202587199191785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327861.P7578778145524314536

`char[Δ[A190117(n+1)]-1]`
-/

namespace A327861.P7578778145524314536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327861.P7578778145524314536

noncomputable section

/-- A327861: Number of divisors d of n for which A003415(d)*d is equal to n, where A003415(x) gives the arithmetic derivative of x.

Offset 1, canonical program `A327861.P7578778145524314536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A327861 (n : ℕ) : ℤ :=
  (A327861.P7578778145524314536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A327861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327954.P2142916710311961739

`Δ[A327953(1+n)]`
-/

namespace A327954.P2142916710311961739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327953 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327954.P2142916710311961739

noncomputable section

/-- A327954: First differences of A327953.

Offset 1, canonical program `A327954.P2142916710311961739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327954 (n : ℕ) : ℤ :=
  A327954.P2142916710311961739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328557.P7299042485217628868

`comp[∪[A049642(1+n), n²]]`
-/

namespace A328557.P7299042485217628868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (1 + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A328557.P7299042485217628868

noncomputable section

/-- A328557: Arithmetic numbers (A003601) that are not squares (A000290).

Offset 1, canonical program `A328557.P7299042485217628868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328557 (n : ℕ) : ℤ :=
  (A328557.P7299042485217628868.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328559.P13268494517545878443

`filter[A049642(1+n), A049240(#)]`
-/

namespace A328559.P13268494517545878443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A328559.P13268494517545878443

noncomputable section

/-- A328559: Numbers m that are neither arithmetic (A003601) nor squares (A000290).

Offset 1, canonical program `A328559.P13268494517545878443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. -/
def A328559 (n : ℕ) : ℤ :=
  A328559.P13268494517545878443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. -/
def A328559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328585.P11056465855454769266

`eq[0, A328590(n+1)]+1`
-/

namespace A328585.P11056465855454769266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328585.P11056465855454769266

noncomputable section

/-- A328585: Numbers n for which A257993(n) is equal to A257993(A276086(A276086(n))), where A276086 converts the primorial base expansion of n into its prime product form, and A257993 returns the index of the least prime not present in its argument.

Offset 1, canonical program `A328585.P11056465855454769266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328585 (n : ℕ) : ℤ :=
  (A328585.P11056465855454769266.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328586.P1608650232163241013

`A103517(eq[0, A328591(n+1)])`
-/

namespace A328586.P1608650232163241013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328586.P1608650232163241013

noncomputable section

/-- A328586: Even numbers n for which A257993(n) is equal to A257993(A276086(A276086(n))), where A276086 converts the primorial base expansion of n into its prime product form, and A257993 returns the index of the least prime not present in its argument.

Offset 1, canonical program `A328586.P1608650232163241013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1337 terms. -/
def A328586 (n : ℕ) : ℤ :=
  A328586.P1608650232163241013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1337 terms. -/
def A328586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328588.P10081636936062892527

`lt[0, A328590(1+n)]+1`
-/

namespace A328588.P10081636936062892527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A328588.P10081636936062892527

noncomputable section

/-- A328588: Numbers n for which A257993(A276086(A276086(n))) is larger than A257993(n), where A276086 converts the primorial base expansion of n into its prime product form, and A257993 returns the index of the least prime not present in its argument.

Offset 1, canonical program `A328588.P10081636936062892527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328588 (n : ℕ) : ℤ :=
  (A328588.P10081636936062892527.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328844.P16276926669184660037

`A328842(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328844.P16276926669184660037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328842 (A276086 n).toNat

end

end A328844.P16276926669184660037

noncomputable section

/-- A328844: a(n) = A328842(A276086(n)).

Offset 0, canonical program `A328844.P16276926669184660037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328844 (n : ℕ) : ℤ :=
  A328844.P16276926669184660037.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328844.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329373.P3032505491419108039

`∑{d}[n+1, #*A322993((n+1)/#)]`
-/

namespace A329373.P3032505491419108039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A322993 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329373.P3032505491419108039

noncomputable section

/-- A329373: Dirichlet convolution of the identity function with A322993.

Offset 1, canonical program `A329373.P3032505491419108039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329373 (n : ℕ) : ℤ :=
  A329373.P3032505491419108039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329374.P2117830195495817558

`A329372(n+1)/gcd(A000079(n), A329372(n+1))`
-/

namespace A329374.P2117830195495817558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329372 (n + 1) : ℚ) / (Int.gcd (A000079 n) (A329372 (n + 1)) : ℚ)

end

end A329374.P2117830195495817558

noncomputable section

/-- A329374: a(1) = 0; for n > 1, a(n) = A000265(A329372(n)), where A329372 is Dirichlet convolution of the identity function with A156552.

Offset 1, canonical program `A329374.P2117830195495817558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A329374 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A329374.P2117830195495817558.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A329374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329604.P13869189281425244780

`eq[1, A329903(1+n)]+1`
-/

namespace A329604.P13869189281425244780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329903 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329604.P13869189281425244780

noncomputable section

/-- A329604: Numbers k such that A156552(k) == 1 (mod 3); numbers k for which A156552(2*k) is a multiple of 3.

Offset 1, canonical program `A329604.P13869189281425244780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329604 (n : ℕ) : ℤ :=
  (A329604.P13869189281425244780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329609.P9820397052423283937

`eq[0, A329903(1+n)]+1`
-/

namespace A329609.P9820397052423283937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329903 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329609.P9820397052423283937

noncomputable section

/-- A329609: Numbers k such that A156552(k) is a multiple of 3.

Offset 1, canonical program `A329609.P9820397052423283937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329609 (n : ℕ) : ℤ :=
  (A329609.P9820397052423283937.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330366.P13234269032582178326

`A290450(eq[1, A290450(n+1)%5]+1)`
-/

namespace A330366.P13234269032582178326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290450 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A330366.P13234269032582178326

noncomputable section

/-- A330366: Prime numbers p_k such that p_k == 1 (mod 10) and p_(k+1) == 1 (mod 10).

Offset 1, canonical program `A330366.P13234269032582178326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A330366 (n : ℕ) : ℤ :=
  A330366.P13234269032582178326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A330366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331072.P15370853631456897053

`∑[A122179(n+1)+ceil(∏{e}[n+1, #+1]/2)]`
-/

namespace A331072.P15370853631456897053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (n + 1) + ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331072.P15370853631456897053

noncomputable section

/-- A331072: a(n) = Sum_{k = 1..n} u_3(k), where u_3 = A034836.

Offset 1, canonical program `A331072.P15370853631456897053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331072 (n : ℕ) : ℤ :=
  A331072.P15370853631456897053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331602.P2130528119706008297

`∏{p}[A322993(n+1), #]*A134451(n)`
-/

namespace A331602.P2130528119706008297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) * A134451 n

end

end A331602.P2130528119706008297

noncomputable section

/-- A331602: a(1) = 0; for n > 1, a(n) = A007947(A156552(n)).

Offset 1, canonical program `A331602.P2130528119706008297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A331602 (n : ℕ) : ℤ :=
  A331602.P2130528119706008297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A331602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332383.P7920587963328072283

`A268383(2*n)-A268383(4*n)+n`
-/

namespace A332383.P7920587963328072283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268383 (2 * n) - A268383 (4 * n) + (n : ℤ)

end

end A332383.P7920587963328072283

noncomputable section

/-- A332383: a(n) is the X-coordinate of the n-th point of the dragon curve. Sequence A332384 gives Y-coordinates.

Offset 0, canonical program `A332383.P7920587963328072283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A332383 (n : ℕ) : ℤ :=
  A332383.P7920587963328072283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A332383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332384.P15273066766290011889

`n-(A268411(n)+A268383(2*n))`
-/

namespace A332384.P15273066766290011889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A268411 n + A268383 (2 * n))

end

end A332384.P15273066766290011889

noncomputable section

/-- A332384: a(n) is the Y-coordinate of the n-th point of the dragon curve. Sequence A332383 gives X-coordinates.

Offset 0, canonical program `A332384.P15273066766290011889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A332384 (n : ℕ) : ℤ :=
  A332384.P15273066766290011889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A332384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332676.P3385004995648683764

`∩[5*A024896(n+1)-2, A290450(n+1)]`
-/

namespace A332676.P3385004995648683764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A024896 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332676.P3385004995648683764

noncomputable section

/-- A332676: Prime numbers p_k such that p_k == 3 (mod 10) and p_(k+1) == 3 (mod 10).

Offset 1, canonical program `A332676.P3385004995648683764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1157 terms. -/
def A332676 (n : ℕ) : ℤ :=
  (A332676.P3385004995648683764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1157 terms. -/
def A332676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332812.P8845092694914657981

`lt[1, A329903(1+n)]+1`
-/

namespace A332812.P8845092694914657981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329903 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A332812.P8845092694914657981

noncomputable section

/-- A332812: Numbers n for which A156552(n) == 2 (mod 3).

Offset 1, canonical program `A332812.P8845092694914657981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332812 (n : ℕ) : ℤ :=
  (A332812.P8845092694914657981.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334098.P11107798916468843839

`A334097(n+1)-A331410(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334098.P11107798916468843839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - A331410 (n + 1)

end

end A334098.P11107798916468843839

noncomputable section

/-- A334098: a(n) = A334097(n) - A331410(n), where former is the exponent of the eventual power of 2 reached, and the latter is the number of iterations needed to get there, when starting from n and using the map k -> k + k/p, where p can be any odd prime factor of k, for example, the largest.

Offset 1, canonical program `A334098.P11107798916468843839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334098 (n : ℕ) : ℤ :=
  A334098.P11107798916468843839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334576.P12532079723840725322

`A020986(n)+A020987(n)-1`
-/

namespace A334576.P12532079723840725322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 n + (A020987 n - 1)

end

end A334576.P12532079723840725322

noncomputable section

/-- A334576: a(n) is the X-coordinate of the n-th point of the space filling curve P defined in Comments section; sequence A334577 gives Y-coordinates.

Offset 0, canonical program `A334576.P12532079723840725322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A334576 (n : ℕ) : ℤ :=
  A334576.P12532079723840725322.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A334576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334577.P2312635515236378291

`floor(A020990(2+4*n)/2)`
-/

namespace A334577.P2312635515236378291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020990 (2 + 4 * n) : ℚ) / 2⌋

end

end A334577.P2312635515236378291

noncomputable section

/-- A334577: a(n) is the Y-coordinate of the n-th point of the space filling curve P defined in Comments section; sequence A334576 gives X-coordinates.

Offset 0, canonical program `A334577.P2312635515236378291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A334577 (n : ℕ) : ℤ :=
  A334577.P2312635515236378291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A334577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334663.P13462649059125857451

`∑{d}[1+n, A306682(#)]`
-/

namespace A334663.P13462649059125857451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306682 d

end

end A334663.P13462649059125857451

noncomputable section

/-- A334663: a(n) = Sum_{d|n} gcd(sigma(d), pod(d)), where pod(k) is the product of the divisors of k (A007955).

Offset 1, canonical program `A334663.P13462649059125857451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334663 (n : ℕ) : ℤ :=
  A334663.P13462649059125857451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334731.P17178466447418086980

`∏{d}[1+n, A306682(#)]`
-/

namespace A334731.P17178466447418086980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A306682 d

end

end A334731.P17178466447418086980

noncomputable section

/-- A334731: a(n) = Product_{d|n} gcd(sigma(d), pod(d)) where sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334731.P17178466447418086980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334731 (n : ℕ) : ℤ :=
  A334731.P17178466447418086980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334793.P10599980180700027313

`∑{d}[1+n, A324528(#)]`
-/

namespace A334793.P10599980180700027313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324528 d

end

end A334793.P10599980180700027313

noncomputable section

/-- A334793: a(n) = Sum_{d|n} lcm(tau(d), pod(d)) where tau(k) is the number of divisors of k (A000005) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334793.P10599980180700027313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A334793 (n : ℕ) : ℤ :=
  A334793.P10599980180700027313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A334793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334807.P1121419000360532413

`∏{d}[1+n, A324528(#)]`
-/

namespace A334807.P1121419000360532413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A324528 d

end

end A334807.P1121419000360532413

noncomputable section

/-- A334807: a(n) = Product_{d|n} lcm(tau(d), pod(d)) where tau(k) is the number of divisors of k (A000005) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334807.P1121419000360532413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A334807 (n : ℕ) : ℤ :=
  A334807.P1121419000360532413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A334807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335385.P17534177448668786288

`∏{e}[n+1, A000122(A131830(#²))+2]`
-/

namespace A335385.P17534177448668786288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A000122 (A131830 (Nat.factorization (f1 n) p ^ 2)).toNat + 2)

end

end A335385.P17534177448668786288

noncomputable section

/-- A335385: The number of tri-unitary divisors of n.

Offset 1, canonical program `A335385.P17534177448668786288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A335385 (n : ℕ) : ℤ :=
  A335385.P17534177448668786288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A335385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335882.P10828346716437010302

`eq[2, A331410(n+1)]+1`
-/

namespace A335882.P10828346716437010302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335882.P10828346716437010302

noncomputable section

/-- A335882: Numbers k for which A331410(k) = 2.

Offset 1, canonical program `A335882.P10828346716437010302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A335882 (n : ℕ) : ℤ :=
  (A335882.P10828346716437010302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A335882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336223.P18107388343175527596

`∩[A162644(n+1), A335275(n+1)]`
-/

namespace A336223.P18107388343175527596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336223.P18107388343175527596

noncomputable section

/-- A336223: Numbers k such that the largest square dividing k is a unitary divisor of k and its square root has an even number of distinct prime divisors.

Offset 1, canonical program `A336223.P18107388343175527596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7234 terms. -/
def A336223 (n : ℕ) : ℤ :=
  (A336223.P18107388343175527596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7234 terms. -/
def A336223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336918.P5520413630927090975

`eq[1, A336839(1+n)]+1`
-/

namespace A336918.P5520413630927090975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336839 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336918.P5520413630927090975

noncomputable section

/-- A336918: Numbers k such that A000005(k) divides A003973(k); numbers k for which A336839(k) = 1.

Offset 1, canonical program `A336918.P5520413630927090975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336918 (n : ℕ) : ℤ :=
  (A336918.P5520413630927090975.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336919.P8980509711614269143

`lt[1, A336839(n+1)]+1`
-/

namespace A336919.P8980509711614269143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336919.P8980509711614269143

noncomputable section

/-- A336919: Numbers k such that A000005(k) does not divide A003973(k); numbers k for which A336839(k) > 1.

Offset 1, canonical program `A336919.P8980509711614269143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5685 terms. -/
def A336919 (n : ℕ) : ℤ :=
  (A336919.P8980509711614269143.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5685 terms. -/
def A336919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336930.P3805252567437306107

`eq[A295664(n+1), A336932(n+1)]+1`
-/

namespace A336930.P3805252567437306107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336930.P3805252567437306107

noncomputable section

/-- A336930: Numbers k such that the 2-adic valuation of A003973(k), the sum of divisors of the prime shifted k is equal to the 2-adic valuation of the number of divisors of k.

Offset 1, canonical program `A336930.P3805252567437306107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9700 terms. -/
def A336930 (n : ℕ) : ℤ :=
  (A336930.P3805252567437306107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9700 terms. -/
def A336930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338713.P15967198908333661238

`A230980(n)^A024008(A072670(n))`
-/

namespace A338713.P15967198908333661238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230980 n : ℚ) ^ (A024008 (A072670 n).toNat : ℤ)

end

end A338713.P15967198908333661238

noncomputable section

/-- A338713: Number of numbers of the form i*n with 1 <= i <= n and tau(i*n) = 4.

Offset 1, canonical program `A338713.P15967198908333661238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A338713.P15967198908333661238.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339010.P6961309855830594975

`∑{d}[1+n, A091954(A214682(#))]`
-/

namespace A339010.P6961309855830594975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091954 (A214682 d).toNat

end

end A339010.P6961309855830594975

noncomputable section

/-- A339010: a(n) is the number of ways to write n as the difference of two centered k-gonal numbers for k >= 3.

Offset 1, canonical program `A339010.P6961309855830594975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339010 (n : ℕ) : ℤ :=
  A339010.P6961309855830594975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339638.P6423504365032786474

`∑[A076078(1+n)]`
-/

namespace A339638.P6423504365032786474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339638.P6423504365032786474

noncomputable section

/-- A339638: Number of nonempty sets of distinct positive integers that have a least common multiple <= n.

Offset 1, canonical program `A339638.P6423504365032786474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339638 (n : ℕ) : ℤ :=
  A339638.P6423504365032786474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339667.P11239473250096639083

`A100587(n+1)-A076078(n+1)`
-/

namespace A339667.P11239473250096639083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100587 (n + 1) - A076078 (n + 1)

end

end A339667.P11239473250096639083

noncomputable section

/-- A339667: Number of nonempty subsets of divisors of n having a common factor > 1.

Offset 1, canonical program `A339667.P11239473250096639083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339667 (n : ℕ) : ℤ :=
  A339667.P11239473250096639083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340504.P11252136775736366337

`(5-A105584(n))%4`
-/

namespace A340504.P11252136775736366337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 - A105584 n) 4

end

end A340504.P11252136775736366337

noncomputable section

/-- A340504: Fixed under 0 -> 03, 1 -> 23, 2 -> 21, 3 -> 01.

Offset 1, canonical program `A340504.P11252136775736366337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340504 (n : ℕ) : ℤ :=
  A340504.P11252136775736366337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343258.P4371836176800830808

`∩[A052294(n+1), A144754(n+1)]`
-/

namespace A343258.P4371836176800830808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343258.P4371836176800830808

noncomputable section

/-- A343258: Numbers whose binary representation has a prime number of zeros and a prime number of ones.

Offset 1, canonical program `A343258.P4371836176800830808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3360 terms. -/
def A343258 (n : ℕ) : ℤ :=
  (A343258.P4371836176800830808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3360 terms. -/
def A343258.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A345050.P16317635263124639318

`A345048(n+1)-A345049(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345050.P16317635263124639318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345048 (n + 1) - A345049 (n + 1)

end

end A345050.P16317635263124639318

noncomputable section

/-- A345050: a(n) = A345048(n) - A345049(n).

Offset 1, canonical program `A345050.P16317635263124639318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345049, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345050 (n : ℕ) : ℤ :=
  A345050.P16317635263124639318.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345049, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345221.P15261552467884618322

`A000005(n+1)-A065704(n+1)`
-/

namespace A345221.P15261552467884618322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A065704 (n + 1)

end

end A345221.P15261552467884618322

noncomputable section

/-- A345221: Number of divisors of n with an even sum of divisors.

Offset 1, canonical program `A345221.P15261552467884618322`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345221 (n : ℕ) : ℤ :=
  A345221.P15261552467884618322.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345948.P11405303974706039683

`A344875(n+1)/A345947(n+1)`
-/

namespace A345948.P11405303974706039683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (A345947 (n + 1) : ℚ)

end

end A345948.P11405303974706039683

noncomputable section

/-- A345948: a(n) = A344875(n) / gcd(A153151(n), A344875(n)).

Offset 1, canonical program `A345948.P11405303974706039683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344875, A345947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345948 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345948.P11405303974706039683.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344875, A345947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345949.P4435719406221485100

`A153151(n+1)/A345947(n+1)`
-/

namespace A345949.P4435719406221485100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153151 (n + 1) : ℚ) / (A345947 (n + 1) : ℚ)

end

end A345949.P4435719406221485100

noncomputable section

/-- A345949: a(n) = A153151(n) / gcd(A153151(n), A344875(n)).

Offset 1, canonical program `A345949.P4435719406221485100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153151, A345947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345949 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345949.P4435719406221485100.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153151, A345947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346956.P6151444584231932237

`eq[A187680(n+1), A306682(n+1)]+1`
-/

namespace A346956.P6151444584231932237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346956.P6151444584231932237

noncomputable section

/-- A346956: Numbers k such that A000203(k) and A007955(k) are both divisible by A187680(k).

Offset 1, canonical program `A346956.P6151444584231932237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A346956 (n : ℕ) : ℤ :=
  (A346956.P6151444584231932237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A346956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347127.P10886603177571656754

`A327251(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347127.P10886603177571656754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327251 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347127.P10886603177571656754

noncomputable section

/-- A347127: a(n) = A327251(n) / A003557(n).

Offset 1, canonical program `A347127.P10886603177571656754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347127 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A347127.P10886603177571656754.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347127.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348076.P15700061850166642476

`A187039(eq[1, A187039(n+2)-A187039(n+1)]+1)`
-/

namespace A348076.P15700061850166642476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 2) - A187039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A348076.P15700061850166642476

noncomputable section

/-- A348076: Number k such that k and k+1 both have an equal number of even and odd exponents in their prime factorization (A187039).

Offset 1, canonical program `A348076.P15700061850166642476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A348076 (n : ℕ) : ℤ :=
  A348076.P15700061850166642476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A348076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348099.P214831151036935053

`∩[A348098(n+1)-1, A348098(n+1)]`
-/

namespace A348099.P214831151036935053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348099.P214831151036935053

noncomputable section

/-- A348099: Starts of runs of 3 consecutive numbers that have an equal number of unitary and nonunitary prime divisors (A348097).

Offset 1, canonical program `A348099.P214831151036935053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A348099 (n : ℕ) : ℤ :=
  (A348099.P214831151036935053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A348099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348506.P12741970557584612085

`eq[A161942(n+1), A161946(n+1)]+1`
-/

namespace A348506.P12741970557584612085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161946 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348506.P12741970557584612085

noncomputable section

/-- A348506: Numbers k such that sigma(k) is a multiple of usigma(k), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

Offset 1, canonical program `A348506.P12741970557584612085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348506 (n : ℕ) : ℤ :=
  (A348506.P12741970557584612085.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348509.P17820867973263177752

`A099377(A003961(n+1))`
-/

namespace A348509.P17820867973263177752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (A003961 (n + 1)).toNat

end

end A348509.P17820867973263177752

noncomputable section

/-- A348509: a(n) is the numerator of the harmonic mean of the divisors of A003961(n).

Offset 1, canonical program `A348509.P17820867973263177752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348509 (n : ℕ) : ℤ :=
  A348509.P17820867973263177752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348509.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348510.P9117605113874141124

`A099377(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348510.P9117605113874141124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (n + 1) - (n + 1 : ℤ)

end

end A348510.P9117605113874141124

noncomputable section

/-- A348510: a(n) = A099377(n) - n, where A099377(n) is the numerator of the harmonic mean of the divisors of n.

Offset 1, canonical program `A348510.P9117605113874141124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348510 (n : ℕ) : ℤ :=
  A348510.P9117605113874141124.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348556.P1449905922643619445

`lt[0, A014083(n)]`
-/

namespace A348556.P1449905922643619445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348556.P1449905922643619445

noncomputable section

/-- A348556: Binary expansion contains 4 adjacent 1's.

Offset 1, canonical program `A348556.P1449905922643619445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348556 (n : ℕ) : ℤ :=
  (A348556.P1449905922643619445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348825.P9957985684775902156

`record[(n+2)%A099378(n+2)]`
-/

namespace A348825.P9957985684775902156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A099378 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348825.P9957985684775902156

noncomputable section

/-- A348825: Numbers k such that the denominator of the harmonic mean of the divisors of k is larger than k.

Offset 1, canonical program `A348825.P9957985684775902156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A348825 (n : ℕ) : ℤ :=
  A348825.P9957985684775902156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A348825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348968.P179748498785656082

`gcd(n+1, A099377(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348968.P179748498785656082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A099377 (n + 1))

end

end A348968.P179748498785656082

noncomputable section

/-- A348968: a(n) = gcd(n, A099377(n)), where A099377(n) is the numerator of the harmonic mean of the divisors of n.

Offset 1, canonical program `A348968.P179748498785656082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348968 (n : ℕ) : ℤ :=
  (A348968.P179748498785656082.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350343.P17281856427666000810

`A350342(n+1)²`
-/

namespace A350343.P17281856427666000810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1) ^ 2

end

end A350343.P17281856427666000810

noncomputable section

/-- A350343: Square numbers k that are abelian orders.

Offset 1, canonical program `A350343.P17281856427666000810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350343 (n : ℕ) : ℤ :=
  A350343.P17281856427666000810.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350372.P2646849622102892745

`∩[A033992(n+1), A338539(n+1)]`
-/

namespace A350372.P2646849622102892745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350372.P2646849622102892745

noncomputable section

/-- A350372: Numbers with exactly 5 semiprime divisors.

Offset 1, canonical program `A350372.P2646849622102892745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A350372 (n : ℕ) : ℤ :=
  (A350372.P2646849622102892745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A350372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350534.P1685177641505256515

`A038548(n+1)+A060872(n+1)-A060866(n+1)`
-/

namespace A350534.P1685177641505256515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A060872 (n + 1) - A060866 (n + 1))

end

end A350534.P1685177641505256515

noncomputable section

/-- A350534: Sum of the largest parts of the partitions of n into 3 parts whose largest part is equal to the product of the other two.

Offset 0, canonical program `A350534.P1685177641505256515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350534 (n : ℕ) : ℤ :=
  A350534.P1685177641505256515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351546.P8277132408193178014

`A000203(n+1)/A351544(n+1)`
-/

namespace A351546.P8277132408193178014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ)

end

end A351546.P8277132408193178014

noncomputable section

/-- A351546: a(n) is the largest unitary divisor of sigma(n) coprime with A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A351546.P8277132408193178014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351546 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351546.P8277132408193178014.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351546.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353269.P15395321201713666301

`1-abs(A332814(n+1))`
-/

namespace A353269.P15395321201713666301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A332814 (n + 1)|

end

end A353269.P15395321201713666301

noncomputable section

/-- A353269: a(n) = 1 if A156552(n) is a multiple of 3, otherwise 0.

Offset 1, canonical program `A353269.P15395321201713666301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353269 (n : ℕ) : ℤ :=
  A353269.P15395321201713666301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353292.P671757456821883615

`1+n-A080100(n)`
-/

namespace A353292.P671757456821883615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) - A080100 n

end

end A353292.P671757456821883615

noncomputable section

/-- A353292: a(n) is the number of positive integers k <= n that have at least one common 1-bit with n.

Offset 0, canonical program `A353292.P671757456821883615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353292 (n : ℕ) : ℤ :=
  A353292.P671757456821883615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353382.P5318746231564784083

`A000005(n+1)-A353381(n+1)`
-/

namespace A353382.P5318746231564784083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353381 (n + 1)

end

end A353382.P5318746231564784083

noncomputable section

/-- A353382: Inverse Möbius transform of A353380.

Offset 1, canonical program `A353382.P5318746231564784083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353381, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353382 (n : ℕ) : ℤ :=
  A353382.P5318746231564784083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353381, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353519.P6983840421202540414

`abs(A219009(n+1))`
-/

namespace A353519.P6983840421202540414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A219009 (n + 1)|

end

end A353519.P6983840421202540414

noncomputable section

/-- A353519: a(n) = 1 if n has an odd number of square divisors, otherwise 0.

Offset 1, canonical program `A353519.P6983840421202540414`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353519 (n : ℕ) : ℤ :=
  A353519.P6983840421202540414.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357684.P2308657959105153288

`A007913(A335275(n+1))`
-/

namespace A357684.P2308657959105153288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A335275 (n + 1)).toNat

end

end A357684.P2308657959105153288

noncomputable section

/-- A357684: The squarefree part (A007913) of numbers whose squarefree part is a unitary divisor (A335275).

Offset 1, canonical program `A357684.P2308657959105153288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357684 (n : ℕ) : ℤ :=
  A357684.P2308657959105153288.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358222.P173160375134294423

`filter[A358221(1+n), A005171(#)]`
-/

namespace A358222.P173160375134294423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A358222.P173160375134294423

noncomputable section

/-- A358222: Composite numbers k such that A003415(k) divides A276086(k), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

Offset 1, canonical program `A358222.P173160375134294423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. -/
def A358222 (n : ℕ) : ℤ :=
  A358222.P173160375134294423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. -/
def A358222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358680.P17815025508061281044

`A353494(n)+A353495(n)`
-/

namespace A358680.P17815025508061281044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 n + A353495 n

end

end A358680.P17815025508061281044

noncomputable section

/-- A358680: a(n) = 1 if the arithmetic derivative of n is even, 0 otherwise.

Offset 0, canonical program `A358680.P17815025508061281044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, A353495, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358680 (n : ℕ) : ℤ :=
  A358680.P17815025508061281044.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, A353495, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358750.P15552411444014869718

`A353494(A003961(n+1))`
-/

namespace A358750.P15552411444014869718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A003961 (n + 1)).toNat

end

end A358750.P15552411444014869718

noncomputable section

/-- A358750: a(n) = 1 if A349905(n) is a multiple of 4, otherwise 0. Here A349905(n) is the arithmetic derivative applied to the prime shifted n.

Offset 1, canonical program `A358750.P15552411444014869718`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358750 (n : ℕ) : ℤ :=
  A358750.P15552411444014869718.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359818.P149401970276973754

`∑{d}[n+1, A219009(#)*A359592((n+1)/#)]`
-/

namespace A359818.P149401970276973754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A219009 d * A359592 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359818.P149401970276973754

noncomputable section

/-- A359818: Dirichlet inverse of A359549, where A359549 is the characteristic function for numbers that are either an odd squarefree number squared or twice such a number.

Offset 1, canonical program `A359818.P149401970276973754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359818 (n : ℕ) : ℤ :=
  A359818.P149401970276973754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360109.P9303785803174765081

`A166486(n)*A353494(n)`
-/

namespace A360109.P9303785803174765081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n * A353494 n

end

end A360109.P9303785803174765081

noncomputable section

/-- A360109: a(n) = 1 if n is not multiple of 4, but its arithmetic derivative is, otherwise 0.

Offset 0, canonical program `A360109.P9303785803174765081`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360109 (n : ℕ) : ℤ :=
  A360109.P9303785803174765081.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360126.P9027795698661320514

`eq[0, A360125(n+1)]+1`
-/

namespace A360126.P9027795698661320514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360126.P9027795698661320514

noncomputable section

/-- A360126: Numbers k for which A359425(k) is even, where A359425 is Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

Offset 1, canonical program `A360126.P9027795698661320514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360126 (n : ℕ) : ℤ :=
  (A360126.P9027795698661320514.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360127.P6385985056767460370

`lt[0, A360125(n+1)]+1`
-/

namespace A360127.P6385985056767460370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A360127.P6385985056767460370

noncomputable section

/-- A360127: Numbers k for which A359425(k) is odd, where A359425 is the Dirichlet convolution of the arithmetic derivative with the primorial base exp function.

Offset 1, canonical program `A360127.P6385985056767460370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5294 terms. -/
def A360127 (n : ℕ) : ℤ :=
  (A360127.P6385985056767460370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5294 terms. -/
def A360127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360769.P2553119699871238566

`filter[A053850(n+1), A354108(#)]`
-/

namespace A360769.P2553119699871238566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A360769.P2553119699871238566

noncomputable section

/-- A360769: Odd numbers that are neither prime powers nor squarefree.

Offset 1, canonical program `A360769.P2553119699871238566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9380 terms. -/
def A360769 (n : ℕ) : ℤ :=
  A360769.P2553119699871238566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9380 terms. -/
def A360769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361121.P16839421460347675392

`A053542(n+1)%2`
-/

namespace A361121.P16839421460347675392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053542 (n + 1)) 2

end

end A361121.P16839421460347675392

noncomputable section

/-- A361121: 1 if n-th composite number A002808(n) is even, otherwise 0.

Offset 1, canonical program `A361121.P16839421460347675392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361121 (n : ℕ) : ℤ :=
  A361121.P16839421460347675392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361936.P9667667875036611583

`A217038((n+1)²)+1`
-/

namespace A361936.P9667667875036611583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 ((n + 1) ^ 2) + 1

end

end A361936.P9667667875036611583

noncomputable section

/-- A361936: Indices of the squares in the sequence of powerful numbers (A001694).

Offset 1, canonical program `A361936.P9667667875036611583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A217038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361936 (n : ℕ) : ℤ :=
  A361936.P9667667875036611583.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A217038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363270.P853514649644650897

`A000265(A085062(1+n))`
-/

namespace A363270.P853514649644650897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A085062 (1 + n)).toNat

end

end A363270.P853514649644650897

noncomputable section

/-- A363270: The result, starting from n, of Collatz steps x -> (3x+1)/2 while odd, followed by x -> x/2 while even.

Offset 1, canonical program `A363270.P853514649644650897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4094 terms. -/
def A363270 (n : ℕ) : ℤ :=
  A363270.P853514649644650897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4094 terms. -/
def A363270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364037.P16408587174918813768

`fo[A363895(n+2)-2]+2`
-/

namespace A364037.P16408587174918813768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363895 (n + 2) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 2

end

end A364037.P16408587174918813768

noncomputable section

/-- A364037: Least number k such that the floor of the average of the distinct prime factors of k is n, or -1 if no such number exists.

Offset 2, canonical program `A364037.P16408587174918813768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A364037 (n : ℕ) : ℤ :=
  (A364037.P16408587174918813768.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A364037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364251.P10198520033798463371

`C(C(2, A331410(n+1)), 2)`
-/

namespace A364251.P10198520033798463371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A331410 (n + 1)).toNat) 2

end

end A364251.P10198520033798463371

noncomputable section

/-- A364251: a(n) = 1 if n is of the form q*(2^k), where q is one of the Mersenne primes (A000668) and k >= 0, otherwise a(n) = 0.

Offset 1, canonical program `A364251.P10198520033798463371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364251 (n : ℕ) : ℤ :=
  (A364251.P10198520033798463371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365535.P434274986920635891

`filter[A002035(n+1), A066247(#)]`
-/

namespace A365535.P434274986920635891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A365535.P434274986920635891

noncomputable section

/-- A365535: Composite numbers k such that the core and the kernel of k are equal.

Offset 1, canonical program `A365535.P434274986920635891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8331 terms. -/
def A365535 (n : ℕ) : ℤ :=
  A365535.P434274986920635891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8331 terms. -/
def A365535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366438.P4907338318269729299

`A000005(A268335(n+1))`
-/

namespace A366438.P4907338318269729299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A268335 (n + 1)).toNat

end

end A366438.P4907338318269729299

noncomputable section

/-- A366438: The number of divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366438.P4907338318269729299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366438 (n : ℕ) : ℤ :=
  A366438.P4907338318269729299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366439.P9566324691206801463

`A000203(A268335(n+1))`
-/

namespace A366439.P9566324691206801463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A268335 (n + 1)).toNat

end

end A366439.P9566324691206801463

noncomputable section

/-- A366439: The sum of divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366439.P9566324691206801463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366439 (n : ℕ) : ℤ :=
  A366439.P9566324691206801463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366534.P14908058348624275973

`A034444(A268335(n+1))`
-/

namespace A366534.P14908058348624275973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A268335 (n + 1)).toNat

end

end A366534.P14908058348624275973

noncomputable section

/-- A366534: The number of unitary divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366534.P14908058348624275973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366534 (n : ℕ) : ℤ :=
  A366534.P14908058348624275973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366534.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366535.P17157640204726655223

`A034448(A268335(n+1))`
-/

namespace A366535.P17157640204726655223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A268335 (n + 1)).toNat

end

end A366535.P17157640204726655223

noncomputable section

/-- A366535: The sum of unitary divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366535.P17157640204726655223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366535 (n : ℕ) : ℤ :=
  A366535.P17157640204726655223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366825.P6870675763972796668

`filter[A072357(n+1), A319710(#)]`
-/

namespace A366825.P6870675763972796668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A366825.P6870675763972796668

noncomputable section

/-- A366825: Numbers of the form p^2 * m, squarefree m > 1, prime p < lpf(m), where lpf(m) = A020639(m).

Offset 1, canonical program `A366825.P6870675763972796668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7714 terms. -/
def A366825 (n : ℕ) : ℤ :=
  A366825.P6870675763972796668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7714 terms. -/
def A366825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367417.P18277504886847390025

`A007947(A268335(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367417.P18277504886847390025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A268335 (n + 1)).toNat

end

end A367417.P18277504886847390025

noncomputable section

/-- A367417: The squarefree kernels of the exponentially odd numbers: a(n) = A007947(A268335(n)).

Offset 1, canonical program `A367417.P18277504886847390025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367417 (n : ℕ) : ℤ :=
  A367417.P18277504886847390025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367695.P14319411982053900779

`A268335(comp[comp[A268335(n+1)]-n])`
-/

namespace A367695.P14319411982053900779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A367695.P14319411982053900779

noncomputable section

/-- A367695: Numbers k such that k and k+1 are both exponentially odd numbers (A268335).

Offset 1, canonical program `A367695.P14319411982053900779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6705 terms. -/
def A367695 (n : ℕ) : ℤ :=
  A367695.P14319411982053900779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6705 terms. -/
def A367695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368038.P2030547895329606168

`A048146(A013929(n+1))`
-/

namespace A368038.P2030547895329606168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A013929 (n + 1)).toNat

end

end A368038.P2030547895329606168

noncomputable section

/-- A368038: The sum of non-unitary divisors of the nonsquarefree numbers.

Offset 1, canonical program `A368038.P2030547895329606168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368038 (n : ℕ) : ℤ :=
  A368038.P2030547895329606168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368038.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368468.P2584022470948144189

`A322483(A268335(n+1))`
-/

namespace A368468.P2584022470948144189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A268335 (n + 1)).toNat

end

end A368468.P2584022470948144189

noncomputable section

/-- A368468: a(n) is the number of exponentially odd divisors of the n-th exponentially odd number.

Offset 1, canonical program `A368468.P2584022470948144189`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368468 (n : ℕ) : ℤ :=
  A368468.P2584022470948144189.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368469.P12995681979237792953

`A033634(A268335(n+1))`
-/

namespace A368469.P12995681979237792953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A268335 (n + 1)).toNat

end

end A368469.P12995681979237792953

noncomputable section

/-- A368469: a(n) is the sum of exponentially odd divisors of the n-th exponentially odd number.

Offset 1, canonical program `A368469.P12995681979237792953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368469 (n : ℕ) : ℤ :=
  A368469.P12995681979237792953.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368472.P18282956041258009745

`A005361(A268335(n+1))`
-/

namespace A368472.P18282956041258009745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A268335 (n + 1)).toNat

end

end A368472.P18282956041258009745

noncomputable section

/-- A368472: Product of exponents of prime factorization of the exponentially odd numbers.

Offset 1, canonical program `A368472.P18282956041258009745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368472 (n : ℕ) : ℤ :=
  A368472.P18282956041258009745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368818.P4834602760063289431

`A351115(n+1)-∑{d}[n+1, A351114(#)]`
-/

namespace A368818.P4834602760063289431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351115 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A351114 d

end

end A368818.P4834602760063289431

noncomputable section

/-- A368818: Number of balanced numbers less than n that do not divide n.

Offset 1, canonical program `A368818.P4834602760063289431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368818 (n : ℕ) : ℤ :=
  A368818.P4834602760063289431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369254.P15188705879199681982

`lt[0, A369253(n+1)]+1`
-/

namespace A369254.P15188705879199681982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A369254.P15188705879199681982

noncomputable section

/-- A369254: Numbers k that have an odd number of divisors that are at most sqrt(k).

Offset 1, canonical program `A369254.P15188705879199681982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369254 (n : ℕ) : ℤ :=
  (A369254.P15188705879199681982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369329.P4857448169183928118

`∩[A038550(n+1)+1, A275418(n+1)]`
-/

namespace A369329.P4857448169183928118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369329.P4857448169183928118

noncomputable section

/-- A369329: Numbers whose neighbors have a prime number as their greatest odd divisor.

Offset 1, canonical program `A369329.P4857448169183928118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A369329 (n : ℕ) : ℤ :=
  (A369329.P4857448169183928118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A369329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369640.P17833824119433621960

`char[∩[A002808(n+1), A341518(n+1)]]`
-/

namespace A369640.P17833824119433621960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341518 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A369640.P17833824119433621960

noncomputable section

/-- A369640: a(n) = 1 if n is composite and n' is a sum of distinct primorial numbers, otherwise 0, where n' stands for the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369640.P17833824119433621960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369640 (n : ℕ) : ℤ :=
  (A369640.P17833824119433621960.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370119.P13163184009623574713

`lt[0, A370118(n)]`
-/

namespace A370119.P13163184009623574713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370119.P13163184009623574713

noncomputable section

/-- A370119: Numbers whose arithmetic derivative is a multiple of 9.

Offset 1, canonical program `A370119.P13163184009623574713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A370119 (n : ℕ) : ℤ :=
  (A370119.P13163184009623574713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A370119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370123.P16848345114855373934

`lt[0, A370122(n)]`
-/

namespace A370123.P16848345114855373934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370123.P16848345114855373934

noncomputable section

/-- A370123: Numbers whose second arithmetic derivative (A068346) is a multiple of 3.

Offset 1, canonical program `A370123.P16848345114855373934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370123 (n : ℕ) : ℤ :=
  (A370123.P16848345114855373934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371088.P2231272270736928938

`eq[1, A371087(1+n)]+1`
-/

namespace A371088.P2231272270736928938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371087 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371088.P2231272270736928938

noncomputable section

/-- A371088: Numbers k such that A003557(k) divides A276086(k), where A003557(k) is k divided by its largest squarefree divisor, and A276086 is the primorial base exp-function.

Offset 1, canonical program `A371088.P2231272270736928938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371088 (n : ℕ) : ℤ :=
  (A371088.P2231272270736928938.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372331.P6557326080855113142

`∏{e}[n+1, A080100(#)]`
-/

namespace A372331.P6557326080855113142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A080100 (Nat.factorization (f1 n) p)

end

end A372331.P6557326080855113142

noncomputable section

/-- A372331: The number of infinitary divisors of the smallest number k such that k*n is a number whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372331.P6557326080855113142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372331 (n : ℕ) : ℤ :=
  A372331.P6557326080855113142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373058.P8412675158221474829

`A336563(A013929(n+1))`
-/

namespace A373058.P8412675158221474829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (A013929 (n + 1)).toNat

end

end A373058.P8412675158221474829

noncomputable section

/-- A373058: The sum of the aliquot coreful divisors of the nonsquarefree numbers.

Offset 1, canonical program `A373058.P8412675158221474829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373058 (n : ℕ) : ℤ :=
  A373058.P8412675158221474829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373257.P13720974056317118150

`lt[0, A373256(n)]`
-/

namespace A373257.P13720974056317118150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A373257.P13720974056317118150

noncomputable section

/-- A373257: Numbers k for which A003415(k) == -1 (mod 3), where A003415 is the arithmetic derivative.

Offset 1, canonical program `A373257.P13720974056317118150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373257 (n : ℕ) : ℤ :=
  (A373257.P13720974056317118150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373485.P729201116521387286

`gcd(A083345(n+1), A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373485.P729201116521387286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083345 (n + 1)) (A276085 (n + 1))

end

end A373485.P729201116521387286

noncomputable section

/-- A373485: a(n) = gcd(A083345(n), A276085(n)), where A276085 is fully additive with a(p) = p#/p, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

Offset 1, canonical program `A373485.P729201116521387286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373485 (n : ℕ) : ℤ :=
  (A373485.P729201116521387286.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373485.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373488.P4849159073643655447

`filter[A373487(n+1), A005171(#)]`
-/

namespace A373488.P4849159073643655447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A373488.P4849159073643655447

noncomputable section

/-- A373488: Nonprime natural numbers k such that A276085(k) is a multiple of A003415(k), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373488.P4849159073643655447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1892 terms. -/
def A373488 (n : ℕ) : ℤ :=
  A373488.P4849159073643655447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1892 terms. -/
def A373488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373597.P6733738680697274413

`∩[A369659(n+1), A373494(n+1)]`
-/

namespace A373597.P6733738680697274413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373597.P6733738680697274413

noncomputable section

/-- A373597: Non-multiples of 3 whose multiplicities of prime factors of types 3m-1 and 3m+1 are both multiples of 3.

Offset 1, canonical program `A373597.P6733738680697274413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. -/
def A373597 (n : ℕ) : ℤ :=
  (A373597.P6733738680697274413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. -/
def A373597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373599.P5432424891475302921

`filter[2*n, A373598(#)]`
-/

namespace A373599.P5432424891475302921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373598 (f1 j) = 1) n)

end

end A373599.P5432424891475302921

noncomputable section

/-- A373599: Numbers k such that k and A327860(k) are both multiples of 3, where A327860 is the arithmetic derivative of the primorial base exp-function.

Offset 1, canonical program `A373599.P5432424891475302921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A373599 (n : ℕ) : ℤ :=
  (A373599.P5432424891475302921.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A373599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374456.P3778587499414482557

`A000010(A268335(n+1))`
-/

namespace A374456.P3778587499414482557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A268335 (n + 1)).toNat

end

end A374456.P3778587499414482557

noncomputable section

/-- A374456: The Euler phi function values of the exponentially odd numbers (A268335).

Offset 1, canonical program `A374456.P3778587499414482557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374456 (n : ℕ) : ℤ :=
  A374456.P3778587499414482557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374456.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374457.P2386240306145347940

`A001615(A268335(n+1))`
-/

namespace A374457.P2386240306145347940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A268335 (n + 1)).toNat

end

end A374457.P2386240306145347940

noncomputable section

/-- A374457: The Dedekind psi function values of the exponentially odd numbers (A268335).

Offset 1, canonical program `A374457.P2386240306145347940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374457 (n : ℕ) : ℤ :=
  A374457.P2386240306145347940.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374457.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374458.P2044124364577777506

`A268335(n+1)²`
-/

namespace A374458.P2044124364577777506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1) ^ 2

end

end A374458.P2044124364577777506

noncomputable section

/-- A374458: Squares of exponentially odd numbers (A268335).

Offset 1, canonical program `A374458.P2044124364577777506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374458 (n : ℕ) : ℤ :=
  A374458.P2044124364577777506.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375707.P9259180855303311650

`A078147(1+n)-1`
-/

namespace A375707.P9259180855303311650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (1 + n) - 1

end

end A375707.P9259180855303311650

noncomputable section

/-- A375707: First differences minus 1 of nonsquarefree numbers.

Offset 1, canonical program `A375707.P9259180855303311650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375707 (n : ℕ) : ℤ :=
  A375707.P9259180855303311650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375934.P9875740353671820697

`filter[A375142(n+1), A389905(#)]`
-/

namespace A375934.P9875740353671820697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A375934.P9875740353671820697

noncomputable section

/-- A375934: Numbers whose prime factorization has a second-largest exponent that equals 1.

Offset 1, canonical program `A375934.P9875740353671820697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9855 terms. -/
def A375934 (n : ℕ) : ℤ :=
  A375934.P9875740353671820697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9855 terms. -/
def A375934.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A376267.P9390394080289901866

`runs[A078147(1+n)]`
-/

namespace A376267.P9390394080289901866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376267.P9390394080289901866

noncomputable section

/-- A376267: Run-lengths of first differences (A078147) of nonsquarefree numbers (A013929).

Offset 1, canonical program `A376267.P9390394080289901866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7203 terms. -/
def A376267 (n : ℕ) : ℤ :=
  (A376267.P9390394080289901866.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7203 terms. -/
def A376267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376602.P17346035341908880502

`eq[0, A073445(1+n)]+1`
-/

namespace A376602.P17346035341908880502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073445 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376602.P17346035341908880502

noncomputable section

/-- A376602: Inflection and undulation points in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376602.P17346035341908880502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7711 terms. -/
def A376602 (n : ℕ) : ℤ :=
  (A376602.P17346035341908880502.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7711 terms. -/
def A376602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376651.P6843983757789881629

`eq[2, A053542(n+1)]+1`
-/

namespace A376651.P6843983757789881629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053542 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376651.P6843983757789881629

noncomputable section

/-- A376651: Points of upward concavity in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376651.P6843983757789881629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376651 (n : ℕ) : ℤ :=
  (A376651.P6843983757789881629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377028.P17721679851901498056

`∑[A341629(1+n)]`
-/

namespace A377028.P17721679851901498056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377028.P17721679851901498056

noncomputable section

/-- A377028: a(n) = number of integers k <= n such that k is a term in A055932.

Offset 1, canonical program `A377028.P17721679851901498056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377028 (n : ℕ) : ℤ :=
  A377028.P17721679851901498056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378959.P5432620633639023974

`A003817(n)*A090706(n)`
-/

namespace A378959.P5432620633639023974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n * A090706 n

end

end A378959.P5432620633639023974

noncomputable section

/-- A378959: Sum, in base 10, of the permutations of the digits of n, written in base 2.

Offset 0, canonical program `A378959.P5432620633639023974`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378959 (n : ℕ) : ℤ :=
  A378959.P5432620633639023974.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379267.P15908437696186355973

`∩[A144754(n+1), A059010(n)]`
-/

namespace A379267.P15908437696186355973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379267.P15908437696186355973

noncomputable section

/-- A379267: Numbers whose binary representation contains exactly two zeros.

Offset 1, canonical program `A379267.P15908437696186355973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A379267 (n : ℕ) : ℤ :=
  (A379267.P15908437696186355973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A379267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379832.P7411395680414309384

`A007434(A268335(n+1))`
-/

namespace A379832.P7411395680414309384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A268335 (n + 1)).toNat

end

end A379832.P7411395680414309384

noncomputable section

/-- A379832: The second Jordan totient function applied to the exponentially odd numbers.

Offset 1, canonical program `A379832.P7411395680414309384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379832 (n : ℕ) : ℤ :=
  A379832.P7411395680414309384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380323.P7609859064291809973

`A046951(A268335(n+1))`
-/

namespace A380323.P7609859064291809973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A268335 (n + 1)).toNat

end

end A380323.P7609859064291809973

noncomputable section

/-- A380323: The number of squares dividing the n-th exponentially odd number.

Offset 1, canonical program `A380323.P7609859064291809973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380323 (n : ℕ) : ℤ :=
  A380323.P7609859064291809973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380324.P6780080084449121011

`A035316(A268335(n+1))`
-/

namespace A380324.P6780080084449121011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A268335 (n + 1)).toNat

end

end A380324.P6780080084449121011

noncomputable section

/-- A380324: The sum of the squares dividing the n-th exponentially odd number.

Offset 1, canonical program `A380324.P6780080084449121011`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380324 (n : ℕ) : ℤ :=
  A380324.P6780080084449121011.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380325.P11001594925613090436

`A069290(A268335(n+1))`
-/

namespace A380325.P11001594925613090436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A268335 (n + 1)).toNat

end

end A380325.P11001594925613090436

noncomputable section

/-- A380325: The sum of the square roots of the squares that divide the n-th exponentially odd number.

Offset 1, canonical program `A380325.P11001594925613090436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380325 (n : ℕ) : ℤ :=
  A380325.P11001594925613090436.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380326.P5985966696173145077

`A048250(A268335(n+1))`
-/

namespace A380326.P5985966696173145077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A268335 (n + 1)).toNat

end

end A380326.P5985966696173145077

noncomputable section

/-- A380326: a(n) is the sum of squarefree divisors of the n-th exponentially odd number.

Offset 1, canonical program `A380326.P5985966696173145077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380326 (n : ℕ) : ℤ :=
  A380326.P5985966696173145077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380534.P15031581569733640936

`val(A328580(n), A053669(n+1))`
-/

namespace A380534.P15031581569733640936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328580 n).toNat (A053669 (n + 1)).toNat

end

end A380534.P15031581569733640936

noncomputable section

/-- A380534: a(n) = 1 if the least significant nonzero digit in primorial base representation of n (A049345) is greater than 1, otherwise 0.

Offset 1, canonical program `A380534.P15031581569733640936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380534 (n : ℕ) : ℤ :=
  (A380534.P15031581569733640936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380539.P4896797955037958579

`A284723((n+1)*A053669(n+1))`
-/

namespace A380539.P4896797955037958579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284723 ((n + 1 : ℤ) * A053669 (n + 1)).toNat

end

end A380539.P4896797955037958579

noncomputable section

/-- A380539: The second smallest prime not dividing n.

Offset 1, canonical program `A380539.P4896797955037958579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A380539 (n : ℕ) : ℤ :=
  A380539.P4896797955037958579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A380539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380839.P1105865872776131656

`A173557(n+1)/A305444(n+1)*A307410(n+1)`
-/

namespace A380839.P1105865872776131656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A305444 (n + 1) : ℚ) * (A307410 (n + 1) : ℚ)

end

end A380839.P1105865872776131656

noncomputable section

/-- A380839: Numerators of J(n) = Product_{p|n, p odd prime} (p - 1)/(p - 2).

Offset 1, canonical program `A380839.P1105865872776131656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380839 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380839.P1105865872776131656.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382118.P6433040917030261749

`p?[A379208(n+1)]`
-/

namespace A382118.P6433040917030261749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A382118.P6433040917030261749

noncomputable section

/-- A382118: Prime indices k such that prime(k) and prime(k) + 9 are anagrams.

Offset 1, canonical program `A382118.P6433040917030261749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. -/
def A382118 (n : ℕ) : ℤ :=
  A382118.P6433040917030261749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. -/
def A382118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382660.P13276603593670196303

`A047994(A268335(n+1))`
-/

namespace A382660.P13276603593670196303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A268335 (n + 1)).toNat

end

end A382660.P13276603593670196303

noncomputable section

/-- A382660: The unitary totient function applied to the exponentially odd numbers (A268335).

Offset 1, canonical program `A382660.P13276603593670196303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382660 (n : ℕ) : ℤ :=
  A382660.P13276603593670196303.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382661.P8563438829571950820

`A191414(A268335(n+1))`
-/

namespace A382661.P8563438829571950820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (A268335 (n + 1)).toNat

end

end A382661.P8563438829571950820

noncomputable section

/-- A382661: The unitary Jordan totient function applied to the exponentially odd numbers (A268335).

Offset 1, canonical program `A382661.P8563438829571950820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382661 (n : ℕ) : ℤ :=
  A382661.P8563438829571950820.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382663.P5371014751236149270

`A191414(A004709(n+1))`
-/

namespace A382663.P5371014751236149270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (A004709 (n + 1)).toNat

end

end A382663.P5371014751236149270

noncomputable section

/-- A382663: The unitary Jordan totient function applied to the cubefree numbers (A004709).

Offset 1, canonical program `A382663.P5371014751236149270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382663 (n : ℕ) : ℤ :=
  A382663.P5371014751236149270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382664.P5840537722718676398

`∑[A268335(1+n)]`
-/

namespace A382664.P5840537722718676398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382664.P5840537722718676398

noncomputable section

/-- A382664: Partial sums of the exponentially odd numbers (A268335).

Offset 1, canonical program `A382664.P5840537722718676398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382664 (n : ℕ) : ℤ :=
  A382664.P5840537722718676398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382787.P2533475124958767227

`A005361(A335275(n+1))`
-/

namespace A382787.P2533475124958767227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A335275 (n + 1)).toNat

end

end A382787.P2533475124958767227

noncomputable section

/-- A382787: The product of exponents in the prime factorization of the numbers whose prime factorization contains exponents that are either 1 or even.

Offset 1, canonical program `A382787.P2533475124958767227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382787 (n : ℕ) : ℤ :=
  A382787.P2533475124958767227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382787.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383029.P14010590280283821526

`A007814(A268335(n+1))`
-/

namespace A383029.P14010590280283821526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A268335 (n + 1)).toNat

end

end A383029.P14010590280283821526

noncomputable section

/-- A383029: Exponent of the highest power of 2 dividing the n-th exponentially odd number.

Offset 1, canonical program `A383029.P14010590280283821526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383029 (n : ℕ) : ℤ :=
  A383029.P14010590280283821526.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383030.P6017071897384222791

`lt[A268335(n+1)%2, 1]+1`
-/

namespace A383030.P6017071897384222791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268335 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A383030.P6017071897384222791

noncomputable section

/-- A383030: Indices of the even terms in the sequence of exponentially odd numbers.

Offset 1, canonical program `A383030.P6017071897384222791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. -/
def A383030 (n : ℕ) : ℤ :=
  (A383030.P6017071897384222791.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. -/
def A383030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384064.P3089049146557350597

`A013929(n+1)/A046027(n+1)`
-/

namespace A384064.P3089049146557350597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A046027 (n + 1) : ℚ)

end

end A384064.P3089049146557350597

noncomputable section

/-- A384064: a(n) = s(n) divided by the smallest multiple prime factor of s(n), where s = A013929.

Offset 1, canonical program `A384064.P3089049146557350597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A046027, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384064 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384064.P3089049146557350597.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A046027, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384064.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384452.P11109828349487245478

`A034676((n+1)!)`
-/

namespace A384452.P11109828349487245478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (Nat.factorial (n + 1))

end

end A384452.P11109828349487245478

noncomputable section

/-- A384452: a(n) is the sum of squares of the unitary divisors of n!.

Offset 1, canonical program `A384452.P11109828349487245478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384452 (n : ℕ) : ℤ :=
  A384452.P11109828349487245478.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385048.P15337767966192426689

`A034448(n+1)/A371242(n+1)`
-/

namespace A385048.P15337767966192426689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A371242 (n + 1) : ℚ)

end

end A385048.P15337767966192426689

noncomputable section

/-- A385048: The sum of the unitary divisors of n that are cubefull numbers (A036966).

Offset 1, canonical program `A385048.P15337767966192426689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385048 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385048.P15337767966192426689.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385136.P6842208778617945825

`∑{d}[1+n, A384040(#)]`
-/

namespace A385136.P6842208778617945825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384040 d

end

end A385136.P6842208778617945825

noncomputable section

/-- A385136: The sum of divisors d of n such that n/d is a cubefull number (A036966).

Offset 1, canonical program `A385136.P6842208778617945825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385136 (n : ℕ) : ℤ :=
  A385136.P6842208778617945825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388986.P11323561690555487102

`lt[A325973(1+n), n]+1`
-/

namespace A388986.P11323561690555487102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388986.P11323561690555487102

noncomputable section

/-- A388986: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} is less than 2*k.

Offset 1, canonical program `A388986.P11323561690555487102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4846 terms. -/
def A388986 (n : ℕ) : ℤ :=
  (A388986.P11323561690555487102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4846 terms. -/
def A388986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389215.P13589853183880962071

`lt[n, A325973(n+1)]+1`
-/

namespace A389215.P13589853183880962071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389215.P13589853183880962071

noncomputable section

/-- A389215: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} >= 2*k.

Offset 1, canonical program `A389215.P13589853183880962071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389215 (n : ℕ) : ℤ :=
  (A389215.P13589853183880962071.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390441.P17349439973378819553

`eq[A092261(n+1), A385049(n+1)]+1`
-/

namespace A390441.P17349439973378819553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A390441.P17349439973378819553

noncomputable section

/-- A390441: Numbers whose prime factorization exponents are neither 2 nor 3.

Offset 1, canonical program `A390441.P17349439973378819553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6702 terms. -/
def A390441 (n : ℕ) : ℤ :=
  (A390441.P17349439973378819553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6702 terms. -/
def A390441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390954.P15680149066390058450

`∑{d}[n+1, A390554(#)*A328254((n+1)/#)]`
-/

namespace A390954.P15680149066390058450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A390554 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390954.P15680149066390058450

noncomputable section

/-- A390954: Dirichlet convolution of A390554 and A328254.

Offset 1, canonical program `A390954.P15680149066390058450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390954 (n : ℕ) : ℤ :=
  A390954.P15680149066390058450.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390954.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391025.P15150800664500928125

`filter[2*n+1, A389905(#)]`
-/

namespace A391025.P15150800664500928125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j) = 1) n)

end

end A391025.P15150800664500928125

noncomputable section

/-- A391025: Odd numbers that are neither powerful nor squarefree.

Offset 1, canonical program `A391025.P15150800664500928125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6012 terms. -/
def A391025 (n : ℕ) : ℤ :=
  (A391025.P15150800664500928125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6012 terms. -/
def A391025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391226.P4652616117976445603

`comp[A390988(n+1)-2]+2`
-/

namespace A391226.P4652616117976445603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390988 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A391226.P4652616117976445603

noncomputable section

/-- A391226: Numbers k > 1 such that the least prime index of k plus the greatest prime index of k is even.

Offset 1, canonical program `A391226.P4652616117976445603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391226 (n : ℕ) : ℤ :=
  (A391226.P4652616117976445603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391909.P16168098912937984646

`lt[0, A391747(n+1)]+1`
-/

namespace A391909.P16168098912937984646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391909.P16168098912937984646

noncomputable section

/-- A391909: Numbers k such that -1 <= A195017(k) <= 1.

Offset 1, canonical program `A391909.P16168098912937984646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391909 (n : ℕ) : ℤ :=
  (A391909.P16168098912937984646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392229.P16727386480757077401

`fo[A391449(n+1)]+1`
-/

namespace A392229.P16727386480757077401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A392229.P16727386480757077401

noncomputable section

/-- A392229: Index of first occurrence of n in A391449.

Offset 0, canonical program `A392229.P16727386480757077401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A392229 (n : ℕ) : ℤ :=
  (A392229.P16727386480757077401.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A392229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392612.P10434685269929922003

`lt[A392610(n), 2]`
-/

namespace A392612.P10434685269929922003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A392612.P10434685269929922003

noncomputable section

/-- A392612: Numbers k such that all prime factors of A276086(k) divide k, except the least one of them, where A276086 is the primorial base exp-function.

Offset 1, canonical program `A392612.P10434685269929922003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A392612 (n : ℕ) : ℤ :=
  (A392612.P10434685269929922003.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A392612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393051.P5144449806358480311

`∑{d}[n+1, A356162(#)]`
-/

namespace A393051.P5144449806358480311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A356162 d

end

end A393051.P5144449806358480311

noncomputable section

/-- A393051: Number of divisors d of n such that d and A276086(d) are coprime, where A276086 is the primorial base exp-function.

Offset 1, canonical program `A393051.P5144449806358480311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393051 (n : ℕ) : ℤ :=
  A393051.P5144449806358480311.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393052.P943790864289494441

`∑{d}[n+1, 1-A356162(#)]`
-/

namespace A393052.P943790864289494441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A356162 d)

end

end A393052.P943790864289494441

noncomputable section

/-- A393052: Number of divisors d of n such that d and A276086(d) are not coprime, where A276086 is the primorial base exp-function.

Offset 1, canonical program `A393052.P943790864289494441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393052 (n : ℕ) : ℤ :=
  A393052.P943790864289494441.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393924.P7342010753863818337

`eq[0, A389905(n+1)]+1`
-/

namespace A393924.P7342010753863818337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A393924.P7342010753863818337

noncomputable section

/-- A393924: Numbers that are either squarefree or squareful.

Offset 1, canonical program `A393924.P7342010753863818337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393924 (n : ℕ) : ℤ :=
  (A393924.P7342010753863818337.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393947.P11959120361459312155

`filter[A072413(n+1), A389905(#)]`
-/

namespace A393947.P11959120361459312155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A393947.P11959120361459312155

noncomputable section

/-- A393947: Numbers that are neither squarefree nor squareful with prime power factor exponents that are not all pairwise coprime.

Offset 1, canonical program `A393947.P11959120361459312155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A393947 (n : ℕ) : ℤ :=
  A393947.P11959120361459312155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A393947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394346.P4603799114259171752

`A324528(n+1)*A306671(n+1)`
-/

namespace A394346.P4603799114259171752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324528 (n + 1) * A306671 (n + 1)

end

end A394346.P4603799114259171752

noncomputable section

/-- A394346: a(n) = tau(n) * pod(n) where tau(k) = the number of the divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A394346.P4603799114259171752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306671, A324528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394346 (n : ℕ) : ℤ :=
  A394346.P4603799114259171752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306671, A324528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394424.P3558969678185483521

`A049419(A268335(n+1))`
-/

namespace A394424.P3558969678185483521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A268335 (n + 1)).toNat

end

end A394424.P3558969678185483521

noncomputable section

/-- A394424: The number of exponential divisors of the exponentially odd numbers.

Offset 1, canonical program `A394424.P3558969678185483521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394424 (n : ℕ) : ℤ :=
  A394424.P3558969678185483521.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394424.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397459.P5570082344827990689

`∩[A082294(n+1), A383264(n+1)]`
-/

namespace A397459.P5570082344827990689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397459.P5570082344827990689

noncomputable section

/-- A397459: Numbers k of the form lpf(k)^3 * rad(k), where rad = A007947 and lpf is the least prime factor of k.

Offset 1, canonical program `A397459.P5570082344827990689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A397459 (n : ℕ) : ℤ :=
  (A397459.P5570082344827990689.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A397459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397499.P541619979488380966

`A336551(filter[A090958(n), A341629(#)])+1`
-/

namespace A397499.P541619979488380966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)).toNat + 1

end

end A397499.P541619979488380966

noncomputable section

/-- A397499: a(n) = A003557(A055932(n)).

Offset 1, canonical program `A397499.P541619979488380966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A397499 (n : ℕ) : ℤ :=
  A397499.P541619979488380966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A397499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398161.P17501496371240396645

`∩[A335275(n+1)-1, A335275(n+1)]`
-/

namespace A398161.P17501496371240396645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398161.P17501496371240396645

noncomputable section

/-- A398161: Numbers k such that every exponent in the prime factorizations of both k and k+1 is either 1 or even.

Offset 1, canonical program `A398161.P17501496371240396645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8739 terms. -/
def A398161 (n : ℕ) : ℤ :=
  (A398161.P17501496371240396645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8739 terms. -/
def A398161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398569.P1103607179862908180

`∩[A072357(n+1), A216918(n+1)]`
-/

namespace A398569.P1103607179862908180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398569.P1103607179862908180

noncomputable section

/-- A398569: Odd numbers of the form p^2*s, where p is prime, s is squarefree, gcd(p,s) = 1, and A001221(s) >= 2.

Offset 1, canonical program `A398569.P1103607179862908180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. -/
def A398569 (n : ℕ) : ℤ :=
  (A398569.P1103607179862908180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. -/
def A398569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398820.P11169697857267256165

`eq[A008683(n+1), A295663(n+1)]+1`
-/

namespace A398820.P11169697857267256165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A398820.P11169697857267256165

noncomputable section

/-- A398820: Numbers whose powerful part (A057521) is a square that is larger than 1.

Offset 1, canonical program `A398820.P11169697857267256165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398820 (n : ℕ) : ℤ :=
  (A398820.P11169697857267256165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401086.P7626632577257715344

`∑{d}[1+n, A369307(#)]`
-/

namespace A401086.P7626632577257715344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369307 d

end

end A401086.P7626632577257715344

noncomputable section

/-- A401086: The number of ordered pairs of exponentially odd divisors (d_1, d_2) of n such that d_1 * d_2 is a divisor of n.

Offset 1, canonical program `A401086.P7626632577257715344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401086 (n : ℕ) : ℤ :=
  A401086.P7626632577257715344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401918.P547971025018737801

`filter[A018252(n+1), A401917(#)]`
-/

namespace A401918.P547971025018737801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401917 (f1 j).toNat = 1) n)

end

end A401918.P547971025018737801

noncomputable section

/-- A401918: Numbers k for which A347395(k) is even, where A347395 is the Dirichlet convolution of Liouville's lambda (A008836) with A342001.

Offset 1, canonical program `A401918.P547971025018737801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6283 terms. -/
def A401918 (n : ℕ) : ℤ :=
  A401918.P547971025018737801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6283 terms. -/
def A401918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401934.P9155567986873409358

`A276085(n+2)%A083345(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401934.P9155567986873409358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 2)) (A083345 (n + 2))

end

end A401934.P9155567986873409358

noncomputable section

/-- A401934: a(n) = A276085(n) mod A083345(n), where A083345 is the numerator of the fully additive function with a(p) = 1/p, and A276085 is fully additive with a(p) = p#/p.

Offset 2, canonical program `A401934.P9155567986873409358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401934 (n : ℕ) : ℤ :=
  A401934.P9155567986873409358.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285800.P7588634103840983572

`eq[0, A340372(n+1)]+1`
-/

namespace A285800.P7588634103840983572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285800.P7588634103840983572

noncomputable section

/-- A285800: Numbers having more than one odd prime factor to an odd power in their prime factorization.

Offset 1, canonical program `A285800.P7588634103840983572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285800 (n : ℕ) : ℤ :=
  (A285800.P7588634103840983572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285801.P7980380557356014211

`lt[0, A340372(n+1)]+1`
-/

namespace A285801.P7980380557356014211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285801.P7980380557356014211

noncomputable section

/-- A285801: Numbers having at most one odd prime factor to an odd power in their prime factorization.

Offset 1, canonical program `A285801.P7980380557356014211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285801 (n : ℕ) : ℤ :=
  (A285801.P7980380557356014211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286049.P8004835268129758214

`Δ[fp[A286051(n+1)]]`
-/

namespace A286049.P8004835268129758214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286051 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A286049.P8004835268129758214

noncomputable section

/-- A286049: {110->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286049.P8004835268129758214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286049 (n : ℕ) : ℤ :=
  A286049.P8004835268129758214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286627.P1343693028001462736

`val(Δ[A049643(n)], A096737(n+1))`
-/

namespace A286627.P1343693028001462736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat (A096737 (n + 1)).toNat

end

end A286627.P1343693028001462736

noncomputable section

/-- A286627: a(n) = exponent of the highest power of A000005(n) (number of divisors of n) dividing A000010(n) (totient function phi), a(1) = 1.

Offset 1, canonical program `A286627.P1343693028001462736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A286627 (n : ℕ) : ℤ :=
  (A286627.P1343693028001462736.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A286627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290230.P10636525088049313073

`or(A051049(n), A288811(n))`
-/

namespace A290230.P10636525088049313073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A288811 n)

end

end A290230.P10636525088049313073

noncomputable section

/-- A290230: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290230.P10636525088049313073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290230 (n : ℕ) : ℤ :=
  A290230.P10636525088049313073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293376.P13980595936671275185

`A291186(A120736(n+1))`
-/

namespace A293376.P13980595936671275185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291186 (A120736 (n + 1)).toNat

end

end A293376.P13980595936671275185

noncomputable section

/-- A293376: Corresponding values of pod(n)/tau(n) of numbers n from A120736.

Offset 1, canonical program `A293376.P13980595936671275185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120736, A291186, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293376 (n : ℕ) : ℤ :=
  A293376.P13980595936671275185.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120736, A291186, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293376.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294098.P15222509344046716006

`1-A294097(1+n)+n`
-/

namespace A294098.P15222509344046716006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294097 (1 + n) + (n : ℤ)

end

end A294098.P15222509344046716006

noncomputable section

/-- A294098: Number of partitions of 2n into two parts such that one part is squarefree and the other part is nonsquarefree.

Offset 1, canonical program `A294098.P15222509344046716006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294098 (n : ℕ) : ℤ :=
  A294098.P15222509344046716006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297043.P77604833926978237

`∑[A341629(Δ[A017533(n)²])]`
-/

namespace A297043.P77604833926978237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297043.P77604833926978237

noncomputable section

/-- A297043: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-15 digits of n; see Comments.

Offset 1, canonical program `A297043.P77604833926978237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A297043 (n : ℕ) : ℤ :=
  A297043.P77604833926978237.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A297043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297172.P13306092962490198304

`∑{d}[n+1, A008683((n+1)/#)*A253564(#)]`
-/

namespace A297172.P13306092962490198304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A253564 d

end

end A297172.P13306092962490198304

noncomputable section

/-- A297172: Möbius transform of A253564.

Offset 1, canonical program `A297172.P13306092962490198304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297172 (n : ℕ) : ℤ :=
  A297172.P13306092962490198304.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300572.P15724675085850262782

`∩[A037197(n+1), A067762(n+1)]`
-/

namespace A300572.P15724675085850262782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300572.P15724675085850262782

noncomputable section

/-- A300572: Numbers k such that k and the sum of the divisors of k have the same prime signature.

Offset 1, canonical program `A300572.P15724675085850262782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A300572 (n : ℕ) : ℤ :=
  (A300572.P15724675085850262782.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A300572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301280.P3515032847069832870

`round(A139262(n)/A179865(n+1))`
-/

namespace A301280.P3515032847069832870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A139262 n : ℚ) / (A179865 (n + 1) : ℚ))

end

end A301280.P3515032847069832870

noncomputable section

/-- A301280: Nearest integer to variance of n-th row of Pascal's triangle.

Offset 0, canonical program `A301280.P3515032847069832870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A301280 (n : ℕ) : ℤ :=
  A301280.P3515032847069832870.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A301280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304449.P7931150842047874865

`comp[A303946(n+1)-1]+1`
-/

namespace A304449.P7931150842047874865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A304449.P7931150842047874865

noncomputable section

/-- A304449: Numbers that are either squarefree or a perfect power.

Offset 1, canonical program `A304449.P7931150842047874865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304449 (n : ℕ) : ℤ :=
  (A304449.P7931150842047874865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306300.P13125878749927857730

`A007913(A003658(n+1))`
-/

namespace A306300.P13125878749927857730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003658 (n + 1)).toNat

end

end A306300.P13125878749927857730

noncomputable section

/-- A306300: Discriminant D of real quadratic number field Q(sqrt(D)) associated with fundamental discriminant d = A003658(n).

Offset 1, canonical program `A306300.P13125878749927857730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306300 (n : ℕ) : ℤ :=
  A306300.P13125878749927857730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307266.P10622638434227978012

`A120230(A073675(n+1))`
-/

namespace A307266.P10622638434227978012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120230 (A073675 (n + 1)).toNat

end

end A307266.P10622638434227978012

noncomputable section

/-- A307266: Row 8 of array in A059897.

Offset 1, canonical program `A307266.P10622638434227978012`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073675, A120230, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307266 (n : ℕ) : ℤ :=
  A307266.P10622638434227978012.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073675, A120230, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307267.P15212719013206522187

`A073675(A120229(A120230(n+1)))`
-/

namespace A307267.P15212719013206522187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (A120229 (A120230 (n + 1)).toNat).toNat

end

end A307267.P15212719013206522187

noncomputable section

/-- A307267: Row 24 of array in A059897.

Offset 1, canonical program `A307267.P15212719013206522187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073675, A120229, A120230, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307267 (n : ℕ) : ℤ :=
  A307267.P15212719013206522187.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073675, A120229, A120230, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307267.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307892.P2139601516006320098

`A324528(n+1)/(n+1)`
-/

namespace A307892.P2139601516006320098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324528 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A307892.P2139601516006320098

noncomputable section

/-- A307892: a(n) = lcm(tau(n), pod(n)) / n, where tau(k) = the number of divisors of k (A000005) and pod(n) = the product of divisors of k (A007955).

Offset 1, canonical program `A307892.P2139601516006320098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307892 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307892.P2139601516006320098.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A313898.P2205925592400124822

`A315518(n)-A330025(n)`
-/

namespace A313898.P2205925592400124822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315518 n - A330025 n

end

end A313898.P2205925592400124822

noncomputable section

/-- A313898: Coordination sequence Gal.5.291.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313898.P2205925592400124822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A313898 (n : ℕ) : ℤ :=
  A313898.P2205925592400124822.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A313898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314849.P12102171247342340479

`A314720(n)+Δ[A011864(n)]`
-/

namespace A314849.P12102171247342340479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314720 n + (f1 (n + 1) - f1 n)

end

end A314849.P12102171247342340479

noncomputable section

/-- A314849: Coordination sequence Gal.6.246.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314849.P12102171247342340479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. -/
def A314849 (n : ℕ) : ℤ :=
  A314849.P12102171247342340479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. -/
def A314849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315673.P16713545630601192860

`abs(10*n-A312194(n))`
-/

namespace A315673.P16713545630601192860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312194 n|

end

end A315673.P16713545630601192860

noncomputable section

/-- A315673: Coordination sequence Gal.6.347.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315673.P16713545630601192860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A315673 (n : ℕ) : ℤ :=
  A315673.P16713545630601192860.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A315673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317990.P11431585086108988834

`2^(A001221(A033198(1+n))-1)`
-/

namespace A317990.P11431585086108988834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (A033198 (1 + n)).toNat - 1 : ℤ)

end

end A317990.P11431585086108988834

noncomputable section

/-- A317990: Number of genera of the real quadratic field Q(sqrt(k)), k squarefree > 1.

Offset 2, canonical program `A317990.P11431585086108988834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317990 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317990.P11431585086108988834.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317991.P6443215802569184834

`A001221(A003658(n+2))-1`
-/

namespace A317991.P6443215802569184834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003658 (n + 2)).toNat - 1

end

end A317991.P6443215802569184834

noncomputable section

/-- A317991: 2-rank of the narrow class group of the real quadratic field with discriminant A003658(n), n >= 2.

Offset 2, canonical program `A317991.P6443215802569184834`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317991 (n : ℕ) : ℤ :=
  A317991.P6443215802569184834.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317992.P16939269757226415385

`A001221(A033198(1+n))-1`
-/

namespace A317992.P16939269757226415385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A033198 (1 + n)).toNat - 1

end

end A317992.P16939269757226415385

noncomputable section

/-- A317992: 2-rank of the narrow class group of the real quadratic field Q(sqrt(k)), k squarefree > 1.

Offset 2, canonical program `A317992.P16939269757226415385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317992 (n : ℕ) : ℤ :=
  A317992.P16939269757226415385.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323760.P7258766165293403016

`A325030(n+1)/gcd(A324987(n+1), A325030(n+1))`
-/

namespace A323760.P7258766165293403016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (Int.gcd (A324987 (n + 1)) (A325030 (n + 1)) : ℚ)

end

end A323760.P7258766165293403016

noncomputable section

/-- A323760: Numerator of Product_{d|n} (pod(d)/tau(d)) where pod(k) = the product of the divisors of k and tau(k) = the number of the divisors of k.

Offset 1, canonical program `A323760.P7258766165293403016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A323760 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323760.P7258766165293403016.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A323760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324506.P94793196211163730

`lcm(A211776(n+1), A324528(n+1))/A211776(n+1)`
-/

namespace A324506.P94793196211163730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A211776 (n + 1)) (A324528 (n + 1)) : ℚ) / (A211776 (n + 1) : ℚ)

end

end A324506.P94793196211163730

noncomputable section

/-- A324506: a(n) = numerator of Product_{d|n} (d/tau(d)) where tau(k) = the number of divisors of k (A000005).

Offset 1, canonical program `A324506.P94793196211163730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. -/
def A324506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324506.P94793196211163730.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. -/
def A324506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324643.P7794025302369254202

`∩[A324639(n+1), A324652(n+1)]`
-/

namespace A324643.P7794025302369254202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324643.P7794025302369254202

noncomputable section

/-- A324643: Numbers k such that bitand(2k,sigma(k))/2 = k = bitand(k,sigma(k)-k), where bitand is bitwise-AND, A004198.

Offset 1, canonical program `A324643.P7794025302369254202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A324643 (n : ℕ) : ℤ :=
  (A324643.P7794025302369254202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A324643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325161.P4401951335332252882

`filter[A325160(1+n), A005171(#)]`
-/

namespace A325161.P4401951335332252882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A325161.P4401951335332252882

noncomputable section

/-- A325161: Nonprime squarefree numbers not divisible by any two consecutive primes.

Offset 1, canonical program `A325161.P4401951335332252882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7797 terms. -/
def A325161 (n : ℕ) : ℤ :=
  A325161.P4401951335332252882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7797 terms. -/
def A325161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325617.P5965648772748734260

`A318762(A181819(n!))`
-/

namespace A325617.P5965648772748734260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A181819 (Nat.factorial n)).toNat

end

end A325617.P5965648772748734260

noncomputable section

/-- A325617: Multinomial coefficient of the prime signature of n!.

Offset 0, canonical program `A325617.P5965648772748734260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325617 (n : ℕ) : ℤ :=
  A325617.P5965648772748734260.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325617.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327223.P9849619397842507375

`lt[n*A327222(n), n]`
-/

namespace A327223.P9849619397842507375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327222 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327223.P9849619397842507375

noncomputable section

/-- A327223: Positions of 0's in {A327222(k) : n > 0}.

Offset 1, canonical program `A327223.P9849619397842507375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327223 (n : ℕ) : ℤ :=
  (A327223.P9849619397842507375.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328304.P1864302713347206541

`∩[A067259(n+1), A328303(n+1)]`
-/

namespace A328304.P1864302713347206541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328304.P1864302713347206541

noncomputable section

/-- A328304: Numbers that are cubefree, but not squarefree and whose arithmetic derivative is not squarefree.

Offset 1, canonical program `A328304.P1864302713347206541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3035 terms. -/
def A328304 (n : ℕ) : ℤ :=
  (A328304.P1864302713347206541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3035 terms. -/
def A328304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329030.P15729566923499223907

`A329028(A276086(n))`
-/

namespace A329030.P15729566923499223907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (A276086 n).toNat

end

end A329030.P15729566923499223907

noncomputable section

/-- A329030: The least missing nonzero digit in the primorial base expansion of A276086(n).

Offset 0, canonical program `A329030.P15729566923499223907`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329030 (n : ℕ) : ℤ :=
  A329030.P15729566923499223907.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329030.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329586.P2238239881953716898

`(A057427(n)+1)*A086669(n+1)`
-/

namespace A329586.P2238239881953716898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A086669 (n + 1)

end

end A329586.P2238239881953716898

noncomputable section

/-- A329586: Row lengths of A329585: number of solutions of the congruences x^2 == +1 (mod n) or (inclusive) x^2 == -1 (mod n), for n >= 1.

Offset 1, canonical program `A329586.P2238239881953716898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329586 (n : ℕ) : ℤ :=
  A329586.P2238239881953716898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329617.P11232025716192906367

`A290107(A329600(n+1))`
-/

namespace A329617.P11232025716192906367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (A329600 (n + 1)).toNat

end

end A329617.P11232025716192906367

noncomputable section

/-- A329617: Product of distinct exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

Offset 1, canonical program `A329617.P11232025716192906367`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329617 (n : ℕ) : ℤ :=
  A329617.P11232025716192906367.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329647.P10763472955733118982

`A268387(A108951(n+1))`
-/

namespace A329647.P10763472955733118982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (A108951 (n + 1)).toNat

end

end A329647.P10763472955733118982

noncomputable section

/-- A329647: Bitwise-XOR of exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

Offset 1, canonical program `A329647.P10763472955733118982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329647 (n : ℕ) : ℤ :=
  A329647.P10763472955733118982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334108.P4705030839322458186

`A331410(A122111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334108.P4705030839322458186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A122111 (n + 1)).toNat

end

end A334108.P4705030839322458186

noncomputable section

/-- A334108: a(n) = A331410(A122111(n)).

Offset 1, canonical program `A334108.P4705030839322458186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334108 (n : ℕ) : ℤ :=
  A334108.P4705030839322458186.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A334420.P13131574615811348760

`eq[A000005(n+1), A338170(n+1)]+1`
-/

namespace A334420.P13131574615811348760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A334420.P13131574615811348760

noncomputable section

/-- A334420: Numbers m such that sigma(d)/tau(d) is an integer for all divisors d of m.

Offset 1, canonical program `A334420.P13131574615811348760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334420 (n : ℕ) : ℤ :=
  (A334420.P13131574615811348760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336119.P9236070841189039861

`lt[0, A335909(n+1)]+1`
-/

namespace A336119.P9236070841189039861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336119.P9236070841189039861

noncomputable section

/-- A336119: Numbers k such that A122111(k) [the conjugated prime factorization of k] is a square or twice a square.

Offset 1, canonical program `A336119.P9236070841189039861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. -/
def A336119 (n : ℕ) : ℤ :=
  (A336119.P9236070841189039861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. -/
def A336119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337288.P14799538653772618557

`A095279(Δ[n²])-1`
-/

namespace A337288.P14799538653772618557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095279 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A337288.P14799538653772618557

noncomputable section

/-- A337288: Numbers k such that k is in A095096 and k+1 is in A020899.

Offset 1, canonical program `A337288.P14799538653772618557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337288 (n : ℕ) : ℤ :=
  A337288.P14799538653772618557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337289.P989732119151109843

`A095279(2*(n+1))-1`
-/

namespace A337289.P989732119151109843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095279 (2 * (n + 1)) - 1

end

end A337289.P989732119151109843

noncomputable section

/-- A337289: Numbers k such that k+1 is in A095096 and k is in A020899.

Offset 1, canonical program `A337289.P989732119151109843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337289 (n : ℕ) : ℤ :=
  A337289.P989732119151109843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340075.P18306248190705191275

`A000265(A340072(n+1))`
-/

namespace A340075.P18306248190705191275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340072 (n + 1)).toNat

end

end A340075.P18306248190705191275

noncomputable section

/-- A340075: The odd part of A340072(n).

Offset 1, canonical program `A340075.P18306248190705191275`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340075 (n : ℕ) : ℤ :=
  A340075.P18306248190705191275.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340077.P4965275238882389020

`record[A000265(A339879(n+1))]`
-/

namespace A340077.P4965275238882389020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A339879 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340077.P4965275238882389020

noncomputable section

/-- A340077: Odd numbers k for which k-1 is a multiple of A053575(k) [the odd part of phi(k)].

Offset 1, canonical program `A340077.P4965275238882389020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9673 terms. -/
def A340077 (n : ℕ) : ℤ :=
  A340077.P4965275238882389020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9673 terms. -/
def A340077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342004.P4218786891331753066

`Δ[fp[A328320(n+1)]]`
-/

namespace A342004.P4218786891331753066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328320 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A342004.P4218786891331753066

noncomputable section

/-- A342004: a(n) = 1 if the maximal exponent in the prime factorization of the arithmetic derivative of n (A003415) is less than the maximal exponent in n, otherwise 0. a(1) = 1 by convention.

Offset 1, canonical program `A342004.P4218786891331753066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342004 (n : ℕ) : ℤ :=
  A342004.P4218786891331753066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342090.P2855243070632896022

`eq[1, A369070(n+1)]+1`
-/

namespace A342090.P2855243070632896022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342090.P2855243070632896022

noncomputable section

/-- A342090: Numbers with at least one prime power p^e in their prime factorization such that p|e.

Offset 1, canonical program `A342090.P2855243070632896022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9412 terms. -/
def A342090 (n : ℕ) : ℤ :=
  (A342090.P2855243070632896022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9412 terms. -/
def A342090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344592.P9143665694526069296

`gcd(A324886(n+1), A329047(n+1))`
-/

namespace A344592.P9143665694526069296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324886 (n + 1)) (A329047 (n + 1))

end

end A344592.P9143665694526069296

noncomputable section

/-- A344592: a(n) = A003557(A276086(A108951(n))).

Offset 1, canonical program `A344592.P9143665694526069296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344592 (n : ℕ) : ℤ :=
  (A344592.P9143665694526069296.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344592.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345043.P6507924935837030801

`A344998(n+1)-A344999(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345043.P6507924935837030801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344998 (n + 1) - A344999 (n + 1)

end

end A345043.P6507924935837030801

noncomputable section

/-- A345043: a(n) = A344998(n) - A344999(n).

Offset 1, canonical program `A345043.P6507924935837030801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345043 (n : ℕ) : ℤ :=
  A345043.P6507924935837030801.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345941.P4597041121172982434

`gcd(n+1, A329044(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345941.P4597041121172982434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A329044 (n + 1))

end

end A345941.P4597041121172982434

noncomputable section

/-- A345941: a(n) = gcd(n, A329044(n)).

Offset 1, canonical program `A345941.P4597041121172982434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345941 (n : ℕ) : ℤ :=
  (A345941.P4597041121172982434.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346095.P11800774512252908975

`gcd(A324886(n+1), A329044(n+1))`
-/

namespace A346095.P11800774512252908975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324886 (n + 1)) (A329044 (n + 1))

end

end A346095.P11800774512252908975

noncomputable section

/-- A346095: a(n) = gcd(A324886(n), A064989(A324886(n))).

Offset 1, canonical program `A346095.P11800774512252908975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346095 (n : ℕ) : ℤ :=
  (A346095.P11800774512252908975.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346095.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346098.P6814430864604137903

`A064989(A346096(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346098.P6814430864604137903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A346096 (n + 1)).toNat

end

end A346098.P6814430864604137903

noncomputable section

/-- A346098: a(n) = A064989(A346096(n)) = A064989(A319626(A324886(n))).

Offset 1, canonical program `A346098.P6814430864604137903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346098 (n : ℕ) : ℤ :=
  A346098.P6814430864604137903.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346098.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346106.P17277489529631994644

`A108951(A346096(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346106.P17277489529631994644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A346096 (n + 1)).toNat

end

end A346106.P17277489529631994644

noncomputable section

/-- A346106: a(n) = A108951(A346096(n)), where A346096(n) gives the numerator of the primorial deflation of A276086(A108951(n)).

Offset 1, canonical program `A346106.P17277489529631994644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346106 (n : ℕ) : ℤ :=
  A346106.P17277489529631994644.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346107.P17850479657335917061

`A108951(A346097(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346107.P17850479657335917061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A346097 (n + 1)).toNat

end

end A346107.P17850479657335917061

noncomputable section

/-- A346107: a(n) = A108951(A346097(n)), where A346097(n) gives the denominator of the primorial deflation of A276086(A108951(n)).

Offset 1, canonical program `A346107.P17850479657335917061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346107 (n : ℕ) : ℤ :=
  A346107.P17850479657335917061.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346245.P11917362753608670902

`∩[A087248(n+1), A226944(n+1)]`
-/

namespace A346245.P11917362753608670902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346245.P11917362753608670902

noncomputable section

/-- A346245: Numbers k for which A003415(k) > k*A003557(k).

Offset 1, canonical program `A346245.P11917362753608670902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. -/
def A346245 (n : ℕ) : ℤ :=
  (A346245.P11917362753608670902.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. -/
def A346245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346701.P641710961673687714

`(1+n)/A329888(1+n)`
-/

namespace A346701.P641710961673687714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / (A329888 (1 + n) : ℚ)

end

end A346701.P641710961673687714

noncomputable section

/-- A346701: Heinz number of the odd bisection (odd-indexed parts) of the integer partition with Heinz number n.

Offset 1, canonical program `A346701.P641710961673687714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346701 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346701.P641710961673687714.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348004.P18429899120561536202

`eq[0, A348264(n+1)]+1`
-/

namespace A348004.P18429899120561536202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348004.P18429899120561536202

noncomputable section

/-- A348004: Numbers whose unitary divisors have distinct values of the unitary totient function uphi (A047994).

Offset 1, canonical program `A348004.P18429899120561536202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7386 terms. -/
def A348004 (n : ℕ) : ℤ :=
  (A348004.P18429899120561536202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7386 terms. -/
def A348004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350115.P2733816776076542397

`filter[A072989(n+1), A353798(#)]`
-/

namespace A350115.P2733816776076542397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A350115.P2733816776076542397

noncomputable section

/-- A350115: Numbers p^2*q, p<q primes such that p^2 divides q-1.

Offset 1, canonical program `A350115.P2733816776076542397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A350115 (n : ℕ) : ℤ :=
  A350115.P2733816776076542397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A350115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350344.P15973079561338052148

`filter[A050384(1+n), A355816(#)]`
-/

namespace A350344.P15973079561338052148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A350344.P15973079561338052148

noncomputable section

/-- A350344: Composite k such that k^2 is an abelian order.

Offset 1, canonical program `A350344.P15973079561338052148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7069 terms. -/
def A350344 (n : ℕ) : ℤ :=
  A350344.P15973079561338052148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7069 terms. -/
def A350344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350375.P15315086322075171755

`∩[A200521(n+1), A338539(n+1)]`
-/

namespace A350375.P15315086322075171755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350375.P15315086322075171755

noncomputable section

/-- A350375: Numbers with exactly 8 semiprime divisors.

Offset 1, canonical program `A350375.P15315086322075171755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. -/
def A350375 (n : ℕ) : ℤ :=
  (A350375.P15315086322075171755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. -/
def A350375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351076.P15019775653401421999

`lt[-1, A351074(n+1)]+1`
-/

namespace A351076.P15019775653401421999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A351076.P15019775653401421999

noncomputable section

/-- A351076: Numbers k such that the maximal exponent in the prime factorization of A327860(k) is greater than or equal to A051903(k), the maximal exponent in the prime factorization of k.

Offset 1, canonical program `A351076.P15019775653401421999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351076 (n : ℕ) : ℤ :=
  (A351076.P15019775653401421999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351398.P6339174443303266685

`filter[A140826(1+n), A245656(#)]`
-/

namespace A351398.P6339174443303266685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A351398.P6339174443303266685

noncomputable section

/-- A351398: Numbers k >= 3 such that the arithmetic mean of the divisors of k AND the arithmetic mean of the nondivisors of k are integers.

Offset 1, canonical program `A351398.P6339174443303266685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A351398 (n : ℕ) : ℤ :=
  A351398.P6339174443303266685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A351398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351847.P65692245667964284

`A008472(A078174(n+1))/A001221(A078174(n+1))`
-/

namespace A351847.P65692245667964284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (A078174 (n + 1)).toNat : ℚ) / (A001221 (A078174 (n + 1)).toNat : ℚ)

end

end A351847.P65692245667964284

noncomputable section

/-- A351847: Arithmetic mean of the distinct prime factors of A078174(n).

Offset 1, canonical program `A351847.P65692245667964284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351847 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351847.P65692245667964284.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351958.P6390232434387240718

`lt[0, A351956(n+1)]+1`
-/

namespace A351958.P6390232434387240718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351956 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A351958.P6390232434387240718

noncomputable section

/-- A351958: a(1) = 1, followed by numbers k for which the primorial inflation of k is equal to x * p#, where p# is the primorial (A034386) of some prime p, and 1 <= x < p.

Offset 1, canonical program `A351958.P6390232434387240718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351958 (n : ℕ) : ℤ :=
  (A351958.P6390232434387240718.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353328.P6617229278146475105

`A353351(n+1)-A353329(n+1)`
-/

namespace A353328.P6617229278146475105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) - A353329 (n + 1)

end

end A353328.P6617229278146475105

noncomputable section

/-- A353328: Number of divisors d of n for which A332823(d) is positive (+1).

Offset 1, canonical program `A353328.P6617229278146475105`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353328 (n : ℕ) : ℤ :=
  A353328.P6617229278146475105.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353507.P469122410406772704

`val(A076078(A181819(n+1)), 2)`
-/

namespace A353507.P469122410406772704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A076078 (A181819 (n + 1)).toNat).toNat 2

end

end A353507.P469122410406772704

noncomputable section

/-- A353507: Product of multiplicities of the prime exponents (signature) of n; a(1) = 0.

Offset 1, canonical program `A353507.P469122410406772704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353507 (n : ℕ) : ℤ :=
  (A353507.P469122410406772704.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353512.P2824332938184460404

`n*A329028(n)`
-/

namespace A353512.P2824332938184460404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A329028 n

end

end A353512.P2824332938184460404

noncomputable section

/-- A353512: n multiplied by the least nonzero digit missing from its primorial base representation.

Offset 0, canonical program `A353512.P2824332938184460404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353512 (n : ℕ) : ℤ :=
  A353512.P2824332938184460404.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353570.P10672845591511427550

`char[eq[A003963(n+1), A329382(n+1)]]`
-/

namespace A353570.P10672845591511427550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353570.P10672845591511427550

noncomputable section

/-- A353570: a(n) = 1 if A003963(A122111(n)) is equal to A003963(n), and 0 otherwise.

Offset 1, canonical program `A353570.P10672845591511427550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9632 terms. -/
def A353570 (n : ℕ) : ℤ :=
  (A353570.P10672845591511427550.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9632 terms. -/
def A353570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353639.P13459626096142204888

`char[eq[A266437(n), A353638(n+1)]]`
-/

namespace A353639.P13459626096142204888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353639.P13459626096142204888

noncomputable section

/-- A353639: a(n) = 1 if n is odd and A064989(sigma(n)) > A064989(n), otherwise 0. Here A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A353639.P13459626096142204888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9925 terms. -/
def A353639 (n : ℕ) : ℤ :=
  (A353639.P13459626096142204888.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9925 terms. -/
def A353639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353766.P50667029001751819

`floor(1/A353762(1+n))`
-/

namespace A353766.P50667029001751819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A353762 (1 + n) : ℚ)⌋

end

end A353766.P50667029001751819

noncomputable section

/-- A353766: a(n) = 1 if A353749(n) divides A353749(sigma(n)), and 0 otherwise. Here A353749(k) = phi(k) * A064989(k), and A064989 shifts the prime factorization one step towards lower primes.

Offset 1, canonical program `A353766.P50667029001751819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353766 (n : ℕ) : ℤ :=
  A353766.P50667029001751819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358218.P1133235494019200867

`A001222(A328478(n+1))`
-/

namespace A358218.P1133235494019200867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328478 (n + 1)).toNat

end

end A358218.P1133235494019200867

noncomputable section

/-- A358218: Number of prime factors (with multiplicity) in A328478(n).

Offset 1, canonical program `A358218.P1133235494019200867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358218 (n : ℕ) : ℤ :=
  A358218.P1133235494019200867.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358218.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359551.P4733184215772970261

`∑{d}[n+1, A007427(#)*A365632((n+1)/#)]`
-/

namespace A359551.P4733184215772970261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A365632 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359551.P4733184215772970261

noncomputable section

/-- A359551: Dirichlet inverse of A359550, which is multiplicative sequence with a(p^e) = 1 if e < p, otherwise 0.

Offset 1, canonical program `A359551.P4733184215772970261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359551 (n : ℕ) : ℤ :=
  A359551.P4733184215772970261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362707.P3299096256826437275

`(n+1)*A351112(n+1)-A351113(n+1)`
-/

namespace A362707.P3299096256826437275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351112 (n + 1) - A351113 (n + 1)

end

end A362707.P3299096256826437275

noncomputable section

/-- A362707: a(n) = Sum_{d|n, phi(d)|sigma(d)} (n-d).

Offset 1, canonical program `A362707.P3299096256826437275`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362707 (n : ℕ) : ℤ :=
  A362707.P3299096256826437275.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365864.P18209421037915333050

`∩[A283050(n+1)-1, A283050(n+1)]`
-/

namespace A365864.P18209421037915333050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365864.P18209421037915333050

noncomputable section

/-- A365864: Numbers k such that k and k+1 are both divisible by the square of their least prime factor.

Offset 1, canonical program `A365864.P18209421037915333050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A365864 (n : ℕ) : ℤ :=
  (A365864.P18209421037915333050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A365864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365889.P4165822453483642399

`filter[A036552(2*n+1), A369070(#)]`
-/

namespace A365889.P4165822453483642399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036552 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A365889.P4165822453483642399

noncomputable section

/-- A365889: Numbers k whose least prime divisor divides its exponent in the prime factorization of k.

Offset 1, canonical program `A365889.P4165822453483642399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1347 terms. -/
def A365889 (n : ℕ) : ℤ :=
  A365889.P4165822453483642399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1347 terms. -/
def A365889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366445.P4284588940328719007

`A054522(n+1)*A129691(n+1)`
-/

namespace A366445.P4284588940328719007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A129691 (n + 1)

end

end A366445.P4284588940328719007

noncomputable section

/-- A366445: Triangle read by rows: T(n,k) = A023900(n/k)*phi(k) if k divides n, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A366445.P4284588940328719007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366445 (n : ℕ) : ℤ :=
  A366445.P4284588940328719007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367734.P9356512376447318104

`eq[1, A351113(1+n)]+1`
-/

namespace A367734.P9356512376447318104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351113 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A367734.P9356512376447318104

noncomputable section

/-- A367734: Numbers that have no balanced divisors except for 1.

Offset 1, canonical program `A367734.P9356512376447318104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6470 terms. -/
def A367734 (n : ℕ) : ℤ :=
  (A367734.P9356512376447318104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6470 terms. -/
def A367734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367801.P16326813485802835634

`∩[A268335(1+n), A270428(n+1)]`
-/

namespace A367801.P16326813485802835634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367801.P16326813485802835634

noncomputable section

/-- A367801: Numbers that are both exponentially odd (A268335) and exponentially odious (A270428).

Offset 1, canonical program `A367801.P16326813485802835634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6972 terms. -/
def A367801 (n : ℕ) : ℤ :=
  (A367801.P16326813485802835634.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6972 terms. -/
def A367801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368711.P6715505457637909973

`A051903(A268335(n+1))`
-/

namespace A368711.P6715505457637909973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A268335 (n + 1)).toNat

end

end A368711.P6715505457637909973

noncomputable section

/-- A368711: The maximal exponent in the prime factorization of the exponentially odd numbers (A268335).

Offset 1, canonical program `A368711.P6715505457637909973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368711 (n : ℕ) : ℤ :=
  A368711.P6715505457637909973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368819.P7430176587899777853

`A351116(n+1)-A351113(n+1)`
-/

namespace A368819.P7430176587899777853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351116 (n + 1) - A351113 (n + 1)

end

end A368819.P7430176587899777853

noncomputable section

/-- A368819: Sum of the balanced numbers less than n that do not divide n.

Offset 1, canonical program `A368819.P7430176587899777853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368819 (n : ℕ) : ℤ :=
  A368819.P7430176587899777853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369637.P15149140794816604274

`-floor(A351097(n+1)/(n+1))`
-/

namespace A369637.P15149140794816604274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(A351097 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A369637.P15149140794816604274

noncomputable section

/-- A369637: a(n) = 1 if the maximal digit in the primorial base representation of n' is less than the maximal exponent in the prime factorization of n, where n' stands for the arithmetic derivative of n, A003415.

Offset 1, canonical program `A369637.P15149140794816604274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369637 (n : ℕ) : ℤ :=
  A369637.P15149140794816604274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369660.P11962281434868844871

`A369965(A003415(n))`
-/

namespace A369660.P11962281434868844871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (A003415 n).toNat

end

end A369660.P11962281434868844871

noncomputable section

/-- A369660: a(n) = 1 if n' is of the form 4k+2, and n' has an even number of prime factors, otherwise a(n) = 0, where n' stands for the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369660.P11962281434868844871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369660 (n : ℕ) : ℤ :=
  A369660.P11962281434868844871.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371086.P1671055704542211525

`filter[A013929(1+n), A371087(#)]`
-/

namespace A371086.P1671055704542211525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P1671055704542211525

noncomputable section

/-- A371086: Nonsquarefree numbers k such that A003557(k) divides A276086(k), where A003557(k) is k divided by its largest squarefree divisor, and A276086 is the primorial base exp-function.

Offset 1, canonical program `A371086.P1671055704542211525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7279 terms. -/
def A371086 (n : ℕ) : ℤ :=
  A371086.P1671055704542211525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7279 terms. -/
def A371086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373144.P189007551112600238

`record[(1+n)*A373143(n+1)]`
-/

namespace A373144.P189007551112600238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A373143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373144.P189007551112600238

noncomputable section

/-- A373144: Numbers k such that both A003415(k) and A276085(k) are multiples of 3, where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373144.P189007551112600238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373144 (n : ℕ) : ℤ :=
  A373144.P189007551112600238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373263.P11936545737331509118

`1-(A372573(n+1)+A373260(n+1))`
-/

namespace A373263.P11936545737331509118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A372573 (n + 1) + A373260 (n + 1))

end

end A373263.P11936545737331509118

noncomputable section

/-- A373263: a(n) = 1 if A276085(n) == -1 (mod 3), otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373263.P11936545737331509118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373263 (n : ℕ) : ℤ :=
  A373263.P11936545737331509118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373372.P1234123365246061466

`A373371(n+1)*A372573(n+1)`
-/

namespace A373372.P1234123365246061466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (n + 1) * A372573 (n + 1)

end

end A373372.P1234123365246061466

noncomputable section

/-- A373372: a(n) = 1 if A001414(n) and A276085(n) are both multiples of 3, otherwise 0, where A001414 is the sum of prime factors with repetition and A276085 is the primorial base log-function.

Offset 1, canonical program `A373372.P1234123365246061466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373372 (n : ℕ) : ℤ :=
  A373372.P1234123365246061466.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373745.P15207298630489066722

`A374176(A000040(n+1))+1`
-/

namespace A373745.P15207298630489066722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374176 (A000040 (n + 1)).toNat + 1

end

end A373745.P15207298630489066722

noncomputable section

/-- A373745: Maximum length of a run of alternating bits in the base-2 representation of prime(n).

Offset 1, canonical program `A373745.P15207298630489066722`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373745 (n : ℕ) : ℤ :=
  A373745.P15207298630489066722.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373745.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374044.P3510454366840386907

`filter[A374042(n+1), A187074(#)]`
-/

namespace A374044.P3510454366840386907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A374044.P3510454366840386907

noncomputable section

/-- A374044: Non-multiples of 3 whose 2-adic valuation is a multiple of 3.

Offset 1, canonical program `A374044.P3510454366840386907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374044 (n : ℕ) : ℤ :=
  A374044.P3510454366840386907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374061.P5382329912682957195

`floor(A035185(1+n)/2)`
-/

namespace A374061.P5382329912682957195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035185 (1 + n) : ℚ) / 2⌋

end

end A374061.P5382329912682957195

noncomputable section

/-- A374061: Number of solutions to a^2 + n = 2 * b^2 with 0 < a < b.

Offset 1, canonical program `A374061.P5382329912682957195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061 (n : ℕ) : ℤ :=
  A374061.P5382329912682957195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374108.P14839641477557879055

`filter[A373586(n+1), A152822(#)]`
-/

namespace A374108.P14839641477557879055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A374108.P14839641477557879055

noncomputable section

/-- A374108: Numbers k such that A113177(k) and A328845(k) are both even, where A113177 is fully additive with a(p) = Fibonacci(p) and A328845 is the first Fibonacci-based variant of the arithmetic derivative.

Offset 1, canonical program `A374108.P14839641477557879055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7256 terms. -/
def A374108 (n : ℕ) : ℤ :=
  A374108.P14839641477557879055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7256 terms. -/
def A374108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374120.P17872071964718822810

`record[(n+1)*A374119(n+1)]`
-/

namespace A374120.P17872071964718822810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A374119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374120.P17872071964718822810

noncomputable section

/-- A374120: Numbers k such that A113177(k) and A276085(k) are both multiples of 3, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374120.P17872071964718822810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374120 (n : ℕ) : ℤ :=
  A374120.P17872071964718822810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376928.P6288515891274785447

`A329900(∏{p}[1+n, #])`
-/

namespace A376928.P6288515891274785447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A376928.P6288515891274785447

noncomputable section

/-- A376928: The largest noncomposite number k such that n is divisible by all the primes that do not exceed k.

Offset 1, canonical program `A376928.P6288515891274785447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376928 (n : ℕ) : ℤ :=
  A376928.P6288515891274785447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381033.P17525021184714570549

`A001065(gcd(n, A381032(n)))`
-/

namespace A381033.P17525021184714570549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (Int.gcd (n : ℤ) (A381032 n))

end

end A381033.P17525021184714570549

noncomputable section

/-- A381033: a(n) = 1 if there is a digit > 1 in the primorial base expansion of n, and the corresponding radix prime of the least significant such digit is not a prime factor of n, otherwise 0.

Offset 0, canonical program `A381033.P17525021184714570549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381033 (n : ℕ) : ℤ :=
  A381033.P17525021184714570549.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381312.P9121051860855082325

`filter[A377844(n+1), A359466(#)]`
-/

namespace A381312.P9121051860855082325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381312.P9121051860855082325

noncomputable section

/-- A381312: Numbers whose powerful part (A057521) is a power of a prime with an odd exponent >= 3 (A056824).

Offset 1, canonical program `A381312.P9121051860855082325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8129 terms. -/
def A381312 (n : ℕ) : ℤ :=
  A381312.P9121051860855082325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8129 terms. -/
def A381312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384915.P5316216616895226028

`∑{d}[n+1, A359552(#)*A384916((n+1)/#)]`
-/

namespace A384915.P5316216616895226028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359552 d * A384916 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384915.P5316216616895226028

noncomputable section

/-- A384915: The number of unordered factorizations of n into powers of primes of the form p^e where p is prime and 0 <= e <= p (A074583).

Offset 1, canonical program `A384915.P5316216616895226028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384915 (n : ℕ) : ℤ :=
  A384915.P5316216616895226028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385538.P4395357012811371764

`A184859(n+2)-A184859(n+1)`
-/

namespace A385538.P4395357012811371764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184859 (n + 2) - A184859 (n + 1)

end

end A385538.P4395357012811371764

noncomputable section

/-- A385538: First differences of A184859.

Offset 1, canonical program `A385538.P4395357012811371764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184859, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385538 (n : ℕ) : ℤ :=
  A385538.P4395357012811371764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184859, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386573.P15041125759014412610

`A351113(∏{p}[1+n, #])`
-/

namespace A386573.P15041125759014412610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351113 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A386573.P15041125759014412610

noncomputable section

/-- A386573: Sum of the squarefree balanced divisors of n.

Offset 1, canonical program `A386573.P15041125759014412610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386573 (n : ℕ) : ℤ :=
  A386573.P15041125759014412610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386574.P1108007266045445128

`A351112(∏{p}[n+1, #])`
-/

namespace A386574.P1108007266045445128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A386574.P1108007266045445128

noncomputable section

/-- A386574: Number of squarefree balanced divisors of n.

Offset 1, canonical program `A386574.P1108007266045445128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386574 (n : ℕ) : ℤ :=
  A386574.P1108007266045445128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386589.P14364682863583384821

`A000005(n+1)+A351113(n+1)-A351112(n+1)`
-/

namespace A386589.P14364682863583384821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A351113 (n + 1) - A351112 (n + 1)

end

end A386589.P14364682863583384821

noncomputable section

/-- A386589: a(n) = Sum_{d|n} d^c(d), where c = A351114.

Offset 1, canonical program `A386589.P14364682863583384821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386589 (n : ℕ) : ℤ :=
  A386589.P14364682863583384821.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386589.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386591.P14499915022508730926

`A000005(n+1)-A351112(n+1)`
-/

namespace A386591.P14499915022508730926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A351112 (n + 1)

end

end A386591.P14499915022508730926

noncomputable section

/-- A386591: Number of divisors of n that are not balanced numbers.

Offset 1, canonical program `A386591.P14499915022508730926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386591 (n : ℕ) : ℤ :=
  A386591.P14499915022508730926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386592.P13459167421288589562

`A000203(n+1)-A351113(n+1)`
-/

namespace A386592.P13459167421288589562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A351113 (n + 1)

end

end A386592.P13459167421288589562

noncomputable section

/-- A386592: Sum of the divisors of n that are not balanced numbers.

Offset 1, canonical program `A386592.P13459167421288589562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351113, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386592 (n : ℕ) : ℤ :=
  A386592.P13459167421288589562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351113, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389144.P17569700161974423594

`filter[A283050(n+1), A389905(#)]`
-/

namespace A389144.P17569700161974423594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A389144.P17569700161974423594

noncomputable section

/-- A389144: Weak numbers k such that lpf(k)^2 | k, where lpf(n) denotes the least prime factor of n (A020639).

Offset 1, canonical program `A389144.P17569700161974423594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9670 terms. -/
def A389144 (n : ℕ) : ℤ :=
  A389144.P17569700161974423594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9670 terms. -/
def A389144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389145.P10490325618083790379

`filter[A070003(1+n), A389905(#)]`
-/

namespace A389145.P10490325618083790379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A389145.P10490325618083790379

noncomputable section

/-- A389145: Weak numbers k such that gpf(k)^2 | k, where gpf(n) denotes the greatest prime factor of n (A006530).

Offset 1, canonical program `A389145.P10490325618083790379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 929 terms. -/
def A389145 (n : ℕ) : ℤ :=
  A389145.P10490325618083790379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 929 terms. -/
def A389145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390949.P13602810855896684034

`filter[A320632(n+1), A389905(#)]`
-/

namespace A390949.P13602810855896684034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A390949.P13602810855896684034

noncomputable section

/-- A390949: Nonsquarefree weak numbers that have more than 2 distinct prime factors.

Offset 1, canonical program `A390949.P13602810855896684034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390949 (n : ℕ) : ℤ :=
  A390949.P13602810855896684034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391428.P16960108032895023113

`A087248(n+1)²`
-/

namespace A391428.P16960108032895023113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1) ^ 2

end

end A391428.P16960108032895023113

noncomputable section

/-- A391428: Exponential abundant numbers that are squares of squarefree numbers.

Offset 1, canonical program `A391428.P16960108032895023113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391428 (n : ℕ) : ℤ :=
  A391428.P16960108032895023113.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391746.P1830056031143127677

`a(n-1)+A391747(n+1)` with `a(0)=1`
-/

namespace A391746.P1830056031143127677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A391747 (n + 1)

end

end A391746.P1830056031143127677

noncomputable section

/-- A391746: Number of terms of A391909 <= n.

Offset 1, canonical program `A391746.P1830056031143127677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391746 (n : ℕ) : ℤ :=
  A391746.P1830056031143127677.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392873.P17324125929529599337

`∩[A013929(n+1), A392867(n+1)]`
-/

namespace A392873.P17324125929529599337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392873.P17324125929529599337

noncomputable section

/-- A392873: Nonsquarefree numbers k such that A276086(A003415(k)) <= k, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

Offset 1, canonical program `A392873.P17324125929529599337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A392873 (n : ℕ) : ℤ :=
  (A392873.P17324125929529599337.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A392873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395058.P1627568837870512107

`A328478(A276085(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395058.P1627568837870512107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (A276085 (n + 2)).toNat

end

end A395058.P1627568837870512107

noncomputable section

/-- A395058: a(n) = A328478(A276085(n)).

Offset 2, canonical program `A395058.P1627568837870512107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, A328478, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395058 (n : ℕ) : ℤ :=
  A395058.P1627568837870512107.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, A328478, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398163.P15994787908437553073

`∩[A337050(n+1)-1, A337050(n+1)]`
-/

namespace A398163.P15994787908437553073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398163.P15994787908437553073

noncomputable section

/-- A398163: Numbers k such that neither k nor k+1 has an exponent that equals 2 in their prime factorization.

Offset 1, canonical program `A398163.P15994787908437553073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7285 terms. -/
def A398163 (n : ℕ) : ℤ :=
  (A398163.P15994787908437553073.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7285 terms. -/
def A398163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398787.P8559661131929552719

`∩[2*n, A398316(n+1)]`
-/

namespace A398787.P8559661131929552719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398787.P8559661131929552719

noncomputable section

/-- A398787: Even numbers m such that A001221(m) >= 3 and A001222(m) = A001221(m) + 1.

Offset 1, canonical program `A398787.P8559661131929552719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7440 terms. -/
def A398787 (n : ℕ) : ℤ :=
  (A398787.P8559661131929552719.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7440 terms. -/
def A398787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399090.P13526670085507445655

`A051903(A335275(n+1))`
-/

namespace A399090.P13526670085507445655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A335275 (n + 1)).toNat

end

end A399090.P13526670085507445655

noncomputable section

/-- A399090: The maximum exponent in the prime factorization of the numbers whose powerful part is a square (A335275).

Offset 1, canonical program `A399090.P13526670085507445655`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A335275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399090 (n : ℕ) : ℤ :=
  A399090.P13526670085507445655.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A335275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399092.P10321508231479955331

`A051903(A068781(n+1))`
-/

namespace A399092.P10321508231479955331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A068781 (n + 1)).toNat

end

end A399092.P10321508231479955331

noncomputable section

/-- A399092: The maximum exponent in the prime factorization of the nonsquarefree numbers k such that k+1 is also nonsquarefree.

Offset 1, canonical program `A399092.P10321508231479955331`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A068781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399092 (n : ℕ) : ℤ :=
  A399092.P10321508231479955331.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A068781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A402051.P8690979763279679617

`∪[A360723(n+1), A366761(n+1)]`
-/

namespace A402051.P8690979763279679617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A402051.P8690979763279679617

noncomputable section

/-- A402051: Numbers k such that d_3(k) is not a 3-smooth number, where d_3 = A007425 is the 3rd Piltz function.

Offset 1, canonical program `A402051.P8690979763279679617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A402051 (n : ℕ) : ℤ :=
  (A402051.P8690979763279679617.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A402051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284382.P2292393080625895572

`A072961(n+1)+A032834(n+1)`
-/

namespace A284382.P2292393080625895572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + A032834 (n + 1)

end

end A284382.P2292393080625895572

noncomputable section

/-- A284382: Numbers k with digits 5 and 9 only.

Offset 1, canonical program `A284382.P2292393080625895572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284382 (n : ℕ) : ℤ :=
  A284382.P2292393080625895572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284819.P16642204268135238418

`1+A284777(n+1)+n`
-/

namespace A284819.P16642204268135238418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A284777 (n + 1) + (n : ℤ)

end

end A284819.P16642204268135238418

noncomputable section

/-- A284819: Positions of 1 in A284817.

Offset 1, canonical program `A284819.P16642204268135238418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284819 (n : ℕ) : ℤ :=
  A284819.P16642204268135238418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285307.P6102817317264833756

`A284777(1+n)-1`
-/

namespace A285307.P6102817317264833756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (1 + n) - 1

end

end A285307.P6102817317264833756

noncomputable section

/-- A285307: Positions of 1 in A285305; complement of A285306.

Offset 1, canonical program `A285307.P6102817317264833756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285307 (n : ℕ) : ℤ :=
  A285307.P6102817317264833756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285334.P1438289663066169180

`A046523(A243505(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285334.P1438289663066169180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A243505 (n + 1)).toNat

end

end A285334.P1438289663066169180

noncomputable section

/-- A285334: a(n) = A046523(A243505(n)).

Offset 1, canonical program `A285334.P1438289663066169180`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285334 (n : ℕ) : ℤ :=
  A285334.P1438289663066169180.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285712.P10989090546038180415

`A048673(A252463(A064216(n+1)))%A254049(n+1)`
-/

namespace A285712.P10989090546038180415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (A252463 (A064216 (n + 1)).toNat).toNat) (A254049 (n + 1))

end

end A285712.P10989090546038180415

noncomputable section

/-- A285712: a(1) = 0, and for n > 1, if n = 3k-1, then a(n) = k, otherwise a(n) = (A064216(n)+1)/2.

Offset 1, canonical program `A285712.P10989090546038180415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A285712 (n : ℕ) : ℤ :=
  A285712.P10989090546038180415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A285712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285727.P1152977567223031593

`A157928(n)*A252463(A252463(n+1))`
-/

namespace A285727.P1152977567223031593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A252463 (A252463 (n + 1)).toNat

end

end A285727.P1152977567223031593

noncomputable section

/-- A285727: a(1) = a(2) = 0, and for n > 2, a(n) = A252463(A252463(n)).

Offset 1, canonical program `A285727.P1152977567223031593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A285727 (n : ℕ) : ℤ :=
  A285727.P1152977567223031593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A285727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285729.P10022555594110057213

`1/2*(2+(A032742(n+1)+A046523(n+1))²-A032742(n+1)-3*A046523(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285729.P10022555594110057213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A032742 (n + 1) + A046523 (n + 1)) ^ 2 - A032742 (n + 1) - 3 * A046523 (n + 1) : ℚ)

end

end A285729.P10022555594110057213

noncomputable section

/-- A285729: a(n) = (1/2)*(2 + ((A032742(n)+A046523(n))^2) - A032742(n) - 3*A046523(n)), where A032742(n) is the largest proper divisor of n, and A046523(n) is the smallest number with same prime signature as n.

Offset 1, canonical program `A285729.P10022555594110057213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285729 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285729.P10022555594110057213.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285729.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286034.P4855399632042941699

`(2+(A046523(n+1)+A161942(n+1))²-A046523(n+1)-3*A161942(n+1))/2`
-/

namespace A286034.P4855399632042941699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A046523 (n + 1) + A161942 (n + 1)) ^ 2 - A046523 (n + 1) - 3 * A161942 (n + 1) : ℚ) / 2

end

end A286034.P4855399632042941699

noncomputable section

/-- A286034: Compound filter: a(n) = P(A046523(n), A161942(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286034.P4855399632042941699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286034 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286034.P4855399632042941699.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286142.P14730922497355915309

`1/2*(2+(A257993(n+1)+A046523(n+1))²-A257993(n+1)-3*A046523(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286142.P14730922497355915309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A257993 (n + 1) + A046523 (n + 1)) ^ 2 - A257993 (n + 1) - 3 * A046523 (n + 1) : ℚ)

end

end A286142.P14730922497355915309

noncomputable section

/-- A286142: a(n) = (1/2)*(2 + ((A257993(n)+A046523(n))^2) - A257993(n) - 3*A046523(n)), where A257993(n) is the index of the least prime not dividing n, and A046523(n) is the smallest number with same prime signature as n.

Offset 1, canonical program `A286142.P14730922497355915309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286142 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286142.P14730922497355915309.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286149.P9625386761437608133

`1/2*(2+(A046523(n+1)+A109395(n+1))²-A046523(n+1)-3*A109395(n+1))`
-/

namespace A286149.P9625386761437608133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A046523 (n + 1) + A109395 (n + 1)) ^ 2 - A046523 (n + 1) - 3 * A109395 (n + 1) : ℚ)

end

end A286149.P9625386761437608133

noncomputable section

/-- A286149: Compound filter: a(n) = T(A046523(n), A109395(n)), where T(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286149.P9625386761437608133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286149 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286149.P9625386761437608133.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286152.P7471709949904273220

`(2+(A051953(n+1)+A046523(n+1))²-A051953(n+1)-3*A046523(n+1))/2`
-/

namespace A286152.P7471709949904273220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A051953 (n + 1) + A046523 (n + 1)) ^ 2 - A051953 (n + 1) - 3 * A046523 (n + 1) : ℚ) / 2

end

end A286152.P7471709949904273220

noncomputable section

/-- A286152: a(n) = (1/2)*(2 + ((A051953(n)+A046523(n))^2) - A051953(n) - 3*A046523(n)), where A051953(n) is the cototient of n = n-phi(n), and A046523(n) is the smallest number with same prime signature as n.

Offset 1, canonical program `A286152.P7471709949904273220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286152 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286152.P7471709949904273220.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286160.P11432904213077907586

`(2+(A000010(n+1)+A046523(n+1))²-A000010(n+1)-3*A046523(n+1))/2`
-/

namespace A286160.P11432904213077907586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A000010 (n + 1) + A046523 (n + 1)) ^ 2 - A000010 (n + 1) - 3 * A046523 (n + 1) : ℚ) / 2

end

end A286160.P11432904213077907586

noncomputable section

/-- A286160: a(n) = (1/2)*(2 + ((A000010(n)+A046523(n))^2) - A000010(n) - 3*A046523(n)), where A046523(n) is the smallest number with same prime signature as n, and A000010 is the Euler totient function.

Offset 1, canonical program `A286160.P11432904213077907586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286160 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286160.P11432904213077907586.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286160.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286161.P17564105684646445376

`(2+(A001511(n+1)+A046523(n+1))²-A001511(n+1)-3*A046523(n+1))/2`
-/

namespace A286161.P17564105684646445376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A001511 (n + 1) + A046523 (n + 1)) ^ 2 - A001511 (n + 1) - 3 * A046523 (n + 1) : ℚ) / 2

end

end A286161.P17564105684646445376

noncomputable section

/-- A286161: a(n) = (1/2)*(2 + ((A001511(n)+A046523(n))^2) - A001511(n) - 3*A046523(n)), where A046523(n) is the smallest number with same prime signature as n, and A001511(n) is the ruler function, the exponent of the highest power of 2 dividing 2n.

Offset 1, canonical program `A286161.P17564105684646445376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286161 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286161.P17564105684646445376.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286164.P13100673182693163948

`(2+(A055396(n+1)+A046523(n+1))²-A055396(n+1)-3*A046523(n+1))/2`
-/

namespace A286164.P13100673182693163948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A055396 (n + 1) + A046523 (n + 1)) ^ 2 - A055396 (n + 1) - 3 * A046523 (n + 1) : ℚ) / 2

end

end A286164.P13100673182693163948

noncomputable section

/-- A286164: Compound filter: a(n) = T(A055396(n), A046523(n)), where T(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286164.P13100673182693163948`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286164 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286164.P13100673182693163948.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286251.P12352142356083972872

`(2+(A001511(n+2)+A046523(n+1))²-A001511(n+2)-3*A046523(n+1))/2`
-/

namespace A286251.P12352142356083972872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A001511 (n + 2) + A046523 (n + 1)) ^ 2 - A001511 (n + 2) - 3 * A046523 (n + 1) : ℚ) / 2

end

end A286251.P12352142356083972872

noncomputable section

/-- A286251: Compound filter: a(n) = P(A001511(1+n), A046523(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286251.P12352142356083972872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286251.P12352142356083972872.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286255.P2645164649227633117

`(2+(A046523(n+1)+A046523(n+2))²-A046523(n+1)-3*A046523(n+2))/2`
-/

namespace A286255.P2645164649227633117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A046523 (n + 1) + A046523 (n + 2)) ^ 2 - A046523 (n + 1) - 3 * A046523 (n + 2) : ℚ) / 2

end

end A286255.P2645164649227633117

noncomputable section

/-- A286255: Compound filter: a(n) = P(A046523(n), A046523(1+n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286255.P2645164649227633117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286255 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286255.P2645164649227633117.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286255.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286256.P12732133430992199010

`(2+(A046523(n+1)+A046523(n+3))²-A046523(n+1)-3*A046523(n+3))/2`
-/

namespace A286256.P12732133430992199010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A046523 (n + 1) + A046523 (n + 3)) ^ 2 - A046523 (n + 1) - 3 * A046523 (n + 3) : ℚ) / 2

end

end A286256.P12732133430992199010

noncomputable section

/-- A286256: Compound filter: a(n) = P(A046523(n), A046523(2+n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286256.P12732133430992199010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286256 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286256.P12732133430992199010.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286256.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286258.P9609779550807971294

`1/2*(2+(A046523(n+1)+A046523(2*(n+1)+1))²-A046523(n+1)-3*A046523(2*(n+1)+1))`
-/

namespace A286258.P9609779550807971294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A046523 (n + 1) + A046523 (2 * (n + 1) + 1)) ^ 2 - A046523 (n + 1) - 3 * A046523 (2 * (n + 1) + 1) : ℚ)

end

end A286258.P9609779550807971294

noncomputable section

/-- A286258: Compound filter: a(n) = P(A046523(n), A046523(2n+1)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286258.P9609779550807971294`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286258 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286258.P9609779550807971294.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286356.P7147624191511772177

`(2+(A061395(n+1)+A046523(n+1))²-A061395(n+1)-3*A046523(n+1))/2`
-/

namespace A286356.P7147624191511772177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A061395 (n + 1) + A046523 (n + 1)) ^ 2 - A061395 (n + 1) - 3 * A046523 (n + 1) : ℚ) / 2

end

end A286356.P7147624191511772177

noncomputable section

/-- A286356: Compound filter: a(n) = P(A061395(n), A046523(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286356.P7147624191511772177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286356 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286356.P7147624191511772177.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286356.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286360.P18149245147145362692

`1/2*(2+(A046523(n+1)+A000203(n+1))²-A046523(n+1)-3*A000203(n+1))`
-/

namespace A286360.P18149245147145362692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A046523 (n + 1) + A000203 (n + 1)) ^ 2 - A046523 (n + 1) - 3 * A000203 (n + 1) : ℚ)

end

end A286360.P18149245147145362692

noncomputable section

/-- A286360: Compound filter (prime signature & sum of the divisors): a(n) = P(A046523(n), A000203(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286360.P18149245147145362692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286360 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286360.P18149245147145362692.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286362.P18066090521344969535

`1/2*(2+(A089309(n+1)+A046523(n+1))²-A089309(n+1)-3*A046523(n+1))`
-/

namespace A286362.P18066090521344969535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A089309 (n + 1) + A046523 (n + 1)) ^ 2 - A089309 (n + 1) - 3 * A046523 (n + 1) : ℚ)

end

end A286362.P18066090521344969535

noncomputable section

/-- A286362: Compound filter: a(n) = P(A089309(n), A046523(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286362.P18066090521344969535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286362 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286362.P18066090521344969535.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286452.P6965208014505850692

`1/2*(2+(A061395(n+1)+A046523(2*(n+1)-1))²-A061395(n+1)-3*A046523(2*(n+1)-1))`
-/

namespace A286452.P6965208014505850692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A061395 (n + 1) + A046523 (2 * (n + 1) - 1)) ^ 2 - A061395 (n + 1) - 3 * A046523 (2 * (n + 1) - 1) : ℚ)

end

end A286452.P6965208014505850692

noncomputable section

/-- A286452: Compound filter (largest prime factor of n & prime signature of 2n-1): a(n) = P(A061395(n), A046523(2n-1)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286452.P6965208014505850692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286452 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286452.P6965208014505850692.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286463.P596950165442165972

`1/2*(2+(A051064(n+1)+A046523(n+1))²-A051064(n+1)-3*A046523(n+1))`
-/

namespace A286463.P596950165442165972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A051064 (n + 1) + A046523 (n + 1)) ^ 2 - A051064 (n + 1) - 3 * A046523 (n + 1) : ℚ)

end

end A286463.P596950165442165972

noncomputable section

/-- A286463: Compound filter (3-adic valuation & prime-signature): a(n) = P(A051064(n), A046523(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286463.P596950165442165972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286463 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286463.P596950165442165972.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286463.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286479.P14011236842792646719

`A046523(n+1+A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286479.P14011236842792646719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ((n + 1 : ℤ) + A000005 (n + 1)).toNat

end

end A286479.P14011236842792646719

noncomputable section

/-- A286479: a(n) = A046523(n+A000005(n)).

Offset 1, canonical program `A286479.P14011236842792646719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286479 (n : ℕ) : ℤ :=
  A286479.P14011236842792646719.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286570.P16794196535918637724

`1/2*(2+(A046523(n+1)+A009194(n+1))²-A046523(n+1)-3*A009194(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286570.P16794196535918637724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A046523 (n + 1) + A009194 (n + 1)) ^ 2 - A046523 (n + 1) - 3 * A009194 (n + 1) : ℚ)

end

end A286570.P16794196535918637724

noncomputable section

/-- A286570: a(n) = (1/2)*(2 + ((A046523(n)+A009194(n))^2) - A046523(n) - 3*A009194(n)), where A046523(n) is the smallest number with same prime signature as n, and A009194(n) is gcd(n, sigma(n)).

Offset 1, canonical program `A286570.P16794196535918637724`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286570 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286570.P16794196535918637724.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286571.P10448253039019953320

`1/2*(2+(A046523(n+1)+A017666(n+1))²-A046523(n+1)-3*A017666(n+1))`
-/

namespace A286571.P10448253039019953320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A046523 (n + 1) + A017666 (n + 1)) ^ 2 - A046523 (n + 1) - 3 * A017666 (n + 1) : ℚ)

end

end A286571.P10448253039019953320

noncomputable section

/-- A286571: Compound filter (prime signature of n & n/gcd(n, sigma(n))): a(n) = P(A046523(n), A017666(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286571.P10448253039019953320`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286571 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286571.P10448253039019953320.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286587.P14335713023111587869

`A006047(A244154(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286587.P14335713023111587869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A244154 n).toNat

end

end A286587.P14335713023111587869

noncomputable section

/-- A286587: a(n) = A006047(A244154(n)).

Offset 0, canonical program `A286587.P14335713023111587869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286587 (n : ℕ) : ℤ :=
  A286587.P14335713023111587869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286587.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286613.P8940720398290594098

`A046523(A244154(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286613.P8940720398290594098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A244154 n).toNat

end

end A286613.P8940720398290594098

noncomputable section

/-- A286613: a(n) = A046523(A244154(n)).

Offset 0, canonical program `A286613.P8940720398290594098`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286613 (n : ℕ) : ℤ :=
  A286613.P8940720398290594098.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A288602.P4961739272138677271

`A283794(1+n)+1`
-/

namespace A288602.P4961739272138677271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (1 + n) + 1

end

end A288602.P4961739272138677271

noncomputable section

/-- A288602: Positions of 1 in A288600; complement of A288601.

Offset 1, canonical program `A288602.P4961739272138677271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288602 (n : ℕ) : ℤ :=
  A288602.P4961739272138677271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290479.P14131532051956969420

`A078599(n+1)/A007947(n+1)`
-/

namespace A290479.P14131532051956969420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078599 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A290479.P14131532051956969420

noncomputable section

/-- A290479: Product of nonprime squarefree divisors of n.

Offset 1, canonical program `A290479.P14131532051956969420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078599, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A290479 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290479.P14131532051956969420.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078599, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A290479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291757.P8333880744549637240

`1/2*(2+(A003557(n+1)+A046523(n+1))²-A003557(n+1)-3*A046523(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291757.P8333880744549637240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A003557 (n + 1) + A046523 (n + 1)) ^ 2 - A003557 (n + 1) - 3 * A046523 (n + 1) : ℚ)

end

end A291757.P8333880744549637240

noncomputable section

/-- A291757: a(n) = (1/2)*(2 + ((A003557(n)+A046523(n))^2) - A003557(n) - 3*A046523(n)).

Offset 1, canonical program `A291757.P8333880744549637240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291757 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291757.P8333880744549637240.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291758.P10546400910474517383

`1/2*(2+(A046523(n+1)+A048250(n+1))²-A046523(n+1)-3*A048250(n+1))`
-/

namespace A291758.P10546400910474517383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A046523 (n + 1) + A048250 (n + 1)) ^ 2 - A046523 (n + 1) - 3 * A048250 (n + 1) : ℚ)

end

end A291758.P10546400910474517383

noncomputable section

/-- A291758: Compound filter (prime signature of n & sum of squarefree divisors of n): a(n) = P(A046523(n), A048250(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A291758.P10546400910474517383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291758 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291758.P10546400910474517383.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291765.P1288831403050932489

`1/2*(2+(A001065(n+1)+A046523(n+1))²-A001065(n+1)-3*A046523(n+1))`
-/

namespace A291765.P1288831403050932489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A001065 (n + 1) + A046523 (n + 1)) ^ 2 - A001065 (n + 1) - 3 * A046523 (n + 1) : ℚ)

end

end A291765.P1288831403050932489

noncomputable section

/-- A291765: Compound filter (sum of proper divisors & prime signature): a(n) = P(A001065(n), A046523(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A291765.P1288831403050932489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291765 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291765.P1288831403050932489.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291765.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292377.P15330279681253691914

`a(A252463(n+1)-1)+floor((n+1)%4/3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A292377.P15330279681253691914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (A252463 (n + 1) - 1).toNat + ⌊(((n + 1) % 4 : ℕ) : ℚ) / 3⌋

end

end A292377.P15330279681253691914

noncomputable section

/-- A292377: a(1) = 0, and for n > 1, a(n) = a(A252463(n)) + [n == 3 (mod 4)].

Offset 1, canonical program `A292377.P15330279681253691914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292377 (n : ℕ) : ℤ :=
  A292377.P15330279681253691914.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292377.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292384.P10770707212818105069

`4*a(A252463(n+1)-1)+(n+1)%4` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292384.P10770707212818105069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (A252463 (n + 1) - 1).toNat + (n + 1) % 4

end

end A292384.P10770707212818105069

noncomputable section

/-- A292384: a(1) = 1; for n > 1, a(n) = 4*a(A252463(n)) + (n mod 4).

Offset 1, canonical program `A292384.P10770707212818105069`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292384 (n : ℕ) : ℤ :=
  (A292384.P10770707212818105069.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292384.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292589.P517279146687819941

`A046523(A003557(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292589.P517279146687819941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A003557 (n + 1)).toNat

end

end A292589.P517279146687819941

noncomputable section

/-- A292589: a(n) = A046523(A003557(n)) = A003557(A046523(n)); the least representative of the prime signature of {n divided by largest squarefree divisor of n}.

Offset 1, canonical program `A292589.P517279146687819941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292589 (n : ℕ) : ℤ :=
  A292589.P517279146687819941.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295895.P16373896587667801485

`A000035(A295894(n))`
-/

namespace A295895.P16373896587667801485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A295894 n).toNat

end

end A295895.P16373896587667801485

noncomputable section

/-- A295895: Parity of the binary weight of the contents of node n in Doudna-tree (A005940).

Offset 0, canonical program `A295895.P16373896587667801485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295895 (n : ℕ) : ℤ :=
  A295895.P16373896587667801485.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A296078.P17180261108379153878

`A046523(A039649(n+1))`
-/

namespace A296078.P17180261108379153878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A039649 (n + 1)).toNat

end

end A296078.P17180261108379153878

noncomputable section

/-- A296078: Least number with the same prime signature as 1+phi(n), where phi = A000010, Euler totient function.

Offset 1, canonical program `A296078.P17180261108379153878`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296078 (n : ℕ) : ℤ :=
  A296078.P17180261108379153878.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A296092.P4566598695325017882

`A046523(A088580(n+1))`
-/

namespace A296092.P4566598695325017882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A088580 (n + 1)).toNat

end

end A296092.P4566598695325017882

noncomputable section

/-- A296092: Least number with the same prime signature as sigma(n)+1.

Offset 1, canonical program `A296092.P4566598695325017882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296092 (n : ℕ) : ℤ :=
  A296092.P4566598695325017882.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296092.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300915.P2814181824402378078

`A000056(n+1)/A060594(n+1)`
-/

namespace A300915.P2814181824402378078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A300915.P2814181824402378078

noncomputable section

/-- A300915: Order of the group PSL(2,Z_n).

Offset 1, canonical program `A300915.P2814181824402378078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300915 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A300915.P2814181824402378078.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305544.P2795395169349957215

`A056285(n+1)-A056345(n+1)`
-/

namespace A305544.P2795395169349957215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056285 (n + 1) - A056345 (n + 1)

end

end A305544.P2795395169349957215

noncomputable section

/-- A305544: Number of chiral pairs of color loops of length n with exactly 5 different colors.

Offset 1, canonical program `A305544.P2795395169349957215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A305544 (n : ℕ) : ℤ :=
  A305544.P2795395169349957215.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A305544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307743.P15239747179216998739

`∑[A307742(1+n)]`
-/

namespace A307743.P15239747179216998739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307742 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307743.P15239747179216998739

noncomputable section

/-- A307743: a(n) = Sum_{k=1..n} A307742(k).

Offset 1, canonical program `A307743.P15239747179216998739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307743 (n : ℕ) : ℤ :=
  A307743.P15239747179216998739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308819.P18189255110465373061

`a(n-1)*A100994(n)` with `a(0)=1`
-/

namespace A308819.P18189255110465373061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A100994 n

end

end A308819.P18189255110465373061

noncomputable section

/-- A308819: Product of prime powers <= n.

Offset 0, canonical program `A308819.P18189255110465373061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A308819 (n : ℕ) : ℤ :=
  A308819.P18189255110465373061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A308819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311416.P5256604560773231204

`(A311570(n)+A311181(n))/2`
-/

namespace A311416.P5256604560773231204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311570 n + A311181 n : ℚ) / 2

end

end A311416.P5256604560773231204

noncomputable section

/-- A311416: Coordination sequence Gal.4.48.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311416.P5256604560773231204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A311416 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A311416.P5256604560773231204.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A311416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312160.P12207429850201497885

`A311548(n)+Δ[A011862(n)]`
-/

namespace A312160.P12207429850201497885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311548 n + (f1 (n + 1) - f1 n)

end

end A312160.P12207429850201497885

noncomputable section

/-- A312160: Coordination sequence Gal.5.100.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312160.P12207429850201497885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A312160 (n : ℕ) : ℤ :=
  A312160.P12207429850201497885.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A312160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312445.P1111675823032775958

`2*A311807(n)-A311181(n)`
-/

namespace A312445.P1111675823032775958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311807 n - A311181 n

end

end A312445.P1111675823032775958

noncomputable section

/-- A312445: Coordination sequence Gal.5.107.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312445.P1111675823032775958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A312445 (n : ℕ) : ℤ :=
  A312445.P1111675823032775958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A312445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312891.P482666226062443179

`(A310367(n)+A008574(n))/2`
-/

namespace A312891.P482666226062443179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310367 n + A008574 n : ℚ) / 2

end

end A312891.P482666226062443179

noncomputable section

/-- A312891: Coordination sequence Gal.6.216.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312891.P482666226062443179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2562 terms. -/
def A312891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A312891.P482666226062443179.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2562 terms. -/
def A312891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313129.P8353896223887088681

`abs(A008592(n)-A315459(n))`
-/

namespace A313129.P8353896223887088681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315459 n|

end

end A313129.P8353896223887088681

noncomputable section

/-- A313129: Coordination sequence Gal.6.159.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313129.P8353896223887088681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313129 (n : ℕ) : ℤ :=
  A313129.P8353896223887088681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313788.P6713366544553221303

`2*A313738(n)-A313696(n)`
-/

namespace A313788.P6713366544553221303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313738 n - A313696 n

end

end A313788.P6713366544553221303

noncomputable section

/-- A313788: Coordination sequence Gal.6.326.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313788.P6713366544553221303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313788 (n : ℕ) : ℤ :=
  A313788.P6713366544553221303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314025.P13685615418460974247

`2*n+A004396(A310367(n))`
-/

namespace A314025.P13685615418460974247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A310367 n).toNat

end

end A314025.P13685615418460974247

noncomputable section

/-- A314025: Coordination sequence Gal.6.250.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314025.P13685615418460974247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314025 (n : ℕ) : ℤ :=
  A314025.P13685615418460974247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314074.P2496956023396408743

`A314072(n)+A314125(n)-A314123(n)`
-/

namespace A314074.P2496956023396408743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314072 n + (A314125 n - A314123 n)

end

end A314074.P2496956023396408743

noncomputable section

/-- A314074: Coordination sequence Gal.5.310.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314074.P2496956023396408743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314074 (n : ℕ) : ℤ :=
  A314074.P2496956023396408743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315277.P16077913648521142554

`A315340(n)-A004525(A315340(n)-A315264(n))`
-/

namespace A315277.P16077913648521142554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315340 n - A004525 (A315340 n - A315264 n).toNat

end

end A315277.P16077913648521142554

noncomputable section

/-- A315277: Coordination sequence Gal.6.330.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315277.P16077913648521142554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2040 terms. -/
def A315277 (n : ℕ) : ℤ :=
  A315277.P16077913648521142554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2040 terms. -/
def A315277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315345.P6951023815696693816

`abs(A008592(n)-A310367(n))`
-/

namespace A315345.P6951023815696693816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310367 n|

end

end A315345.P6951023815696693816

noncomputable section

/-- A315345: Coordination sequence Gal.6.641.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315345.P6951023815696693816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A315345 (n : ℕ) : ℤ :=
  A315345.P6951023815696693816.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A315345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316553.P5817434773325312047

`A010685(n)*A060594(n+1)-1`
-/

namespace A316553.P5817434773325312047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A060594 (n + 1) - 1

end

end A316553.P5817434773325312047

noncomputable section

/-- A316553: Number of elements of order 2 in the group SL(2, Z(n)).

Offset 1, canonical program `A316553.P5817434773325312047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A316553 (n : ℕ) : ℤ :=
  A316553.P5817434773325312047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A316553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318510.P6431562738860432705

`A318509(A003961(n+1))`
-/

namespace A318510.P6431562738860432705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (A003961 (n + 1)).toNat

end

end A318510.P6431562738860432705

noncomputable section

/-- A318510: Completely multiplicative with a(prime(k)) = A002487(prime(k+1)).

Offset 1, canonical program `A318510.P6431562738860432705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318510 (n : ℕ) : ℤ :=
  A318510.P6431562738860432705.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318889.P3452767076121308080

`A001065(n+1)-A001065(A252463(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318889.P3452767076121308080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A001065 (A252463 (n + 1)).toNat

end

end A318889.P3452767076121308080

noncomputable section

/-- A318889: a(n) = A001065(n) - A001065(A252463(n)).

Offset 1, canonical program `A318889.P3452767076121308080`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318889 (n : ℕ) : ℤ :=
  A318889.P3452767076121308080.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319100.P17875270125052409818

`A060594(n+1)*A060839(n+1)`
-/

namespace A319100.P17875270125052409818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1) * A060839 (n + 1)

end

end A319100.P17875270125052409818

noncomputable section

/-- A319100: Number of solutions to x^6 == 1 (mod n).

Offset 1, canonical program `A319100.P17875270125052409818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, A060839, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319100 (n : ℕ) : ℤ :=
  A319100.P17875270125052409818.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, A060839, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319687.P11150699516326577001

`A318509(n+1)-A002487(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319687.P11150699516326577001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1) - A002487 (n + 1)

end

end A319687.P11150699516326577001

noncomputable section

/-- A319687: a(n) = A318509(n) - A002487(n).

Offset 1, canonical program `A319687.P11150699516326577001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319687 (n : ℕ) : ℤ :=
  A319687.P11150699516326577001.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319687.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319699.P7648533886871432432

`A001065(A252463(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319699.P7648533886871432432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A252463 (n + 1)).toNat

end

end A319699.P7648533886871432432

noncomputable section

/-- A319699: a(n) = A001065(A252463(n)).

Offset 1, canonical program `A319699.P7648533886871432432`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319699 (n : ℕ) : ℤ :=
  A319699.P7648533886871432432.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319699.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319700.P12804728464698407420

`A051953(A252463(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319700.P12804728464698407420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A252463 (n + 1)).toNat

end

end A319700.P12804728464698407420

noncomputable section

/-- A319700: a(n) = A051953(A252463(n)).

Offset 1, canonical program `A319700.P12804728464698407420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319700 (n : ℕ) : ℤ :=
  A319700.P12804728464698407420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319700.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319703.P7776989415077906572

`A003415(A252463(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319703.P7776989415077906572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A252463 (n + 1)).toNat

end

end A319703.P7776989415077906572

noncomputable section

/-- A319703: a(n) = A003415(A252463(n)).

Offset 1, canonical program `A319703.P7776989415077906572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319703 (n : ℕ) : ℤ :=
  A319703.P7776989415077906572.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319703.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320107.P11684398178645461094

`A001227(A252463(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320107.P11684398178645461094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A252463 (n + 1)).toNat

end

end A320107.P11684398178645461094

noncomputable section

/-- A320107: a(n) = A001227(A252463(n)).

Offset 1, canonical program `A320107.P11684398178645461094`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320107 (n : ℕ) : ℤ :=
  A320107.P11684398178645461094.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320107.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320111.P9381397234523338092

`A000005(A252463(n+1))`
-/

namespace A320111.P9381397234523338092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A252463 (n + 1)).toNat

end

end A320111.P9381397234523338092

noncomputable section

/-- A320111: Number of divisors d of n that are not of the form 4k+2.

Offset 1, canonical program `A320111.P9381397234523338092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320111 (n : ℕ) : ℤ :=
  A320111.P9381397234523338092.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320111.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320628.P9863740412114804898

`eq[0, A257994(1+n)]+1`
-/

namespace A320628.P9863740412114804898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320628.P9863740412114804898

noncomputable section

/-- A320628: Products of primes of nonprime index.

Offset 1, canonical program `A320628.P9863740412114804898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6921 terms. -/
def A320628 (n : ℕ) : ℤ :=
  (A320628.P9863740412114804898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6921 terms. -/
def A320628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322584.P1353558047590285769

`∑{d}[n+1, C(A046523(#), #)²]`
-/

namespace A322584.P1353558047590285769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (A046523 d).toNat d ^ 2

end

end A322584.P1353558047590285769

noncomputable section

/-- A322584: a(n) is the number of terms of A025487 that divide n.

Offset 1, canonical program `A322584.P1353558047590285769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322584 (n : ℕ) : ℤ :=
  (A322584.P1353558047590285769.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322702.P18111369324308497529

`∏{d}[n+1, A089026(A028310(#-1))]`
-/

namespace A322702.P18111369324308497529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A089026 (A028310 (d - 1)).toNat

end

end A322702.P18111369324308497529

noncomputable section

/-- A322702: a(n) is the product of primes p such that p+1 divides n.

Offset 1, canonical program `A322702.P18111369324308497529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322702 (n : ℕ) : ℤ :=
  A322702.P18111369324308497529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322982.P6944421931770551639

`(A089026(n+1)+n)/A089026(A074828(n+1))`
-/

namespace A322982.P6944421931770551639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089026 (n + 1) + (n : ℤ) : ℚ) / (A089026 (A074828 (n + 1)).toNat : ℚ)

end

end A322982.P6944421931770551639

noncomputable section

/-- A322982: If n is a noncomposite, then a(n) = 2*n - 1, otherwise a(n) = A032742(n), the largest proper divisor of n.

Offset 1, canonical program `A322982.P6944421931770551639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A322982 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322982.P6944421931770551639.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A322982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323506.P376847477820473957

`A323505(n)/A246660(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323506.P376847477820473957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323505 n : ℚ) / (A246660 n : ℚ)

end

end A323506.P376847477820473957

noncomputable section

/-- A323506: a(n) = A323505(n) / A246660(n).

Offset 0, canonical program `A323506.P376847477820473957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246660, A323505, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323506.P376847477820473957.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246660, A323505, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323506.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324349.P1026548390885821762

`A324122(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324349.P1026548390885821762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324122 (A005940 (1 + n)).toNat

end

end A324349.P1026548390885821762

noncomputable section

/-- A324349: a(n) = A324122(A005940(1+n)), where A005940 is the Doudna sequence and A324122(n) = sigma(n) - gcd(n*d(n), sigma(n)).

Offset 0, canonical program `A324349.P1026548390885821762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324349 (n : ℕ) : ℤ :=
  A324349.P1026548390885821762.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324570.P13794350298854692018

`eq[A001222(n+1), A066328(n+1)]+1`
-/

namespace A324570.P13794350298854692018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324570.P13794350298854692018

noncomputable section

/-- A324570: Numbers where the sum of distinct prime indices (A066328) is equal to the number of prime factors counted with multiplicity (A001222).

Offset 1, canonical program `A324570.P13794350298854692018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A324570 (n : ℕ) : ℤ :=
  (A324570.P13794350298854692018.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A324570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325033.P13529846871965155427

`A056239(A003963(1+n))`
-/

namespace A325033.P13529846871965155427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A003963 (1 + n)).toNat

end

end A325033.P13529846871965155427

noncomputable section

/-- A325033: Sum of sums of the multisets of prime indices of each prime index of n.

Offset 1, canonical program `A325033.P13529846871965155427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325033 (n : ℕ) : ℤ :=
  A325033.P13529846871965155427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325036.P14148753285896189603

`A003963(n+1)-A056239(n+1)`
-/

namespace A325036.P14148753285896189603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A056239 (n + 1)

end

end A325036.P14148753285896189603

noncomputable section

/-- A325036: Difference between product and sum of prime indices of n.

Offset 1, canonical program `A325036.P14148753285896189603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325036 (n : ℕ) : ℤ :=
  A325036.P14148753285896189603.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325036.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325037.P8489955718019130323

`lt[A056239(n+1), A003963(n+1)]+1`
-/

namespace A325037.P8489955718019130323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325037.P8489955718019130323

noncomputable section

/-- A325037: Heinz numbers of integer partitions whose product of parts is greater than their sum.

Offset 1, canonical program `A325037.P8489955718019130323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7204 terms. -/
def A325037 (n : ℕ) : ℤ :=
  (A325037.P8489955718019130323.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7204 terms. -/
def A325037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326155.P7885909250933067550

`eq[0, A056239(n+1)%A003963(n+1)]+1`
-/

namespace A326155.P7885909250933067550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (n + 1)) (A003963 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326155.P7885909250933067550

noncomputable section

/-- A326155: Positive integers whose sum of prime indices is divisible by their product of prime indices.

Offset 1, canonical program `A326155.P7885909250933067550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1272 terms. -/
def A326155 (n : ℕ) : ℤ :=
  (A326155.P7885909250933067550.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1272 terms. -/
def A326155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326620.P14311994151113283900

`A326568(∏{p}[2+n, #])`
-/

namespace A326620.P14311994151113283900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A326620.P14311994151113283900

noncomputable section

/-- A326620: Denominator of the average of the set of distinct prime indices of n.

Offset 2, canonical program `A326620.P14311994151113283900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326620 (n : ℕ) : ℤ :=
  A326620.P14311994151113283900.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327730.P1577413118058245570

`A060594(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327730.P1577413118058245570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (2 * (n + 1))

end

end A327730.P1577413118058245570

noncomputable section

/-- A327730: a(n) = A060594(2n).

Offset 1, canonical program `A327730.P1577413118058245570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327730 (n : ℕ) : ℤ :=
  A327730.P1577413118058245570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328245.P6030416023601499540

`∩[A328244(n+1), A328303(n+1)]`
-/

namespace A328245.P6030416023601499540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328245.P6030416023601499540

noncomputable section

/-- A328245: Numbers whose second arithmetic derivative (A068346) is a squarefree number (A005117), but the first derivative (A003415) is not.

Offset 1, canonical program `A328245.P6030416023601499540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 945 terms. -/
def A328245 (n : ℕ) : ℤ :=
  (A328245.P6030416023601499540.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 945 terms. -/
def A328245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328712.P8522307854513457100

`A046080(n+1)-A024362(n+1)`
-/

namespace A328712.P8522307854513457100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1) - A024362 (n + 1)

end

end A328712.P8522307854513457100

noncomputable section

/-- A328712: Number of non-primitive Pythagorean triples with hypotenuse n.

Offset 1, canonical program `A328712.P8522307854513457100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024362, A046080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328712 (n : ℕ) : ℤ :=
  A328712.P8522307854513457100.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024362, A046080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328712.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328865.P3243253200832515210

`A325135(A195819(p?[2*n+1]))`
-/

namespace A328865.P3243253200832515210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A195819 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A328865.P3243253200832515210

noncomputable section

/-- A328865: The first repeating term in the trajectory of n under iterations of A329623, or -1 if no such terms exists.

Offset 1, canonical program `A328865.P3243253200832515210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A328865 (n : ℕ) : ℤ :=
  A328865.P3243253200832515210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A328865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329152.P18328021413279516523

`(A000010(n+1)-A060594(n+1))/2`
-/

namespace A329152.P18328021413279516523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A060594 (n + 1) : ℚ) / 2

end

end A329152.P18328021413279516523

noncomputable section

/-- A329152: a(n) = Sum_{i=1..n-1} Sum_{j=1..i-1} [1 == i*j (mod n)], where [] is the Iverson bracket.

Offset 1, canonical program `A329152.P18328021413279516523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329152 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A329152.P18328021413279516523.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329378.P18226799587835022428

`A072411(A329600(n+1))`
-/

namespace A329378.P18226799587835022428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A329600 (n + 1)).toNat

end

end A329378.P18226799587835022428

noncomputable section

/-- A329378: Least common multiple of exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

Offset 1, canonical program `A329378.P18226799587835022428`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329378 (n : ℕ) : ℤ :=
  A329378.P18226799587835022428.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329480.P10355906858243263468

`A246425(A350091(n))`
-/

namespace A329480.P10355906858243263468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A350091 n).toNat

end

end A329480.P10355906858243263468

noncomputable section

/-- A329480: a(n) = (1 - A075677(n))/6 if 6|(A075677(n)-1) or a(n) = (A075677(n) + 1)/6 if 6|(A075677(n)+1).

Offset 1, canonical program `A329480.P10355906858243263468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329480 (n : ℕ) : ℤ :=
  A329480.P10355906858243263468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331289.P2190627046310691994

`A329348(n+1)-A001222(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331289.P2190627046310691994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (n + 1) - A001222 (n + 1)

end

end A331289.P2190627046310691994

noncomputable section

/-- A331289: a(n) = A329348(n) - A001222(n).

Offset 1, canonical program `A331289.P2190627046310691994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329348, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331289 (n : ℕ) : ℤ :=
  A331289.P2190627046310691994.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329348, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331289.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331290.P11642824275662138773

`gcd(A001222(n+1), A329348(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331290.P11642824275662138773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A329348 (n + 1))

end

end A331290.P11642824275662138773

noncomputable section

/-- A331290: a(n) = gcd(A001222(n), A329348(n)).

Offset 1, canonical program `A331290.P11642824275662138773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329348, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331290 (n : ℕ) : ℤ :=
  (A331290.P11642824275662138773.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329348, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331290.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331291.P17524730680370887553

`A086436(n+1)*A329348(n+1)`
-/

namespace A331291.P17524730680370887553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1) * A329348 (n + 1)

end

end A331291.P17524730680370887553

noncomputable section

/-- A331291: a(n) = A001222(n) * A329348(n).

Offset 1, canonical program `A331291.P17524730680370887553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331291 (n : ℕ) : ℤ :=
  A331291.P17524730680370887553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331292.P11437577802262716147

`A331293(n+1)%A117366(A117366(n+1))`
-/

namespace A331292.P11437577802262716147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331293 (n + 1)) (A117366 (A117366 (n + 1)).toNat)

end

end A331292.P11437577802262716147

noncomputable section

/-- A331292: The next more significant digit after A329348(n) in the primorial base expansion of A108951(n).

Offset 1, canonical program `A331292.P11437577802262716147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9972 terms. -/
def A331292 (n : ℕ) : ℤ :=
  A331292.P11437577802262716147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9972 terms. -/
def A331292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332224.P12664818339526450802

`A087808(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332224.P12664818339526450802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A000203 (n + 1)).toNat

end

end A332224.P12664818339526450802

noncomputable section

/-- A332224: a(n) = A087808(sigma(n)).

Offset 1, canonical program `A332224.P12664818339526450802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332224 (n : ℕ) : ℤ :=
  A332224.P12664818339526450802.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332447.P15250684680913480673

`A007814(A087808(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332447.P15250684680913480673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A087808 (n + 1)).toNat

end

end A332447.P15250684680913480673

noncomputable section

/-- A332447: a(n) = A007814(A087808(n)).

Offset 1, canonical program `A332447.P15250684680913480673`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332447 (n : ℕ) : ℤ :=
  A332447.P15250684680913480673.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332448.P14630851295872812105

`A007814(A087808(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332448.P14630851295872812105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A087808 (A000203 (n + 1)).toNat).toNat

end

end A332448.P14630851295872812105

noncomputable section

/-- A332448: a(n) = A007814(A087808(sigma(n))).

Offset 1, canonical program `A332448.P14630851295872812105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332448 (n : ℕ) : ℤ :=
  A332448.P14630851295872812105.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332460.P12762154889603887831

`A020639(n+1)*A332451(A032742(n+1))`
-/

namespace A332460.P12762154889603887831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A332451 (A032742 (n + 1)).toNat

end

end A332460.P12762154889603887831

noncomputable section

/-- A332460: a(n) = A005940(1+A065621(A156552(n))), with a(1) = 1.

Offset 1, canonical program `A332460.P12762154889603887831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332460 (n : ℕ) : ℤ :=
  A332460.P12762154889603887831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332463.P4276748148146942890

`∑{d}[n+1, A008683((n+1)/#)*A332223(#)]`
-/

namespace A332463.P4276748148146942890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A332223 d

end

end A332463.P4276748148146942890

noncomputable section

/-- A332463: Möbius transform of A332223.

Offset 1, canonical program `A332463.P4276748148146942890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332463 (n : ℕ) : ℤ :=
  A332463.P4276748148146942890.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332463.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A333842.P12933037220548875688

`A066328(A003557(n+1))`
-/

namespace A333842.P12933037220548875688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A003557 (n + 1)).toNat

end

end A333842.P12933037220548875688

noncomputable section

/-- A333842: G.f.: Sum_{k>=1} k * x^(prime(k)^2) / (1 - x^(prime(k)^2)).

Offset 1, canonical program `A333842.P12933037220548875688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A333842 (n : ℕ) : ℤ :=
  A333842.P12933037220548875688.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A333842.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336158.P5052491878283479858

`A046523(A000265(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336158.P5052491878283479858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000265 (n + 1)).toNat

end

end A336158.P5052491878283479858

noncomputable section

/-- A336158: The least number with the prime signature of the odd part of n: a(n) = A046523(A000265(n)).

Offset 1, canonical program `A336158.P5052491878283479858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336158 (n : ℕ) : ℤ :=
  A336158.P5052491878283479858.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336158.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337246.P3726602907552731797

`A318283(A328878(1+n))`
-/

namespace A337246.P3726602907552731797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (A328878 (1 + n)).toNat

end

end A337246.P3726602907552731797

noncomputable section

/-- A337246: Sum of the first coordinates of all pairs of prime divisors of n, (p,q), such that p <= q.

Offset 1, canonical program `A337246.P3726602907552731797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A337246 (n : ℕ) : ℤ :=
  A337246.P3726602907552731797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A337246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337376.P10436570575764964389

`A005940(1+n)/A337375(n)`
-/

namespace A337376.P10436570575764964389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (1 + n) : ℚ) / (A337375 n : ℚ)

end

end A337376.P10436570575764964389

noncomputable section

/-- A337376: Primorial deflation (numerator) of Doudna-tree.

Offset 0, canonical program `A337376.P10436570575764964389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337376 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337376.P10436570575764964389.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A338490.P6074584885069442355

`A066328(A000265(n+1))`
-/

namespace A338490.P6074584885069442355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A000265 (n + 1)).toNat

end

end A338490.P6074584885069442355

noncomputable section

/-- A338490: Sum of indices of distinct odd prime factors of n.

Offset 1, canonical program `A338490.P6074584885069442355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338490 (n : ℕ) : ℤ :=
  A338490.P6074584885069442355.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A339270.P3849637418448733813

`A046929(n+1)+char[A233671(n+1)-1]`
-/

namespace A339270.P3849637418448733813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339270.P3849637418448733813

noncomputable section

/-- A339270: a(n) is the largest m such that there is no prime except prime(n) from prime(n)-m+1 to prime(n)+m.

Offset 1, canonical program `A339270.P3849637418448733813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339270 (n : ℕ) : ℤ :=
  A339270.P3849637418448733813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339902.P10845326846020407518

`∑{e}[A290077(A124108(n)), #]`
-/

namespace A339902.P10845326846020407518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 (A124108 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A339902.P10845326846020407518

noncomputable section

/-- A339902: Number of prime divisors of A339821(n), counted with multiplicity.

Offset 0, canonical program `A339902.P10845326846020407518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A339902 (n : ℕ) : ℤ :=
  (A339902.P10845326846020407518.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A339902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340784.P18190419391720154980

`∩[A028260(n+1), A300061(n+1)]`
-/

namespace A340784.P18190419391720154980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340784.P18190419391720154980

noncomputable section

/-- A340784: Heinz numbers of even-length integer partitions of even numbers.

Offset 1, canonical program `A340784.P18190419391720154980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A340784 (n : ℕ) : ℤ :=
  (A340784.P18190419391720154980.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A340784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342017.P626979894945445369

`A342007(A327860(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342017.P626979894945445369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (A327860 (n + 1)).toNat

end

end A342017.P626979894945445369

noncomputable section

/-- A342017: a(n) = A342007(A327860(n)), where A342007 is multiplicative with a(p^e) = p^floor(e/p), and A327860 is arithmetic derivative of A276086.

Offset 1, canonical program `A342017.P626979894945445369`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342007, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342017 (n : ℕ) : ℤ :=
  A342017.P626979894945445369.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342007, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342017.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342028.P12226133476098750910

`A130091(eq[1, Δ[A130091(n+1)]]+1)`
-/

namespace A342028.P12226133476098750910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A342028.P12226133476098750910

noncomputable section

/-- A342028: Numbers k such that k and k+1 both have mutually distinct exponents in their prime factorization (A130091).

Offset 1, canonical program `A342028.P12226133476098750910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A342028 (n : ℕ) : ℤ :=
  A342028.P12226133476098750910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A342028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342188.P9826995653217405819

`∩[A130897(n+1)-1, A130897(n+1)]`
-/

namespace A342188.P9826995653217405819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342188.P9826995653217405819

noncomputable section

/-- A342188: Numbers k such that both k and k+1 are not exponentially squarefree numbers.

Offset 1, canonical program `A342188.P9826995653217405819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A342188 (n : ℕ) : ℤ :=
  (A342188.P9826995653217405819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A342188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342256.P11382523242793014882

`lt[0, A253236(n+1)]+1`
-/

namespace A342256.P11382523242793014882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342256.P11382523242793014882

noncomputable section

/-- A342256: Numbers k such that gcd(k, Phi_k(a)) > 1 for some a, where Phi_k is the k-th cyclotomic polynomial.

Offset 1, canonical program `A342256.P11382523242793014882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3025 terms. -/
def A342256 (n : ℕ) : ℤ :=
  (A342256.P11382523242793014882.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3025 terms. -/
def A342256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342257.P5053345138625648025

`∏{d}[A253236(1+n), #]`
-/

namespace A342257.P5053345138625648025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A342257.P5053345138625648025

noncomputable section

/-- A342257: Period of the sequence {gcd(n, Phi_n(a)): a in Z}, where Phi_n is the n-th cyclotomic polynomial.

Offset 1, canonical program `A342257.P5053345138625648025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342257 (n : ℕ) : ℤ :=
  (A342257.P5053345138625648025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342461.P17571443144159816648

`A329040(A005940(1+n))`
-/

namespace A342461.P17571443144159816648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (A005940 (1 + n)).toNat

end

end A342461.P17571443144159816648

noncomputable section

/-- A342461: Number of nonzero digits when A329886(n) is written in primorial base, where A329886 is the primorial inflation of Doudna-tree.

Offset 0, canonical program `A342461.P17571443144159816648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342461 (n : ℕ) : ℤ :=
  A342461.P17571443144159816648.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342462.P8891341993698202582

`A276150(A329886(n))`
-/

namespace A342462.P8891341993698202582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A329886 n).toNat

end

end A342462.P8891341993698202582

noncomputable section

/-- A342462: Sum of digits when A329886(n) is written in primorial base, where A329886 is the primorial inflation of Doudna-tree.

Offset 0, canonical program `A342462.P8891341993698202582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342462 (n : ℕ) : ℤ :=
  A342462.P8891341993698202582.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342463.P349718151515743357

`A342920(A005940(1+n))`
-/

namespace A342463.P349718151515743357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342920 (A005940 (1 + n)).toNat

end

end A342463.P349718151515743357

noncomputable section

/-- A342463: a(n) = A342001(A342456(n)); "wild part" of the arithmetic derivative of A342456(n).

Offset 0, canonical program `A342463.P349718151515743357`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342463 (n : ℕ) : ℤ :=
  A342463.P349718151515743357.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342463.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342464.P7628047389321257062

`A328114(A329886(n))`
-/

namespace A342464.P7628047389321257062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A329886 n).toNat

end

end A342464.P7628047389321257062

noncomputable section

/-- A342464: Largest digit value when A329886(n) is written in primorial base, where A329886 is the primorial inflation of Doudna-tree.

Offset 0, canonical program `A342464.P7628047389321257062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342464 (n : ℕ) : ℤ :=
  A342464.P7628047389321257062.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342766.P12175838294366118229

`∏[A014963(n+1)/A252463(A014963(n+1))]`
-/

namespace A342766.P12175838294366118229
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) / (A252463 (A014963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342766.P12175838294366118229

noncomputable section

/-- A342766: a(1) = 1, for any n > 1, a(n) = A342765(a(n-1), n).

Offset 1, canonical program `A342766.P12175838294366118229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342766 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342766.P12175838294366118229.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343001.P12489177049686223465

`lt[1-A343023(n+1), 1]+1`
-/

namespace A343001.P12489177049686223465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A343023 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A343001.P12489177049686223465

noncomputable section

/-- A343001: Square roots of discriminants of cyclic cubic fields.

Offset 1, canonical program `A343001.P12489177049686223465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1642 terms. -/
def A343001 (n : ℕ) : ℤ :=
  (A343001.P12489177049686223465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1642 terms. -/
def A343001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343022.P16274586819737777029

`(eq[1, A343023(n+1)]+1)²`
-/

namespace A343022.P16274586819737777029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A343022.P16274586819737777029

noncomputable section

/-- A343022: Discriminants with exactly 1 associated cyclic cubic field.

Offset 1, canonical program `A343022.P16274586819737777029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. -/
def A343022 (n : ℕ) : ℤ :=
  (A343022.P16274586819737777029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. -/
def A343022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344182.P4846288778226888907

`xor(A344026(n), A344028(n))`
-/

namespace A344182.P4846288778226888907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A344026 n) (A344028 n)

end

end A344182.P4846288778226888907

noncomputable section

/-- A344182: a(n) = A344026(n) XOR A344028(n).

Offset 0, canonical program `A344182.P4846288778226888907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344182 (n : ℕ) : ℤ :=
  A344182.P4846288778226888907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345068.P4519547865639107194

`∑{d}[1+n, A100994(#)]-1`
-/

namespace A345068.P4519547865639107194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100994 d - 1

end

end A345068.P4519547865639107194

noncomputable section

/-- A345068: a(n) = Sum_{d|n, d>1} d^floor(1/omega(d)).

Offset 1, canonical program `A345068.P4519547865639107194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345068 (n : ℕ) : ℤ :=
  A345068.P4519547865639107194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345381.P1964717841003723928

`filter[A119251(n+1), A359466(#)]`
-/

namespace A345381.P1964717841003723928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A345381.P1964717841003723928

noncomputable section

/-- A345381: Numbers with exactly 2 semiprime divisors.

Offset 1, canonical program `A345381.P1964717841003723928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4510 terms. -/
def A345381 (n : ℕ) : ℤ :=
  A345381.P1964717841003723928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4510 terms. -/
def A345381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346087.P10733239521736727244

`min(A071178(n+1), A329348(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346087.P10733239521736727244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A071178 (n + 1)) (A329348 (n + 1))

end

end A346087.P10733239521736727244

noncomputable section

/-- A346087: a(n) = min(A071178(n), A329348(n)).

Offset 1, canonical program `A346087.P10733239521736727244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071178, A329348, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346087 (n : ℕ) : ℤ :=
  A346087.P10733239521736727244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071178, A329348, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346700.P4096194174196843212

`A056239(A329888(n+1))`
-/

namespace A346700.P4096194174196843212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A329888 (n + 1)).toNat

end

end A346700.P4096194174196843212

noncomputable section

/-- A346700: Sum of the even bisection (even-indexed parts) of the integer partition with Heinz number n.

Offset 1, canonical program `A346700.P4096194174196843212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346700 (n : ℕ) : ℤ :=
  A346700.P4096194174196843212.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347115.P11123043099445594858

`∑{d}[n+1, A008683(#)*A341515((n+1)/#)]`
-/

namespace A347115.P11123043099445594858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341515 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347115.P11123043099445594858

noncomputable section

/-- A347115: Möbius transform of A341515.

Offset 1, canonical program `A347115.P11123043099445594858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347115 (n : ℕ) : ℤ :=
  A347115.P11123043099445594858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347117.P5547842575061457872

`∑{d}[n+1, A008683((n+1)/#)*A329603(#)]`
-/

namespace A347117.P5547842575061457872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A329603 d

end

end A347117.P5547842575061457872

noncomputable section

/-- A347117: Möbius transform of A329603.

Offset 1, canonical program `A347117.P5547842575061457872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347117 (n : ℕ) : ℤ :=
  A347117.P5547842575061457872.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347117.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347118.P10209902076566312296

`∑{d}[n+1, A008683((n+1)/#)*A332449(#)]`
-/

namespace A347118.P10209902076566312296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A332449 d

end

end A347118.P10209902076566312296

noncomputable section

/-- A347118: Möbius transform of A332449.

Offset 1, canonical program `A347118.P10209902076566312296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347118 (n : ℕ) : ℤ :=
  A347118.P10209902076566312296.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347119.P9912932116410116810

`A007913(A332449(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347119.P9912932116410116810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A332449 (n + 1)).toNat

end

end A347119.P9912932116410116810

noncomputable section

/-- A347119: Squarefree part of A005940(1+(3*A156552(n))): a(n) = A007913(A332449(n)).

Offset 1, canonical program `A347119.P9912932116410116810`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347119 (n : ℕ) : ℤ :=
  A347119.P9912932116410116810.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347120.P5177905254871456997

`A000188(A332449(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347120.P5177905254871456997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A332449 (n + 1)).toNat

end

end A347120.P5177905254871456997

noncomputable section

/-- A347120: Square root of the largest square dividing A005940(1+(3*A156552(n))): a(n) = A000188(A332449(n)).

Offset 1, canonical program `A347120.P5177905254871456997`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347120 (n : ℕ) : ℤ :=
  A347120.P5177905254871456997.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347120.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348045.P15778702649549266219

`∑{d}[n+1, A008683((n+1)/#)*A252463(#)]`
-/

namespace A348045.P15778702649549266219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A252463 d

end

end A348045.P15778702649549266219

noncomputable section

/-- A348045: Möbius transform of A252463, where A252463 shifts the prime factorization of odd numbers one step towards smaller primes and divides even numbers by two.

Offset 1, canonical program `A348045.P15778702649549266219`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348045 (n : ℕ) : ℤ :=
  A348045.P15778702649549266219.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348045.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348710.P12126877974975923435

`A156552(gcd(A005940(n+1), A344028(n)))`
-/

namespace A348710.P12126877974975923435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.gcd (A005940 (n + 1)) (A344028 n))

end

end A348710.P12126877974975923435

noncomputable section

/-- A348710: In the binary expansion of n, decrease the length of each run of 1-bits by one.

Offset 0, canonical program `A348710.P12126877974975923435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A348710 (n : ℕ) : ℤ :=
  A348710.P12126877974975923435.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A348710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349437.P15133581059573297270

`∑{d}[n+1, A055615((n+1)/#)*A252463(#)]`
-/

namespace A349437.P15133581059573297270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A252463 d

end

end A349437.P15133581059573297270

noncomputable section

/-- A349437: Dirichlet convolution of A252463 with A055615 (Dirichlet inverse of n), where A252463 shifts the prime factorization of odd numbers one step towards smaller primes and divides even numbers by two.

Offset 1, canonical program `A349437.P15133581059573297270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349437 (n : ℕ) : ℤ :=
  A349437.P15133581059573297270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349437.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349538.P8542054162756012247

`a(n-1)+4+8*A046080(n)` with `a(0)=1`
-/

namespace A349538.P8542054162756012247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 + 8 * A046080 n

end

end A349538.P8542054162756012247

noncomputable section

/-- A349538: The number of pseudo-Pythagorean triples (which allow negative or 0 sides) on a 2D lattice that are on or inside a circle of radius n.

Offset 0, canonical program `A349538.P8542054162756012247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349538 (n : ℕ) : ℤ :=
  A349538.P8542054162756012247.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350070.P8542814483769249495

`Δ[fp[A350076(n+1)]]`
-/

namespace A350070.P8542814483769249495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350076 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A350070.P8542814483769249495

noncomputable section

/-- A350070: a(n) = 1 if the maximal digit in the primorial base expansion of n is greater than or equal to the maximal exponent in the prime factorization of n, otherwise 0.

Offset 1, canonical program `A350070.P8542814483769249495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350070 (n : ℕ) : ℤ :=
  A350070.P8542814483769249495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351038.P17099847767603051375

`record[(n+2)*A351039(n+2)]`
-/

namespace A351038.P17099847767603051375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A351039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351038.P17099847767603051375

noncomputable section

/-- A351038: Numbers whose maximal digit in their primorial base expansion is not larger than the maximal exponent in their prime factorization.

Offset 1, canonical program `A351038.P17099847767603051375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2006 terms. -/
def A351038 (n : ℕ) : ℤ :=
  A351038.P17099847767603051375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2006 terms. -/
def A351038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351716.P14046521430957268303

`A351715(eq[1, Δ[A351715(n+1)]]+1)`
-/

namespace A351716.P14046521430957268303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A351716.P14046521430957268303

noncomputable section

/-- A351716: Starts of runs of 3 consecutive Lucas-Niven numbers (A351714).

Offset 1, canonical program `A351716.P14046521430957268303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A351716 (n : ℕ) : ℤ :=
  A351716.P14046521430957268303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A351716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351957.P16426354530462027839

`val(2*A329040(n+1), A329046(n+1))`
-/

namespace A351957.P16426354530462027839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * A329040 (n + 1)).toNat (A329046 (n + 1)).toNat

end

end A351957.P16426354530462027839

noncomputable section

/-- A351957: a(n) = 1 if the primorial inflation of k is a sum of distinct primorial numbers, otherwise 0.

Offset 1, canonical program `A351957.P16426354530462027839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351957 (n : ℕ) : ℤ :=
  (A351957.P16426354530462027839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352490.P3271698030771769914

`filter[A013929(1+n), A331169(#)]`
-/

namespace A352490.P3271698030771769914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P3271698030771769914

noncomputable section

/-- A352490: Nonexcedance set of A122111. Numbers k > A122111(k), where A122111 represents partition conjugation using Heinz numbers.

Offset 1, canonical program `A352490.P3271698030771769914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1416 terms. -/
def A352490 (n : ℕ) : ℤ :=
  A352490.P3271698030771769914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1416 terms. -/
def A352490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352892.P8028281838156911806

`A348717(A341515(n+1))`
-/

namespace A352892.P8028281838156911806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A341515 (n + 1)).toNat

end

end A352892.P8028281838156911806

noncomputable section

/-- A352892: Next even term in the trajectory of map x -> A341515(x), when starting from x=n; a(1) = 1. Here A341515 is the Collatz or 3x+1 map (A006370) conjugated by unary-binary-encoding (A156552).

Offset 1, canonical program `A352892.P8028281838156911806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352892 (n : ℕ) : ℤ :=
  A352892.P8028281838156911806.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353267.P16273478473277384308

`A332449(A348717(n+1))`
-/

namespace A353267.P16273478473277384308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332449 (A348717 (n + 1)).toNat

end

end A353267.P16273478473277384308

noncomputable section

/-- A353267: The least number with the same prime factorization pattern (A348717) as A332449(n) = A005940(1+(3*A156552(n))).

Offset 1, canonical program `A353267.P16273478473277384308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353267 (n : ℕ) : ℤ :=
  A353267.P16273478473277384308.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353267.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353268.P15225342160328756485

`A348717(A329603(n+1))`
-/

namespace A353268.P15225342160328756485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A329603 (n + 1)).toNat

end

end A353268.P15225342160328756485

noncomputable section

/-- A353268: The least number with the same prime factorization pattern (A348717) as A329603(n) = A005940(1+(1+(3*A156552(n)))).

Offset 1, canonical program `A353268.P15225342160328756485`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353268 (n : ℕ) : ℤ :=
  A353268.P15225342160328756485.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353268.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353270.P15146311020099164443

`gcd(n+1, A332449(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353270.P15146311020099164443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A332449 (n + 1))

end

end A353270.P15146311020099164443

noncomputable section

/-- A353270: a(n) = gcd(n, A332449(n)), where A332449(n) = A005940(1+(3*A156552(n))).

Offset 1, canonical program `A353270.P15146311020099164443`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353270 (n : ℕ) : ℤ :=
  (A353270.P15146311020099164443.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353270.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353412.P5865578473997114456

`A000265(A252463(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353412.P5865578473997114456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A252463 (n + 1)).toNat

end

end A353412.P5865578473997114456

noncomputable section

/-- A353412: The odd part of hybrid shift: a(n) = A000265(A252463(n)).

Offset 1, canonical program `A353412.P5865578473997114456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353412 (n : ℕ) : ℤ :=
  A353412.P5865578473997114456.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353412.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353416.P2713159245725589266

`A000593(A252463(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353416.P2713159245725589266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A252463 (n + 1)).toNat

end

end A353416.P2713159245725589266

noncomputable section

/-- A353416: a(n) = A000593(A252463(n)), where A000593 is the sum of odd divisors, and A252463 is the hybrid shift.

Offset 1, canonical program `A353416.P2713159245725589266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353416 (n : ℕ) : ℤ :=
  A353416.P2713159245725589266.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353416.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353417.P10951594833502068989

`A113415(A252463(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353417.P10951594833502068989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (A252463 (n + 1)).toNat

end

end A353417.P10951594833502068989

noncomputable section

/-- A353417: a(n) = A113415(A252463(n)), where A113415 is the arithmetic mean between the number of odd divisors and their sum, and A252463 is the hybrid shift.

Offset 1, canonical program `A353417.P10951594833502068989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A252463, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353417 (n : ℕ) : ℤ :=
  A353417.P10951594833502068989.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A252463, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353567.P2160071074265072755

`∑{d}[n+1, A353566(#)]`
-/

namespace A353567.P2160071074265072755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353566 d

end

end A353567.P2160071074265072755

noncomputable section

/-- A353567: Number of divisors d of n such that d is a multiple of its prime shadow A181819(d).

Offset 1, canonical program `A353567.P2160071074265072755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353567 (n : ℕ) : ℤ :=
  A353567.P2160071074265072755.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353759.P6006722967981612255

`eq[0, A353760(n+1)]+1`
-/

namespace A353759.P6006722967981612255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353759.P6006722967981612255

noncomputable section

/-- A353759: Numbers k for which A353749(k) <= A353749(sigma(k)), where A353749(k) = phi(k) * A064989(k), and A064989 shifts the prime factorization one step towards lower primes.

Offset 1, canonical program `A353759.P6006722967981612255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7527 terms. -/
def A353759 (n : ℕ) : ℤ :=
  (A353759.P6006722967981612255.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7527 terms. -/
def A353759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354028.P1581446969738765077

`and(∑[n], A174275(n+1))`
-/

namespace A354028.P1581446969738765077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A174275 (n + 1))

end

end A354028.P1581446969738765077

noncomputable section

/-- A354028: a(n) = 1 if n is a prime power of the form 4m+3, otherwise 0.

Offset 1, canonical program `A354028.P1581446969738765077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354028 (n : ℕ) : ℤ :=
  A354028.P1581446969738765077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354185.P4089196723141090092

`∑{d}[n+1, A008683((n+1)/#)*A348717(#)]`
-/

namespace A354185.P4089196723141090092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A348717 d

end

end A354185.P4089196723141090092

noncomputable section

/-- A354185: Möbius transform of A348717.

Offset 1, canonical program `A354185.P4089196723141090092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354185 (n : ℕ) : ℤ :=
  A354185.P4089196723141090092.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354185.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355930.P13161575751402351718

`A056239(n+1)-A056239(A046523(n+1))`
-/

namespace A355930.P13161575751402351718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A056239 (A046523 (n + 1)).toNat

end

end A355930.P13161575751402351718

noncomputable section

/-- A355930: Sum of the prime indices of n minus the sum of the prime indices of the smallest number with same prime signature as n, when the sum is taken with multiplicity, as in A056239.

Offset 1, canonical program `A355930.P13161575751402351718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355930 (n : ℕ) : ℤ :=
  A355930.P13161575751402351718.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356159.P17667965768721708085

`A056239(A046523(n+1))`
-/

namespace A356159.P17667965768721708085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A046523 (n + 1)).toNat

end

end A356159.P17667965768721708085

noncomputable section

/-- A356159: Sum of the prime indices of the smallest number that has the same prime signature as n.

Offset 1, canonical program `A356159.P17667965768721708085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356159 (n : ℕ) : ℤ :=
  A356159.P17667965768721708085.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356173.P8720124054726278930

`1-A296210(n+1)`
-/

namespace A356173.P8720124054726278930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A296210 (n + 1)

end

end A356173.P8720124054726278930

noncomputable section

/-- A356173: a(n) = 1 if n is not divisible by two consecutive prime numbers, otherwise 0.

Offset 1, canonical program `A356173.P8720124054726278930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356173 (n : ℕ) : ℤ :=
  A356173.P8720124054726278930.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359600.P6656112842617839429

`A003961(A046523(n+1))`
-/

namespace A359600.P6656112842617839429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A046523 (n + 1)).toNat

end

end A359600.P6656112842617839429

noncomputable section

/-- A359600: The least odd number with the same prime signature as n.

Offset 1, canonical program `A359600.P6656112842617839429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359600 (n : ℕ) : ℤ :=
  A359600.P6656112842617839429.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364542.P8346645904742885432

`lt[n, A324394(n)*A324395(n)]+1`
-/

namespace A364542.P8346645904742885432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324394 n * A324395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A364542.P8346645904742885432

noncomputable section

/-- A364542: Numbers k for which A005940(k) >= k.

Offset 1, canonical program `A364542.P8346645904742885432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364542 (n : ℕ) : ℤ :=
  (A364542.P8346645904742885432.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364567.P9242672006614262804

`A297112(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364567.P9242672006614262804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A005940 (1 + n)).toNat

end

end A364567.P9242672006614262804

noncomputable section

/-- A364567: a(n) = A297112(A005940(1+n)), where A297112 is the Möbius transform of A156552 [the inverse of map n -> A005940(1+n)].

Offset 0, canonical program `A364567.P9242672006614262804`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364567 (n : ℕ) : ℤ :=
  A364567.P9242672006614262804.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365432.P18315931064286019973

`A156552(A364502(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365432.P18315931064286019973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A364502 (n + 1)).toNat

end

end A365432.P18315931064286019973

noncomputable section

/-- A365432: a(n) = A156552(A364502(n)), where A364502(n) = A005940(n) / gcd(n, A005940(n)), and A156552 is the inverse of offset-0 version of Doudna-sequence A005940.

Offset 1, canonical program `A365432.P18315931064286019973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365432 (n : ℕ) : ℤ :=
  A365432.P18315931064286019973.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365432.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365538.P13640182443914891217

`A048896(n)*A085357(n)`
-/

namespace A365538.P13640182443914891217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A085357 n

end

end A365538.P13640182443914891217

noncomputable section

/-- A365538: a(0) = 1; otherwise, for i >= 0, a(4i+0) = a(4i+1) = a(2i), a(4i+2) = 2*a(2i+1), a(4i+3) = 0.

Offset 0, canonical program `A365538.P13640182443914891217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365538 (n : ℕ) : ℤ :=
  A365538.P13640182443914891217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365633.P2234944935336013815

`∑{d}[A342007(1+n), #]`
-/

namespace A365633.P2234944935336013815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365633.P2234944935336013815

noncomputable section

/-- A365633: The sum of divisors of n that are terms of A072873.

Offset 1, canonical program `A365633.P2234944935336013815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365633 (n : ℕ) : ℤ :=
  (A365633.P2234944935336013815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366903.P14528994784463465807

`∑{d}[1+n, #*A355825(#)]`
-/

namespace A366903.P14528994784463465807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A355825 d

end

end A366903.P14528994784463465807

noncomputable section

/-- A366903: The sum of exponentially odious divisors of n.

Offset 1, canonical program `A366903.P14528994784463465807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366903 (n : ℕ) : ℤ :=
  A366903.P14528994784463465807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368333.P4860013269317907848

`gcd(A001014(A342007(n+1)), A184985(n+1))`
-/

namespace A368333.P4860013269317907848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001014 (A342007 (n + 1)).toNat) (A184985 (n + 1))

end

end A368333.P4860013269317907848

noncomputable section

/-- A368333: The largest term of A054744 that divides n.

Offset 1, canonical program `A368333.P4860013269317907848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368333 (n : ℕ) : ℤ :=
  (A368333.P4860013269317907848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368901.P12517472764070751102

`A368900(n)*a(n-1)` with `a(0)=1`
-/

namespace A368901.P12517472764070751102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A368900 n * a (n - 1)

end

end A368901.P12517472764070751102

noncomputable section

/-- A368901: The least common multiple of the first n terms of Doudna sequence, A005940.

Offset 0, canonical program `A368901.P12517472764070751102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368901 (n : ℕ) : ℤ :=
  A368901.P12517472764070751102.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368910.P14865691913623995403

`a(n-1)+A368909(n)` with `a(0)=0`
-/

namespace A368910.P14865691913623995403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A368909 n

end

end A368910.P14865691913623995403

noncomputable section

/-- A368910: Partial sums of A368909.

Offset 0, canonical program `A368910.P14865691913623995403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368910 (n : ℕ) : ℤ :=
  A368910.P14865691913623995403.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369053.P8230427624888693535

`A014963(A243353(n))`
-/

namespace A369053.P8230427624888693535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A243353 n).toNat

end

end A369053.P8230427624888693535

noncomputable section

/-- A369053: Exponential of Mangoldt function permuted by A243353.

Offset 0, canonical program `A369053.P8230427624888693535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369053 (n : ℕ) : ℤ :=
  A369053.P8230427624888693535.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369456.P1336314732339854060

`A083345(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369456.P1336314732339854060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A005940 (1 + n)).toNat

end

end A369456.P1336314732339854060

noncomputable section

/-- A369456: a(n) = A083345(A005940(1+n)), where A083345(n) = (n'/gcd(n,n')), n' means the arithmetic derivative of n (A003415), and A005940 is the Doudna-sequence.

Offset 0, canonical program `A369456.P1336314732339854060`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369456 (n : ℕ) : ℤ :=
  A369456.P1336314732339854060.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369456.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370137.P8826498851763070681

`A277021(2*A014311(1+n))`
-/

namespace A370137.P8826498851763070681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (2 * A014311 (1 + n)).toNat

end

end A370137.P8826498851763070681

noncomputable section

/-- A370137: Sums of three primorials > 1.

Offset 1, canonical program `A370137.P8826498851763070681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A370137 (n : ℕ) : ℤ :=
  A370137.P8826498851763070681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A370137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370354.P16956646947341725089

`lt[A089026(n+1), A082299(n+1)]+1`
-/

namespace A370354.P16956646947341725089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A370354.P16956646947341725089

noncomputable section

/-- A370354: Composite numbers k that share a factor with sopfr(k), the sum of the primes dividing k, with repetition.

Offset 1, canonical program `A370354.P16956646947341725089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3422 terms. -/
def A370354 (n : ℕ) : ℤ :=
  (A370354.P16956646947341725089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3422 terms. -/
def A370354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370519.P13191121243294662907

`∩[A016105(n+1), A008811(n)]`
-/

namespace A370519.P13191121243294662907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370519.P13191121243294662907

noncomputable section

/-- A370519: Intersection of A002061 and A016105.

Offset 1, canonical program `A370519.P13191121243294662907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A370519 (n : ℕ) : ℤ :=
  (A370519.P13191121243294662907.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A370519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371054.P16164343174787979327

`∩[A043583(n+1), A089118(n+1)]`
-/

namespace A371054.P16164343174787979327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371054.P16164343174787979327

noncomputable section

/-- A371054: Numbers whose ternary representation consists of a run of 1's, then a run of 0's, then a run of 2's.

Offset 1, canonical program `A371054.P16164343174787979327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A371054 (n : ℕ) : ℤ :=
  (A371054.P16164343174787979327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A371054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373992.P2594044471646967012

`∪[A374042(n+1), A008591(n)]`
-/

namespace A373992.P2594044471646967012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373992.P2594044471646967012

noncomputable section

/-- A373992: Numbers k such that A328768(k) is a multiple of 3, where A328768 is the first primorial based variant of arithmetic derivative.

Offset 1, canonical program `A373992.P2594044471646967012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373992 (n : ℕ) : ℤ :=
  (A373992.P2594044471646967012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374466.P2704209594539488434

`A066829(n+1)*(1-A359464(n+1))`
-/

namespace A374466.P2704209594539488434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) * (1 - A359464 (n + 1))

end

end A374466.P2704209594539488434

noncomputable section

/-- A374466: a(n) = 1 if n is the product of an odd number of primes and the total number of 1-bits in the exponents of its prime factorization is odd, otherwise 0.

Offset 1, canonical program `A374466.P2704209594539488434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374466 (n : ℕ) : ℤ :=
  A374466.P2704209594539488434.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374466.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374471.P2134863705312420223

`A065043(n+1)*A359464(n+1)`
-/

namespace A374471.P2134863705312420223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A359464 (n + 1)

end

end A374471.P2134863705312420223

noncomputable section

/-- A374471: a(n) = 1 if bigomega(n) and A064547(n) are both even, otherwise 0, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

Offset 1, canonical program `A374471.P2134863705312420223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374471 (n : ℕ) : ℤ :=
  A374471.P2134863705312420223.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374471.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375933.P3247189904836465685

`A051903(A375932(n+1))`
-/

namespace A375933.P3247189904836465685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A375932 (n + 1)).toNat

end

end A375933.P3247189904836465685

noncomputable section

/-- A375933: The second-largest exponent in the prime factorization of n, or 0 if it does not exist.

Offset 1, canonical program `A375933.P3247189904836465685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375933 (n : ℕ) : ℤ :=
  A375933.P3247189904836465685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377191.P879041017635496977

`col(A043562(n))`
-/

namespace A377191.P879041017635496977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A043562 n).toNat

end

end A377191.P879041017635496977

noncomputable section

/-- A377191: Smallest number of digits that must be changed in n to obtain a palindrome (without changing the first digit to 0).

Offset 0, canonical program `A377191.P879041017635496977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A377191 (n : ℕ) : ℤ :=
  (A377191.P879041017635496977.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A377191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378494.P55818482299649196

`filter[A046339(1+n), A359464(#)]`
-/

namespace A378494.P55818482299649196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A378494.P55818482299649196

noncomputable section

/-- A378494: Intersection of A000379 and A026424.

Offset 1, canonical program `A378494.P55818482299649196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4248 terms. -/
def A378494 (n : ℕ) : ℤ :=
  A378494.P55818482299649196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4248 terms. -/
def A378494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378684.P885690523636202921

`A378200(A378200(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378684.P885690523636202921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A378200 (n + 1)).toNat

end

end A378684.P885690523636202921

noncomputable section

/-- A378684: a(n) = A378200(A378200(n)).

Offset 1, canonical program `A378684.P885690523636202921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378684 (n : ℕ) : ℤ :=
  A378684.P885690523636202921.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378762.P3404448250858099609

`A378200(A378200(A378200(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378762.P3404448250858099609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A378200 (A378200 (n + 1)).toNat).toNat

end

end A378762.P3404448250858099609

noncomputable section

/-- A378762: a(n) = A378200(A378200(A378200(n))).

Offset 1, canonical program `A378762.P3404448250858099609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378762 (n : ℕ) : ℤ :=
  A378762.P3404448250858099609.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378884.P7122050070527871357

`eq[1, A079978(A348717(1+n))]+1`
-/

namespace A378884.P7122050070527871357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A348717 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A378884.P7122050070527871357

noncomputable section

/-- A378884: Numbers that are not powers of primes and whose two smallest prime divisors are consecutive primes.

Offset 1, canonical program `A378884.P7122050070527871357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2178 terms. -/
def A378884 (n : ℕ) : ℤ :=
  (A378884.P7122050070527871357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2178 terms. -/
def A378884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378886.P3605780528616070167

`A276084(A348717(1+n))`
-/

namespace A378886.P3605780528616070167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A348717 (1 + n)).toNat

end

end A378886.P3605780528616070167

noncomputable section

/-- A378886: The number of consecutive primes in the prime factorization of n starting from the smallest prime dividing n; a(1) = 0.

Offset 1, canonical program `A378886.P3605780528616070167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378886 (n : ℕ) : ℤ :=
  A378886.P3605780528616070167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379008.P14433924441530335428

`A324348(A253551(1+n))`
-/

namespace A379008.P14433924441530335428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324348 (A253551 (1 + n)).toNat

end

end A379008.P14433924441530335428

noncomputable section

/-- A379008: Square array A(n, k) = A294898(A246278(n, k)), read by falling antidiagonals; Difference A005187(n)-A000203(n) applied to the prime shift array.

Offset 1, canonical program `A379008.P14433924441530335428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A379008 (n : ℕ) : ℤ :=
  A379008.P14433924441530335428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A379008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379372.P8846924178214362787

`filter[A234099(n+1), A354926(#)]`
-/

namespace A379372.P8846924178214362787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A379372.P8846924178214362787

noncomputable section

/-- A379372: Sphenic numbers k such that 2*k+1 is also a sphenic number.

Offset 1, canonical program `A379372.P8846924178214362787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1906 terms. -/
def A379372 (n : ℕ) : ℤ :=
  A379372.P8846924178214362787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1906 terms. -/
def A379372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379681.P11517682224062848711

`A056239(n+1)+A003963(n+1)`
-/

namespace A379681.P11517682224062848711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A003963 (n + 1)

end

end A379681.P11517682224062848711

noncomputable section

/-- A379681: Sum plus product of the multiset of prime indices of n.

Offset 1, canonical program `A379681.P11517682224062848711`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379681 (n : ℕ) : ℤ :=
  A379681.P11517682224062848711.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379681.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379929.P13178547235665046402

`eq[∑{e}[n, #], A043562(n)]`
-/

namespace A379929.P13178547235665046402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A379929.P13178547235665046402

noncomputable section

/-- A379929: Numbers that have the same number of prime factors, counted with multiplicity, as there are runs in their base-10 representation.

Offset 1, canonical program `A379929.P13178547235665046402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2054 terms. -/
def A379929 (n : ℕ) : ℤ :=
  (A379929.P13178547235665046402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2054 terms. -/
def A379929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379930.P9186506288591165084

`eq[A000005(n+1), A043562(n+1)]+1`
-/

namespace A379930.P9186506288591165084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A379930.P9186506288591165084

noncomputable section

/-- A379930: Numbers that have the same number of divisors as there are runs in their base-10 representation.

Offset 1, canonical program `A379930.P9186506288591165084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1755 terms. -/
def A379930 (n : ℕ) : ℤ :=
  (A379930.P9186506288591165084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1755 terms. -/
def A379930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380955.P4555660258455395016

`A056239(n+1)-A066328(n+1)`
-/

namespace A380955.P4555660258455395016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A066328 (n + 1)

end

end A380955.P4555660258455395016

noncomputable section

/-- A380955: Sum of prime indices of n (with multiplicity) minus sum of distinct prime indices of n.

Offset 1, canonical program `A380955.P4555660258455395016`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380955 (n : ℕ) : ℤ :=
  A380955.P4555660258455395016.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380955.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381204.P350150440246821859

`A348494(A100994(n+2))`
-/

namespace A381204.P350150440246821859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348494 (A100994 (n + 2)).toNat

end

end A381204.P350150440246821859

noncomputable section

/-- A381204: a(n) is the gcd of the elements of the set of bases and exponents in the prime factorization of n.

Offset 2, canonical program `A381204.P350150440246821859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A381204 (n : ℕ) : ℤ :=
  A381204.P350150440246821859.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A381204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381315.P9914003275205982349

`∩[A375072(n+1), A377844(n+1)]`
-/

namespace A381315.P9914003275205982349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P9914003275205982349

noncomputable section

/-- A381315: Numbers whose prime factorization exponents include exactly one 3 and no exponent greater than 3.

Offset 1, canonical program `A381315.P9914003275205982349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7798 terms. -/
def A381315 (n : ℕ) : ℤ :=
  (A381315.P9914003275205982349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7798 terms. -/
def A381315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381885.P9369399217660328766

`A364813(n+1)/(n+1)`
-/

namespace A381885.P9369399217660328766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364813 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A381885.P9369399217660328766

noncomputable section

/-- A381885: a(n) = Product_{k=2..n-1} k^ord(n, k) where ord(n, k) = 0 if k does not divide n, otherwise is the exponent of the highest power of k that divides n.

Offset 1, canonical program `A381885.P9369399217660328766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381885.P9369399217660328766.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381951.P13289787021626920291

`∩[2*n+1, A376142(n+1)]`
-/

namespace A381951.P13289787021626920291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P13289787021626920291

noncomputable section

/-- A381951: Nonsquarefree odd numbers whose prime factorization has an odd maximum exponent.

Offset 1, canonical program `A381951.P13289787021626920291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1644 terms. -/
def A381951 (n : ℕ) : ℤ :=
  (A381951.P13289787021626920291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1644 terms. -/
def A381951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382255.P11079232135365074107

`A246029(A035327(2*n+1))*A246029(n)`
-/

namespace A382255.P11079232135365074107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A035327 (2 * n + 1)).toNat * A246029 n

end

end A382255.P11079232135365074107

noncomputable section

/-- A382255: Heinz number of the partition corresponding to run lengths in the bits of n.

Offset 0, canonical program `A382255.P11079232135365074107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A382255 (n : ℕ) : ℤ :=
  A382255.P11079232135365074107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A382255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382265.P12382702060267509096

`A066260(A064989(1+n))`
-/

namespace A382265.P12382702060267509096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066260 (A064989 (1 + n)).toNat

end

end A382265.P12382702060267509096

noncomputable section

/-- A382265: In the prime factorization of n replace the k-th prime with the k-th nonprime number.

Offset 1, canonical program `A382265.P12382702060267509096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382265 (n : ℕ) : ℤ :=
  A382265.P12382702060267509096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382291.P6985755138510803654

`2^A382290(n+1)`
-/

namespace A382291.P6985755138510803654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A382290 (n + 1) : ℤ)

end

end A382291.P6985755138510803654

noncomputable section

/-- A382291: a(n) = A037445(n)/A034444(n).

Offset 1, canonical program `A382291.P6985755138510803654`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382291 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382291.P6985755138510803654.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382873.P14823088164147612746

`A277006(A179243(1+n))`
-/

namespace A382873.P14823088164147612746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A179243 (1 + n)).toNat

end

end A382873.P14823088164147612746

noncomputable section

/-- A382873: a(n) = A019565(A014311(n)).

Offset 1, canonical program `A382873.P14823088164147612746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A382873 (n : ℕ) : ℤ :=
  A382873.P14823088164147612746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A382873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386105.P11382381309896313627

`∩[A038604(n+1), A084545(n+1)]`
-/

namespace A386105.P11382381309896313627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386105.P11382381309896313627

noncomputable section

/-- A386105: Primes having only {1, 3, 4, 5} as digits.

Offset 1, canonical program `A386105.P11382381309896313627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A386105 (n : ℕ) : ℤ :=
  (A386105.P11382381309896313627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A386105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389910.P3820855388453809546

`A389906(A252463(n+1))`
-/

namespace A389910.P3820855388453809546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389906 (A252463 (n + 1)).toNat

end

end A389910.P3820855388453809546

noncomputable section

/-- A389910: a(n) = min(n, A389909(n)).

Offset 1, canonical program `A389910.P3820855388453809546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389910 (n : ℕ) : ℤ :=
  A389910.P3820855388453809546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390128.P1354952752970519433

`filter[A375072(1+n), A389905(#)]`
-/

namespace A390128.P1354952752970519433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A390128.P1354952752970519433

noncomputable section

/-- A390128: Biquadratefree numbers that are neither cubefree nor squareful.

Offset 1, canonical program `A390128.P1354952752970519433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128 (n : ℕ) : ℤ :=
  A390128.P1354952752970519433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390990.P11391089079633860080

`2*A056239(n+1)-A390430(n+1)`
-/

namespace A390990.P11391089079633860080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056239 (n + 1) - A390430 (n + 1)

end

end A390990.P11391089079633860080

noncomputable section

/-- A390990: Sum of first sums of the prime indices of n, with a(1) = 0.

Offset 1, canonical program `A390990.P11391089079633860080`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A390430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390990 (n : ℕ) : ℤ :=
  A390990.P11391089079633860080.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A390430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391319.P17833975388560488226

`filter[A362148(n+1), A389905(#)]`
-/

namespace A391319.P17833975388560488226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391319.P17833975388560488226

noncomputable section

/-- A391319: Numbers that are neither cubefree nor powerful.

Offset 1, canonical program `A391319.P17833975388560488226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9779 terms. -/
def A391319 (n : ℕ) : ℤ :=
  A391319.P17833975388560488226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9779 terms. -/
def A391319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391989.P6110167778232670407

`A049419(A130897(n+1))-A278908(A130897(n+1))`
-/

namespace A391989.P6110167778232670407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A130897 (n + 1)).toNat - A278908 (A130897 (n + 1)).toNat

end

end A391989.P6110167778232670407

noncomputable section

/-- A391989: The difference between the number of exponential divisors and the number of exponential unitary divisors for numbers that are not exponentially squarefree.

Offset 1, canonical program `A391989.P6110167778232670407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A130897, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391989 (n : ℕ) : ℤ :=
  A391989.P6110167778232670407.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A130897, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392288.P4097606183012622653

`∩[A013929(n+1), A130092(n+1)]`
-/

namespace A392288.P4097606183012622653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392288.P4097606183012622653

noncomputable section

/-- A392288: Nonsquarefree numbers whose canonical prime factorization has at least two prime power factors with equal exponents.

Offset 1, canonical program `A392288.P4097606183012622653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3208 terms. -/
def A392288 (n : ℕ) : ℤ :=
  (A392288.P4097606183012622653.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3208 terms. -/
def A392288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395159.P17454811225797631171

`A000034(A157196(n+2)+A046523(n+1))`
-/

namespace A395159.P17454811225797631171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A157196 (n + 2) + A046523 (n + 1)).toNat

end

end A395159.P17454811225797631171

noncomputable section

/-- A395159: a(n) = 2*(sum of elements of n-th run)/(length of n-th run)^2 using 1 and 2 starting with 1,1.

Offset 1, canonical program `A395159.P17454811225797631171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395159 (n : ℕ) : ℤ :=
  A395159.P17454811225797631171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399747.P17310883521128029216

`∑{d}[n+1, #*A075802((n+1)/#)]`
-/

namespace A399747.P17310883521128029216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A075802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399747.P17310883521128029216

noncomputable section

/-- A399747: The sum of divisors d of n such that n/d is a perfect power (A001597).

Offset 1, canonical program `A399747.P17310883521128029216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399747 (n : ℕ) : ℤ :=
  A399747.P17310883521128029216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399748.P7728002996692195864

`∑{d}[n+1, A000010(#)*A075802((n+1)/#)]`
-/

namespace A399748.P7728002996692195864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A075802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399748.P7728002996692195864

noncomputable section

/-- A399748: The number of integers k from 1 to n such that gcd(n,k) is a perfect power (A001597).

Offset 1, canonical program `A399748.P7728002996692195864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399748 (n : ℕ) : ℤ :=
  A399748.P7728002996692195864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400435.P2332655486521523531

`A277011(eq[4, a(and(n, n-1))+1])` with `a(0)=1`
-/

namespace A400435.P2332655486521523531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A400435.P2332655486521523531

noncomputable section

/-- A400435: Integers that can be expressed as the sum of 3 factorials.

Offset 1, canonical program `A400435.P2332655486521523531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A400435 (n : ℕ) : ℤ :=
  A400435.P2332655486521523531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A400435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401237.P4794551307874443117

`eq[A185012(n), A401238(n)]`
-/

namespace A401237.P4794551307874443117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401237.P4794551307874443117

noncomputable section

/-- A401237: Numbers k such that prime(A235224(k)) divides k. Here we assume that prime(0) = 1, thus the initial term is 0.

Offset 1, canonical program `A401237.P4794551307874443117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 813 terms. -/
def A401237 (n : ℕ) : ℤ :=
  (A401237.P4794551307874443117.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 813 terms. -/
def A401237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401240.P6929582401376175809

`∑{e}[A342007(1+n), #]`
-/

namespace A401240.P6929582401376175809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A401240.P6929582401376175809

noncomputable section

/-- A401240: The number of divisors of n that are prime powers of the form p^(k*p), with p prime and k >= 1.

Offset 1, canonical program `A401240.P6929582401376175809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401240 (n : ℕ) : ℤ :=
  (A401240.P6929582401376175809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284562.P871243006331403344

`A227349(n)/A284569(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284562.P871243006331403344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227349 n : ℚ) / (A284569 n : ℚ)

end

end A284562.P871243006331403344

noncomputable section

/-- A284562: Product / LCM of the lengths of 1-runs in binary representation of n: a(n) = A227349(n) / A284569(n).

Offset 0, canonical program `A284562.P871243006331403344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284569, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284562 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284562.P871243006331403344.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284569, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286575.P2149681113595504666

`A037445(A005940(1+n))`
-/

namespace A286575.P2149681113595504666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A005940 (1 + n)).toNat

end

end A286575.P2149681113595504666

noncomputable section

/-- A286575: Run-length transform of A001316.

Offset 0, canonical program `A286575.P2149681113595504666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286575 (n : ℕ) : ℤ :=
  A286575.P2149681113595504666.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295102.P4057559906805914940

`∩[A048098(n+1), A365829(n+1)]`
-/

namespace A295102.P4057559906805914940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295102.P4057559906805914940

noncomputable section

/-- A295102: Squarefree numbers n that are sqrt(n)-smooth: if prime p|n then p^2 <= n.

Offset 1, canonical program `A295102.P4057559906805914940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A295102 (n : ℕ) : ℤ :=
  (A295102.P4057559906805914940.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A295102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295893.P2774007442497314762

`A000035(A295894(n)+A295894(2*n))`
-/

namespace A295893.P2774007442497314762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A295894 n + A295894 (2 * n)).toNat

end

end A295893.P2774007442497314762

noncomputable section

/-- A295893: a(n) = 1 if in Doudna-tree (A005940) the contents of the node n and its left-hand child have binary weights with different parity, 0 otherwise.

Offset 0, canonical program `A295893.P2774007442497314762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295893 (n : ℕ) : ℤ :=
  A295893.P2774007442497314762.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295893.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A297165.P1652888233073832174

`A341511(∑[abs(char[1]-1+n)])`
-/

namespace A297165.P1652888233073832174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 1 + (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297165.P1652888233073832174

noncomputable section

/-- A297165: Permutation of natural numbers: a(n) = A005940(2+A156552(n)), a(0) = 1.

Offset 0, canonical program `A297165.P1652888233073832174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A297165 (n : ℕ) : ℤ :=
  A297165.P1652888233073832174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A297165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305053.P7789054138584323973

`A305054(n+1)-A001221(n+1)`
-/

namespace A305053.P7789054138584323973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (n + 1) - A001221 (n + 1)

end

end A305053.P7789054138584323973

noncomputable section

/-- A305053: If n = Product_i prime(x_i)^k_i, then a(n) = Sum_i k_i * omega(x_i) - omega(n), where omega = A001221 is number of distinct prime factors.

Offset 1, canonical program `A305053.P7789054138584323973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305054, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305053 (n : ℕ) : ℤ :=
  A305053.P7789054138584323973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305054, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307517.P14369856607167828946

`∪[A000977(n+1), A065201(n+1)]`
-/

namespace A307517.P14369856607167828946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307517.P14369856607167828946

noncomputable section

/-- A307517: Numbers with at least two not necessarily distinct prime factors less than the largest prime factor.

Offset 1, canonical program `A307517.P14369856607167828946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307517 (n : ℕ) : ℤ :=
  (A307517.P14369856607167828946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310374.P11349914132477843547

`(A310378(n)+A310367(n))/2`
-/

namespace A310374.P11349914132477843547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310378 n + A310367 n : ℚ) / 2

end

end A310374.P11349914132477843547

noncomputable section

/-- A310374: Coordination sequence Gal.6.245.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310374.P11349914132477843547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A310374 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A310374.P11349914132477843547.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A310374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311506.P16000641395129757266

`A004277(n)+A314736(n)-A072154(n)`
-/

namespace A311506.P16000641395129757266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A314736 n - A072154 n)

end

end A311506.P16000641395129757266

noncomputable section

/-- A311506: Coordination sequence Gal.5.29.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311506.P16000641395129757266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A311506 (n : ℕ) : ℤ :=
  A311506.P16000641395129757266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A311506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311523.P10353843342915218177

`abs(A008592(n)-A315743(n))`
-/

namespace A311523.P10353843342915218177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315743 n|

end

end A311523.P10353843342915218177

noncomputable section

/-- A311523: Coordination sequence Gal.6.119.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311523.P10353843342915218177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A311523 (n : ℕ) : ℤ :=
  A311523.P10353843342915218177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A311523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311554.P133304117598951157

`A311549(n)+A004524(A099480(n))`
-/

namespace A311554.P133304117598951157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + A004524 (A099480 n).toNat

end

end A311554.P133304117598951157

noncomputable section

/-- A311554: Coordination sequence Gal.6.134.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311554.P133304117598951157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2403 terms. -/
def A311554 (n : ℕ) : ℤ :=
  A311554.P133304117598951157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2403 terms. -/
def A311554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311633.P17424544686150266232

`A314736(n)-A128834(A004396(n))`
-/

namespace A311633.P17424544686150266232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n - A128834 (A004396 n).toNat

end

end A311633.P17424544686150266232

noncomputable section

/-- A311633: Coordination sequence Gal.5.100.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311633.P17424544686150266232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A311633 (n : ℕ) : ℤ :=
  A311633.P17424544686150266232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A311633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312152.P14206861352301570908

`A004396(n)+A311549(n)-A004525(n)`
-/

namespace A312152.P14206861352301570908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311549 n - A004525 n)

end

end A312152.P14206861352301570908

noncomputable section

/-- A312152: Coordination sequence Gal.6.134.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312152.P14206861352301570908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A312152 (n : ℕ) : ℤ :=
  A312152.P14206861352301570908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A312152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313845.P7215698163674726813

`A313874(n)+A313887(n)-A313908(n)`
-/

namespace A313845.P7215698163674726813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313874 n + (A313887 n - A313908 n)

end

end A313845.P7215698163674726813

noncomputable section

/-- A313845: Coordination sequence Gal.6.649.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313845.P7215698163674726813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313845 (n : ℕ) : ℤ :=
  A313845.P7215698163674726813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314095.P10319490928376575526

`A099479(A315743(n)+A004273(n))`
-/

namespace A314095.P10319490928376575526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A315743 n + A004273 n).toNat

end

end A314095.P10319490928376575526

noncomputable section

/-- A314095: Coordination sequence Gal.6.204.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314095.P10319490928376575526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A314095 (n : ℕ) : ℤ :=
  A314095.P10319490928376575526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A314095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316413.P10929221668193406347

`eq[1, A326568(2+n)]+2`
-/

namespace A316413.P10929221668193406347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A316413.P10929221668193406347

noncomputable section

/-- A316413: Heinz numbers of integer partitions whose length divides their sum.

Offset 1, canonical program `A316413.P10929221668193406347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316413 (n : ℕ) : ℤ :=
  (A316413.P10929221668193406347.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325755.P16934232408235927233

`record[(n+1)*A353566(n+1)]`
-/

namespace A325755.P16934232408235927233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325755.P16934232408235927233

noncomputable section

/-- A325755: Numbers n divisible by their prime shadow A181819(n).

Offset 1, canonical program `A325755.P16934232408235927233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2394 terms. -/
def A325755 (n : ℕ) : ℤ :=
  A325755.P16934232408235927233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2394 terms. -/
def A325755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326567.P521325717167695711

`A056239(n+2)/A373381(n+2)`
-/

namespace A326567.P521325717167695711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 2) : ℚ) / (A373381 (n + 2) : ℚ)

end

end A326567.P521325717167695711

noncomputable section

/-- A326567: Numerator of the average of the multiset of prime indices of n.

Offset 2, canonical program `A326567.P521325717167695711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8499 terms. -/
def A326567 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A326567.P521325717167695711.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8499 terms. -/
def A326567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327936.P4864635730061713383

`∏{p}[A342007(1+n), #]`
-/

namespace A327936.P4864635730061713383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A327936.P4864635730061713383

noncomputable section

/-- A327936: Multiplicative with a(p^e) = p if e >= p, otherwise 1.

Offset 1, canonical program `A327936.P4864635730061713383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327936 (n : ℕ) : ℤ :=
  (A327936.P4864635730061713383.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328241.P10344479185456080194

`comp[A328242(1+n)]`
-/

namespace A328241.P10344479185456080194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328242 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328241.P10344479185456080194

noncomputable section

/-- A328241: Numbers n for which A327860(n) = A003415(A276086(n)) is not a squarefree number.

Offset 1, canonical program `A328241.P10344479185456080194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328241 (n : ℕ) : ℤ :=
  (A328241.P10344479185456080194.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329761.P2221005200150248452

`∩[A174813(n+1), A386113(n+1)]`
-/

namespace A329761.P2221005200150248452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P2221005200150248452

noncomputable section

/-- A329761: Primes having only {1, 3, 9} as digits.

Offset 1, canonical program `A329761.P2221005200150248452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. -/
def A329761 (n : ℕ) : ℤ :=
  (A329761.P2221005200150248452.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. -/
def A329761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339273.P10031977836032368190

`4*A000404(n+1)`
-/

namespace A339273.P10031977836032368190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000404 (n + 1)

end

end A339273.P10031977836032368190

noncomputable section

/-- A339273: Sums of two nonzero even squares.

Offset 1, canonical program `A339273.P10031977836032368190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339273 (n : ℕ) : ℤ :=
  A339273.P10031977836032368190.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339273.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342082.P14034099155736134169

`∪[A068567(n+1), A105441(n+1)]`
-/

namespace A342082.P14034099155736134169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342082.P14034099155736134169

noncomputable section

/-- A342082: Numbers with an inferior odd divisor > 1.

Offset 1, canonical program `A342082.P14034099155736134169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342082 (n : ℕ) : ℤ :=
  (A342082.P14034099155736134169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342921.P18050181671640434950

`A344028(A048678(n))`
-/

namespace A342921.P18050181671640434950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 (A048678 n).toNat

end

end A342921.P18050181671640434950

noncomputable section

/-- A342921: a(n) = A003415(A019565(n)).

Offset 0, canonical program `A342921.P18050181671640434950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A342921 (n : ℕ) : ℤ :=
  A342921.P18050181671640434950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A342921.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A348341.P11276104296330033514`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348341 (n : ℕ) : ℤ :=
  A348341.P11276104296330033514.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355769.P9165720454597640322

`∩[A000404(n+1)-1, A000404(n+1)]`
-/

namespace A355769.P9165720454597640322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355769.P9165720454597640322

noncomputable section

/-- A355769: Numbers k such that both k and k+1 can be written as the sum of two nonzero squares.

Offset 1, canonical program `A355769.P9165720454597640322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2130 terms. -/
def A355769 (n : ℕ) : ℤ :=
  (A355769.P9165720454597640322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2130 terms. -/
def A355769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360393.P1701064018632553590

`∪[A360395(n+1), A360397(n+1)]`
-/

namespace A360393.P1701064018632553590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360393.P1701064018632553590

noncomputable section

/-- A360393: Complement of A360392.

Offset 1, canonical program `A360393.P1701064018632553590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360393 (n : ℕ) : ℤ :=
  (A360393.P1701064018632553590.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360793.P3059048481711579706

`filter[A391497(n+1), A359466(#)]`
-/

namespace A360793.P3059048481711579706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A360793.P3059048481711579706

noncomputable section

/-- A360793: Numbers of the form m*p^3, where m > 1 is squarefree and prime p does not divide m.

Offset 1, canonical program `A360793.P3059048481711579706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7407 terms. -/
def A360793 (n : ℕ) : ℤ :=
  A360793.P3059048481711579706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7407 terms. -/
def A360793.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A368106.P645412121077292751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368106 (n : ℕ) : ℤ :=
  A368106.P645412121077292751.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368406.P237978820823627177

`eq[5, a(n-1)+A064179(n)]` with `a(0)=-4, a(1)=6`
-/

namespace A368406.P237978820823627177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-4, 6] fun n f2 =>
  f2 (n - 1) + A064179 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A368406.P237978820823627177

noncomputable section

/-- A368406: Numbers k such that A368405(k) = 0.

Offset 1, canonical program `A368406.P237978820823627177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 780 terms. -/
def A368406 (n : ℕ) : ℤ :=
  (A368406.P237978820823627177.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 780 terms. -/
def A368406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374107.P2581602008718152725

`A373585(n+1)*A374045(n+1)`
-/

namespace A374107.P2581602008718152725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373585 (n + 1) * A374045 (n + 1)

end

end A374107.P2581602008718152725

noncomputable section

/-- A374107: a(n) = 1 if A113177(n) and A328845(n) are both even, otherwise 0, where A113177 is fully additive with a(p) = Fibonacci(p) and A328845 is the first Fibonacci-based variant of the arithmetic derivative.

Offset 1, canonical program `A374107.P2581602008718152725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374045, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374107 (n : ℕ) : ℤ :=
  A374107.P2581602008718152725.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374045, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374107.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375076.P5343439789459528226

`filter[A391497(n+1), A295316(#)]`
-/

namespace A375076.P5343439789459528226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A375076.P5343439789459528226

noncomputable section

/-- A375076: Numbers whose prime factorization exponents include at least one 1, at least one 3 and no other exponents.

Offset 1, canonical program `A375076.P5343439789459528226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076 (n : ℕ) : ℤ :=
  A375076.P5343439789459528226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382413.P11744750518506322208

`comp[A382412(1+n)]`
-/

namespace A382413.P11744750518506322208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382412 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382413.P11744750518506322208

noncomputable section

/-- A382413: Numbers with at least one zero in their base-7 representation.

Offset 1, canonical program `A382413.P11744750518506322208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382413 (n : ℕ) : ℤ :=
  (A382413.P11744750518506322208.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382413.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A382490.P15041511037275720396`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382490 (n : ℕ) : ℤ :=
  A382490.P15041511037275720396.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383784.P10667840819489389519

`∪[A000404(1+n), A003136(n+1)]`
-/

namespace A383784.P10667840819489389519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383784.P10667840819489389519

noncomputable section

/-- A383784: Norms of vectors in any regular planar tiling (square or A2 lattice).

Offset 1, canonical program `A383784.P10667840819489389519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383784 (n : ℕ) : ℤ :=
  (A383784.P10667840819489389519.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386322.P5685043808971806302

`∩[A038612(n+1), A038618(n+1)]`
-/

namespace A386322.P5685043808971806302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386322.P5685043808971806302

noncomputable section

/-- A386322: Primes without {0, 4} as digits.

Offset 1, canonical program `A386322.P5685043808971806302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6131 terms. -/
def A386322 (n : ℕ) : ℤ :=
  (A386322.P5685043808971806302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6131 terms. -/
def A386322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386336.P17651694690908270259

`∩[A038604(n+1), A038612(n+1)]`
-/

namespace A386336.P17651694690908270259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386336.P17651694690908270259

noncomputable section

/-- A386336: Primes without {2, 4} as digits.

Offset 1, canonical program `A386336.P17651694690908270259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6038 terms. -/
def A386336 (n : ℕ) : ℤ :=
  (A386336.P17651694690908270259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6038 terms. -/
def A386336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386340.P1648994612721377908

`∩[A038611(n+1), A038612(n+1)]`
-/

namespace A386340.P1648994612721377908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386340.P1648994612721377908

noncomputable section

/-- A386340: Primes without {3, 4} as digits.

Offset 1, canonical program `A386340.P1648994612721377908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4563 terms. -/
def A386340 (n : ℕ) : ℤ :=
  (A386340.P1648994612721377908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4563 terms. -/
def A386340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386345.P11453822956591974223

`∩[A038612(n+1), A038613(n+1)]`
-/

namespace A386345.P11453822956591974223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386345.P11453822956591974223

noncomputable section

/-- A386345: Primes without {4, 5} as digits.

Offset 1, canonical program `A386345.P11453822956591974223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6132 terms. -/
def A386345 (n : ℕ) : ℤ :=
  (A386345.P11453822956591974223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6132 terms. -/
def A386345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386346.P8892965724520616261

`∩[A038612(n+1), A038614(n+1)]`
-/

namespace A386346.P8892965724520616261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386346.P8892965724520616261

noncomputable section

/-- A386346: Primes without {4, 6} as digits.

Offset 1, canonical program `A386346.P8892965724520616261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6157 terms. -/
def A386346 (n : ℕ) : ℤ :=
  (A386346.P8892965724520616261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6157 terms. -/
def A386346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386347.P3539177770067542842

`∩[A038612(n+1), A038615(n+1)]`
-/

namespace A386347.P3539177770067542842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386347.P3539177770067542842

noncomputable section

/-- A386347: Primes without {4, 7} as digits.

Offset 1, canonical program `A386347.P3539177770067542842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A386347 (n : ℕ) : ℤ :=
  (A386347.P3539177770067542842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A386347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386348.P14876660133788585214

`∩[A038612(n+1), A038616(n+1)]`
-/

namespace A386348.P14876660133788585214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386348.P14876660133788585214

noncomputable section

/-- A386348: Primes without {4, 8} as digits.

Offset 1, canonical program `A386348.P14876660133788585214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6635 terms. -/
def A386348 (n : ℕ) : ℤ :=
  (A386348.P14876660133788585214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6635 terms. -/
def A386348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387056.P16565833962943270361

`lt[(n+1)%A037445(n+1), 1]+1`
-/

namespace A387056.P16565833962943270361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A037445 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387056.P16565833962943270361

noncomputable section

/-- A387056: Numbers k that are divisible by the number of infinitary divisors of k.

Offset 1, canonical program `A387056.P16565833962943270361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A387056 (n : ℕ) : ℤ :=
  (A387056.P16565833962943270361.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A387056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391184.P7621874213617609093

`∑{d}[n+1, A391183(#)]`
-/

namespace A391184.P7621874213617609093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A391183 d

end

end A391184.P7621874213617609093

noncomputable section

/-- A391184: The number of divisors of n that are of the form x^2 + 2*y^2 (A002479).

Offset 1, canonical program `A391184.P7621874213617609093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391184 (n : ℕ) : ℤ :=
  A391184.P7621874213617609093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391185.P11876342438448710948

`∑{d}[n+1, A391183(#)*#]`
-/

namespace A391185.P11876342438448710948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A391183 d * (d : ℤ)

end

end A391185.P11876342438448710948

noncomputable section

/-- A391185: The sum of the divisors of n that are of the form x^2 + 2*y^2 (A002479).

Offset 1, canonical program `A391185.P11876342438448710948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391185 (n : ℕ) : ℤ :=
  A391185.P11876342438448710948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391185.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393044.P14233745857420468305

`filter[A393043(1+n), A374045(#)]`
-/

namespace A393044.P14233745857420468305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393043 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A393044.P14233745857420468305

noncomputable section

/-- A393044: Numbers whose smallest prime factor is not 3, while the least prime not dividing their arithmetic derivative is 3.

Offset 1, canonical program `A393044.P14233745857420468305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8111 terms. -/
def A393044 (n : ℕ) : ℤ :=
  A393044.P14233745857420468305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8111 terms. -/
def A393044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396597.P7652329124065219865

`∩[A007774(n+1), A132982(n+1)]`
-/

namespace A396597.P7652329124065219865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396597.P7652329124065219865

noncomputable section

/-- A396597: Numbers m with exactly two distinct prime factors q and p such that m = q^k * p^j and p > q^k with k, j >= 1.

Offset 1, canonical program `A396597.P7652329124065219865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5883 terms. -/
def A396597 (n : ℕ) : ℤ :=
  (A396597.P7652329124065219865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5883 terms. -/
def A396597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400143.P16016371540924763515

`A000005(n+1)*A037445(n+1)/A400142(n+1)`
-/

namespace A400143.P16016371540924763515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A037445 (n + 1) : ℚ) / (A400142 (n + 1) : ℚ)

end

end A400143.P16016371540924763515

noncomputable section

/-- A400143: The number of divisors d of n such that gcid(d, n/d) is a power of 2, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400143.P16016371540924763515`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400143 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400143.P16016371540924763515.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286314.P11865172362924914077

`A008440(10^n)`
-/

namespace A286314.P11865172362924914077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008440 (10 ^ n)

end

end A286314.P11865172362924914077

noncomputable section

/-- A286314: Number of representations of 10^n as sum of 6 triangular numbers.

Offset 0, canonical program `A286314.P11865172362924914077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008440, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286314 (n : ℕ) : ℤ :=
  A286314.P11865172362924914077.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008440, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297033.P11360601339505998570

`A297035(A037466(1+n))`
-/

namespace A297033.P11360601339505998570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297035 (A037466 (1 + n)).toNat

end

end A297033.P11360601339505998570

noncomputable section

/-- A297033: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-5 digits of n; see Comments.

Offset 1, canonical program `A297033.P11360601339505998570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2654 terms. -/
def A297033 (n : ℕ) : ℤ :=
  A297033.P11360601339505998570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2654 terms. -/
def A297033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297034.P4460935165645759774

`A297035(A020657(2+n))`
-/

namespace A297034.P4460935165645759774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297035 (A020657 (2 + n)).toNat

end

end A297034.P4460935165645759774

noncomputable section

/-- A297034: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-6 digits of n; see Comments.

Offset 1, canonical program `A297034.P4460935165645759774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5440 terms. -/
def A297034 (n : ℕ) : ℤ :=
  A297034.P4460935165645759774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5440 terms. -/
def A297034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322432.P15750206088003482334

`eq[0, A121361(n)]`
-/

namespace A322432.P15750206088003482334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P15750206088003482334

noncomputable section

/-- A322432: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^14 is zero.

Offset 1, canonical program `A322432.P15750206088003482334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. -/
def A322432 (n : ℕ) : ℤ :=
  (A322432.P15750206088003482334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. -/
def A322432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337141.P10614248540810673465

`comp[A020657(1+n)]`
-/

namespace A337141.P10614248540810673465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337141.P10614248540810673465

noncomputable section

/-- A337141: Numbers having at least one 6 in their representation in base 7.

Offset 1, canonical program `A337141.P10614248540810673465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337141 (n : ℕ) : ℤ :=
  (A337141.P10614248540810673465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314826.P16073624034831469492

`abs(A008592(n)-A314165(n))`
-/

namespace A314826.P16073624034831469492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314165 n|

end

end A314826.P16073624034831469492

noncomputable section

/-- A314826: Coordination sequence Gal.6.129.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314826.P16073624034831469492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314826 (n : ℕ) : ℤ :=
  A314826.P16073624034831469492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286143.P15931790355301300039

`1/2*(2+(A055881(n+1)+A046523(n+1))²-A055881(n+1)-3*A046523(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286143.P15931790355301300039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A055881 (n + 1) + A046523 (n + 1)) ^ 2 - A055881 (n + 1) - 3 * A046523 (n + 1) : ℚ)

end

end A286143.P15931790355301300039

noncomputable section

/-- A286143: a(n) = (1/2)*(2 + ((A055881(n)+A046523(n))^2) - A055881(n) - 3*A046523(n)), where A055881(n) is the largest m such that m! divides n, and A046523(n) is the smallest number with same prime signature as n.

Offset 1, canonical program `A286143.P15931790355301300039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286143 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286143.P15931790355301300039.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306878.P4805081328251921798

`n-A061357(n+1)-A291564(n+1)`
-/

namespace A306878.P4805081328251921798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A061357 (n + 1) - A291564 (n + 1)

end

end A306878.P4805081328251921798

noncomputable section

/-- A306878: Number of 0 < k < n such that n-k and n+k are both nonprimes.

Offset 1, canonical program `A306878.P4805081328251921798`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306878 (n : ℕ) : ℤ :=
  A306878.P4805081328251921798.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318885.P344528793777614246

`A348717(A290641(n+1))`
-/

namespace A318885.P344528793777614246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A290641 (n + 1)).toNat

end

end A318885.P344528793777614246

noncomputable section

/-- A318885: If n = p^a * q^b * ... * r^c, with p < q < r primes, with nonzero exponents a, b, c, then a(n) = prime(1+p-p)^a * prime(1+q-p)^b * ... * prime(1+r-p)^c; a(1) = 1.

Offset 1, canonical program `A318885.P344528793777614246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. -/
def A318885 (n : ℕ) : ℤ :=
  A318885.P344528793777614246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. -/
def A318885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324101.P15159575059534964655

`lt[-1, A324100(n+2)]+2`
-/

namespace A324101.P15159575059534964655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324100 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A324101.P15159575059534964655

noncomputable section

/-- A324101: Numbers whose "unary-binary encoded prime factorization" (A156552) is not A000120-deficient.

Offset 1, canonical program `A324101.P15159575059534964655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4133 terms. -/
def A324101 (n : ℕ) : ℤ :=
  (A324101.P15159575059534964655.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4133 terms. -/
def A324101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324113.P3350041187226729639

`round(sin(atan(A324100(n+2))))`
-/

namespace A324113.P3350041187226729639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A324100 (n + 2) : ℝ)))

end

end A324113.P3350041187226729639

noncomputable section

/-- A324113: a(n) = -1, 0 or +1 depending on whether A156552(n) is A000120-deficient, -perfect or -abundant: a(n) = sign(A324100(n)).

Offset 2, canonical program `A324113.P3350041187226729639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4472 terms. -/
def A324113 (n : ℕ) : ℤ :=
  A324113.P3350041187226729639.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4472 terms. -/
def A324113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329616.P3158888279503582884

`A267116(A329600(n+1))`
-/

namespace A329616.P3158888279503582884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (A329600 (n + 1)).toNat

end

end A329616.P3158888279503582884

noncomputable section

/-- A329616: Bitwise-OR of exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

Offset 1, canonical program `A329616.P3158888279503582884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329616 (n : ℕ) : ℤ :=
  A329616.P3158888279503582884.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329616.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331591.P9034982908823654082

`A000120(A267116(n+1))`
-/

namespace A331591.P9034982908823654082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A267116 (n + 1)).toNat

end

end A331591.P9034982908823654082

noncomputable section

/-- A331591: a(n) is the number of distinct prime factors of A225546(n), or equally, number of distinct prime factors of A293442(n).

Offset 1, canonical program `A331591.P9034982908823654082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331591 (n : ℕ) : ℤ :=
  A331591.P9034982908823654082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334090.P14988327710056843915

`Δ[∑{d}[n, A307742(#)]]`
-/

namespace A334090.P14988327710056843915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A307742 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334090.P14988327710056843915

noncomputable section

/-- A334090: a(1) = 0, and then after the first differences of A064097.

Offset 1, canonical program `A334090.P14988327710056843915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334090 (n : ℕ) : ℤ :=
  A334090.P14988327710056843915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339361.P14365663661703999177

`A003963(A006881(n+1))`
-/

namespace A339361.P14365663661703999177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A006881 (n + 1)).toNat

end

end A339361.P14365663661703999177

noncomputable section

/-- A339361: Product of prime indices of the n-th squarefree semiprime.

Offset 1, canonical program `A339361.P14365663661703999177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339361 (n : ℕ) : ℤ :=
  A339361.P14365663661703999177.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340675.P4314488942714928268

`2^A048298(A267116(n+1))`
-/

namespace A340675.P4314488942714928268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A048298 (A267116 (n + 1)).toNat : ℤ)

end

end A340675.P4314488942714928268

noncomputable section

/-- A340675: Exponential of Mangoldt function conjugated by Tek's flip: a(n) = A225546(A014963(A225546(n))).

Offset 1, canonical program `A340675.P4314488942714928268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048298, A267116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340675 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340675.P4314488942714928268.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048298, A267116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341446.P320362893789303954

`filter[A340932(n+1), A257991(#)]`
-/

namespace A341446.P320362893789303954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257991 (f1 j).toNat = 1) n)

end

end A341446.P320362893789303954

noncomputable section

/-- A341446: Heinz numbers of integer partitions whose only odd part is the smallest.

Offset 1, canonical program `A341446.P320362893789303954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2751 terms. -/
def A341446 (n : ℕ) : ℤ :=
  A341446.P320362893789303954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2751 terms. -/
def A341446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342530.P17095963351911615906

`∑{d}[n+1, A254578(#)]`
-/

namespace A342530.P17095963351911615906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254578 d

end

end A342530.P17095963351911615906

noncomputable section

/-- A342530: Number of strict chains of divisors ending with n and having distinct first quotients.

Offset 1, canonical program `A342530.P17095963351911615906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342530 (n : ℕ) : ℤ :=
  A342530.P17095963351911615906.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344616.P9154132711565358048

`A257991(A122111(n+1))`
-/

namespace A344616.P9154132711565358048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A122111 (n + 1)).toNat

end

end A344616.P9154132711565358048

noncomputable section

/-- A344616: Alternating sum of the integer partition with Heinz number n.

Offset 1, canonical program `A344616.P9154132711565358048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257991, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344616 (n : ℕ) : ℤ :=
  A344616.P9154132711565358048.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257991, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344616.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345374.P2600913004741557822

`A257991(∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A345374.P2600913004741557822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A345374.P2600913004741557822

noncomputable section

/-- A345374: Number of unitary prime divisors of n whose prime index is odd.

Offset 1, canonical program `A345374.P2600913004741557822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345374 (n : ℕ) : ℤ :=
  A345374.P2600913004741557822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348029.P15301953817482989203

`A003959(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348029.P15301953817482989203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A000203 (n + 1)

end

end A348029.P15301953817482989203

noncomputable section

/-- A348029: a(n) = A003959(n) - sigma(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors.

Offset 1, canonical program `A348029.P15301953817482989203`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348029 (n : ℕ) : ℤ :=
  A348029.P15301953817482989203.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348047.P7887878475414206480

`gcd(A000203(n+1), A003959(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348047.P7887878475414206480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A003959 (n + 1))

end

end A348047.P7887878475414206480

noncomputable section

/-- A348047: a(n) = gcd(sigma(n), A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A348047.P7887878475414206480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348047 (n : ℕ) : ℤ :=
  (A348047.P7887878475414206480.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348507.P8468116905144779811

`A003959(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348507.P8468116905144779811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (n + 1 : ℤ)

end

end A348507.P8468116905144779811

noncomputable section

/-- A348507: a(n) = A003959(n) - n, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A348507.P8468116905144779811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348507 (n : ℕ) : ℤ :=
  A348507.P8468116905144779811.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348507.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348508.P7080885370460745572

`A003959(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348508.P7080885370460745572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (2 * (n + 1) : ℤ)

end

end A348508.P7080885370460745572

noncomputable section

/-- A348508: a(n) = A003959(n) - 2*n, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A348508.P7080885370460745572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348508 (n : ℕ) : ℤ :=
  A348508.P7080885370460745572.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348512.P14338787327035426851

`A003959(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348512.P14338787327035426851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A000203 (n + 1)).toNat

end

end A348512.P14338787327035426851

noncomputable section

/-- A348512: a(n) = A003959(sigma(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A348512.P14338787327035426851`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348512 (n : ℕ) : ℤ :=
  A348512.P14338787327035426851.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348732.P348791247222302933

`A003959(n+1)-A034448(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348732.P348791247222302933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A034448 (n + 1)

end

end A348732.P348791247222302933

noncomputable section

/-- A348732: a(n) = A003959(n) - A034448(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

Offset 1, canonical program `A348732.P348791247222302933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348732 (n : ℕ) : ℤ :=
  A348732.P348791247222302933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348733.P387886665287851790

`gcd(A003959(n+1), A034448(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348733.P387886665287851790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003959 (n + 1)) (A034448 (n + 1))

end

end A348733.P387886665287851790

noncomputable section

/-- A348733: a(n) = gcd(A003959(n), A034448(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

Offset 1, canonical program `A348733.P387886665287851790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348733 (n : ℕ) : ℤ :=
  (A348733.P387886665287851790.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348734.P10246028385959226632

`A003959(n+1)/gcd(A003959(n+1), A034448(n+1))`
-/

namespace A348734.P10246028385959226632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (Int.gcd (A003959 (n + 1)) (A034448 (n + 1)) : ℚ)

end

end A348734.P10246028385959226632

noncomputable section

/-- A348734: Numerator of Product((p+1)^e / ((p^e)+1)), when n = Product(p^e), with p primes, and e their exponents.

Offset 1, canonical program `A348734.P10246028385959226632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348734.P10246028385959226632.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348929.P10911149095243660924

`gcd(n+1, A003959(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348929.P10911149095243660924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003959 (n + 1))

end

end A348929.P10911149095243660924

noncomputable section

/-- A348929: a(n) = gcd(n, A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A348929.P10911149095243660924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348929 (n : ℕ) : ℤ :=
  (A348929.P10911149095243660924.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348944.P9603351630688322908

`1/2*(A003959(n+1)+A034448(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348944.P9603351630688322908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A003959 (n + 1) + A034448 (n + 1) : ℚ)

end

end A348944.P9603351630688322908

noncomputable section

/-- A348944: a(n) = (1/2) * (A003959(n)+A034448(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

Offset 1, canonical program `A348944.P9603351630688322908`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348944 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348944.P9603351630688322908.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348949.P12293856470781191875

`A003959(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348949.P12293856470781191875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A276086 n).toNat

end

end A348949.P12293856470781191875

noncomputable section

/-- A348949: a(n) = A003959(A276086(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e, and A276086 gives the prime product form of primorial base expansion of n.

Offset 0, canonical program `A348949.P12293856470781191875`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348949 (n : ℕ) : ℤ :=
  A348949.P12293856470781191875.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348970.P15142957412835109765

`A003959(n+1)-A129283(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348970.P15142957412835109765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A129283 (n + 1)

end

end A348970.P15142957412835109765

noncomputable section

/-- A348970: a(n) = A003959(n) - A129283(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348970.P15142957412835109765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348970 (n : ℕ) : ℤ :=
  A348970.P15142957412835109765.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348972.P942558158600498541

`gcd(A003959(n+1), A129283(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348972.P942558158600498541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003959 (n + 1)) (A129283 (n + 1))

end

end A348972.P942558158600498541

noncomputable section

/-- A348972: a(n) = gcd(A003959(n), A129283(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348972.P942558158600498541`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348972 (n : ℕ) : ℤ :=
  (A348972.P942558158600498541.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349170.P1350276801949496955

`∑{d}[n+1, #*A003959((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349170.P1350276801949496955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349170.P1350276801949496955

noncomputable section

/-- A349170: a(n) = Sum_{d|n} d * A003959(n/d), where A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349170.P1350276801949496955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349170 (n : ℕ) : ℤ :=
  A349170.P1350276801949496955.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349171.P9405223100301962043

`∑{d}[n+1, A000010(#)*A003959((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349171.P9405223100301962043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349171.P9405223100301962043

noncomputable section

/-- A349171: a(n) = Sum_{d|n} phi(d) * A003959(n/d), where A003959 is fully multiplicative with a(p) = (p+1), and phi is Euler totient function.

Offset 1, canonical program `A349171.P9405223100301962043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349171 (n : ℕ) : ℤ :=
  A349171.P9405223100301962043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349173.P6335324146396216170

`∑{d}[n+1, A003415(#)*A003959((n+1)/#)]`
-/

namespace A349173.P6335324146396216170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349173.P6335324146396216170

noncomputable section

/-- A349173: Dirichlet convolution of A003415 with A003959, where A003415 is the arithmetic derivative and A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349173.P6335324146396216170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349173 (n : ℕ) : ℤ :=
  A349173.P6335324146396216170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349356.P8198575397324621473

`∑{d}[n+1, A003959((n+1)/#)*A097945(#)]`
-/

namespace A349356.P8198575397324621473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A097945 d

end

end A349356.P8198575397324621473

noncomputable section

/-- A349356: Dirichlet convolution of A003959 with A097945 (Dirichlet inverse of A003958), where A003958 and A003959 are fully multiplicative with a(p) = p-1 and p+1 respectively.

Offset 1, canonical program `A349356.P8198575397324621473`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349356 (n : ℕ) : ℤ :=
  A349356.P8198575397324621473.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349619.P2603731301363986411

`∑{d}[n+1, A003415((n+1)/#)*A349340(#)]`
-/

namespace A349619.P2603731301363986411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A349340 d

end

end A349619.P2603731301363986411

noncomputable section

/-- A349619: Dirichlet convolution of A003415 with the Dirichlet inverse of A003557.

Offset 1, canonical program `A349619.P2603731301363986411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349619 (n : ℕ) : ℤ :=
  A349619.P2603731301363986411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349619.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351435.P6108883380872985515

`A003959(n+1)*A048250(n+1)`
-/

namespace A351435.P6108883380872985515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A048250 (n + 1)

end

end A351435.P6108883380872985515

noncomputable section

/-- A351435: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)^(k_j + 1)).

Offset 1, canonical program `A351435.P6108883380872985515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351435 (n : ℕ) : ℤ :=
  A351435.P6108883380872985515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351569.P8738686612960089184

`A000203(n+1)/A351568(n+1)`
-/

namespace A351569.P8738686612960089184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351568 (n + 1) : ℚ)

end

end A351569.P8738686612960089184

noncomputable section

/-- A351569: Sum of divisors of the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A351569.P8738686612960089184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351569.P8738686612960089184.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351570.P16087539898957203616

`A003415(A351568(n+1))`
-/

namespace A351570.P16087539898957203616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A351568 (n + 1)).toNat

end

end A351570.P16087539898957203616

noncomputable section

/-- A351570: Arithmetic derivative of the sum of the divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A351570.P16087539898957203616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351570 (n : ℕ) : ℤ :=
  A351570.P16087539898957203616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351573.P12299179014479245270

`A003415(A350389(n+1))`
-/

namespace A351573.P12299179014479245270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A350389 (n + 1)).toNat

end

end A351573.P12299179014479245270

noncomputable section

/-- A351573: Arithmetic derivative of the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A351573.P12299179014479245270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351573 (n : ℕ) : ℤ :=
  A351573.P12299179014479245270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351573.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351576.P4484530906469466773

`A277021(A277012(n))`
-/

namespace A351576.P4484530906469466773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A277012 n).toNat

end

end A351576.P4484530906469466773

noncomputable section

/-- A351576: Factorial base expansion of n reinterpreted as a primorial base expansion, then converted back to decimal.

Offset 0, canonical program `A351576.P4484530906469466773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A351576 (n : ℕ) : ℤ :=
  A351576.P4484530906469466773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A351576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351752.P9465324655857387084

`floor(A079667(n+1)/A038548(n+1))`
-/

namespace A351752.P9465324655857387084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079667 (n + 1) : ℚ) / (A038548 (n + 1) : ℚ)⌋

end

end A351752.P9465324655857387084

noncomputable section

/-- A351752: Floor of the average of the numbers |x-y| over all pairs (x,y) with x*y = n, x <= y.

Offset 1, canonical program `A351752.P9465324655857387084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351752 (n : ℕ) : ℤ :=
  A351752.P9465324655857387084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351952.P17390184491718313601

`A083345(A276076(n))`
-/

namespace A351952.P17390184491718313601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A276076 n).toNat

end

end A351952.P17390184491718313601

noncomputable section

/-- A351952: a(n) = A351950(n) / A351577(n).

Offset 0, canonical program `A351952.P17390184491718313601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351952 (n : ℕ) : ℤ :=
  A351952.P17390184491718313601.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352825.P16191883043105001800

`A001222(n+1)-A352824(n+1)`
-/

namespace A352825.P16191883043105001800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A352824 (n + 1)

end

end A352825.P16191883043105001800

noncomputable section

/-- A352825: Number of nonfixed points y(i) != i, where y is the integer partition with Heinz number n.

Offset 1, canonical program `A352825.P16191883043105001800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352825 (n : ℕ) : ℤ :=
  A352825.P16191883043105001800.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352825.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353684.P14218680097169036739

`lt[0, A353682(1+n)]+1`
-/

namespace A353684.P14218680097169036739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353684.P14218680097169036739

noncomputable section

/-- A353684: Numbers k for which phi(sigma(k)) >= phi(k).

Offset 1, canonical program `A353684.P14218680097169036739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353684 (n : ℕ) : ℤ :=
  (A353684.P14218680097169036739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354033.P2787181633188764854

`A174275(n+1)-A354031(n+1)`
-/

namespace A354033.P2787181633188764854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (n + 1) - A354031 (n + 1)

end

end A354033.P2787181633188764854

noncomputable section

/-- A354033: a(n) = 1 if n > 1 and n is a power of a prime of the form 4m+3, otherwise 0.

Offset 1, canonical program `A354033.P2787181633188764854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174275, A354031, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354033 (n : ℕ) : ℤ :=
  A354033.P2787181633188764854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174275, A354031, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356451.P11012535178385442677

`A356448(n+1)/2`
-/

namespace A356451.P11012535178385442677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356448 (n + 1) : ℚ) / 2

end

end A356451.P11012535178385442677

noncomputable section

/-- A356451: Numbers k such that 4*k^2 is in A014567.

Offset 1, canonical program `A356451.P11012535178385442677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356451 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356451.P11012535178385442677.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356454.P58692963208807662

`A356452(n+1)/2`
-/

namespace A356454.P58692963208807662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356452 (n + 1) : ℚ) / 2

end

end A356454.P58692963208807662

noncomputable section

/-- A356454: Numbers k such that 4*k^2 is not in A014567; complement of A356451.

Offset 1, canonical program `A356454.P58692963208807662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356454 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356454.P58692963208807662.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358346.P10429080455784404753

`A034448(A350389(n+1))`
-/

namespace A358346.P10429080455784404753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A350389 (n + 1)).toNat

end

end A358346.P10429080455784404753

noncomputable section

/-- A358346: a(n) is the sum of the unitary divisors of n that are exponentially odd (A268335).

Offset 1, canonical program `A358346.P10429080455784404753`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358346 (n : ℕ) : ℤ :=
  A358346.P10429080455784404753.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358552.P818502783784525105

`1+a(A003963(1+n)-1)` with `a(0)=1`
-/

namespace A358552.P818502783784525105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (A003963 (1 + n) - 1).toNat

end

end A358552.P818502783784525105

noncomputable section

/-- A358552: Node-height of the rooted tree with Matula-Goebel number n. Number of nodes in the longest path from root to leaf.

Offset 1, canonical program `A358552.P818502783784525105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358552 (n : ℕ) : ℤ :=
  (A358552.P818502783784525105.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358759.P3980569333545813938

`1-A152822(n)-A358758(n)`
-/

namespace A358759.P3980569333545813938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A152822 n - A358758 n

end

end A358759.P3980569333545813938

noncomputable section

/-- A358759: a(n) = 1 if A358669(n) == 3 (mod 4), otherwise 0.

Offset 0, canonical program `A358759.P3980569333545813938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358758, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358759 (n : ℕ) : ℤ :=
  A358759.P3980569333545813938.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358758, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358844.P1103352583746953311

`comp[A358845(1+n)]`
-/

namespace A358844.P1103352583746953311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358845 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A358844.P1103352583746953311

noncomputable section

/-- A358844: Numbers k for which A276086(6*k) == 5 (mod 6), where A276086 is the primorial base exp-function.

Offset 1, canonical program `A358844.P1103352583746953311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A358844 (n : ℕ) : ℤ :=
  (A358844.P1103352583746953311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A358844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358846.P7566853143272665991

`A358842(6*n)`
-/

namespace A358846.P7566853143272665991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358842 (6 * n)

end

end A358846.P7566853143272665991

noncomputable section

/-- A358846: a(n) = 1 if A276086(6*n) == 5 (mod 6), otherwise 0, where A276086 is the primorial base exp-function.

Offset 0, canonical program `A358846.P7566853143272665991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358846 (n : ℕ) : ℤ :=
  A358846.P7566853143272665991.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358846.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363341.P7758654398244361466

`∑[Δ[A014200(2*n)]-1]`
-/

namespace A363341.P7758654398244361466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363341.P7758654398244361466

noncomputable section

/-- A363341: Number of positive integers k <= n such that round(n/k) is odd.

Offset 1, canonical program `A363341.P7758654398244361466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363341 (n : ℕ) : ℤ :=
  A363341.P7758654398244361466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365402.P6850757992274722782

`A000005(A350389(n+1))`
-/

namespace A365402.P6850757992274722782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A350389 (n + 1)).toNat

end

end A365402.P6850757992274722782

noncomputable section

/-- A365402: The number of divisors of the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A365402.P6850757992274722782`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365402 (n : ℕ) : ℤ :=
  A365402.P6850757992274722782.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366309.P14240225199999852292

`2^A366247(n+1)`
-/

namespace A366309.P14240225199999852292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366247 (n + 1) : ℤ)

end

end A366309.P14240225199999852292

noncomputable section

/-- A366309: The number of infinitary divisors of n that are terms of A366243.

Offset 1, canonical program `A366309.P14240225199999852292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366309 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366309.P14240225199999852292.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366784.P4948638015337007277

`(A066328(n+1)-A366725(n+1))/2`
-/

namespace A366784.P4948638015337007277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066328 (n + 1) - A366725 (n + 1) : ℚ) / 2

end

end A366784.P4948638015337007277

noncomputable section

/-- A366784: Sum of even indices of distinct prime factors of n divided by 2.

Offset 1, canonical program `A366784.P4948638015337007277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366725, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366784 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366784.P4948638015337007277.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366725, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366784.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368167.P14958017841539973394

`A350389(A057521(n+1))`
-/

namespace A368167.P14958017841539973394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A057521 (n + 1)).toNat

end

end A368167.P14958017841539973394

noncomputable section

/-- A368167: The largest unitary divisor of n that is a cubefull exponentially odd number (A335988).

Offset 1, canonical program `A368167.P14958017841539973394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368167 (n : ℕ) : ℤ :=
  A368167.P14958017841539973394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368471.P8379948987742590772

`A033634(A350389(n+1))`
-/

namespace A368471.P8379948987742590772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A350389 (n + 1)).toNat

end

end A368471.P8379948987742590772

noncomputable section

/-- A368471: a(n) is the sum of exponentially odd divisors of the largest unitary divisor of n that is an exponentially odd number (A268335).

Offset 1, canonical program `A368471.P8379948987742590772`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368471 (n : ℕ) : ℤ :=
  A368471.P8379948987742590772.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368991.P7436517708181029196

`a(n-1)+A368990(n)` with `a(0)=0, a(1)=0`
-/

namespace A368991.P7436517708181029196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + A368990 n

end

end A368991.P7436517708181029196

noncomputable section

/-- A368991: Doudna-gram for nondeficient numbers; Partial sums of A368990.

Offset 0, canonical program `A368991.P7436517708181029196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368990, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368991 (n : ℕ) : ℤ :=
  A368991.P7436517708181029196.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368990, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370079.P12845110108102492018

`A005361(A350389(n+1))`
-/

namespace A370079.P12845110108102492018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A350389 (n + 1)).toNat

end

end A370079.P12845110108102492018

noncomputable section

/-- A370079: The product of the odd exponents of the prime factorization of n.

Offset 1, canonical program `A370079.P12845110108102492018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370079 (n : ℕ) : ℤ :=
  A370079.P12845110108102492018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374538.P5898032326319891676

`A034676(A350389(n+1))`
-/

namespace A374538.P5898032326319891676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A350389 (n + 1)).toNat

end

end A374538.P5898032326319891676

noncomputable section

/-- A374538: a(n) is the sum of the squares of the unitary divisors of n that are exponentially odd numbers (A268335).

Offset 1, canonical program `A374538.P5898032326319891676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374538 (n : ℕ) : ℤ :=
  A374538.P5898032326319891676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375032.P9183128720752084141

`A051903(A350389(n+1))`
-/

namespace A375032.P9183128720752084141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350389 (n + 1)).toNat

end

end A375032.P9183128720752084141

noncomputable section

/-- A375032: The maximum odd exponent in the prime factorization of n, or 0 if no such exponent exists.

Offset 1, canonical program `A375032.P9183128720752084141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375032 (n : ℕ) : ℤ :=
  A375032.P9183128720752084141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376271.P10040751222563494524

`∪[A085986(n+1), A379336(n+1)]`
-/

namespace A376271.P10040751222563494524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P10040751222563494524

noncomputable section

/-- A376271: Numbers k such that there exists at least one proper divisor that is neither squarefree nor a prime power, i.e., m is in A126706.

Offset 1, canonical program `A376271.P10040751222563494524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376271 (n : ℕ) : ℤ :=
  (A376271.P10040751222563494524.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377990.P1914433196353605573

`A000203(A000203(A350388(n+1)))*A000203(A000203(A350389(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377990.P1914433196353605573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A350388 (n + 1)).toNat).toNat * A000203 (A000203 (A350389 (n + 1)).toNat).toNat

end

end A377990.P1914433196353605573

noncomputable section

/-- A377990: a(n) = sigma(sigma(A350388(n))) * sigma(sigma(A350389(n))), where A350388 and A350389 are the largest unitary divisor of n that is a square, and the largest unitary divisor of n that is an exponentially odd number, respectively.

Offset 1, canonical program `A377990.P1914433196353605573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A377990 (n : ℕ) : ℤ :=
  A377990.P1914433196353605573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A377990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380165.P2435245022523968233

`A000010(A350389(n+1))`
-/

namespace A380165.P2435245022523968233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A350389 (n + 1)).toNat

end

end A380165.P2435245022523968233

noncomputable section

/-- A380165: a(n) is the value of the Euler totient function when applied to the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A380165.P2435245022523968233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380165 (n : ℕ) : ℤ :=
  A380165.P2435245022523968233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380458.P7180702667062546524

`A209229(1+A267116(n+1))`
-/

namespace A380458.P7180702667062546524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (1 + A267116 (n + 1)).toNat

end

end A380458.P7180702667062546524

noncomputable section

/-- A380458: Characteristic function of A337533 (union of {1} with nonsquares whose square part's square root is in the sequence).

Offset 1, canonical program `A380458.P7180702667062546524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A267116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380458 (n : ℕ) : ℤ :=
  A380458.P7180702667062546524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A267116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384052.P2784021690662808847

`A047994(A350389(n+1))*A350388(n+1)`
-/

namespace A384052.P2784021690662808847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A350389 (n + 1)).toNat * A350388 (n + 1)

end

end A384052.P2784021690662808847

noncomputable section

/-- A384052: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a square.

Offset 1, canonical program `A384052.P2784021690662808847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384052 (n : ℕ) : ℤ :=
  A384052.P2784021690662808847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384054.P17702262864445494828

`A047994(A350388(n+1))*A350389(n+1)`
-/

namespace A384054.P17702262864445494828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A350388 (n + 1)).toNat * A350389 (n + 1)

end

end A384054.P17702262864445494828

noncomputable section

/-- A384054: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is an exponentially odd number.

Offset 1, canonical program `A384054.P17702262864445494828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384054 (n : ℕ) : ℤ :=
  A384054.P17702262864445494828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385045.P2167434921090377600

`A365209((n+1)/A065331(n+1))`
-/

namespace A385045.P2167434921090377600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A385045.P2167434921090377600

noncomputable section

/-- A385045: The sum of the unitary divisors of n that are 5-rough numbers (A007310).

Offset 1, canonical program `A385045.P2167434921090377600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385045 (n : ℕ) : ℤ :=
  A385045.P2167434921090377600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385542.P11057182743894820874

`A183097(n+1)-A112526(n+1)*(n+1)`
-/

namespace A385542.P11057182743894820874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (n + 1) - A112526 (n + 1) * (n + 1 : ℤ)

end

end A385542.P11057182743894820874

noncomputable section

/-- A385542: The sum of the aliquot divisors of n that are powerful.

Offset 1, canonical program `A385542.P11057182743894820874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385542 (n : ℕ) : ℤ :=
  A385542.P11057182743894820874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387710.P1843881796241010643

`lt[A003959(n+1), 2*(n+1)]+1`
-/

namespace A387710.P1843881796241010643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387710.P1843881796241010643

noncomputable section

/-- A387710: Numbers k for which A003959(k) < 2*k, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A387710.P1843881796241010643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387710 (n : ℕ) : ℤ :=
  (A387710.P1843881796241010643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387711.P8670169942287001865

`lt[2*(n+1), A003959(n+1)]+1`
-/

namespace A387711.P8670169942287001865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387711.P8670169942287001865

noncomputable section

/-- A387711: Numbers k for which A003959(k) > 2*k, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A387711.P8670169942287001865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387711 (n : ℕ) : ℤ :=
  (A387711.P8670169942287001865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392059.P13390897625134815313

`∏[A392055(1+n)]`
-/

namespace A392059.P13390897625134815313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392055 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A392059.P13390897625134815313

noncomputable section

/-- A392059: a(n) is the product of all p^k such that p is a ramified or inert prime in the Gaussian integers and k is the largest such k satisfying p^k <= n.

Offset 1, canonical program `A392059.P13390897625134815313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A392059 (n : ℕ) : ℤ :=
  A392059.P13390897625134815313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A392059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396909.P4990173123731152845

`lt[A010815(n)², A093518(n)]`
-/

namespace A396909.P4990173123731152845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093518 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396909.P4990173123731152845

noncomputable section

/-- A396909: Numbers that are the sum of two nonzero generalized pentagonal numbers (A001318).

Offset 1, canonical program `A396909.P4990173123731152845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5984 terms. -/
def A396909 (n : ℕ) : ℤ :=
  (A396909.P4990173123731152845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5984 terms. -/
def A396909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397805.P13663769163111520641

`lt[1, A284259(n+1)]+1`
-/

namespace A397805.P13663769163111520641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A397805.P13663769163111520641

noncomputable section

/-- A397805: Composite numbers whose 3rd smallest divisor is less than the square of their least prime factor.

Offset 1, canonical program `A397805.P13663769163111520641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3324 terms. -/
def A397805 (n : ℕ) : ℤ :=
  (A397805.P13663769163111520641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3324 terms. -/
def A397805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398170.P13804662410558317611

`record[A350389(n+1)/A162510(n+2)]`
-/

namespace A398170.P13804662410558317611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350389 (n + 1) : ℚ) / (A162510 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398170.P13804662410558317611

noncomputable section

/-- A398170: Exponentially odd numbers k such that k+1 is squarefree.

Offset 1, canonical program `A398170.P13804662410558317611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3952 terms. -/
def A398170 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398170.P13804662410558317611.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3952 terms. -/
def A398170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399732.P10852493408418534580

`A360540(n+1)*A371242(n+1)`
-/

namespace A399732.P10852493408418534580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (n + 1) * A371242 (n + 1)

end

end A399732.P10852493408418534580

noncomputable section

/-- A399732: The sum of the unitary divisors d of n such that n/d is cubefree.

Offset 1, canonical program `A399732.P10852493408418534580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399732 (n : ℕ) : ℤ :=
  A399732.P10852493408418534580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399835.P11381840255084056267

`A366146(1+n)*A371242(n+1)`
-/

namespace A399835.P11381840255084056267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366146 (1 + n) * A371242 (n + 1)

end

end A399835.P11381840255084056267

noncomputable section

/-- A399835: The sum of divisors d of n such that gcud(d, n/d) is a powerful number (A001694), where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399835.P11381840255084056267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399835 (n : ℕ) : ℤ :=
  A399835.P11381840255084056267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284447.P16300961384300992767

`A092569(A258996(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284447.P16300961384300992767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A258996 (n + 1)).toNat

end

end A284447.P16300961384300992767

noncomputable section

/-- A284447: Permutation of the positive integers: a(n) = A258996(A092569(n)) = A092569(A258996(n)).

Offset 1, canonical program `A284447.P16300961384300992767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092569, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284447 (n : ℕ) : ℤ :=
  A284447.P16300961384300992767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092569, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284459.P16106515790432208554

`A258996(A231551(n+1))`
-/

namespace A284459.P16106515790432208554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A231551 (n + 1)).toNat

end

end A284459.P16106515790432208554

noncomputable section

/-- A284459: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A002487/A002487' (Calkin-Wilf) into the enumeration system A245327/A245328, and A162911/A162912 (Drib) into A020651/A020650 (Yu-Ting inverted).

Offset 1, canonical program `A284459.P16106515790432208554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A231551, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284459 (n : ℕ) : ℤ :=
  A284459.P16106515790432208554.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A231551, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286381.P1366550670855884459

`1/2*(2+(A055881(n+1)+A278236(n+1))²-A055881(n+1)-3*A278236(n+1))`
-/

namespace A286381.P1366550670855884459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A055881 (n + 1) + A278236 (n + 1)) ^ 2 - A055881 (n + 1) - 3 * A278236 (n + 1) : ℚ)

end

end A286381.P1366550670855884459

noncomputable section

/-- A286381: Compound filter: a(n) = P(A055881(n), A278236(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286381.P1366550670855884459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, A278236, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286381 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286381.P1366550670855884459.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, A278236, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287375.P16270847010936485648

`2*A287374(n+1)`
-/

namespace A287375.P16270847010936485648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287374 (n + 1)

end

end A287375.P16270847010936485648

noncomputable section

/-- A287375: Positions of 2 in A101666.

Offset 1, canonical program `A287375.P16270847010936485648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287374, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287375 (n : ℕ) : ℤ :=
  A287375.P16270847010936485648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287374, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288002.P13918482005494738107

`A007306(n+1)-A287896(n+1)`
-/

namespace A288002.P13918482005494738107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A287896 (n + 1)

end

end A288002.P13918482005494738107

noncomputable section

/-- A288002: L-fusc, sequence l of the mutual diatomic recurrence pair: l(1)=0, r(1)=1, l(2n) = l(n), r(2n) = r(n), l(2n+1) = l(n)+r(n), r(2n+1) = l(n+1)+r(n+1), where r(n) = A288003(n).

Offset 1, canonical program `A288002.P13918482005494738107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288002 (n : ℕ) : ℤ :=
  A288002.P13918482005494738107.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288002.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290251.P3763221582423427294

`A001222(A163511(n))`
-/

namespace A290251.P3763221582423427294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A163511 n).toNat

end

end A290251.P3763221582423427294

noncomputable section

/-- A290251: a(n) is the number of parts in the integer partition having viabin number n.

Offset 0, canonical program `A290251.P3763221582423427294`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A290251 (n : ℕ) : ℤ :=
  A290251.P3763221582423427294.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A290251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291563.P606939447704338141

`n+1-A291564(n+1)`
-/

namespace A291563.P606939447704338141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A291564 (n + 1)

end

end A291563.P606939447704338141

noncomputable section

/-- A291563: Number of partitions of 2n into two prime parts or two nonprime parts.

Offset 1, canonical program `A291563.P606939447704338141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291563 (n : ℕ) : ℤ :=
  A291563.P606939447704338141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292251.P3001000153096971167

`A007814(1+A292250(n+1))`
-/

namespace A292251.P3001000153096971167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A292250 (n + 1)).toNat

end

end A292251.P3001000153096971167

noncomputable section

/-- A292251: The 3-adic valuation of A048673(n).

Offset 1, canonical program `A292251.P3001000153096971167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292251 (n : ℕ) : ℤ :=
  A292251.P3001000153096971167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309256.P1094537150064723946

`n+1-A007306(n)`
-/

namespace A309256.P1094537150064723946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007306 n

end

end A309256.P1094537150064723946

noncomputable section

/-- A309256: a(n) = n + 1 - Sum_{k=0..n} (Stirling2(n,k) mod 2).

Offset 0, canonical program `A309256.P1094537150064723946`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309256 (n : ℕ) : ℤ :=
  A309256.P1094537150064723946.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323509.P12181625504260047488

`char[A037019(n+1)-1]`
-/

namespace A323509.P12181625504260047488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323509.P12181625504260047488

noncomputable section

/-- A323509: a(n) = 1 if n = 2^e1 * 3^e2 * ... * prime(k)^e_k, with k = A061395(n) = A001221(n) and e1 >= e2 >= ... >= e_k, with each e1 .. e_k one less than a prime, otherwise a(n) = 0.

Offset 1, canonical program `A323509.P12181625504260047488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323509 (n : ℕ) : ℤ :=
  (A323509.P12181625504260047488.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323901.P12439125084005686553

`A002487(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323901.P12439125084005686553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A163511 n).toNat

end

end A323901.P12439125084005686553

noncomputable section

/-- A323901: a(n) = A002487(A163511(n)).

Offset 0, canonical program `A323901.P12439125084005686553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323901 (n : ℕ) : ℤ :=
  A323901.P12439125084005686553.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324182.P8996620141129556705

`A083254(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324182.P8996620141129556705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A163511 n).toNat

end

end A324182.P8996620141129556705

noncomputable section

/-- A324182: a(n) = A083254(A163511(n)), where A083254(n) = 2*phi(n) - n, the Möbius transform of the deficiency of n.

Offset 0, canonical program `A324182.P8996620141129556705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324182 (n : ℕ) : ℤ :=
  A324182.P8996620141129556705.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324182.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324183.P17718046273459172401

`A000005(A163511(n))`
-/

namespace A324183.P17718046273459172401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A163511 n).toNat

end

end A324183.P17718046273459172401

noncomputable section

/-- A324183: a(n) = d(A163511(n)), where d(n) is A000005, the number of divisors of n.

Offset 0, canonical program `A324183.P17718046273459172401`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324183 (n : ℕ) : ℤ :=
  A324183.P17718046273459172401.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324183.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324184.P13572072800245294565

`A000203(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324184.P13572072800245294565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A163511 n).toNat

end

end A324184.P13572072800245294565

noncomputable section

/-- A324184: a(n) = sigma(A163511(n)).

Offset 0, canonical program `A324184.P13572072800245294565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324184 (n : ℕ) : ℤ :=
  A324184.P13572072800245294565.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324185.P14252950843010352268

`A033879(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324185.P14252950843010352268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A163511 n).toNat

end

end A324185.P14252950843010352268

noncomputable section

/-- A324185: Deficiency of n permuted by A163511: a(n) = A033879(A163511(n)) = 2*A163511(n) - sigma(A163511(n)).

Offset 0, canonical program `A324185.P14252950843010352268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324185 (n : ℕ) : ℤ :=
  A324185.P14252950843010352268.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324185.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324186.P10448595320496770779

`A000593(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324186.P10448595320496770779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A163511 n).toNat

end

end A324186.P10448595320496770779

noncomputable section

/-- A324186: Sum of odd divisors permuted by A163511: a(n) = A000593(A163511(n)).

Offset 0, canonical program `A324186.P10448595320496770779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324186 (n : ℕ) : ℤ :=
  A324186.P10448595320496770779.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324187.P6887987960075682770

`A106315(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324187.P6887987960075682770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106315 (A163511 n).toNat

end

end A324187.P6887987960075682770

noncomputable section

/-- A324187: a(n) = A106315(A163511(n)).

Offset 0, canonical program `A324187.P6887987960075682770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324187 (n : ℕ) : ℤ :=
  A324187.P6887987960075682770.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324187.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324188.P10044735737893625335

`A324121(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324188.P10044735737893625335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (A163511 n).toNat

end

end A324188.P10044735737893625335

noncomputable section

/-- A324188: a(n) = A324121(A163511(n)).

Offset 0, canonical program `A324188.P10044735737893625335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324188 (n : ℕ) : ℤ :=
  A324188.P10044735737893625335.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324189.P7792579227676348933

`A324122(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324189.P7792579227676348933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324122 (A163511 n).toNat

end

end A324189.P7792579227676348933

noncomputable section

/-- A324189: a(n) = A324122(A163511(n)).

Offset 0, canonical program `A324189.P7792579227676348933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324189 (n : ℕ) : ℤ :=
  A324189.P7792579227676348933.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324189.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324194.P16246264380367185644

`A192895(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324194.P16246264380367185644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (A163511 n).toNat

end

end A324194.P16246264380367185644

noncomputable section

/-- A324194: A000120-deficiency of n permuted by A163511: a(n) = A192895(A163511(n)).

Offset 0, canonical program `A324194.P16246264380367185644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A192895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324194 (n : ℕ) : ℤ :=
  A324194.P16246264380367185644.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A192895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329887.P5028341398088360431

`A108951(A163511(n))`
-/

namespace A329887.P5028341398088360431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A163511 n).toNat

end

end A329887.P5028341398088360431

noncomputable section

/-- A329887: a(0) = 1, a(1) = 2; for n > 1, if n is even, then a(n) = 2*a(n/2), and if n is odd, a(n) = A283980(a((n-1)/2)).

Offset 0, canonical program `A329887.P5028341398088360431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329887 (n : ℕ) : ℤ :=
  A329887.P5028341398088360431.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331748.P790098222198747257

`xor(A002487(A163511(n)), A002487(n))`
-/

namespace A331748.P790098222198747257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002487 (A163511 n).toNat) (A002487 n)

end

end A331748.P790098222198747257

noncomputable section

/-- A331748: a(n) = A002487(n) XOR A002487(A163511(n)).

Offset 0, canonical program `A331748.P790098222198747257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331748 (n : ℕ) : ℤ :=
  A331748.P790098222198747257.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331749.P3262571390583388432

`A002487(A163511(n))-A002487(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331749.P3262571390583388432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A163511 n).toNat - A002487 n

end

end A331749.P3262571390583388432

noncomputable section

/-- A331749: a(n) = A002487(A163511(n)) - A002487(n).

Offset 0, canonical program `A331749.P3262571390583388432`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331749 (n : ℕ) : ℤ :=
  A331749.P3262571390583388432.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331895.P11168448018872663609

`∩[A331893(n+1), A331894(n+1)]`
-/

namespace A331895.P11168448018872663609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P11168448018872663609

noncomputable section

/-- A331895: Positive numbers k such that the binary and negabinary representations of k and the negabinary representation of -k are all palindromic.

Offset 1, canonical program `A331895.P11168448018872663609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. -/
def A331895 (n : ℕ) : ℤ :=
  (A331895.P11168448018872663609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. -/
def A331895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332769.P9976973925860660972

`A258996(A054429(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332769.P9976973925860660972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A054429 (n + 1)).toNat

end

end A332769.P9976973925860660972

noncomputable section

/-- A332769: Permutation of the positive integers: a(n) = A258996(A054429(n)) = A054429(A258996(n)).

Offset 1, canonical program `A332769.P9976973925860660972`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332769 (n : ℕ) : ℤ :=
  A332769.P9976973925860660972.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335420.P3300100389546647521

`A000120(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335420.P3300100389546647521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A163511 n).toNat

end

end A335420.P3300100389546647521

noncomputable section

/-- A335420: a(n) = A000120(A163511(n)).

Offset 0, canonical program `A335420.P3300100389546647521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335420 (n : ℕ) : ℤ :=
  A335420.P3300100389546647521.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335422.P5576709600895955365

`A005940(1+A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335422.P5576709600895955365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A163511 n).toNat

end

end A335422.P5576709600895955365

noncomputable section

/-- A335422: a(n) = A005940(1+A163511(n)).

Offset 0, canonical program `A335422.P5576709600895955365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335422 (n : ℕ) : ℤ :=
  A335422.P5576709600895955365.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340085.P7543650115475079382

`A336466(n+1)/A340084(n+1)`
-/

namespace A340085.P7543650115475079382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336466 (n + 1) : ℚ) / (A340084 (n + 1) : ℚ)

end

end A340085.P7543650115475079382

noncomputable section

/-- A340085: a(n) = A336466(n) / gcd(n-1, A336466(n)); Odd part of A340082(n).

Offset 1, canonical program `A340085.P7543650115475079382`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A340084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340085 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340085.P7543650115475079382.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A340084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340086.P7171776503870000729

`gcd(A129527(n), A340083(n+1))`
-/

namespace A340086.P7171776503870000729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129527 n) (A340083 (n + 1))

end

end A340086.P7171776503870000729

noncomputable section

/-- A340086: a(1) = 0, for n > 1, a(n) = A000265(n-1) / gcd(n-1, A336466(n)).

Offset 1, canonical program `A340086.P7171776503870000729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340086 (n : ℕ) : ℤ :=
  (A340086.P7171776503870000729.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341609.P3877242790927454112

`Δ[fp[A337372(n+1)]]`
-/

namespace A341609.P3877242790927454112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337372 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A341609.P3877242790927454112

noncomputable section

/-- A341609: Characteristic function of A337372: a(n) = 1 if A337345(n) = 1, otherwise 0.

Offset 1, canonical program `A341609.P3877242790927454112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609 (n : ℕ) : ℤ :=
  A341609.P3877242790927454112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341610.P8466044333028116895

`lt[0, A337346(n+1)]+1`
-/

namespace A341610.P8466044333028116895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341610.P8466044333028116895

noncomputable section

/-- A341610: Nonprimitive terms of A246282: numbers k that have more than one divisor d|k such that A003961(d) > 2*d.

Offset 1, canonical program `A341610.P8466044333028116895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610 (n : ℕ) : ℤ :=
  (A341610.P8466044333028116895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349129.P13556310181811753018

`∑{d}[n+1, A003958(#)*A003959((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349129.P13556310181811753018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 d * A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349129.P13556310181811753018

noncomputable section

/-- A349129: a(n) = Sum_{d|n} A003958(d) * A003959(n/d), where A003958 is fully multiplicative with a(p) = (p-1), and A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349129.P13556310181811753018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349129 (n : ℕ) : ℤ :=
  A349129.P13556310181811753018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349132.P869711925521774844

`A327251(n+1)-A348982(n+1)`
-/

namespace A349132.P869711925521774844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327251 (n + 1) - A348982 (n + 1)

end

end A349132.P869711925521774844

noncomputable section

/-- A349132: a(n) = Sum_{d|n} psi(d) * A003958(n/d), where A003958 is fully multiplicative with a(p) = (p-1), and psi is Dedekind psi function, A001615.

Offset 1, canonical program `A349132.P869711925521774844`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, A348982, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349132 (n : ℕ) : ℤ :=
  A349132.P869711925521774844.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, A348982, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349138.P8801393356759692262

`∑{d}[n+1, A349137(#)]`
-/

namespace A349138.P8801393356759692262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349137 d

end

end A349138.P8801393356759692262

noncomputable section

/-- A349138: Inverse Möbius transform of A349137, where A349137(n) = phi(A003602(n)).

Offset 1, canonical program `A349138.P8801393356759692262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349138 (n : ℕ) : ℤ :=
  A349138.P8801393356759692262.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350387.P325241865782792840

`A001222(n+1)-A350386(n+1)`
-/

namespace A350387.P325241865782792840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A350386 (n + 1)

end

end A350387.P325241865782792840

noncomputable section

/-- A350387: a(n) is the sum of the odd exponents in the prime factorization of n.

Offset 1, canonical program `A350387.P325241865782792840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350387 (n : ℕ) : ℤ :=
  A350387.P325241865782792840.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352033.P10755563011180066533

`A051002(n+1)-(n+1)^5*A000035(n+1)`
-/

namespace A352033.P10755563011180066533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051002 (n + 1) - ((n + 1) ^ 5 : ℤ) * A000035 (n + 1)

end

end A352033.P10755563011180066533

noncomputable section

/-- A352033: Sum of the 5th powers of the odd proper divisors of n.

Offset 1, canonical program `A352033.P10755563011180066533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352033 (n : ℕ) : ℤ :=
  A352033.P10755563011180066533.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352051.P15218436939402893896

`A051002(n+1)*A006519(n+1)^5-A000035(n+1)`
-/

namespace A352051.P15218436939402893896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051002 (n + 1) * A006519 (n + 1) ^ 5 - A000035 (n + 1)

end

end A352051.P15218436939402893896

noncomputable section

/-- A352051: Sum of the 5th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352051.P15218436939402893896`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352051 (n : ℕ) : ℤ :=
  A352051.P15218436939402893896.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353679.P2765792584734807979

`record[A000265(A006872(n+1))]`
-/

namespace A353679.P2765792584734807979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A006872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353679.P2765792584734807979

noncomputable section

/-- A353679: Odd numbers k for which phi(k) = phi(sigma(k)).

Offset 1, canonical program `A353679.P2765792584734807979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 657 terms. -/
def A353679 (n : ℕ) : ℤ :=
  A353679.P2765792584734807979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 657 terms. -/
def A353679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358748.P10367628953143471274

`filter[2*n, A358758(#)]`
-/

namespace A358748.P10367628953143471274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358758 (f1 j) = 1) n)

end

end A358748.P10367628953143471274

noncomputable section

/-- A358748: Numbers k such that A358669(k) == 1 (mod 4).

Offset 1, canonical program `A358748.P10367628953143471274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358748 (n : ℕ) : ℤ :=
  (A358748.P10367628953143471274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358753.P12282633013976382741

`A066829(n+1)-A358751(n+1)`
-/

namespace A358753.P12282633013976382741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) - A358751 (n + 1)

end

end A358753.P12282633013976382741

noncomputable section

/-- A358753: a(n) = 1 if bigomega(n) == 3 (mod 4), otherwise 0.

Offset 1, canonical program `A358753.P12282633013976382741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358751, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358753 (n : ℕ) : ℤ :=
  A358753.P12282633013976382741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358751, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358753.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359164.P14566603840914614086

`A003602(n+1)-A349136(n+1)`
-/

namespace A359164.P14566603840914614086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - A349136 (n + 1)

end

end A359164.P14566603840914614086

noncomputable section

/-- A359164: Difference between Kimberling's paraphrase, A003602, and its Möbius transform.

Offset 1, canonical program `A359164.P14566603840914614086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A349136, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359164 (n : ℕ) : ℤ :=
  A359164.P14566603840914614086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A349136, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359164.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360325.P5141515659105753962

`gcd(A003602(2*n+1), A321874(A003963(n+1)))`
-/

namespace A360325.P5141515659105753962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003602 (2 * n + 1)) (A321874 (A003963 (n + 1)).toNat)

end

end A360325.P5141515659105753962

noncomputable section

/-- A360325: a(n) is the largest divisor of n that has only prime-indexed prime factors.

Offset 1, canonical program `A360325.P5141515659105753962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A360325 (n : ℕ) : ℤ :=
  (A360325.P5141515659105753962.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A360325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363825.P736134271263224070

`A372380(A350389(n+1)*A401425(n+1))`
-/

namespace A363825.P736134271263224070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372380 (A350389 (n + 1) * A401425 (n + 1)).toNat

end

end A363825.P736134271263224070

noncomputable section

/-- A363825: The number of infinitary divisors of n that are exponentially odd numbers (A268335).

Offset 1, canonical program `A363825.P736134271263224070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A363825 (n : ℕ) : ℤ :=
  A363825.P736134271263224070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A363825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364255.P6900546977642634575

`gcd(n, A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364255.P6900546977642634575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A163511 n)

end

end A364255.P6900546977642634575

noncomputable section

/-- A364255: a(n) = gcd(n, A163511(n)).

Offset 0, canonical program `A364255.P6900546977642634575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364255 (n : ℕ) : ℤ :=
  (A364255.P6900546977642634575.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364258.P6786196179042320049

`A163511(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364258.P6786196179042320049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n - (n : ℤ)

end

end A364258.P6786196179042320049

noncomputable section

/-- A364258: a(n) = A163511(n) - n.

Offset 0, canonical program `A364258.P6786196179042320049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364258 (n : ℕ) : ℤ :=
  A364258.P6786196179042320049.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364297.P2273147970006164047

`A348717(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364297.P2273147970006164047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A163511 n).toNat

end

end A364297.P2273147970006164047

noncomputable section

/-- A364297: a(n) = A348717(A163511(n)).

Offset 0, canonical program `A364297.P2273147970006164047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A348717, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364297 (n : ℕ) : ℤ :=
  A364297.P2273147970006164047.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A348717, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364297.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364949.P13510493691852746008

`gcd(A348717(n+1), A348717(A163511(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364949.P13510493691852746008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A348717 (n + 1)) (A348717 (A163511 (n + 1)).toNat)

end

end A364949.P13510493691852746008

noncomputable section

/-- A364949: a(n) = gcd(A348717(n), A348717(A163511(n))).

Offset 1, canonical program `A364949.P13510493691852746008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A348717, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364949 (n : ℕ) : ℤ :=
  (A364949.P13510493691852746008.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A348717, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365296.P1047666679631546324

`A007947(n+1)*A401425(A003557(n+1))`
-/

namespace A365296.P1047666679631546324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A401425 (A003557 (n + 1)).toNat

end

end A365296.P1047666679631546324

noncomputable section

/-- A365296: The smallest coreful infinitary divisor of n.

Offset 1, canonical program `A365296.P1047666679631546324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365296 (n : ℕ) : ℤ :=
  A365296.P1047666679631546324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365385.P9341511432702516708

`A331410(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365385.P9341511432702516708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A163511 n).toNat

end

end A365385.P9341511432702516708

noncomputable section

/-- A365385: a(n) = A331410(A163511(n)).

Offset 0, canonical program `A365385.P9341511432702516708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365385 (n : ℕ) : ℤ :=
  A365385.P9341511432702516708.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365387.P12565499775502910515

`A331410(n+1)*A331410(A163511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365387.P12565499775502910515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) * A331410 (A163511 (n + 1)).toNat

end

end A365387.P12565499775502910515

noncomputable section

/-- A365387: a(n) = A331410(n) * A331410(A163511(n)).

Offset 1, canonical program `A365387.P12565499775502910515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365387 (n : ℕ) : ℤ :=
  A365387.P12565499775502910515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365425.P9924222759687376323

`A046523(A000265(A163511(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365425.P9924222759687376323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000265 (A163511 n).toNat).toNat

end

end A365425.P9924222759687376323

noncomputable section

/-- A365425: The least number with the prime signature of the odd part of A163511(n): a(n) = A046523(A000265(A163511(n))).

Offset 0, canonical program `A365425.P9924222759687376323`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365425 (n : ℕ) : ℤ :=
  A365425.P9924222759687376323.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365426.P3761931698884595568

`A336466(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365426.P3761931698884595568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A163511 n).toNat

end

end A365426.P3761931698884595568

noncomputable section

/-- A365426: a(n) = A336466(A163511(n)).

Offset 0, canonical program `A365426.P3761931698884595568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365426 (n : ℕ) : ℤ :=
  A365426.P3761931698884595568.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365426.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365427.P1911992435203789611

`A336467(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365427.P1911992435203789611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336467 (A163511 n).toNat

end

end A365427.P1911992435203789611

noncomputable section

/-- A365427: a(n) = A336467(A163511(n)).

Offset 0, canonical program `A365427.P1911992435203789611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365427 (n : ℕ) : ℤ :=
  A365427.P1911992435203789611.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365427.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365489.P10175361733768043480

`A000005(A053149(n+1))`
-/

namespace A365489.P10175361733768043480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053149 (n + 1)).toNat

end

end A365489.P10175361733768043480

noncomputable section

/-- A365489: The number of divisors of the smallest cube divisible by n.

Offset 1, canonical program `A365489.P10175361733768043480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365489 (n : ℕ) : ℤ :=
  A365489.P10175361733768043480.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365489.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365805.P12560475463864652643

`A052409(A163511(n))`
-/

namespace A365805.P12560475463864652643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A163511 n).toNat

end

end A365805.P12560475463864652643

noncomputable section

/-- A365805: a(n) = largest exponent m for which a representation of the form A163511(n) = k^m exists (for some k). a(0) = 0 by convention.

Offset 0, canonical program `A365805.P12560475463864652643`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365805 (n : ℕ) : ℤ :=
  A365805.P12560475463864652643.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365805.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365807.P7768995048888628650

`A010052(A163511(n))`
-/

namespace A365807.P7768995048888628650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A163511 n).toNat

end

end A365807.P7768995048888628650

noncomputable section

/-- A365807: a(n) = 1 if A163511(n) is a square, 0 otherwise.

Offset 0, canonical program `A365807.P7768995048888628650`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365807 (n : ℕ) : ℤ :=
  A365807.P7768995048888628650.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366275.P12360444593326866610

`A163511(A057889(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366275.P12360444593326866610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A057889 n).toNat

end

end A366275.P12360444593326866610

noncomputable section

/-- A366275: The Cat's tongue permutation: a(n) = A163511(A057889(n)).

Offset 0, canonical program `A366275.P12360444593326866610`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366275 (n : ℕ) : ℤ :=
  A366275.P12360444593326866610.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366797.P9156922134602193647

`A001227(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366797.P9156922134602193647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A163511 n).toNat

end

end A366797.P9156922134602193647

noncomputable section

/-- A366797: Number of odd divisors permuted by A163511: a(n) = A001227(A163511(n)).

Offset 0, canonical program `A366797.P9156922134602193647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366797 (n : ℕ) : ℤ :=
  A366797.P9156922134602193647.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366873.P10214570237099345026

`A113415(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366873.P10214570237099345026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (A163511 n).toNat

end

end A366873.P10214570237099345026

noncomputable section

/-- A366873: a(n) = A113415(A163511(n)), where A113415(n) is the average of number of and sum of odd divisors of n.

Offset 0, canonical program `A366873.P10214570237099345026`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366873 (n : ℕ) : ℤ :=
  A366873.P10214570237099345026.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366873.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366879.P12887930198289739423

`A326938(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366879.P12887930198289739423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326938 (A163511 n).toNat

end

end A366879.P12887930198289739423

noncomputable section

/-- A366879: a(n) = A326938(A163511(n)), where A326938 is the Dirichlet inverse of the sum of divisors d of n such that n/d is odd.

Offset 0, canonical program `A366879.P12887930198289739423`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A326938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366879 (n : ℕ) : ℤ :=
  A366879.P12887930198289739423.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A326938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366885.P6460870065527769006

`A347385(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366885.P6460870065527769006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347385 (A163511 n).toNat

end

end A366885.P6460870065527769006

noncomputable section

/-- A366885: Dedekind psi function applied to the odd part of n, permuted by A163511: a(n) = A347385(A163511(n)).

Offset 0, canonical program `A366885.P6460870065527769006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366885 (n : ℕ) : ℤ :=
  A366885.P6460870065527769006.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366887.P16462098823577047798

`A206787(A163511(n))`
-/

namespace A366887.P16462098823577047798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206787 (A163511 n).toNat

end

end A366887.P16462098823577047798

noncomputable section

/-- A366887: Sum of the odd squarefree divisors permuted by A163511.

Offset 0, canonical program `A366887.P16462098823577047798`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366887 (n : ℕ) : ℤ :=
  A366887.P16462098823577047798.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366892.P16519678978380655638

`A336652(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366892.P16519678978380655638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336652 (A163511 n).toNat

end

end A366892.P16519678978380655638

noncomputable section

/-- A366892: a(n) = A336652(A163511(n)).

Offset 0, canonical program `A366892.P16519678978380655638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366892 (n : ℕ) : ℤ :=
  A366892.P16519678978380655638.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366894.P17590388083815126484

`A336699(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366894.P17590388083815126484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336699 (A163511 n).toNat

end

end A366894.P17590388083815126484

noncomputable section

/-- A366894: a(n) = A336699(A163511(n)).

Offset 0, canonical program `A366894.P17590388083815126484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366894 (n : ℕ) : ℤ :=
  A366894.P17590388083815126484.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369030.P16010318685675967167

`A014963(A163511(n))`
-/

namespace A369030.P16010318685675967167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A163511 n).toNat

end

end A369030.P16010318685675967167

noncomputable section

/-- A369030: Exponential of Mangoldt function permuted by A163511 ("Doudna-permutation mirrored").

Offset 0, canonical program `A369030.P16010318685675967167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369030 (n : ℕ) : ℤ :=
  A369030.P16010318685675967167.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369030.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369310.P4588423880105354459

`A190867(n+1)*A365498(n+1)`
-/

namespace A369310.P4588423880105354459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 (n + 1) * A365498 (n + 1)

end

end A369310.P4588423880105354459

noncomputable section

/-- A369310: The number of divisors d of n such that gcd(d, n/d) is a powerful number.

Offset 1, canonical program `A369310.P4588423880105354459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369310 (n : ℕ) : ℤ :=
  A369310.P4588423880105354459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369458.P12459843309324393945

`A369465(A163511(n))`
-/

namespace A369458.P12459843309324393945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369465 (A163511 n).toNat

end

end A369458.P12459843309324393945

noncomputable section

/-- A369458: Arithmetic derivative of the odd part of n, permuted by A163511 ("Doudna-sequence mirrored").

Offset 0, canonical program `A369458.P12459843309324393945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369458 (n : ℕ) : ℤ :=
  A369458.P12459843309324393945.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375767.P11029837342179991351

`A130233(A375766(n+1))`
-/

namespace A375767.P11029837342179991351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A375766 (n + 1)).toNat

end

end A375767.P11029837342179991351

noncomputable section

/-- A375767: The indices of the terms of A375766 in the Fibonacci sequence.

Offset 1, canonical program `A375767.P11029837342179991351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, A375766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375767 (n : ℕ) : ℤ :=
  A375767.P11029837342179991351.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, A375766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376857.P11146247838532625083

`∩[2*n+1, A235028(n+1)]`
-/

namespace A376857.P11146247838532625083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376857.P11146247838532625083

noncomputable section

/-- A376857: Fixed points of A162742.

Offset 1, canonical program `A376857.P11146247838532625083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1086 terms. -/
def A376857 (n : ℕ) : ℤ :=
  (A376857.P11146247838532625083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1086 terms. -/
def A376857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377421.P314416379374506011

`filter[A204232(1+n), A178226(#)]`
-/

namespace A377421.P314416379374506011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204232 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A377421.P314416379374506011

noncomputable section

/-- A377421: Numbers whose binary reversal is prime and unequal to the original number.

Offset 1, canonical program `A377421.P314416379374506011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A377421 (n : ℕ) : ℤ :=
  A377421.P314416379374506011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A377421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380922.P14080248536527490904

`A365498(n+1)*A368247(n+1)`
-/

namespace A380922.P14080248536527490904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (n + 1) * A368247 (n + 1)

end

end A380922.P14080248536527490904

noncomputable section

/-- A380922: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 + 1/p^s + 1/p^(3*s)).

Offset 1, canonical program `A380922.P14080248536527490904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380922 (n : ℕ) : ℤ :=
  A380922.P14080248536527490904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387325.P12366465277394037670

`A117303(n+1)-1`
-/

namespace A387325.P12366465277394037670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117303 (n + 1) - 1

end

end A387325.P12366465277394037670

noncomputable section

/-- A387325: Self-inverse permutation of the nonnegative integers, by swapping and converting the head and tail parts of n in binary and using the rightmost 0-bit as their separator.

Offset 0, canonical program `A387325.P12366465277394037670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A387325 (n : ℕ) : ℤ :=
  A387325.P12366465277394037670.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A387325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389904.P15776582389617753375

`min(n+1, A059894(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389904.P15776582389617753375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (n + 1 : ℤ) (A059894 (n + 1))

end

end A389904.P15776582389617753375

noncomputable section

/-- A389904: a(n) = min(n, A059894(n)).

Offset 1, canonical program `A389904.P15776582389617753375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059894, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389904 (n : ℕ) : ℤ :=
  A389904.P15776582389617753375.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059894, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390663.P5509345383207779074

`A000203(A053149(n+1))`
-/

namespace A390663.P5509345383207779074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053149 (n + 1)).toNat

end

end A390663.P5509345383207779074

noncomputable section

/-- A390663: The sum of the divisors of the smallest cube divisible by n.

Offset 1, canonical program `A390663.P5509345383207779074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390663 (n : ℕ) : ℤ :=
  A390663.P5509345383207779074.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390665.P2218711322630550871

`A034448(A053149(n+1))`
-/

namespace A390665.P2218711322630550871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A053149 (n + 1)).toNat

end

end A390665.P2218711322630550871

noncomputable section

/-- A390665: The sum of the unitary divisors of the smallest cube divisible by n.

Offset 1, canonical program `A390665.P2218711322630550871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390665 (n : ℕ) : ℤ :=
  A390665.P2218711322630550871.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390754.P7808372230478735667

`A000010(A053149(n+1))`
-/

namespace A390754.P7808372230478735667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A053149 (n + 1)).toNat

end

end A390754.P7808372230478735667

noncomputable section

/-- A390754: The Euler totient of the smallest cube divisible by n.

Offset 1, canonical program `A390754.P7808372230478735667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390754 (n : ℕ) : ℤ :=
  A390754.P7808372230478735667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392088.P2713772725741587424

`A047994(A053149(n+1))`
-/

namespace A392088.P2713772725741587424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A053149 (n + 1)).toNat

end

end A392088.P2713772725741587424

noncomputable section

/-- A392088: The unitary totient of the smallest cube divisible by n.

Offset 1, canonical program `A392088.P2713772725741587424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392088 (n : ℕ) : ℤ :=
  A392088.P2713772725741587424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392169.P12898871919302007808

`A001615(A053149(n+1))`
-/

namespace A392169.P12898871919302007808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A053149 (n + 1)).toNat

end

end A392169.P12898871919302007808

noncomputable section

/-- A392169: The Dedekind psi function value of the smallest cube divisible by n.

Offset 1, canonical program `A392169.P12898871919302007808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392169 (n : ℕ) : ℤ :=
  A392169.P12898871919302007808.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392218.P16910627991504591076

`∏{d}[A349137(2*n+1), #]`
-/

namespace A392218.P16910627991504591076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A392218.P16910627991504591076

noncomputable section

/-- A392218: Product of the divisors of phi(n).

Offset 1, canonical program `A392218.P16910627991504591076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5182 terms. -/
def A392218 (n : ℕ) : ℤ :=
  (A392218.P16910627991504591076.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5182 terms. -/
def A392218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392370.P3678449110929773305

`A005811(A006068(A341916(A362160(A341916(n)))))`
-/

namespace A392370.P3678449110929773305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006068 (A341916 (A362160 (A341916 n).toNat).toNat).toNat).toNat

end

end A392370.P3678449110929773305

noncomputable section

/-- A392370: Sum of even-indexed parts of the reversed n-th composition in standard order.

Offset 0, canonical program `A392370.P3678449110929773305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392370 (n : ℕ) : ℤ :=
  A392370.P3678449110929773305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398819.P9340603326399367742

`∩[A398818(n+1)-1, A398818(n+1)]`
-/

namespace A398819.P9340603326399367742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398819.P9340603326399367742

noncomputable section

/-- A398819: Numbers k such that the powerful parts (A057521) of both k and k+1 are cubes.

Offset 1, canonical program `A398819.P9340603326399367742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6537 terms. -/
def A398819 (n : ℕ) : ℤ :=
  (A398819.P9340603326399367742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6537 terms. -/
def A398819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398822.P17647454095404140229

`filter[A398818(n+2), A087049(#)]`
-/

namespace A398822.P17647454095404140229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A398822.P17647454095404140229

noncomputable section

/-- A398822: Numbers whose powerful part (A057521) is a cube that is larger than 1.

Offset 1, canonical program `A398822.P17647454095404140229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A398822 (n : ℕ) : ℤ :=
  A398822.P17647454095404140229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A398822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288949.P11941882522726558022

`∩[A001043(n+1), A118717(n+1)]`
-/

namespace A288949.P11941882522726558022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288949.P11941882522726558022

noncomputable section

/-- A288949: Numbers that are both the sum of two consecutive primes and the sum of two consecutive semiprimes.

Offset 1, canonical program `A288949.P11941882522726558022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. -/
def A288949 (n : ℕ) : ℤ :=
  (A288949.P11941882522726558022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. -/
def A288949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298207.P6466011691375944331

`∪[A008578(n+1), A014612(n+1)]`
-/

namespace A298207.P6466011691375944331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298207.P6466011691375944331

noncomputable section

/-- A298207: Numbers that are a product of zero, one, or three (not necessarily distinct) prime numbers.

Offset 1, canonical program `A298207.P6466011691375944331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298207 (n : ℕ) : ℤ :=
  (A298207.P6466011691375944331.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327976.P13806618716666500198

`xor(A110240(n+1), 2*A265281(n))`
-/

namespace A327976.P13806618716666500198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 (n + 1)) (2 * A265281 n)

end

end A327976.P13806618716666500198

noncomputable section

/-- A327976: Bitwise XOR of trajectories (centrally aligned) of rule 30, and its mirror image, rule 86, when both are started from a lone 1-bit, with the latter delayed by one step: a(n) = A110240(n) XOR 2*A265281(n-1).

Offset 1, canonical program `A327976.P13806618716666500198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A265281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327976 (n : ℕ) : ℤ :=
  A327976.P13806618716666500198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A265281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328101.P6975989960955687215

`A000035(floor(A265281(n+1)/2^(n+2)))`
-/

namespace A328101.P6975989960955687215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ⌊(A265281 (n + 1) : ℚ) / (2 ^ (n + 2) : ℚ)⌋.toNat

end

end A328101.P6975989960955687215

noncomputable section

/-- A328101: Column immediately right of the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

Offset 1, canonical program `A328101.P6975989960955687215`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328101 (n : ℕ) : ℤ :=
  A328101.P6975989960955687215.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328103.P14408953863942436734

`xor(A110240(n), A267357(n))`
-/

namespace A328103.P14408953863942436734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 n) (A267357 n)

end

end A328103.P14408953863942436734

noncomputable section

/-- A328103: Bitwise XOR of trajectories of rule 30 and rule 124, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A267357(n).

Offset 0, canonical program `A328103.P14408953863942436734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A267357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328103 (n : ℕ) : ℤ :=
  A328103.P14408953863942436734.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A267357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334102.P14426080341620597071

`eq[2, A329697(n+1)]+1`
-/

namespace A334102.P14426080341620597071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334102.P14426080341620597071

noncomputable section

/-- A334102: Numbers n for which A329697(n) == 2.

Offset 1, canonical program `A334102.P14426080341620597071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A334102 (n : ℕ) : ℤ :=
  (A334102.P14426080341620597071.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A334102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334103.P8770700371739961028

`eq[3, A329697(n+1)]+1`
-/

namespace A334103.P8770700371739961028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334103.P8770700371739961028

noncomputable section

/-- A334103: Numbers n for which A329697(n) == 3.

Offset 1, canonical program `A334103.P8770700371739961028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 584 terms. -/
def A334103 (n : ℕ) : ℤ :=
  (A334103.P8770700371739961028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 584 terms. -/
def A334103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334104.P2387926829895922796

`eq[4, A329697(1+n)]+1`
-/

namespace A334104.P2387926829895922796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334104.P2387926829895922796

noncomputable section

/-- A334104: Numbers m for which A329697(m) = 4.

Offset 1, canonical program `A334104.P2387926829895922796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1626 terms. -/
def A334104 (n : ℕ) : ℤ :=
  (A334104.P2387926829895922796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1626 terms. -/
def A334104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334105.P6599962454632674818

`eq[5, A329697(n+1)]+1`
-/

namespace A334105.P6599962454632674818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334105.P6599962454632674818

noncomputable section

/-- A334105: Numbers m for which A329697(m) = 5.

Offset 1, canonical program `A334105.P6599962454632674818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3896 terms. -/
def A334105 (n : ℕ) : ℤ :=
  (A334105.P6599962454632674818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3896 terms. -/
def A334105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334106.P945696782660963161

`eq[6, A329697(A004277(n))]`
-/

namespace A334106.P945696782660963161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334106.P945696782660963161

noncomputable section

/-- A334106: Numbers n for which A329697(n) == 6.

Offset 1, canonical program `A334106.P945696782660963161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. -/
def A334106 (n : ℕ) : ℤ :=
  (A334106.P945696782660963161.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. -/
def A334106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334107.P9255028885621604898

`A329697(A105560(n+1))+a(A064989(n+1)-1)` with `a(0)=0`
-/

namespace A334107.P9255028885621604898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A329697 (A105560 (n + 1)).toNat + a (A064989 (n + 1) - 1).toNat

end

end A334107.P9255028885621604898

noncomputable section

/-- A334107: a(n) = A329697(A122111(n)).

Offset 1, canonical program `A334107.P9255028885621604898`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334107 (n : ℕ) : ℤ :=
  A334107.P9255028885621604898.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334107.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334204.P5497004873273688433

`A329697(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334204.P5497004873273688433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A163511 n).toNat

end

end A334204.P5497004873273688433

noncomputable section

/-- A334204: a(n) = A329697(A163511(n)).

Offset 0, canonical program `A334204.P5497004873273688433`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334204 (n : ℕ) : ℤ :=
  A334204.P5497004873273688433.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334861.P8338568547344458298

`A329697(n+1)+A331410(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334861.P8338568547344458298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + A331410 (n + 1)

end

end A334861.P8338568547344458298

noncomputable section

/-- A334861: a(n) = A329697(n) + A331410(n).

Offset 1, canonical program `A334861.P8338568547344458298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334861 (n : ℕ) : ℤ :=
  A334861.P8338568547344458298.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334861.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335429.P17581116199218262941

`A329697(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A335429.P17581116199218262941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A329697 (n + 1) + a (n - 1)

end

end A335429.P17581116199218262941

noncomputable section

/-- A335429: Partial sums of A329697.

Offset 1, canonical program `A335429.P17581116199218262941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335429 (n : ℕ) : ℤ :=
  A335429.P17581116199218262941.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335875.P9680203898588883802

`min(A329697(n+1), A331410(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335875.P9680203898588883802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A329697 (n + 1)) (A331410 (n + 1))

end

end A335875.P9680203898588883802

noncomputable section

/-- A335875: a(n) = min(A329697(n), A331410(n)).

Offset 1, canonical program `A335875.P9680203898588883802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335875 (n : ℕ) : ℤ :=
  A335875.P9680203898588883802.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335875.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335877.P9922726367996187859

`A331410(n+1)-A329697(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335877.P9922726367996187859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A329697 (n + 1)

end

end A335877.P9922726367996187859

noncomputable section

/-- A335877: a(n) = A331410(n) - A329697(n).

Offset 1, canonical program `A335877.P9922726367996187859`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335877 (n : ℕ) : ℤ :=
  A335877.P9922726367996187859.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335881.P16220887707755718881

`max(A329697(n+1), A331410(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335881.P16220887707755718881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A329697 (n + 1)) (A331410 (n + 1))

end

end A335881.P16220887707755718881

noncomputable section

/-- A335881: a(n) = max(A329697(n), A331410(n)).

Offset 1, canonical program `A335881.P16220887707755718881`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335881 (n : ℕ) : ℤ :=
  A335881.P16220887707755718881.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336396.P16969858180878355374

`A329697(n+1)-A087436(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336396.P16969858180878355374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) - A087436 (n + 1)

end

end A336396.P16969858180878355374

noncomputable section

/-- A336396: a(n) = A329697(n) - A087436(n).

Offset 1, canonical program `A336396.P16969858180878355374`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336396 (n : ℕ) : ℤ :=
  A336396.P16969858180878355374.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336396.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336455.P3261113162239475427

`A335915(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336455.P3261113162239475427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A000203 (n + 1)).toNat

end

end A336455.P3261113162239475427

noncomputable section

/-- A336455: a(n) = A335915(sigma(n)), where A335915 is a fully multiplicative sequence with a(2) = 1 and a(p) = A000265(p^2 - 1) for odd primes p, with A000265(k) giving the odd part of k.

Offset 1, canonical program `A336455.P3261113162239475427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336455 (n : ℕ) : ℤ :=
  A336455.P3261113162239475427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336456.P9026144830488456375

`A335915(A000203(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336456.P9026144830488456375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A000203 (A000203 (n + 1)).toNat).toNat

end

end A336456.P9026144830488456375

noncomputable section

/-- A336456: a(n) = A335915(sigma(sigma(n))), where A335915 is a fully multiplicative sequence with a(2) = 1 and a(p) = A000265(p^2 - 1) for odd primes p, with A000265(k) giving the odd part of k.

Offset 1, canonical program `A336456.P9026144830488456375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336456 (n : ℕ) : ℤ :=
  A336456.P9026144830488456375.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336456.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336469.P2491454499028526129

`A329697(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336469.P2491454499028526129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A000010 (n + 1)).toNat

end

end A336469.P2491454499028526129

noncomputable section

/-- A336469: a(n) = A329697(phi(n)), where A329697 is totally additive with a(2) = 0 and a(p) = 1 + a(p-1) for odd primes.

Offset 1, canonical program `A336469.P2491454499028526129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336469 (n : ℕ) : ℤ :=
  A336469.P2491454499028526129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336694.P7841874870777716447

`A329697(1+A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336694.P7841874870777716447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (1 + A000203 (n + 1)).toNat

end

end A336694.P7841874870777716447

noncomputable section

/-- A336694: a(n) = A329697(1+sigma(n)), where A329697 is totally additive with a(2) = 0 and a(p) = 1 + a(p-1) for odd primes.

Offset 1, canonical program `A336694.P7841874870777716447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336694 (n : ℕ) : ℤ :=
  A336694.P7841874870777716447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336928.P14852767271506303772

`A329697(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336928.P14852767271506303772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A000203 (n + 1)).toNat

end

end A336928.P14852767271506303772

noncomputable section

/-- A336928: a(n) = A329697(sigma(n)), where A329697 is totally additive with a(2) = 0 and a(p) = 1 + a(p-1) for odd primes.

Offset 1, canonical program `A336928.P14852767271506303772`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336928 (n : ℕ) : ℤ :=
  A336928.P14852767271506303772.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338471.P15632408290352518697

`∩[A014612(n+1), A066208(n+1)]`
-/

namespace A338471.P15632408290352518697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338471.P15632408290352518697

noncomputable section

/-- A338471: Products of three prime numbers of odd index.

Offset 1, canonical program `A338471.P15632408290352518697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1851 terms. -/
def A338471 (n : ℕ) : ℤ :=
  (A338471.P15632408290352518697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1851 terms. -/
def A338471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338913.P16990008710777632167

`A000720(A084127(n+1))`
-/

namespace A338913.P16990008710777632167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084127 (n + 1)).toNat

end

end A338913.P16990008710777632167

noncomputable section

/-- A338913: Greater prime index of the n-th semiprime.

Offset 1, canonical program `A338913.P16990008710777632167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084127, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338913 (n : ℕ) : ℤ :=
  A338913.P16990008710777632167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084127, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342465.P10365381412380769729

`A329697(A337194(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342465.P10365381412380769729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A337194 (n + 1)).toNat

end

end A342465.P10365381412380769729

noncomputable section

/-- A342465: a(n) = A329697(A337194(n)).

Offset 1, canonical program `A342465.P10365381412380769729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342465 (n : ℕ) : ℤ :=
  A342465.P10365381412380769729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342651.P14835572400052172115

`A329697(A156552(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342651.P14835572400052172115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A156552 (n + 2)).toNat

end

end A342651.P14835572400052172115

noncomputable section

/-- A342651: a(n) = A329697(A156552(n)).

Offset 2, canonical program `A342651.P14835572400052172115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342651 (n : ℕ) : ℤ :=
  A342651.P14835572400052172115.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343030.P6588649687182581724

`A014081(A154437(n))`
-/

namespace A343030.P6588649687182581724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A154437 n).toNat

end

end A343030.P6588649687182581724

noncomputable section

/-- A343030: Number of 1-bits in the binary expansion of n which have an odd number of 0-bits at less significant bit positions.

Offset 0, canonical program `A343030.P6588649687182581724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A343030 (n : ℕ) : ℤ :=
  A343030.P6588649687182581724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A343030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357685.P8590542068992344568

`∪[A087248(n+1), A357686(n+1)]`
-/

namespace A357685.P8590542068992344568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357685.P8590542068992344568

noncomputable section

/-- A357685: Numbers k such that A293228(k) > k.

Offset 1, canonical program `A357685.P8590542068992344568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357685 (n : ℕ) : ℤ :=
  (A357685.P8590542068992344568.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359581.P11413063305080841777

`(-1)^A329697(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359581.P11413063305080841777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A329697 (n + 1) : ℤ)

end

end A359581.P11413063305080841777

noncomputable section

/-- A359581: a(n) = (-1)^A329697(n).

Offset 1, canonical program `A359581.P11413063305080841777`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359581 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A359581.P11413063305080841777.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359581.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359583.P16521673374742263581

`A329697(n+1)%2`
-/

namespace A359583.P16521673374742263581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329697 (n + 1)) 2

end

end A359583.P16521673374742263581

noncomputable section

/-- A359583: Parity of A329697.

Offset 1, canonical program `A359583.P16521673374742263581`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359583 (n : ℕ) : ℤ :=
  A359583.P16521673374742263581.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359583.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364042.P9636022355613988781

`2^A329697(n+1)-A000120(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364042.P9636022355613988781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A329697 (n + 1) : ℤ) - (A000120 (n + 1) : ℚ)

end

end A364042.P9636022355613988781

noncomputable section

/-- A364042: a(n) = 2^A329697(n) - A000120(n).

Offset 1, canonical program `A364042.P9636022355613988781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364042 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364042.P9636022355613988781.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368732.P12624011651613050063

`∪[A106349(n+1), A175247(n+1)]`
-/

namespace A368732.P12624011651613050063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368732.P12624011651613050063

noncomputable section

/-- A368732: Primes whose index is one, another prime number, or a semiprime.

Offset 1, canonical program `A368732.P12624011651613050063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368732 (n : ℕ) : ℤ :=
  (A368732.P12624011651613050063.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373382.P993258168282922167

`gcd(A329697(n+1), A331410(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373382.P993258168282922167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329697 (n + 1)) (A331410 (n + 1))

end

end A373382.P993258168282922167

noncomputable section

/-- A373382: a(n) = gcd(A329697(n), A331410(n)), where A329697, A331410 give the number of iterations needed to reach a power of 2, when using the map n -> n-(n/p), or respectively, n -> n+(n/p), where p is the largest prime factor of n.

Offset 1, canonical program `A373382.P993258168282922167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373382 (n : ℕ) : ℤ :=
  (A373382.P993258168282922167.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381960.P17631110590437961972

`∩[∑[7*n]+1, A186525(n+1)]`
-/

namespace A381960.P17631110590437961972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A381960.P17631110590437961972

noncomputable section

/-- A381960: Centered heptagonal numbers which are semiprime.

Offset 1, canonical program `A381960.P17631110590437961972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A381960 (n : ℕ) : ℤ :=
  (A381960.P17631110590437961972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A381960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386295.P3144102033819088974

`∩[A063639(n+1), A215751(n+1)]`
-/

namespace A386295.P3144102033819088974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P3144102033819088974

noncomputable section

/-- A386295: Primes p such that p+1 is a triprime and 2*p+1 is prime.

Offset 1, canonical program `A386295.P3144102033819088974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A386295 (n : ℕ) : ℤ :=
  (A386295.P3144102033819088974.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A386295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393818.P14790485006410335386

`A001358(A289182(A115392(n+1)-n))`
-/

namespace A393818.P14790485006410335386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A289182 (A115392 (n + 1) - (n : ℤ)).toNat).toNat

end

end A393818.P14790485006410335386

noncomputable section

/-- A393818: a(n) is the least odd semiprime > 2*prime(n).

Offset 1, canonical program `A393818.P14790485006410335386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A393818 (n : ℕ) : ℤ :=
  A393818.P14790485006410335386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A393818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289554.P7471265002348983110

`∪[A046304(n+1), A307342(n+1)]`
-/

namespace A289554.P7471265002348983110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289554.P7471265002348983110

noncomputable section

/-- A289554: Numbers that are the product of two distinct composite numbers (A002808).

Offset 1, canonical program `A289554.P7471265002348983110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289554 (n : ℕ) : ℤ :=
  (A289554.P7471265002348983110.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333692.P18241223059571258819

`A333776(A145342(n+1)-1)`
-/

namespace A333692.P18241223059571258819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (A145342 (n + 1) - 1).toNat

end

end A333692.P18241223059571258819

noncomputable section

/-- A333692: Scan the binary representation of n from left to right; at each 1, reverse the bits to the left and including this 1. The resulting binary representation is that of a(n).

Offset 0, canonical program `A333692.P18241223059571258819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A333692 (n : ℕ) : ℤ :=
  A333692.P18241223059571258819.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A333692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343229.P18291780148970798749

`A289831(A060373(n))`
-/

namespace A343229.P18291780148970798749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A060373 n).toNat

end

end A343229.P18291780148970798749

noncomputable section

/-- A343229: A binary encoding of the digits "-1" in balanced ternary representation of n.

Offset 0, canonical program `A343229.P18291780148970798749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060373, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343229 (n : ℕ) : ℤ :=
  A343229.P18291780148970798749.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060373, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337132.P808422596746096956

`A147582(A343228(n)+1)`
-/

namespace A337132.P808422596746096956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (A343228 n + 1).toNat

end

end A337132.P808422596746096956

noncomputable section

/-- A337132: a(n) is the number of squares at distance n from the central square of a Vicsek fractal.

Offset 0, canonical program `A337132.P808422596746096956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A337132 (n : ℕ) : ℤ :=
  A337132.P808422596746096956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A337132.provenance : SequenceMachineLib.Provenance := .conjectured

