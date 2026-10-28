import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C011
import Seq.B000.C022
import Seq.B001.C000
import Seq.B001.C002
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

/-! ## A398923.P6322599387102687112

`∑[A398922(n+1)]`
-/

namespace A398923.P6322599387102687112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398923.P6322599387102687112

noncomputable section

/-- A398923: Number of distinct acute lattice trapezia of area at most n/2 with horizontal base.

Offset 1, canonical program `A398923.P6322599387102687112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398923 (n : ℕ) : ℤ :=
  A398923.P6322599387102687112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398923.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A399863.P5848190532128983579

`A220053(n+1)+A004247(n)`
-/

namespace A399863.P5848190532128983579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220053 (n + 1) + A004247 n

end

end A399863.P5848190532128983579

noncomputable section

/-- A399863: Triangle read by rows: T(n,k) = binomial(n+1,2) - binomial(n-k+1,2) + binomial(n-k,2) - [n-k+1 > k]*binomial(n-2*k+1,2), k = 1..n, with Iverson brackets.

Offset 1, canonical program `A399863.P5848190532128983579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A399863 (n : ℕ) : ℤ :=
  A399863.P5848190532128983579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A399863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401409.P15315601482885361592

`A065359(A003188(n))`
-/

namespace A401409.P15315601482885361592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A003188 n).toNat

end

end A401409.P15315601482885361592

noncomputable section

/-- A401409: Partial sums of A209615.

Offset 0, canonical program `A401409.P15315601482885361592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401409 (n : ℕ) : ℤ :=
  A401409.P15315601482885361592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400893.P8227133802892121621

`2*A400890(n+1)+1`
-/

namespace A400893.P8227133802892121621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A400890 (n + 1) + 1

end

end A400893.P8227133802892121621

noncomputable section

/-- A400893: Bipartition of the positive odd numbers depending on the parity of the 2-adic valuation A007814(3*k + 2). Here the part with odd valuation based on A400890.

Offset 1, canonical program `A400893.P8227133802892121621`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400893 (n : ℕ) : ℤ :=
  A400893.P8227133802892121621.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400893.provenance : SequenceMachineLib.Provenance := .conditional

