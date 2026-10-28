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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B001.C013
import Seq.B001.C014
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A389460.P4100129062004937204

`A000203(n+1)-A075423(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389460.P4100129062004937204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A075423 (n + 1)

end

end A389460.P4100129062004937204

noncomputable section

/-- A389460: a(n) = sigma(n) - A075423(n).

Offset 1, canonical program `A389460.P4100129062004937204`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)` (program `A389460.P4100129062004937204`, by `A389460.P4100129062004937204.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389460 (n : ℕ) : ℤ :=
  A389460.P4100129062004937204.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)` (program `A389460.P4100129062004937204`, by `A389460.P4100129062004937204.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389460.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389461.P3198355901571096713

`A000203(n+1)-A075423(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389461.P3198355901571096713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A075423 (n + 1) - (n + 1 : ℤ)

end

end A389461.P3198355901571096713

noncomputable section

/-- A389461: a(n) = sigma(n) - A075423(n) - n.

Offset 1, canonical program `A389461.P3198355901571096713`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)-(n+1)` (program `A389461.P3198355901571096713`, by `A389461.P3198355901571096713.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389461 (n : ℕ) : ℤ :=
  A389461.P3198355901571096713.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)-(n+1)` (program `A389461.P3198355901571096713`, by `A389461.P3198355901571096713.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389461.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387156.P9057070292798782768

`A003557(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387156.P9057070292798782768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000203 (n + 1)).toNat

end

end A387156.P9057070292798782768

noncomputable section

/-- A387156: a(n) = A003557(sigma(n)), where A003557(n) is multiplicative with a(p^e) = p^(e-1), and sigma is the sum of divisors function.

Offset 1, canonical program `A387156.P9057070292798782768`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003557(A000203(n+1))` (program `A387156.P9057070292798782768`, by `A387156.P9057070292798782768.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387156 (n : ℕ) : ℤ :=
  A387156.P9057070292798782768.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003557(A000203(n+1))` (program `A387156.P9057070292798782768`, by `A387156.P9057070292798782768.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387156.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A376116.P15301336638265797168

`2*(n+1)-A000120(n+1)-A070939(n+1)`
-/

namespace A376116.P15301336638265797168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000120 (n + 1) - A070939 (n + 1)

end

end A376116.P15301336638265797168

noncomputable section

/-- A376116: Number of times the root fires in a chip-firing game starting with 2n chips placed at the root on an infinite binary tree with a loop at the root.

Offset 1, canonical program `A376116.P15301336638265797168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376116 (n : ℕ) : ℤ :=
  A376116.P15301336638265797168.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376161.P5653477694830852408

`A007054(n)*(3*n+2)/2`
-/

namespace A376161.P5653477694830852408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007054 n * (3 * n + 2 : ℤ) : ℚ) / 2

end

end A376161.P5653477694830852408

noncomputable section

/-- A376161: Number of support Tau-tilting modules for some algebras.

Offset 0, canonical program `A376161.P5653477694830852408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376161 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376161.P5653477694830852408.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376504.P12289890857249372903

`A034444(n+1)-A001221(n+1)-1`
-/

namespace A376504.P12289890857249372903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A001221 (n + 1) - 1

end

end A376504.P12289890857249372903

noncomputable section

/-- A376504: Number of divisors of n that are both composite and squarefree.

Offset 1, canonical program `A376504.P12289890857249372903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376504 (n : ℕ) : ℤ :=
  A376504.P12289890857249372903.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376504.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377065.P12584164709197230038

`(A172634(n)-1)/6+1`
-/

namespace A377065.P12584164709197230038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172634 n - 1 : ℚ) / 6 + 1

end

end A377065.P12584164709197230038

noncomputable section

/-- A377065: Number of 3 X n 0..2 matrices with row sums n and column sums 3 up to permutations of rows.

Offset 0, canonical program `A377065.P12584164709197230038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377065 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377065.P12584164709197230038.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377065.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377461.P17554263378634026354

`A001405(n)*A006472(floor((n+2)/2))*A006472(ceil((n+2)/2))`
-/

namespace A377461.P17554263378634026354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A006472 ⌊(n + 2 : ℚ) / 2⌋.toNat * A006472 ⌈(n + 2 : ℚ) / 2⌉.toNat

end

end A377461.P17554263378634026354

noncomputable section

/-- A377461: Number of ranked labeled trees compatible with the 2-leaf perfect phylogeny of sample size n that possesses the largest number of compatible ranked labeled trees.

Offset 2, canonical program `A377461.P17554263378634026354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377461 (n : ℕ) : ℤ :=
  A377461.P17554263378634026354.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377876.P4332793020141651312

`A002110(n)%27`
-/

namespace A377876.P4332793020141651312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002110 n) 27

end

end A377876.P4332793020141651312

noncomputable section

/-- A377876: The n-th primorial number reduced modulo 27.

Offset 0, canonical program `A377876.P4332793020141651312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377876 (n : ℕ) : ℤ :=
  A377876.P4332793020141651312.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377876.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378745.P4000645261650579531

`A000040(n+1)^A378744(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378745.P4000645261650579531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A378744 (n + 1) : ℤ)

end

end A378745.P4000645261650579531

noncomputable section

/-- A378745: a(n) = prime(n)^A378744(n).

Offset 1, canonical program `A378745.P4000645261650579531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378745 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378745.P4000645261650579531.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378786.P5184730850239847370

`∑{#}[n, C(2*#, n-#)*A002293(#)]`
-/

namespace A378786.P5184730850239847370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * k) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A002293 k

end

end A378786.P5184730850239847370

noncomputable section

/-- A378786: G.f. A(x) satisfies A(x) = 1 + x * (1+x)^2 * A(x)^4.

Offset 0, canonical program `A378786.P5184730850239847370`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378786 (n : ℕ) : ℤ :=
  A378786.P5184730850239847370.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378786.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379009.P14519861507907130925

`A378988(A000290(n+1))`
-/

namespace A379009.P14519861507907130925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378988 (A000290 (n + 1)).toNat

end

end A379009.P14519861507907130925

noncomputable section

/-- A379009: a(n) = 2*n^2 XOR 1+sigma(n^2).

Offset 1, canonical program `A379009.P14519861507907130925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379009 (n : ℕ) : ℤ :=
  A379009.P14519861507907130925.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379224.P12381818504371844415

`A065621(A379223(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379224.P12381818504371844415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (A379223 (n + 1)).toNat

end

end A379224.P12381818504371844415

noncomputable section

/-- A379224: The reversing binary representation of the sum of the divisors of the n-th odd square: a(n) = A065621(A379223(n)).

Offset 1, canonical program `A379224.P12381818504371844415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379224 (n : ℕ) : ℤ :=
  A379224.P12381818504371844415.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379508.P17211813283351291404

`A362545(n)+A377726(n)`
-/

namespace A379508.P17211813283351291404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362545 n + A377726 n

end

end A379508.P17211813283351291404

noncomputable section

/-- A379508: Sum of the legs of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A379508.P17211813283351291404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379508 (n : ℕ) : ℤ :=
  A379508.P17211813283351291404.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379835.P16096637972306843515

`A000120(A000032(n))`
-/

namespace A379835.P16096637972306843515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000032 n).toNat

end

end A379835.P16096637972306843515

noncomputable section

/-- A379835: Number of 1's in binary expansion of Lucas(n).

Offset 0, canonical program `A379835.P16096637972306843515`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379835 (n : ℕ) : ℤ :=
  A379835.P16096637972306843515.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380083.P7207422318684722739

`A204327(n+1)/A000129(n+1)`
-/

namespace A380083.P7207422318684722739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204327 (n + 1) : ℚ) / (A000129 (n + 1) : ℚ)

end

end A380083.P7207422318684722739

noncomputable section

/-- A380083: a(n) = Pell(n^2)/Pell(n).

Offset 1, canonical program `A380083.P7207422318684722739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380083.P7207422318684722739.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380083.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380122.P11414663002027706338

`A001316(A184617(n))`
-/

namespace A380122.P11414663002027706338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A184617 n).toNat

end

end A380122.P11414663002027706338

noncomputable section

/-- A380122: a(n) is the number of integers m (possibly negative) such that the nonzero digits in the nonadjacent form for m appear in the nonadjacent form for n.

Offset 0, canonical program `A380122.P11414663002027706338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380122 (n : ℕ) : ℤ :=
  A380122.P11414663002027706338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380198.P8091464907111529259

`-A053622(2^(n+1))`
-/

namespace A380198.P8091464907111529259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053622 (2 ^ (n + 1))

end

end A380198.P8091464907111529259

noncomputable section

/-- A380198: Difference between pi(2^n) and the integer nearest to 2^n / log(2^n).

Offset 1, canonical program `A380198.P8091464907111529259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380198 (n : ℕ) : ℤ :=
  A380198.P8091464907111529259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380441.P1716721751457761727

`A023890(n+1)+A001221(n+1)`
-/

namespace A380441.P1716721751457761727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) + A001221 (n + 1)

end

end A380441.P1716721751457761727

noncomputable section

/-- A380441: Sum of the nonprimes dividing n and the number of distinct primes dividing n.

Offset 1, canonical program `A380441.P1716721751457761727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380441 (n : ℕ) : ℤ :=
  A380441.P1716721751457761727.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381503.P14790323790165265310

`A033192(n+1)*A033192(n+2)`
-/

namespace A381503.P14790323790165265310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (n + 1) * A033192 (n + 2)

end

end A381503.P14790323790165265310

noncomputable section

/-- A381503: Number of rectangles in a Fibonacci(n) X Fibonacci(n+1) grid.

Offset 1, canonical program `A381503.P14790323790165265310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381503 (n : ℕ) : ℤ :=
  A381503.P14790323790165265310.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381713.P7553467801404850531

`A069094(n+1)/A059376(n+1)`
-/

namespace A381713.P7553467801404850531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (A059376 (n + 1) : ℚ)

end

end A381713.P7553467801404850531

noncomputable section

/-- A381713: a(n) = J_9(n)/J_3(n), where J_k is the k-th Jordan totient function.

Offset 1, canonical program `A381713.P7553467801404850531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381713.P7553467801404850531.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381713.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381983.P4732304569857720732

`n!*∑{#}[n, (2*#+1)^(n-#)*A002293(#)/(n-#)!]`
-/

namespace A381983.P4732304569857720732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002293 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381983.P4732304569857720732

noncomputable section

/-- A381983: E.g.f. A(x) satisfies A(x) = exp(x) * C(x*A(x)^2), where C(x) = 1 + x*C(x)^2 is the g.f. of A000108.

Offset 0, canonical program `A381983.P4732304569857720732`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381983 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381983.P4732304569857720732.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381983.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381985.P11200299864467116029

`n!*∑{#}[n, (#+1)^(n-#)*A002293(#)/(n-#)!]`
-/

namespace A381985.P11200299864467116029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002293 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381985.P11200299864467116029

noncomputable section

/-- A381985: E.g.f. A(x) satisfies A(x) = exp(x) * B(x*A(x)), where B(x) = 1 + x*B(x)^3 is the g.f. of A001764.

Offset 0, canonical program `A381985.P11200299864467116029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381985.P11200299864467116029.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381986.P7505040142137306431

`n!*∑{#}[n, (2*#+1)^(n-#)*A002294(#)/(n-#)!]`
-/

namespace A381986.P7505040142137306431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002294 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381986.P7505040142137306431

noncomputable section

/-- A381986: E.g.f. A(x) satisfies A(x) = exp(x) * B(x*A(x)^2), where B(x) = 1 + x*B(x)^3 is the g.f. of A001764.

Offset 0, canonical program `A381986.P7505040142137306431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381986 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381986.P7505040142137306431.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381987.P5321923648170235974

`n!*∑{#}[n, A002293(#)/(n-#)!]`
-/

namespace A381987.P5321923648170235974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (A002293 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381987.P5321923648170235974

noncomputable section

/-- A381987: E.g.f. A(x) satisfies A(x) = exp(x) * B(x), where B(x) = 1 + x*B(x)^4 is the g.f. of A002293.

Offset 0, canonical program `A381987.P5321923648170235974`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381987 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381987.P5321923648170235974.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381988.P12463906784428139935

`n!*∑{#}[n, (#+1)^(n-#)*A002294(#)/(n-#)!]`
-/

namespace A381988.P12463906784428139935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002294 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381988.P12463906784428139935

noncomputable section

/-- A381988: E.g.f. A(x) satisfies A(x) = exp(x) * B(x*A(x)), where B(x) = 1 + x*B(x)^4 is the g.f. of A002293.

Offset 0, canonical program `A381988.P12463906784428139935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381988 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381988.P12463906784428139935.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381989.P1614454171933349851

`n!*∑{#}[n, (2*#+1)^(n-#)*A002295(#)/(n-#)!]`
-/

namespace A381989.P1614454171933349851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002295 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381989.P1614454171933349851

noncomputable section

/-- A381989: E.g.f. A(x) satisfies A(x) = exp(x) * B(x*A(x)^2), where B(x) = 1 + x*B(x)^4 is the g.f. of A002293.

Offset 0, canonical program `A381989.P1614454171933349851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381989 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381989.P1614454171933349851.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381997.P2560007713439689544

`n!*∑{#}[n, (2*#)^(n-#)*A002293(#)/(n-#)!]`
-/

namespace A381997.P2560007713439689544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002293 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381997.P2560007713439689544

noncomputable section

/-- A381997: E.g.f. A(x) satisfies A(x) = 1 + x*exp(2*x)*A(x)^4.

Offset 0, canonical program `A381997.P2560007713439689544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381997 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381997.P2560007713439689544.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381997.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382000.P2814616290049928114

`n!*∑{#}[n, (2*#)^(n-#)*A002294(#)/(n-#)!]`
-/

namespace A382000.P2814616290049928114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002294 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A382000.P2814616290049928114

noncomputable section

/-- A382000: E.g.f. A(x) satisfies A(x) = 1 + x*exp(2*x)*A(x)^5.

Offset 0, canonical program `A382000.P2814616290049928114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382000 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382000.P2814616290049928114.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382001.P237483193008801159

`n!*∑{#}[n, (2*#)^(n-#)*A002295(#)/(n-#)!]`
-/

namespace A382001.P237483193008801159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002295 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A382001.P237483193008801159

noncomputable section

/-- A382001: E.g.f. A(x) satisfies A(x) = 1 + x*exp(2*x)*A(x)^6.

Offset 0, canonical program `A382001.P237483193008801159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382001 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382001.P237483193008801159.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382001.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382213.P14392032180708244766

`A007947(A001008(n+1))`
-/

namespace A382213.P14392032180708244766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001008 (n + 1)).toNat

end

end A382213.P14392032180708244766

noncomputable section

/-- A382213: Largest squarefree number dividing the numerator of harmonic number H(n).

Offset 1, canonical program `A382213.P14392032180708244766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382213 (n : ℕ) : ℤ :=
  A382213.P14392032180708244766.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382329.P9326233385756962870

`A002805(n+1)*A007913(A001008(n+1))`
-/

namespace A382329.P9326233385756962870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A007913 (A001008 (n + 1)).toNat

end

end A382329.P9326233385756962870

noncomputable section

/-- A382329: Least positive integer that gives a square of an integer when multiplied by the n-th harmonic number.

Offset 1, canonical program `A382329.P9326233385756962870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382329 (n : ℕ) : ℤ :=
  A382329.P9326233385756962870.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382461.P15882059474773188978

`A051885(2^n)`
-/

namespace A382461.P15882059474773188978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (2 ^ n)

end

end A382461.P15882059474773188978

noncomputable section

/-- A382461: a(n) is the smallest number whose sum of digits is 2^n.

Offset 0, canonical program `A382461.P15882059474773188978`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382461 (n : ℕ) : ℤ :=
  A382461.P15882059474773188978.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382608.P10117561399595849934

`4*A033192(n)`
-/

namespace A382608.P10117561399595849934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033192 n

end

end A382608.P10117561399595849934

noncomputable section

/-- A382608: Long leg of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382608.P10117561399595849934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382608 (n : ℕ) : ℤ :=
  A382608.P10117561399595849934.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382910.P8650629878727328270

`a(n-1)*A007598(n)` with `a(0)=1`
-/

namespace A382910.P8650629878727328270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A007598 n

end

end A382910.P8650629878727328270

noncomputable section

/-- A382910: a(n) = A003266(n)^2.

Offset 0, canonical program `A382910.P8650629878727328270`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382910 (n : ℕ) : ℤ :=
  A382910.P8650629878727328270.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383037.P13364932948584734470

`A210469(n+1)-A000720(2*(n+1))+1`
-/

namespace A383037.P13364932948584734470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 1) - A000720 (2 * (n + 1)) + 1

end

end A383037.P13364932948584734470

noncomputable section

/-- A383037: a(n) is the excess of composites over primes in the first n odd positive integers.

Offset 1, canonical program `A383037.P13364932948584734470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383037 (n : ℕ) : ℤ :=
  A383037.P13364932948584734470.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383783.P9434858666287389407

`A344597(2^n)`
-/

namespace A383783.P9434858666287389407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344597 (2 ^ n)

end

end A383783.P9434858666287389407

noncomputable section

/-- A383783: a(n) = Sum_{k=1..2^n} mu(k) * (floor(2^n/k)^4 - floor((2^n-1)/k)^4).

Offset 0, canonical program `A383783.P9434858666287389407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383783 (n : ℕ) : ℤ :=
  A383783.P9434858666287389407.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383783.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383958.P9624006830103847093

`2*A001246(n)-1`
-/

namespace A383958.P9624006830103847093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001246 n - 1

end

end A383958.P9624006830103847093

noncomputable section

/-- A383958: Sum of the legs of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000108(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383958.P9624006830103847093`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383958 (n : ℕ) : ℤ :=
  A383958.P9624006830103847093.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384936.P17740286076774317705

`∑{#}[n-1, floor(log(A002110(n))/log(A000040(#+1)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384936.P17740286076774317705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ⌊Real.log (A002110 n : ℝ) / Real.log (A000040 (k + 1) : ℝ)⌋

end

end A384936.P17740286076774317705

noncomputable section

/-- A384936: a(n) = Sum_{k=1..n} floor( log(A002110(n)) / log(prime(k)) ).

Offset 0, canonical program `A384936.P17740286076774317705`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, floor(log(A002110(n))/log(A000040(#+1)))]` (program `A384936.P17740286076774317705`, by `A384936.P17740286076774317705.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A384936 (n : ℕ) : ℤ :=
  A384936.P17740286076774317705.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, floor(log(A002110(n))/log(A000040(#+1)))]` (program `A384936.P17740286076774317705`, by `A384936.P17740286076774317705.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A384936.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385044.P5009034709205246685

`A034444(n+1)/A382488(n+1)`
-/

namespace A385044.P5009034709205246685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A382488 (n + 1) : ℚ)

end

end A385044.P5009034709205246685

noncomputable section

/-- A385044: The number of unitary divisors of n that are 5-rough numbers (A007310).

Offset 1, canonical program `A385044.P5009034709205246685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385044 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385044.P5009034709205246685.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385044.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385212.P9842174822720494087

`abs(A055615(n+1))+A107078(n+1)`
-/

namespace A385212.P9842174822720494087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055615 (n + 1)| + A107078 (n + 1)

end

end A385212.P9842174822720494087

noncomputable section

/-- A385212: a(n) = n^(mu(n)^2), where mu is the Möbius function (A008683).

Offset 1, canonical program `A385212.P9842174822720494087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385212 (n : ℕ) : ℤ :=
  A385212.P9842174822720494087.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385608.P4247405361952693431

`2*floor(n/3)+floor(n/6)-A000120(floor(n/3))`
-/

namespace A385608.P4247405361952693431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 3⌋ + ⌊(n : ℚ) / 6⌋ - A000120 ⌊(n : ℚ) / 3⌋.toNat

end

end A385608.P4247405361952693431

noncomputable section

/-- A385608: a(n) = 2-adic valuation of A003266(n).

Offset 0, canonical program `A385608.P4247405361952693431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385608 (n : ℕ) : ℤ :=
  A385608.P4247405361952693431.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385609.P15216289614139377740

`2*(n+1)+floor((n+1)/2)-A000120(n+1)`
-/

namespace A385609.P15216289614139377740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + ⌊(n + 1 : ℚ) / 2⌋ - A000120 (n + 1)

end

end A385609.P15216289614139377740

noncomputable section

/-- A385609: Partial sums of A090740.

Offset 1, canonical program `A385609.P15216289614139377740`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385609 (n : ℕ) : ℤ :=
  A385609.P15216289614139377740.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386220.P3238769250650299334

`A000265(n+1)+A171977(n+1)`
-/

namespace A386220.P3238769250650299334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) + A171977 (n + 1)

end

end A386220.P3238769250650299334

noncomputable section

/-- A386220: a(n) = d + 2*2^e where n = d*2^e with d = A000265(n) odd.

Offset 1, canonical program `A386220.P3238769250650299334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386220 (n : ℕ) : ℤ :=
  A386220.P3238769250650299334.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386670.P12615676269490321592

`A128418(n)-A059304(n)`
-/

namespace A386670.P12615676269490321592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128418 n - A059304 n

end

end A386670.P12615676269490321592

noncomputable section

/-- A386670: Number of ternary strings of length 2*n that have more 0's than the combined number of 1's and 2's.

Offset 0, canonical program `A386670.P12615676269490321592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386670 (n : ℕ) : ℤ :=
  A386670.P12615676269490321592.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387914.P10909706251408159452

`A000245(n+3)-A000124(n+3)`
-/

namespace A387914.P10909706251408159452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 3) - A000124 (n + 3)

end

end A387914.P10909706251408159452

noncomputable section

/-- A387914: a(n) = 3*binomial(2*n+4,n+3)/(n+4) - (n+2)*(n+3)/2 - 1.

Offset 1, canonical program `A387914.P10909706251408159452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387914 (n : ℕ) : ℤ :=
  A387914.P10909706251408159452.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388283.P448465908817760903

`A033885(n+1)/A009194(n+1)`
-/

namespace A388283.P448465908817760903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033885 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A388283.P448465908817760903

noncomputable section

/-- A388283: Numerator of (3*n - sigma(n)) / n.

Offset 1, canonical program `A388283.P448465908817760903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388283 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388283.P448465908817760903.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388283.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390483.P1083108438533826406

`A002819(2^n)`
-/

namespace A390483.P1083108438533826406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 (2 ^ n)

end

end A390483.P1083108438533826406

noncomputable section

/-- A390483: Values of L(2^n), where L(n) is the summatory function of the Liouville function A008836(n).

Offset 0, canonical program `A390483.P1083108438533826406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390483 (n : ℕ) : ℤ :=
  A390483.P1083108438533826406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390483.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A390727.P12780344943874454581

`n!*A390277(n)`
-/

namespace A390727.P12780344943874454581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A390277 n

end

end A390727.P12780344943874454581

noncomputable section

/-- A390727: a(n) = Stirling2(2*n, n)*(2*n)!/(n+1)!.

Offset 0, canonical program `A390727.P12780344943874454581`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390727 (n : ℕ) : ℤ :=
  A390727.P12780344943874454581.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390921.P4802921319269334055

`a(n-1)+A098658(n)` with `a(0)=1`
-/

namespace A390921.P4802921319269334055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A098658 n

end

end A390921.P4802921319269334055

noncomputable section

/-- A390921: Expansion of 1/((1-x) * sqrt(1-12*x)).

Offset 0, canonical program `A390921.P4802921319269334055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390921 (n : ℕ) : ℤ :=
  A390921.P4802921319269334055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390923.P6565390993815220059

`3*a(n-1)+A059304(n)` with `a(0)=1`
-/

namespace A390923.P6565390993815220059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + A059304 n

end

end A390923.P6565390993815220059

noncomputable section

/-- A390923: Expansion of 1/((1-3*x) * sqrt(1-8*x)).

Offset 0, canonical program `A390923.P6565390993815220059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390923 (n : ℕ) : ℤ :=
  A390923.P6565390993815220059.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390924.P5803395581487017869

`2*a(n-1)+A098658(n)` with `a(0)=1`
-/

namespace A390924.P5803395581487017869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A098658 n

end

end A390924.P5803395581487017869

noncomputable section

/-- A390924: Expansion of 1/((1-2*x) * sqrt(1-12*x)).

Offset 0, canonical program `A390924.P5803395581487017869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390924 (n : ℕ) : ℤ :=
  A390924.P5803395581487017869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391263.P17886300817763852613

`2*A004146(n+1)-2`
-/

namespace A391263.P17886300817763852613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004146 (n + 1) - 2

end

end A391263.P17886300817763852613

noncomputable section

/-- A391263: The number of two-component spanning forests of the wheel graph W_{n+1} in which vertices v_1 and v_3 lie in different components.

Offset 2, canonical program `A391263.P17886300817763852613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391263 (n : ℕ) : ℤ :=
  A391263.P17886300817763852613.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392285.P2958692523418785165

`A001221(n+1)*(-1)^A073093(n+1)`
-/

namespace A392285.P2958692523418785165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) * (-1 : ℚ) ^ (A073093 (n + 1) : ℤ)

end

end A392285.P2958692523418785165

noncomputable section

/-- A392285: a(n) = omega(n) * (-1)^(bigomega(n) + 1).

Offset 1, canonical program `A392285.P2958692523418785165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392285 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392285.P2958692523418785165.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393203.P10331077631998674736

`(A001248(n+4)-A006094(n+2))/2`
-/

namespace A393203.P10331077631998674736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 4) - A006094 (n + 2) : ℚ) / 2

end

end A393203.P10331077631998674736

noncomputable section

/-- A393203: a(n) = (1/2)*(prime(n + 2)^2 - prime(n + 1)*prime(n)).

Offset 2, canonical program `A393203.P10331077631998674736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393203.P10331077631998674736.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393295.P4032472479384952545

`A393238(n)+A349927(n)`
-/

namespace A393295.P4032472479384952545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393238 n + A349927 n

end

end A393295.P4032472479384952545

noncomputable section

/-- A393295: Number of transitive relations on an n-set with at most three ordered pairs.

Offset 0, canonical program `A393295.P4032472479384952545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393295 (n : ℕ) : ℤ :=
  A393295.P4032472479384952545.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393917.P7977796838059119531

`A000720(A006094(n+1))-A000720(A001043(n+1))`
-/

namespace A393917.P7977796838059119531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006094 (n + 1)).toNat - A000720 (A001043 (n + 1)).toNat

end

end A393917.P7977796838059119531

noncomputable section

/-- A393917: Number of primes strictly between (prime(n) + prime(n+1)) and (prime(n) * prime(n+1)).

Offset 1, canonical program `A393917.P7977796838059119531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393917 (n : ℕ) : ℤ :=
  A393917.P7977796838059119531.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395133.P17198686885299587289

`1+n+1-2^(n+2)+A122367(n+1)+A006318(n+1)`
-/

namespace A395133.P17198686885299587289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (n + 1) : ℤ) - (2 ^ (n + 2) : ℤ) + A122367 (n + 1) + A006318 (n + 1)

end

end A395133.P17198686885299587289

noncomputable section

/-- A395133: Number of monotone and order decreasing transformations on an n-chain.

Offset 1, canonical program `A395133.P17198686885299587289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395133 (n : ℕ) : ℤ :=
  A395133.P17198686885299587289.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396093.P6069863032043368090

`∑{#}[n-1, A166482(n-#-1)*A166482(#)]`
-/

namespace A396093.P6069863032043368090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A166482 ((n : ℤ) - (k : ℤ) - 1).toNat * A166482 k

end

end A396093.P6069863032043368090

noncomputable section

/-- A396093: G.f. A(x) = B(B(B(x))), the third iteration of B(x) = x/(1-x)^2.

Offset 0, canonical program `A396093.P6069863032043368090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396093 (n : ℕ) : ℤ :=
  A396093.P6069863032043368090.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396250.P17131354137523979771

`(3^2^A000120(n)+1)/2*3^(n+1-2^A000120(n))-2^n`
-/

namespace A396250.P17131354137523979771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 : ℝ) ^ ((2 : ℚ) ^ (A000120 n : ℤ) : ℝ) + 1) / 2 * (3 : ℝ) ^ ((n + 1 : ℚ) - (2 : ℚ) ^ (A000120 n : ℤ) : ℝ) - (2 ^ n : ℝ)

end

end A396250.P17131354137523979771

noncomputable section

/-- A396250: a(n) is the number of ternary sequences of length n with characteristic value 0, as is defined in comments.

Offset 1, canonical program `A396250.P17131354137523979771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396250 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396250.P17131354137523979771.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396253.P3729736002703382672

`A000196(n+1)*A048656(n+1)`
-/

namespace A396253.P3729736002703382672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) * A048656 (n + 1)

end

end A396253.P3729736002703382672

noncomputable section

/-- A396253: Sum of Sum_{k=1..n} S(k) over all completely multiplicative sign sequences S of length n.

Offset 1, canonical program `A396253.P3729736002703382672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396253 (n : ℕ) : ℤ :=
  A396253.P3729736002703382672.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397106.P13058087477262254909

`n+1+A275314(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397106.P13058087477262254909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A275314 (n + 1)

end

end A397106.P13058087477262254909

noncomputable section

/-- A397106: a(n) = n + A275314(n), for n >= 1.

Offset 1, canonical program `A397106.P13058087477262254909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397106 (n : ℕ) : ℤ :=
  A397106.P13058087477262254909.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397419.P13214611387662659643

`∑{#}[n, C(n, #)*A005043(#)²]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397419.P13214611387662659643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A005043 k ^ 2

end

end A397419.P13214611387662659643

noncomputable section

/-- A397419: a(n) = Sum_{j=0..n} binomial(n, j) * A005043(j)^2.

Offset 0, canonical program `A397419.P13214611387662659643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397419 (n : ℕ) : ℤ :=
  A397419.P13214611387662659643.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397419.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397716.P910235112666114565

`A397715(n)-2*A002109(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397716.P910235112666114565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397715 n - 2 * A002109 n

end

end A397716.P910235112666114565

noncomputable section

/-- A397716: a(n) = A397715(n) - 2*A002109(n).

Offset 0, canonical program `A397716.P910235112666114565`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397716 (n : ℕ) : ℤ :=
  A397716.P910235112666114565.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398186.P9841724747001061415

`1/(n+1)*∑{#}[n, A000897(#)*A000897(n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398186.P9841724747001061415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), A000897 k * A000897 (n - k) : ℤ) : ℚ)

end

end A398186.P9841724747001061415

noncomputable section

/-- A398186: a(n) = (1/n) * Sum_{k=0..n-1} A000897(k) * A000897(n-1-k), where A000897(k) = (4*k)!/((2*k)!*k!^2).

Offset 1, canonical program `A398186.P9841724747001061415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398186.P9841724747001061415.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398186.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398650.P16240165279224502368

`A002110(n+1)-A005867(n+1)-A005867(n)-(n+1)+1`
-/

namespace A398650.P16240165279224502368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A005867 (n + 1) - A005867 n - (n + 1 : ℤ) + 1

end

end A398650.P16240165279224502368

noncomputable section

/-- A398650: Number of composite numbers less than the n-th primorial that have a common factor greater than 1 with the (n-1)-th primorial.

Offset 1, canonical program `A398650.P16240165279224502368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398650 (n : ℕ) : ℤ :=
  A398650.P16240165279224502368.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399204.P11534051387213006384

`a(n-1)*A080079(n)` with `a(0)=1`
-/

namespace A399204.P11534051387213006384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A080079 n

end

end A399204.P11534051387213006384

noncomputable section

/-- A399204: Number of permutations that give the minimum number of comparisons for sorting n elements by binary insertion.

Offset 0, canonical program `A399204.P11534051387213006384`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399204 (n : ℕ) : ℤ :=
  A399204.P11534051387213006384.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400202.P11404524350164515713

`∑{d}[n+1, A060715(#)]`
-/

namespace A400202.P11404524350164515713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060715 d

end

end A400202.P11404524350164515713

noncomputable section

/-- A400202: Number of integers k, 1 <= k < n, such that (n+k)/gcd(n,k) is prime.

Offset 1, canonical program `A400202.P11404524350164515713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400202 (n : ℕ) : ℤ :=
  A400202.P11404524350164515713.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401407.P9579087663748494119

`A008836(n+1)*A101455(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401407.P9579087663748494119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A101455 (n + 1)

end

end A401407.P9579087663748494119

noncomputable section

/-- A401407: a(n) = lambda(n)*chi_{-4}(n) = A008836(n)*A101455(n).

Offset 1, canonical program `A401407.P9579087663748494119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401407 (n : ℕ) : ℤ :=
  A401407.P9579087663748494119.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375529.P16671524515771527477

`A000040(n+1)*A375530(n)+1`
-/

namespace A375529.P16671524515771527477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A375530 n + 1

end

end A375529.P16671524515771527477

noncomputable section

/-- A375529: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, Sum_{k = 1..n} prime(k)/a(k) < 1.

Offset 1, canonical program `A375529.P16671524515771527477`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375529 (n : ℕ) : ℤ :=
  A375529.P16671524515771527477.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379509.P8727841292093369161

`A377725(n)+A385977(n)`
-/

namespace A379509.P8727841292093369161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377725 n + A385977 n

end

end A379509.P8727841292093369161

noncomputable section

/-- A379509: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A379509.P8727841292093369161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379509 (n : ℕ) : ℤ :=
  A379509.P8727841292093369161.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379509.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A380048.P12805935202259720765`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380048 (n : ℕ) : ℤ :=
  A380048.P12805935202259720765.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385553.P5498376679823547533

`A062383(n)*A064235(n+1)`
-/

namespace A385553.P5498376679823547533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A064235 (n + 1)

end

end A385553.P5498376679823547533

noncomputable section

/-- A385553: Period of {binomial(N,n) mod 6: N in Z}.

Offset 0, canonical program `A385553.P5498376679823547533`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385553 (n : ℕ) : ℤ :=
  A385553.P5498376679823547533.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391991.P1337276639088855244

`A055642(A007318(n))`
-/

namespace A391991.P1337276639088855244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007318 n).toNat

end

end A391991.P1337276639088855244

noncomputable section

/-- A391991: Triangle read by rows: T(n,k) = number of digits in decimal representation of binomial(n,k), 0<=k<=n.

Offset 0, canonical program `A391991.P1337276639088855244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391991 (n : ℕ) : ℤ :=
  A391991.P1337276639088855244.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375325.P4910902372028041489

`∑{d}[n+1, A353816(#)]`
-/

namespace A375325.P4910902372028041489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353816 d

end

end A375325.P4910902372028041489

noncomputable section

/-- A375325: a(n) is the number of divisors of n which are Loeschian numbers (A003136).

Offset 1, canonical program `A375325.P4910902372028041489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375325 (n : ℕ) : ℤ :=
  A375325.P4910902372028041489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375972.P18053615468605080457

`C(n+2, A078881(n+1))`
-/

namespace A375972.P18053615468605080457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A078881 (n + 1)).toNat

end

end A375972.P18053615468605080457

noncomputable section

/-- A375972: a(n) = binomial(n,k(n)), where k(2) = 1, k(n) = k(n-1) + (a(n-1) mod 2).

Offset 2, canonical program `A375972.P18053615468605080457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A375972 (n : ℕ) : ℤ :=
  (A375972.P18053615468605080457.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A375972.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A376358.P14573369327161220260

`eq[1, A062108(a(A053186(n)))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A376358.P14573369327161220260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  A062108 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376358.P14573369327161220260

noncomputable section

/-- A376358: Positions of numbers in A007961 that end in 1.

Offset 1, canonical program `A376358.P14573369327161220260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A376358 (n : ℕ) : ℤ :=
  (A376358.P14573369327161220260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A376358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376359.P14643456842463236531

`eq[1, A062108(a(A053186(n)))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=25`
-/

namespace A376359.P14643456842463236531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 25] fun n f2 =>
  A062108 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376359.P14643456842463236531

noncomputable section

/-- A376359: Positions of numbers in A007961 that end in 2.

Offset 1, canonical program `A376359.P14643456842463236531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A376359 (n : ℕ) : ℤ :=
  (A376359.P14643456842463236531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A376359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376562.P1885270741237052164

`Δ[A375706(n+1)]`
-/

namespace A376562.P1885270741237052164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376562.P1885270741237052164

noncomputable section

/-- A376562: Second differences of consecutive non-perfect-powers (A007916). First differences of A375706.

Offset 1, canonical program `A376562.P1885270741237052164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376562 (n : ℕ) : ℤ :=
  A376562.P1885270741237052164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377160.P10435987301358930042

`lt[2, A176166(n+1)]+1`
-/

namespace A377160.P10435987301358930042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377160.P10435987301358930042

noncomputable section

/-- A377160: Numbers k such that A000217(k) is not cubefree.

Offset 1, canonical program `A377160.P10435987301358930042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A377160 (n : ℕ) : ℤ :=
  (A377160.P10435987301358930042.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A377160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377415.P2443321957255259376

`n-A377414(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377415.P2443321957255259376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A377414 n

end

end A377415.P2443321957255259376

noncomputable section

/-- A377415: a(n) = n - A377414(n).

Offset 0, canonical program `A377415.P2443321957255259376`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377415 (n : ℕ) : ℤ :=
  A377415.P2443321957255259376.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377415.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A378850.P4049413613002117278

`Δ[Δ[Δ[A071879(n)]]]`
-/

namespace A378850.P4049413613002117278
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378850.P4049413613002117278

noncomputable section

/-- A378850: a(n) is the total number of paths starting at (0, 0), ending at (n, 0), consisting of steps (1, 1), (1, 0), (1, -2), and staying on or above y = -2.

Offset 0, canonical program `A378850.P4049413613002117278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A378850 (n : ℕ) : ℤ :=
  A378850.P4049413613002117278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A378850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378915.P8989790686636086374

`eq[1, A074754(n+1)]+1`
-/

namespace A378915.P8989790686636086374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A378915.P8989790686636086374

noncomputable section

/-- A378915: Positive integers k such that k is not divisible by sigma(m) for any m >= 2, where sigma is the sum-of-divisors function (A000203).

Offset 1, canonical program `A378915.P8989790686636086374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5467 terms. -/
def A378915 (n : ℕ) : ℤ :=
  (A378915.P8989790686636086374.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5467 terms. -/
def A378915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379034.P12083049047450536619

`A151483(n)*A151483(n+1)/4^n`
-/

namespace A379034.P12083049047450536619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151483 n * A151483 (n + 1) : ℚ) / (4 ^ n : ℚ)

end

end A379034.P12083049047450536619

noncomputable section

/-- A379034: Number of intervals in the lattice of Motzkin paths of length n.

Offset 0, canonical program `A379034.P12083049047450536619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379034 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379034.P12083049047450536619.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379225.P6942672571907196509

`A113177(n+1)%5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379225.P6942672571907196509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113177 (n + 1)) 5

end

end A379225.P6942672571907196509

noncomputable section

/-- A379225: a(n) = A113177(n) mod 5, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A379225.P6942672571907196509`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379225 (n : ℕ) : ℤ :=
  A379225.P6942672571907196509.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379225.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379714.P10513291815348111306

`∑[(-1)^n*A049419(n+1)]`
-/

namespace A379714.P10513291815348111306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379714.P10513291815348111306

noncomputable section

/-- A379714: Partial alternating sums of the number of exponential divisors function (A049419).

Offset 1, canonical program `A379714.P10513291815348111306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379714 (n : ℕ) : ℤ :=
  A379714.P10513291815348111306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379771.P2244188807561407627

`∑[A355447(n+1)]`
-/

namespace A379771.P2244188807561407627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379771.P2244188807561407627

noncomputable section

/-- A379771: Number of k <= n that are neither squarefree nor prime powers.

Offset 1, canonical program `A379771.P2244188807561407627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379771 (n : ℕ) : ℤ :=
  A379771.P2244188807561407627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379865.P7694616822125640737

`A192543(A100484(n+1))`
-/

namespace A379865.P7694616822125640737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A100484 (n + 1)).toNat

end

end A379865.P7694616822125640737

noncomputable section

/-- A379865: Number of base 10 digits of 2^(p-1)*(2^p-1) where p = prime(n).

Offset 1, canonical program `A379865.P7694616822125640737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A379865 (n : ℕ) : ℤ :=
  A379865.P7694616822125640737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A379865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380101.P1884681769082390554

`eq[2, A069903(n+1)]+1`
-/

namespace A380101.P1884681769082390554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380101.P1884681769082390554

noncomputable section

/-- A380101: Numbers k such that omega(k-th triangular number) = 2, where omega = A001221.

Offset 1, canonical program `A380101.P1884681769082390554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A380101 (n : ℕ) : ℤ :=
  (A380101.P1884681769082390554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A380101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380114.P703305606341716703

`A097805(n)*A137688(n)`
-/

namespace A380114.P703305606341716703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A137688 n

end

end A380114.P703305606341716703

noncomputable section

/-- A380114: Triangle read by rows: The convolution triangle of 2^n, where the convolution triangle of a sequence is defined in A357368.

Offset 0, canonical program `A380114.P703305606341716703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380114 (n : ℕ) : ℤ :=
  A380114.P703305606341716703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380281.P6966654181893979849

`A103327(n)*A173424(n)`
-/

namespace A380281.P6966654181893979849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103327 n * A173424 n

end

end A380281.P6966654181893979849

noncomputable section

/-- A380281: Triangle T(n, k) read by rows: T(n, k) = 2^n*binomial(2*n + 1, 2*k + 1) * Pochhammer(1/2, n - k) * Pochhammer(1/2, k).

Offset 0, canonical program `A380281.P6966654181893979849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A380281 (n : ℕ) : ℤ :=
  A380281.P6966654181893979849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A380281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380332.P1368745868140555884

`A117490(floor(1/(n+1))+n²)`
-/

namespace A380332.P1368745868140555884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (⌊1 / (n + 1 : ℚ)⌋ + (n ^ 2 : ℤ)).toNat

end

end A380332.P1368745868140555884

noncomputable section

/-- A380332: a(n) = number of primes between n^2 and n^4.

Offset 0, canonical program `A380332.P1368745868140555884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A380332 (n : ℕ) : ℤ :=
  A380332.P1368745868140555884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A380332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380395.P16192869774453608510

`abs(A307427(n+1))`
-/

namespace A380395.P16192869774453608510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307427 (n + 1)|

end

end A380395.P16192869774453608510

noncomputable section

/-- A380395: The number of unitary divisors of n that are cubes.

Offset 1, canonical program `A380395.P16192869774453608510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307427, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380395 (n : ℕ) : ℤ :=
  A380395.P16192869774453608510.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307427, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380421.P2214143849344174104

`A000326(A006254(n+1))%A000040(n+2)`
-/

namespace A380421.P2214143849344174104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000326 (A006254 (n + 1)).toNat) (A000040 (n + 2))

end

end A380421.P2214143849344174104

noncomputable section

/-- A380421: a(n) is the inverse of 2^3 modulo prime(n).

Offset 2, canonical program `A380421.P2214143849344174104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A380421 (n : ℕ) : ℤ :=
  A380421.P2214143849344174104.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A380421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380440.P5442109127590069685

`A380439(n+1)+A227291(n+1)`
-/

namespace A380440.P5442109127590069685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380439 (n + 1) + A227291 (n + 1)

end

end A380440.P5442109127590069685

noncomputable section

/-- A380440: a(n) = 1 if n has no squarefree divisor d such that d^2 > n, otherwise 0.

Offset 1, canonical program `A380440.P5442109127590069685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380440 (n : ℕ) : ℤ :=
  A380440.P5442109127590069685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380572.P12751547405263348882

`∪[A005098(n+1), A190105(n+1)]`
-/

namespace A380572.P12751547405263348882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380572.P12751547405263348882

noncomputable section

/-- A380572: Complement of A380509.

Offset 1, canonical program `A380572.P12751547405263348882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380572 (n : ℕ) : ℤ :=
  (A380572.P12751547405263348882.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380591.P13031959473465638529

`A001002(n+1)-(A052706(n+1)+A001002(n))`
-/

namespace A380591.P13031959473465638529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001002 (n + 1) - (A052706 (n + 1) + A001002 n)

end

end A380591.P13031959473465638529

noncomputable section

/-- A380591: a(n) is the number of dissections of a convex (n+2)-sided polygon by nonintersecting diagonals into triangles and quadrilaterals such that at least one of the dividing diagonals passes through a chosen vertex.

Offset 1, canonical program `A380591.P13031959473465638529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A380591 (n : ℕ) : ℤ :=
  A380591.P13031959473465638529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A380591.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A381953.P14987201644516485454

`eq[2, A381952(n+1)]+1`
-/

namespace A381953.P14987201644516485454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381953.P14987201644516485454

noncomputable section

/-- A381953: Numbers k such that A381952(k) = 2.

Offset 1, canonical program `A381953.P14987201644516485454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1619 terms. -/
def A381953 (n : ℕ) : ℤ :=
  (A381953.P14987201644516485454.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1619 terms. -/
def A381953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381956.P13911455406183739414

`eq[A033999(n), A376139(n+1)]+1`
-/

namespace A381956.P13911455406183739414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376139 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A381956.P13911455406183739414

noncomputable section

/-- A381956: Numbers k such that k and the maximum exponent in the prime factorization of k have opposite parities.

Offset 1, canonical program `A381956.P13911455406183739414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3752 terms. -/
def A381956 (n : ℕ) : ℤ :=
  (A381956.P13911455406183739414.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3752 terms. -/
def A381956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382408.P1731250343100428956

`C(A144338(n+1)-1, A144338(n+1)-A001222(A144338(n+1)))`
-/

namespace A382408.P1731250343100428956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144338 (n + 1) - 1).toNat (A144338 (n + 1) - A001222 (A144338 (n + 1)).toNat).toNat

end

end A382408.P1731250343100428956

noncomputable section

/-- A382408: a(n) is the number of terms in A071174 whose radical is A144338(n).

Offset 1, canonical program `A382408.P1731250343100428956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382408 (n : ℕ) : ℤ :=
  (A382408.P1731250343100428956.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382486.P8725495810490072092

`∏{p}[A072504(n+1), #]`
-/

namespace A382486.P8725495810490072092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382486.P8725495810490072092

noncomputable section

/-- A382486: Product of distinct prime divisors of n that are <= sqrt(n).

Offset 1, canonical program `A382486.P8725495810490072092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382486 (n : ℕ) : ℤ :=
  (A382486.P8725495810490072092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382486.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382967.P7933862469606016170

`eq[2, A299090(n+1)]+1`
-/

namespace A382967.P7933862469606016170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382967.P7933862469606016170

noncomputable section

/-- A382967: Biquadratefree numbers (A046100) that are not squarefree (A005117).

Offset 1, canonical program `A382967.P7933862469606016170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382967 (n : ℕ) : ℤ :=
  (A382967.P7933862469606016170.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382967.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A383277.P6033499868136924238

`char[(n+1)*A034444(n+1)-1]`
-/

namespace A383277.P6033499868136924238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034444 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A383277.P6033499868136924238

noncomputable section

/-- A383277: The number of divisors d of n for which A034444(d)*d is equal to n.

Offset 1, canonical program `A383277.P6033499868136924238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383277 (n : ℕ) : ℤ :=
  (A383277.P6033499868136924238.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383422.P18234050156390555465

`1-A287772(n+1)`
-/

namespace A383422.P18234050156390555465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287772 (n + 1)

end

end A383422.P18234050156390555465

noncomputable section

/-- A383422: The infinite Lucas word; the limiting word generated by s(0) = 0, s(1) = 011, and s(n) = s(n-1)s(n-2).

Offset 0, canonical program `A383422.P18234050156390555465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383422 (n : ℕ) : ℤ :=
  A383422.P18234050156390555465.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383794.P14355268900012724645

`A256689(n+1)/A038500(n+1)`
-/

namespace A383794.P14355268900012724645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256689 (n + 1) : ℚ) / (A038500 (n + 1) : ℚ)

end

end A383794.P14355268900012724645

noncomputable section

/-- A383794: Denominators of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s-1)^(1/3).

Offset 1, canonical program `A383794.P14355268900012724645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383794 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A383794.P14355268900012724645.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383863.P10403754587481525438

`∏{e}[n+1, A034444(#)+1]`
-/

namespace A383863.P10403754587481525438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A034444 (Nat.factorization (f1 n) p) + 1)

end

end A383863.P10403754587481525438

noncomputable section

/-- A383863: The number of divisors d of n having the property that for every prime p dividing n the p-adic valuation of d is either 0 or a unitary divisor of the p-adic valuation of n.

Offset 1, canonical program `A383863.P10403754587481525438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383863 (n : ℕ) : ℤ :=
  A383863.P10403754587481525438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383959.P7740077937827887255

`∑{e}[n+1, A034444(#)]`
-/

namespace A383959.P7740077937827887255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A034444 (Nat.factorization (f1 n) p)

end

end A383959.P7740077937827887255

noncomputable section

/-- A383959: The number of prime powers p^e having the property that e is a unitary divisor of the p-adic valuation of n.

Offset 1, canonical program `A383959.P7740077937827887255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383959 (n : ℕ) : ℤ :=
  A383959.P7740077937827887255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384421.P5102326397673208716

`log2(A383762(n+1))`
-/

namespace A384421.P5102326397673208716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A383762 (n + 1) : ℝ)

end

end A384421.P5102326397673208716

noncomputable section

/-- A384421: The number of exponentially squarefree prime powers (not including 1) that unitarily divide n.

Offset 1, canonical program `A384421.P5102326397673208716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384421 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384421.P5102326397673208716.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385042.P6846705367475182241

`2^A366074(n+1)`
-/

namespace A385042.P6846705367475182241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366074 (n + 1) : ℤ)

end

end A385042.P6846705367475182241

noncomputable section

/-- A385042: The number of unitary divisors of n whose exponents in their prime factorizations are all powers of 2 (A138302).

Offset 1, canonical program `A385042.P6846705367475182241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385042 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385042.P6846705367475182241.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385139.P2784818841424289045

`∑{d}[n+1, #*A355823((n+1)/#)]`
-/

namespace A385139.P2784818841424289045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A355823 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385139.P2784818841424289045

noncomputable section

/-- A385139: The sum of divisors d of n such that n/d has exponents in its prime factorization that are all powers of 2 (A138302).

Offset 1, canonical program `A385139.P2784818841424289045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385139 (n : ℕ) : ℤ :=
  A385139.P2784818841424289045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385623.P18064648453989504874

`(row(n)-col(n))*10^A055642(col(n))+col(n)`
-/

namespace A385623.P18064648453989504874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) * (10 : ℚ) ^ (A055642 (SequenceMachineLib.triCol n) : ℤ) + (SequenceMachineLib.triCol n : ℚ)

end

end A385623.P18064648453989504874

noncomputable section

/-- A385623: Array read by ascending antidiagonals: A(n,k) is the number obtained by concatenation of n with k in that order, with k >= 0.

Offset 0, canonical program `A385623.P18064648453989504874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385623 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385623.P18064648453989504874.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385660.P17485724804406826863

`lt[(n+1)%A001223(n+1), 1]+1`
-/

namespace A385660.P17485724804406826863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A001223 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A385660.P17485724804406826863

noncomputable section

/-- A385660: Numbers k such that prime(k+1)-prime(k) divides k.

Offset 1, canonical program `A385660.P17485724804406826863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A385660 (n : ℕ) : ℤ :=
  (A385660.P17485724804406826863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A385660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385880.P8400592766073740552

`A385879(n+1)+3`
-/

namespace A385880.P8400592766073740552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385879 (n + 1) + 3

end

end A385880.P8400592766073740552

noncomputable section

/-- A385880: Values of u in triples (u, v, w) such that the polynomial x^3 + u*x^2 + v*x + w has 3 distinct negative integer zeros; the triples are ordered by the inequality u < v.

Offset 1, canonical program `A385880.P8400592766073740552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385880 (n : ℕ) : ℤ :=
  A385880.P8400592766073740552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386472.P7970644289596201649

`A048760(A051903(n+1))`
-/

namespace A386472.P7970644289596201649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A051903 (n + 1)).toNat

end

end A386472.P7970644289596201649

noncomputable section

/-- A386472: The maximum exponent in the prime factorization of the largest divisor of n whose exponents in its prime factorization are squares.

Offset 1, canonical program `A386472.P7970644289596201649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386472 (n : ℕ) : ℤ :=
  A386472.P7970644289596201649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386637.P14085330832617281691

`record[lcm(7, A001248(n+1))]`
-/

namespace A386637.P14085330832617281691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A001248 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386637.P14085330832617281691

noncomputable section

/-- A386637: Numbers k such that sigma(k) = psi(k) + tau(k) + omega(k).

Offset 1, canonical program `A386637.P14085330832617281691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A386637 (n : ℕ) : ℤ :=
  (A386637.P14085330832617281691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A386637.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A386758.P2105322873788982803

`∑{digits}[A000032(n), A055642(#)]`
-/

namespace A386758.P2105322873788982803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A386758.P2105322873788982803

noncomputable section

/-- A386758: Number of decimal digits in the n-th Lucas number.

Offset 0, canonical program `A386758.P2105322873788982803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A386758 (n : ℕ) : ℤ :=
  A386758.P2105322873788982803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A386758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386789.P12804886181245952323

`∑[char[∑[n]]]*A086810(n)`
-/

namespace A386789.P12804886181245952323
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A086810 n

end

end A386789.P12804886181245952323

noncomputable section

/-- A386789: Triangle read by rows: T(n, k) = binomial(n - 1, k - 1)*binomial(n + k, k).

Offset 0, canonical program `A386789.P12804886181245952323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9138 terms. -/
def A386789 (n : ℕ) : ℤ :=
  A386789.P12804886181245952323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9138 terms. -/
def A386789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387027.P11190749158434269992

`A002944(A028310(n))*A028310(n+1)`
-/

namespace A387027.P11190749158434269992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (A028310 n).toNat * A028310 (n + 1)

end

end A387027.P11190749158434269992

noncomputable section

/-- A387027: a(n) = lcm({1, 2, ..., n}) * (n + 1) / n for n > 0, a(0) = 1.

Offset 0, canonical program `A387027.P11190749158434269992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A387027 (n : ℕ) : ℤ :=
  A387027.P11190749158434269992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A387027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387214.P2467354338932694819

`1-Δ[A156301(n)]`
-/

namespace A387214.P2467354338932694819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A387214.P2467354338932694819

noncomputable section

/-- A387214: Sturmian word of slope log(3)/log(2) - 1.

Offset 0, canonical program `A387214.P2467354338932694819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387214 (n : ℕ) : ℤ :=
  A387214.P2467354338932694819.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387237.P1085921087124048914

`C(n+4, 2)/6*A026377(n+2)`
-/

namespace A387237.P1085921087124048914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 2 : ℚ) / 6 * (A026377 (n + 2) : ℚ)

end

end A387237.P1085921087124048914

noncomputable section

/-- A387237: Expansion of 1/((1-x) * (1-5*x))^(5/2).

Offset 0, canonical program `A387237.P1085921087124048914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387237 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387237.P1085921087124048914.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387237.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387365.P13850223624109421705

`(n/2+1)*A082693(n)`
-/

namespace A387365.P13850223624109421705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A082693 n : ℚ)

end

end A387365.P13850223624109421705

noncomputable section

/-- A387365: a(n) = (n+1) * 2^abs(n - 1 - c*(c-1)) / 2, where c = ceiling(sqrt(n)).

Offset 1, canonical program `A387365.P13850223624109421705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A387365 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387365.P13850223624109421705.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A387365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388012.P15688760804591210700

`lt[A277573(n+1), A000203(n+1)]+1`
-/

namespace A388012.P15688760804591210700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388012.P15688760804591210700

noncomputable section

/-- A388012: Numbers k such that sigma(k)/k >= 5/3.

Offset 1, canonical program `A388012.P15688760804591210700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4196 terms. -/
def A388012 (n : ℕ) : ℤ :=
  (A388012.P15688760804591210700.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4196 terms. -/
def A388012.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389368.P2923439386149538919

`A332018(A007310(n+1))`
-/

namespace A389368.P2923439386149538919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332018 (A007310 (n + 1)).toNat

end

end A389368.P2923439386149538919

noncomputable section

/-- A389368: a(n) = R(A007310(n)), where R(k) = (5*k+1)/(2^r*3^s), with r and s as large as possible, that is R(k) = A065330(A016861(k)).

Offset 1, canonical program `A389368.P2923439386149538919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A389368 (n : ℕ) : ℤ :=
  A389368.P2923439386149538919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A389368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389888.P10709983666780608653

`record[A007913(n+1)*A007913(n+5)]`
-/

namespace A389888.P10709983666780608653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A007913 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389888.P10709983666780608653

noncomputable section

/-- A389888: Discriminants of real quadratic fields in which every additively indecomposable element is a unit.

Offset 1, canonical program `A389888.P10709983666780608653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389888 (n : ℕ) : ℤ :=
  A389888.P10709983666780608653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389907.P14971960217326767381

`A279521(2*(n+1))-and(n+1, A004754(n+1))`
-/

namespace A389907.P14971960217326767381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 (2 * (n + 1)) - Int.land (n + 1 : ℤ) (A004754 (n + 1))

end

end A389907.P14971960217326767381

noncomputable section

/-- A389907: a(n) = min(n, A054429(n)), where A054429 list each block of 2^n numbers (from 2^n to 2^(n+1) - 1) in reverse order.

Offset 1, canonical program `A389907.P14971960217326767381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A389907 (n : ℕ) : ℤ :=
  A389907.P14971960217326767381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A389907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389924.P15901862346322248970

`eq[A000120(n), A065120(2*n+1)]`
-/

namespace A389924.P15901862346322248970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389924.P15901862346322248970

noncomputable section

/-- A389924: Standard composition numbers of integer compositions with first part = length.

Offset 1, canonical program `A389924.P15901862346322248970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A389924 (n : ℕ) : ℤ :=
  (A389924.P15901862346322248970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A389924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390115.P15101073239205051047

`A246574(n+1)+A002057(n)`
-/

namespace A390115.P15101073239205051047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246574 (n + 1) + A002057 n

end

end A390115.P15101073239205051047

noncomputable section

/-- A390115: a(n) is the total number of vertices of degree 2 in Catalan word grid graphs with n parts.

Offset 2, canonical program `A390115.P15101073239205051047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A390115 (n : ℕ) : ℤ :=
  A390115.P15101073239205051047.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A390115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390458.P808166892872410916

`A060018(A137228(n+2))`
-/

namespace A390458.P808166892872410916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (A137228 (n + 2)).toNat

end

end A390458.P808166892872410916

noncomputable section

/-- A390458: Minimum site perimeter of a polyiamond with n cells.

Offset 1, canonical program `A390458.P808166892872410916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. -/
def A390458 (n : ℕ) : ℤ :=
  A390458.P808166892872410916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. -/
def A390458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390490.P12259971174261316425

`A307428(n+1)*A368885(n+1)`
-/

namespace A390490.P12259971174261316425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (n + 1) * A368885 (n + 1)

end

end A390490.P12259971174261316425

noncomputable section

/-- A390490: Dirichlet g.f.: (zeta(2*s))^2 / (zeta(s) * zeta(4*s)).

Offset 1, canonical program `A390490.P12259971174261316425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390490 (n : ℕ) : ℤ :=
  A390490.P12259971174261316425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390551.P17563142815161189481

`∑[A380230(n)]*A158388(n)`
-/

namespace A390551.P17563142815161189481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A158388 n

end

end A390551.P17563142815161189481

noncomputable section

/-- A390551: a(n) = Sum_{i = 0..n} i*A070939(i).

Offset 0, canonical program `A390551.P17563142815161189481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390551 (n : ℕ) : ℤ :=
  A390551.P17563142815161189481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390555.P7215730010681652163

`A049419((n+1)²)`
-/

namespace A390555.P7215730010681652163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 ((n + 1) ^ 2)

end

end A390555.P7215730010681652163

noncomputable section

/-- A390555: The number of exponential divisors of n^2.

Offset 1, canonical program `A390555.P7215730010681652163`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390555 (n : ℕ) : ℤ :=
  A390555.P7215730010681652163.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390555.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390595.P13905684079355047265

`eq[A070940(3*n+4), A070940(n+1)]+1`
-/

namespace A390595.P13905684079355047265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A390595.P13905684079355047265

noncomputable section

/-- A390595: Numbers k such that the binary length of k is the same as the binary length of 3*k+1 reduced by the largest possible power of two.

Offset 1, canonical program `A390595.P13905684079355047265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. -/
def A390595 (n : ℕ) : ℤ :=
  (A390595.P13905684079355047265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. -/
def A390595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390689.P2219131931332406576

`∑{d}[n+1, A229062(#)*#]`
-/

namespace A390689.P2219131931332406576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A229062 d * (d : ℤ)

end

end A390689.P2219131931332406576

noncomputable section

/-- A390689: The sum of the divisors of n that are sums of 2 squares (A001481).

Offset 1, canonical program `A390689.P2219131931332406576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A229062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390689 (n : ℕ) : ℤ :=
  A390689.P2219131931332406576.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A229062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390689.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390690.P1657421129599559048

`∑{d}[n+1, A353816(#)*#]`
-/

namespace A390690.P1657421129599559048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353816 d * (d : ℤ)

end

end A390690.P1657421129599559048

noncomputable section

/-- A390690: The sum of the divisors of n that are Loeschian numbers (A003136).

Offset 1, canonical program `A390690.P1657421129599559048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390690 (n : ℕ) : ℤ :=
  A390690.P1657421129599559048.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390690.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390718.P13136824727992401142

`eq[1, A000120(A001414(n+1))]+1`
-/

namespace A390718.P13136824727992401142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390718.P13136824727992401142

noncomputable section

/-- A390718: Numbers k whose sum of prime factors (with multiplicity) is a power of 2.

Offset 1, canonical program `A390718.P13136824727992401142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A390718 (n : ℕ) : ℤ :=
  (A390718.P13136824727992401142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A390718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390768.P10875789156720310825

`A000523(A139391(n+1))-A000523(n+1)`
-/

namespace A390768.P10875789156720310825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A139391 (n + 1)).toNat - A000523 (n + 1)

end

end A390768.P10875789156720310825

noncomputable section

/-- A390768: Binary length of A139391(n) - binary length of n.

Offset 1, canonical program `A390768.P10875789156720310825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A390768 (n : ℕ) : ℤ :=
  A390768.P10875789156720310825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A390768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391023.P14661047719889867302

`filter[A067259(n+1), A355447(#)]`
-/

namespace A391023.P14661047719889867302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A391023.P14661047719889867302

noncomputable section

/-- A391023: Numbers with more than 1 distinct prime factor and whose largest prime factor exponent is 2.

Offset 1, canonical program `A391023.P14661047719889867302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A391023 (n : ℕ) : ℤ :=
  A391023.P14661047719889867302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A391023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391134.P1699678046192407440

`A030238(n+1)-A132364(n+1)`
-/

namespace A391134.P1699678046192407440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030238 (n + 1) - A132364 (n + 1)

end

end A391134.P1699678046192407440

noncomputable section

/-- A391134: Expansion of g^2/(1 - x^2*g), where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A391134.P1699678046192407440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391134 (n : ℕ) : ℤ :=
  A391134.P1699678046192407440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391459.P1748028388356336666

`A399989(n+1)+A399989(n)-A000108(n)`
-/

namespace A391459.P1748028388356336666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399989 (n + 1) + A399989 n - A000108 n

end

end A391459.P1748028388356336666

noncomputable section

/-- A391459: Expansion of g/(2 - g^2), where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A391459.P1748028388356336666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A391459 (n : ℕ) : ℤ :=
  A391459.P1748028388356336666.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A391459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391752.P694586830429822444

`A052038(A000045(n+1))`
-/

namespace A391752.P694586830429822444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A000045 (n + 1)).toNat

end

end A391752.P694586830429822444

noncomputable section

/-- A391752: First nonzero digit in the decimal expansion of 1/Fibonacci(n).

Offset 1, canonical program `A391752.P694586830429822444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391752 (n : ℕ) : ℤ :=
  A391752.P694586830429822444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391992.P8143672549398333328

`∑{digits}[A000984(n), A055642(#)]`
-/

namespace A391992.P8143672549398333328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A391992.P8143672549398333328

noncomputable section

/-- A391992: Number of digits in the decimal expansion of binomial(2*n,n).

Offset 0, canonical program `A391992.P8143672549398333328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A391992 (n : ℕ) : ℤ :=
  A391992.P8143672549398333328.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A391992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392199.P2791920592181297903

`eq[1, A341523(n+1)]+1`
-/

namespace A392199.P2791920592181297903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392199.P2791920592181297903

noncomputable section

/-- A392199: Positive integers k such that gcd(k, sigma(k)) is prime.

Offset 1, canonical program `A392199.P2791920592181297903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392199 (n : ℕ) : ℤ :=
  (A392199.P2791920592181297903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392359.P2113602717843569055

`(n+1)/A087267(n+1)`
-/

namespace A392359.P2113602717843569055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A087267 (n + 1) : ℚ)

end

end A392359.P2113602717843569055

noncomputable section

/-- A392359: Denominators of the reduced fractions of the ratios of the number of primes less than n over n.

Offset 1, canonical program `A392359.P2113602717843569055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392359 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392359.P2113602717843569055.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392451.P8918691439076179572

`∏{e}[n+1, A000120(#)+1]`
-/

namespace A392451.P8918691439076179572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A000120 (Nat.factorization (f1 n) p) + 1)

end

end A392451.P8918691439076179572

noncomputable section

/-- A392451: The number of infinitary divisors of n that are numbers whose prime factorization exponents are all powers of 2 (A138302).

Offset 1, canonical program `A392451.P8918691439076179572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392451 (n : ℕ) : ℤ :=
  A392451.P8918691439076179572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393292.P14481508653223136911

`1-A362248(n+1)+n`
-/

namespace A393292.P14481508653223136911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A362248 (n + 1) + (n : ℤ)

end

end A393292.P14481508653223136911

noncomputable section

/-- A393292: Number computed by Wolfram's 2-state 2-symbol Turing machine 2205 when started with n on the tape.

Offset 1, canonical program `A393292.P14481508653223136911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393292 (n : ℕ) : ℤ :=
  A393292.P14481508653223136911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393609.P11922313531072709366

`A000040(A035513(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393609.P11922313531072709366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A035513 (n + 1)).toNat

end

end A393609.P11922313531072709366

noncomputable section

/-- A393609: Square array A read by descending antidiagonals: A(n,k) = prime(A035513(n, k)).

Offset 1, canonical program `A393609.P11922313531072709366`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393609 (n : ℕ) : ℤ :=
  A393609.P11922313531072709366.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393803.P3807868099825041291

`eq[A000120(n), A160384(n)]`
-/

namespace A393803.P3807868099825041291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P3807868099825041291

noncomputable section

/-- A393803: Numbers whose number of nonzero digits is identical in base 2 and 3.

Offset 1, canonical program `A393803.P3807868099825041291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A393803 (n : ℕ) : ℤ :=
  (A393803.P3807868099825041291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A393803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394217.P17364854151603139210

`n+1-A060973(a(n-1))` with `a(0)=1`
-/

namespace A394217.P17364854151603139210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - A060973 (a (n - 1)).toNat

end

end A394217.P17364854151603139210

noncomputable section

/-- A394217: Earliest monotonic sequence satisfying a(1)=1 and a(a(n)+a(n-1))=n for n>=1 (with a(k)=0 for k<=0).

Offset 1, canonical program `A394217.P17364854151603139210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394217 (n : ℕ) : ℤ :=
  A394217.P17364854151603139210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394266.P11615888605151437702

`Δ[n²]*A189176(n)`
-/

namespace A394266.P11615888605151437702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A189176 n

end

end A394266.P11615888605151437702

noncomputable section

/-- A394266: Number of induced cubes in the n-odd graph.

Offset 1, canonical program `A394266.P11615888605151437702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A394266 (n : ℕ) : ℤ :=
  A394266.P11615888605151437702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A394266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394789.P13559910968845003337

`∑[A353670(n+1)]`
-/

namespace A394789.P13559910968845003337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P13559910968845003337

noncomputable section

/-- A394789: Number of positive integers <= n with exactly two odd divisors.

Offset 1, canonical program `A394789.P13559910968845003337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394789 (n : ℕ) : ℤ :=
  A394789.P13559910968845003337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394792.P15853201692661085382

`∑[A010054(A054844(n+1)²)]`
-/

namespace A394792.P15853201692661085382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A054844 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394792.P15853201692661085382

noncomputable section

/-- A394792: Number of positive integers <= n with exactly three odd divisors.

Offset 1, canonical program `A394792.P15853201692661085382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394792 (n : ℕ) : ℤ :=
  A394792.P15853201692661085382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394813.P16912607462095156399

`A004736(n+1)*A008957(n+1)`
-/

namespace A394813.P16912607462095156399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A008957 (n + 1)

end

end A394813.P16912607462095156399

noncomputable section

/-- A394813: Triangle read by rows: T(n, k) is the k-th even-indexed column of the array A394582.

Offset 1, canonical program `A394813.P16912607462095156399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. -/
def A394813 (n : ℕ) : ℤ :=
  A394813.P16912607462095156399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. -/
def A394813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395270.P17244589602935654934

`filter[A005117(n+1), A323170(#)]`
-/

namespace A395270.P17244589602935654934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A395270.P17244589602935654934

noncomputable section

/-- A395270: Numbers that are radicals of abundant numbers.

Offset 1, canonical program `A395270.P17244589602935654934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395270 (n : ℕ) : ℤ :=
  A395270.P17244589602935654934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395520.P8890934817172298303

`A036349(n+2)-A036349(n+1)`
-/

namespace A395520.P8890934817172298303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 2) - A036349 (n + 1)

end

end A395520.P8890934817172298303

noncomputable section

/-- A395520: First differences of A036349.

Offset 1, canonical program `A395520.P8890934817172298303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395520 (n : ℕ) : ℤ :=
  A395520.P8890934817172298303.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395768.P1059238046107922784

`∑{d}[n+1, #*A374367((n+1)/#)]`
-/

namespace A395768.P1059238046107922784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A374367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395768.P1059238046107922784

noncomputable section

/-- A395768: The twisted Euler phi-function for the Dirichlet character kronecker(-4,.) mod 4.

Offset 1, canonical program `A395768.P1059238046107922784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395768 (n : ℕ) : ℤ :=
  A395768.P1059238046107922784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396648.P12511411540174210681

`A133053(n+1)-A172361(n+1)`
-/

namespace A396648.P12511411540174210681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133053 (n + 1) - A172361 (n + 1)

end

end A396648.P12511411540174210681

noncomputable section

/-- A396648: Row sums of A396585.

Offset 0, canonical program `A396648.P12511411540174210681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A396648 (n : ℕ) : ℤ :=
  A396648.P12511411540174210681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A396648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396722.P14914588847797964893

`A081294(n)-A115140(n)`
-/

namespace A396722.P14914588847797964893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A115140 n

end

end A396722.P14914588847797964893

noncomputable section

/-- A396722: a(n) = (4^n/2) * p(n, 5/2), where p(n,x) is the Lagrange interpolating polynomial through (1,0) and (k,1) for k=2..n+1.

Offset 0, canonical program `A396722.P14914588847797964893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A396722 (n : ℕ) : ℤ :=
  A396722.P14914588847797964893.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A396722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396939.P3152846793651132362

`comp[A173024(n+1)]`
-/

namespace A396939.P3152846793651132362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396939.P3152846793651132362

noncomputable section

/-- A396939: Numbers having isolated ones or isolated double ones in their binary representations.

Offset 1, canonical program `A396939.P3152846793651132362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396939 (n : ℕ) : ℤ :=
  (A396939.P3152846793651132362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397112.P7348906844622945002

`A000040(A397111(n+1))`
-/

namespace A397112.P7348906844622945002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A397111 (n + 1)).toNat

end

end A397112.P7348906844622945002

noncomputable section

/-- A397112: Primes indexed by A397111.

Offset 1, canonical program `A397112.P7348906844622945002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A397112 (n : ℕ) : ℤ :=
  A397112.P7348906844622945002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A397112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397422.P5494168866610696871

`A046899(n)*A355007(n)`
-/

namespace A397422.P5494168866610696871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A355007 n

end

end A397422.P5494168866610696871

noncomputable section

/-- A397422: Triangle read by rows: T(n, k) = binomial(n+k, n) * |Stirling1(n, k)| * n^k.

Offset 0, canonical program `A397422.P5494168866610696871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. -/
def A397422 (n : ℕ) : ℤ :=
  A397422.P5494168866610696871.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. -/
def A397422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397469.P12444766347461370515

`A065091(A054406(n+1)-1)`
-/

namespace A397469.P12444766347461370515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A054406 (n + 1) - 1).toNat

end

end A397469.P12444766347461370515

noncomputable section

/-- A397469: a(n) = prime(floor(n*r)), where r = (3 + sqrt(3))/2.

Offset 1, canonical program `A397469.P12444766347461370515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4227 terms. -/
def A397469 (n : ℕ) : ℤ :=
  A397469.P12444766347461370515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4227 terms. -/
def A397469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397495.P2362568275880317952

`A074149(A102781(n+2))`
-/

namespace A397495.P2362568275880317952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (A102781 (n + 2)).toNat

end

end A397495.P2362568275880317952

noncomputable section

/-- A397495: Number of quadruples (a,b,c,d) of nonzero quadratic residues modulo prime(n) such that a + b == c + d (mod prime(n)).

Offset 2, canonical program `A397495.P2362568275880317952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A397495 (n : ℕ) : ℤ :=
  A397495.P2362568275880317952.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A397495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397787.P9925276150095344826

`∑{d}[n+1, A007427(#)*A080513((n+1)/#-1)]`
-/

namespace A397787.P9925276150095344826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A080513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A397787.P9925276150095344826

noncomputable section

/-- A397787: Number of even primitive Dirichlet characters modulo n.

Offset 1, canonical program `A397787.P9925276150095344826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397787 (n : ℕ) : ℤ :=
  A397787.P9925276150095344826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397788.P10557389323205216915

`∑{d}[n+1, A004526(#-1)*A007427((n+1)/#)]`
-/

namespace A397788.P10557389323205216915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004526 (d - 1) * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397788.P10557389323205216915

noncomputable section

/-- A397788: Number of odd primitive Dirichlet characters modulo n.

Offset 1, canonical program `A397788.P10557389323205216915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397788 (n : ℕ) : ℤ :=
  A397788.P10557389323205216915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397991.P6089644370162683677

`A025581(n)+A010766(n+1)`
-/

namespace A397991.P6089644370162683677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A010766 (n + 1)

end

end A397991.P6089644370162683677

noncomputable section

/-- A397991: Array read by ascending antidiagonals: A(n,k) = floor(1+k*n/(k-1)) with k >= 2.

Offset 0, canonical program `A397991.P6089644370162683677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397991 (n : ℕ) : ℤ :=
  A397991.P6089644370162683677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398389.P6222252586482190489

`A177712(n+1)+2`
-/

namespace A398389.P6222252586482190489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1) + 2

end

end A398389.P6222252586482190489

noncomputable section

/-- A398389: Even positive numbers m such that m - 2^k is composite for all k > 0 with 2^k < m.

Offset 1, canonical program `A398389.P6222252586482190489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398389 (n : ℕ) : ℤ :=
  A398389.P6222252586482190489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398656.P9523121209241230908

`A398655(n)+A060584(n)`
-/

namespace A398656.P9523121209241230908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398655 n + A060584 n

end

end A398656.P9523121209241230908

noncomputable section

/-- A398656: Upper (1, 2/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398656.P9523121209241230908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398656 (n : ℕ) : ℤ :=
  A398656.P9523121209241230908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398954.P11143497039519897158

`filter[A005117(n+1), A162289(#)]`
-/

namespace A398954.P11143497039519897158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A398954.P11143497039519897158

noncomputable section

/-- A398954: 7-rough squarefree numbers: squarefree numbers whose prime factors are all greater than 5.

Offset 1, canonical program `A398954.P11143497039519897158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398954 (n : ℕ) : ℤ :=
  A398954.P11143497039519897158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399088.P9966872433898824773

`A051903(A005117(n+1)+1)`
-/

namespace A399088.P9966872433898824773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A005117 (n + 1) + 1).toNat

end

end A399088.P9966872433898824773

noncomputable section

/-- A399088: The maximum exponent in the prime factorization of the number following the n-th squarefree number.

Offset 1, canonical program `A399088.P9966872433898824773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399088 (n : ℕ) : ℤ :=
  A399088.P9966872433898824773.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399089.P17383829431704807904

`A051903(A005117(n+2)-1)`
-/

namespace A399089.P17383829431704807904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A005117 (n + 2) - 1).toNat

end

end A399089.P17383829431704807904

noncomputable section

/-- A399089: The maximum exponent in the prime factorization of the number preceding the n-th squarefree number.

Offset 2, canonical program `A399089.P17383829431704807904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399089 (n : ℕ) : ℤ :=
  A399089.P17383829431704807904.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399262.P9814319546926637261

`A183301(n+1)+A057944(n)`
-/

namespace A399262.P9814319546926637261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (n + 1) + A057944 n

end

end A399262.P9814319546926637261

noncomputable section

/-- A399262: Triangle read by rows: row n gives the n consecutive integers centered at n^2, excluding n^2 if n is even.

Offset 1, canonical program `A399262.P9814319546926637261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399262 (n : ℕ) : ℤ :=
  A399262.P9814319546926637261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399490.P10332122597394421596

`A219054(n+1)-A212760(n)`
-/

namespace A399490.P10332122597394421596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219054 (n + 1) - A212760 n

end

end A399490.P10332122597394421596

noncomputable section

/-- A399490: Sum of squares of the elements of R(n), where R(n) is the set of n consecutive integers centered at n, with the center n omitted when n is even.

Offset 1, canonical program `A399490.P10332122597394421596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399490 (n : ℕ) : ℤ :=
  A399490.P10332122597394421596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400324.P3198541763604547307

`A004737(A005369(n+1)+n+2)`
-/

namespace A400324.P3198541763604547307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A005369 (n + 1) + (n + 2 : ℤ)).toNat

end

end A400324.P3198541763604547307

noncomputable section

/-- A400324: Irregular triangle read by rows, where row n gives the lengths of consecutive same species move blocks in the solution of the Frogs and Toads interchange puzzle with n frogs and n toads.

Offset 1, canonical program `A400324.P3198541763604547307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A400324 (n : ℕ) : ℤ :=
  A400324.P3198541763604547307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A400324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400698.P14154291513535149740

`A124897(n)+a(n-1)` with `a(0)=1`
-/

namespace A400698.P14154291513535149740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124897 n + a (n - 1)

end

end A400698.P14154291513535149740

noncomputable section

/-- A400698: a(n) = Sum_{k=0..n} mu(k^2 + 1).

Offset 0, canonical program `A400698.P14154291513535149740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400698 (n : ℕ) : ℤ :=
  A400698.P14154291513535149740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400770.P6014380429317486619

`∑[A400769(n)]`
-/

namespace A400770.P6014380429317486619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P6014380429317486619

noncomputable section

/-- A400770: a(n) = Sum_{k=0..n} mu(k^2 + k + 1).

Offset 0, canonical program `A400770.P6014380429317486619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400770 (n : ℕ) : ℤ :=
  A400770.P6014380429317486619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400791.P12289460489753655867

`∑{d}[n+1, #*A140106(#)]`
-/

namespace A400791.P12289460489753655867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A140106 d

end

end A400791.P12289460489753655867

noncomputable section

/-- A400791: a(n) = Sum_{d|n, d >= 4} d * floor((d - 2)/2).

Offset 1, canonical program `A400791.P12289460489753655867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400791 (n : ℕ) : ℤ :=
  A400791.P12289460489753655867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375428.P1929730211812684430

`A000045(A130233(A051903(n+1)))`
-/

namespace A375428.P1929730211812684430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130233 (A051903 (n + 1)).toNat).toNat

end

end A375428.P1929730211812684430

noncomputable section

/-- A375428: The maximum exponent in the unique factorization of n in terms of distinct terms of A115975 using the Zeckendorf representation of the exponents in the prime factorization of n; a(1) = 0.

Offset 1, canonical program `A375428.P1929730211812684430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375428 (n : ℕ) : ℤ :=
  A375428.P1929730211812684430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375429.P12447372994373852055

`A130233(A051903(n+1))`
-/

namespace A375429.P12447372994373852055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A051903 (n + 1)).toNat

end

end A375429.P12447372994373852055

noncomputable section

/-- A375429: The indices of the terms of A375428 in the Fibonacci sequence.

Offset 1, canonical program `A375429.P12447372994373852055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A130233, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375429 (n : ℕ) : ℤ :=
  A375429.P12447372994373852055.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A130233, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376257.P1037975452622743819

`(n+1-A007954(n+1))*(-1)^A007954(n+1)`
-/

namespace A376257.P1037975452622743819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A007954 (n + 1) : ℚ) * (-1 : ℚ) ^ (A007954 (n + 1) : ℤ)

end

end A376257.P1037975452622743819

noncomputable section

/-- A376257: a(n) = (n - c(n))*(-1)^c(n), where c(n) is the product of the digits of n (A007954).

Offset 1, canonical program `A376257.P1037975452622743819`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376257.P1037975452622743819.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376257.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A377994.P2582031446348663756

`eq[A062157(n), A065357(n)]`
-/

namespace A377994.P2582031446348663756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377994.P2582031446348663756

noncomputable section

/-- A377994: Numbers k such that k + PrimePi(k) is odd.

Offset 1, canonical program `A377994.P2582031446348663756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A377994 (n : ℕ) : ℤ :=
  (A377994.P2582031446348663756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A377994.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A386335.P18013375525764117

`∩[A038604(n+1), A038611(n+1)]`
-/

namespace A386335.P18013375525764117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386335.P18013375525764117

noncomputable section

/-- A386335: Primes without {2, 3} as digits.

Offset 1, canonical program `A386335.P18013375525764117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386335 (n : ℕ) : ℤ :=
  (A386335.P18013375525764117.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386335.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389634.P7278143052267109822

`∪[A039725(n+1), A047228(n+1)]`
-/

namespace A389634.P7278143052267109822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389634.P7278143052267109822

noncomputable section

/-- A389634: Numbers k whose abundancy (sigma(k)/k) is at least 4/3, where sigma(k) = A000203(k).

Offset 1, canonical program `A389634.P7278143052267109822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389634 (n : ℕ) : ℤ :=
  (A389634.P7278143052267109822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390323.P3785006267349611144

`A023896(n+1)-A034387(n+1)+A008472(n+1)-1`
-/

namespace A390323.P3785006267349611144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) - A034387 (n + 1) + A008472 (n + 1) - 1

end

end A390323.P3785006267349611144

noncomputable section

/-- A390323: Sum of composite numbers coprime to n in the range 1 < k < n.

Offset 1, canonical program `A390323.P3785006267349611144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, A034387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390323 (n : ℕ) : ℤ :=
  A390323.P3785006267349611144.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, A034387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391403.P4218804131166072041

`A011973(n)*A034868(n)`
-/

namespace A391403.P4218804131166072041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n * A034868 n

end

end A391403.P4218804131166072041

noncomputable section

/-- A391403: Triangle read by rows: T(n,k) is k-th entry of the gamma-vector of the n-dimensional cyclohedron, 0 <= k <= floor(n/2).

Offset 0, canonical program `A391403.P4218804131166072041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391403 (n : ℕ) : ℤ :=
  A391403.P4218804131166072041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391840.P6091312888853669410

`A053836(A000040(n+1))`
-/

namespace A391840.P6091312888853669410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A000040 (n + 1)).toNat

end

end A391840.P6091312888853669410

noncomputable section

/-- A391840: Base 16 sum of digits of prime(n).

Offset 1, canonical program `A391840.P6091312888853669410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391840 (n : ℕ) : ℤ :=
  A391840.P6091312888853669410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393350.P4719086423447970445

`Δ[A000720(A005101(n+1))]`
-/

namespace A393350.P4719086423447970445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393350.P4719086423447970445

noncomputable section

/-- A393350: a(n) is the number of primes between A005101(n) and A005101(n + 1).

Offset 1, canonical program `A393350.P4719086423447970445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A393350 (n : ℕ) : ℤ :=
  A393350.P4719086423447970445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A393350.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395088.P1994760081379151259

`2-A026465(n+2)`
-/

namespace A395088.P1994760081379151259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026465 (n + 2)

end

end A395088.P1994760081379151259

noncomputable section

/-- A395088: Fixed point of the morphism 0->011, 1->0.

Offset 0, canonical program `A395088.P1994760081379151259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395088 (n : ℕ) : ℤ :=
  A395088.P1994760081379151259.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395088.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A395961.P9208801736051543594

`A053836(n)%2`
-/

namespace A395961.P9208801736051543594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053836 n) 2

end

end A395961.P9208801736051543594

noncomputable section

/-- A395961: Fourth iterate of the Thue-Morse transform applied to A000035.

Offset 0, canonical program `A395961.P9208801736051543594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395961 (n : ℕ) : ℤ :=
  A395961.P9208801736051543594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395997.P3155127088775821677

`A016921(A070799(n+1))`
-/

namespace A395997.P3155127088775821677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A070799 (n + 1)).toNat

end

end A395997.P3155127088775821677

noncomputable section

/-- A395997: Numbers k > 3 such that the greedy Egyptian fraction representation of 3/k has more terms than the shortest representation of 3/k as a sum of unit fractions.

Offset 1, canonical program `A395997.P3155127088775821677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A395997 (n : ℕ) : ℤ :=
  A395997.P3155127088775821677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A395997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396279.P7454295923968668205

`eq[A000079(A013632(n)), A053644(n)]`
-/

namespace A396279.P7454295923968668205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A013632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396279.P7454295923968668205

noncomputable section

/-- A396279: Integers k such that p - k = floor(log_2(k)), where p is the smallest prime strictly greater than k.

Offset 1, canonical program `A396279.P7454295923968668205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A396279 (n : ℕ) : ℤ :=
  (A396279.P7454295923968668205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A396279.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A397890.P17401045601756210256

`∑[A061017(n+1)]-A061017(n+1)`
-/

namespace A397890.P17401045601756210256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061017 (n + 1)

end

end A397890.P17401045601756210256

noncomputable section

/-- A397890: Minimum binary length of a standard-order composition with n distinct runs; bit length of A351015(n).

Offset 0, canonical program `A397890.P17401045601756210256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397890 (n : ℕ) : ℤ :=
  A397890.P17401045601756210256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397890.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-- A398981: a(n) is the number k such that 2*(k*n+v) = Sum_{d|n} (k*d+v), where k and v are coprime and not both are 0.

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

/-- A398982: a(n) is the number k such that 2*(u*n+k) = Sum_{d|n} (u*d+k), where u and k are coprime and not both are 0.

Offset 1, canonical program `A398982.P10718508914280456224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398982 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398982.P10718508914280456224.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400366.P16946249597107068672

`∑[char[A080075(n+1)]]`
-/

namespace A400366.P16946249597107068672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400366.P16946249597107068672

noncomputable section

/-- A400366: Number of Proth numbers <= n.

Offset 0, canonical program `A400366.P16946249597107068672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400366 (n : ℕ) : ℤ :=
  (A400366.P16946249597107068672.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400366.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A400891.P3266793894534689506

`(A084088(n+1)-2)/3`
-/

namespace A400891.P3266793894534689506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084088 (n + 1) - 2 : ℚ) / 3

end

end A400891.P3266793894534689506

noncomputable section

/-- A400891: Numbers k such that the 2-adic valuation of 3*k+2 is even.

Offset 1, canonical program `A400891.P3266793894534689506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400891.P3266793894534689506.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380444.P14151293279187532113

`A023890(n+1)+A005063(n+1)`
-/

namespace A380444.P14151293279187532113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) + A005063 (n + 1)

end

end A380444.P14151293279187532113

noncomputable section

/-- A380444: Sum of the nonprimes dividing n and the squares of the primes dividing n.

Offset 1, canonical program `A380444.P14151293279187532113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380444 (n : ℕ) : ℤ :=
  A380444.P14151293279187532113.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392171.P17248236630189717362

`A001615(A356193(n+1))`
-/

namespace A392171.P17248236630189717362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A356193 (n + 1)).toNat

end

end A392171.P17248236630189717362

noncomputable section

/-- A392171: The Dedekind psi function value of the smallest cubefull number that is a multiple of n.

Offset 1, canonical program `A392171.P17248236630189717362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392171 (n : ℕ) : ℤ :=
  A392171.P17248236630189717362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380725.P7158320234330131983

`eq[A055642(n)², A007953(n)]`
-/

namespace A380725.P7158320234330131983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380725.P7158320234330131983

noncomputable section

/-- A380725: Positive integers k whose sum of digits equals the square of their number of digits.

Offset 1, canonical program `A380725.P7158320234330131983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A380725 (n : ℕ) : ℤ :=
  (A380725.P7158320234330131983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A380725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381964.P10364556719248759168

`a(A007953(n)%n)+n` with `a(0)=0`
-/

namespace A381964.P10364556719248759168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod (A007953 n) (n : ℤ)).toNat + n

end

end A381964.P10364556719248759168

noncomputable section

/-- A381964: Row sums of A381963.

Offset 0, canonical program `A381964.P10364556719248759168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381964 (n : ℕ) : ℤ :=
  (A381964.P10364556719248759168.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381964.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A388539.P17116264068590608702

`A007953(A007598(n))`
-/

namespace A388539.P17116264068590608702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007598 n).toNat

end

end A388539.P17116264068590608702

noncomputable section

/-- A388539: Sum of decimal digits of Fibonacci(n)^2.

Offset 0, canonical program `A388539.P17116264068590608702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388539 (n : ℕ) : ℤ :=
  A388539.P17116264068590608702.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388539.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389882.P1417654939235969709

`(10^A055642(n)-1)/9*A007953(n)`
-/

namespace A389882.P1417654939235969709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 : ℚ) ^ (A055642 n : ℤ) - 1) / 9 * (A007953 n : ℚ)

end

end A389882.P1417654939235969709

noncomputable section

/-- A389882: Row sums of A389420 and A389875.

Offset 0, canonical program `A389882.P1417654939235969709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389882 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389882.P1417654939235969709.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392366.P7451516623562640753

`A056911(n+1)²`
-/

namespace A392366.P7451516623562640753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1) ^ 2

end

end A392366.P7451516623562640753

noncomputable section

/-- A392366: The odd squarefree numbers squared.

Offset 1, canonical program `A392366.P7451516623562640753`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392366 (n : ℕ) : ℤ :=
  A392366.P7451516623562640753.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400478.P8710240923367081991

`(a(n-1)-a(n-2))*A007953(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A400478.P8710240923367081991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) - a (n - 2)) * A007953 (a (n - 1) + a (n - 2)).toNat

end

end A400478.P8710240923367081991

noncomputable section

/-- A400478: a(1)=1, a(2)=2; thereafter a(n) = (a(n-1)-a(n-2))*sum of digits(a(n-1)+a(n-2)).

Offset 1, canonical program `A400478.P8710240923367081991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400478 (n : ℕ) : ℤ :=
  A400478.P8710240923367081991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400478.provenance : SequenceMachineLib.Provenance := .conditional

