import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C032
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

Offset 1, canonical program `A380162.P3923099972505538438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008833, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380162 (n : ℕ) : ℤ :=
  A380162.P3923099972505538438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008833, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A381841.P11592063328882471830

`A136495(n+1)+A136496(n+1)`
-/

namespace A381841.P11592063328882471830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + A136496 (n + 1)

end

end A381841.P11592063328882471830

noncomputable section

/-- A381841: Position of the n-th occurrence of the digit 3 in A105083(n-1) for n>=1.

Offset 1, canonical program `A381841.P11592063328882471830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381841 (n : ℕ) : ℤ :=
  A381841.P11592063328882471830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382123.P171162339606438149

`A000203(n+1)*A062731(n+1)/3`
-/

namespace A382123.P171162339606438149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A062731 (n + 1) : ℚ) / 3

end

end A382123.P171162339606438149

noncomputable section

/-- A382123: a(n) = sigma(n)*sigma(2*n)/3 for n >= 1.

Offset 1, canonical program `A382123.P171162339606438149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382123 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382123.P171162339606438149.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382123.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A387001.P16811340479551848930

`A224880(n+1)+1`
-/

namespace A387001.P16811340479551848930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) + 1

end

end A387001.P16811340479551848930

noncomputable section

/-- A387001: Number of vertices in the diagram called "symmetric representation of sigma(n)" where its "parts" or polygons are dissected into unit squares (see the example).

Offset 1, canonical program `A387001.P16811340479551848930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387001 (n : ℕ) : ℤ :=
  A387001.P16811340479551848930.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387001.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389446.P10095306458237006129

`gcd(A000203(n+1), A057723(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389446.P10095306458237006129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A057723 (n + 1))

end

end A389446.P10095306458237006129

noncomputable section

/-- A389446: a(n) = gcd(sigma(n), A057723(n)), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

Offset 1, canonical program `A389446.P10095306458237006129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389446 (n : ℕ) : ℤ :=
  (A389446.P10095306458237006129.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389446.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A392034.P3707045700656422187

`A291463(n+1)/2`
-/

namespace A392034.P3707045700656422187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291463 (n + 1) : ℚ) / 2

end

end A392034.P3707045700656422187

noncomputable section

/-- A392034: a(n) = prime(n)*(prime(n+1) - prime(n))/2.

Offset 1, canonical program `A392034.P3707045700656422187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392034 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392034.P3707045700656422187.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392166.P416411638160611915

`A001615(A019554(n+1))`
-/

namespace A392166.P416411638160611915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A019554 (n + 1)).toNat

end

end A392166.P416411638160611915

noncomputable section

/-- A392166: The Dedekind psi function value of the smallest number whose square is divisible by n.

Offset 1, canonical program `A392166.P416411638160611915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392166 (n : ℕ) : ℤ :=
  A392166.P416411638160611915.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392166.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396239.P7967647103299319386

`A036263(n+1)/gcd(A036263(n+1), A031131(n+1))`
-/

namespace A396239.P7967647103299319386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036263 (n + 1) : ℚ) / (Int.gcd (A036263 (n + 1)) (A031131 (n + 1)) : ℚ)

end

end A396239.P7967647103299319386

noncomputable section

/-- A396239: Numerator of r(n) = (prime(n+2) - 2*prime(n+1) + prime(n)) / (prime(n+2) - prime(n)).

Offset 1, canonical program `A396239.P7967647103299319386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396239 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396239.P7967647103299319386.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396239.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396240.P12229753657126069438

`A031131(n+1)/gcd(A036263(n+1), A031131(n+1))`
-/

namespace A396240.P12229753657126069438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031131 (n + 1) : ℚ) / (Int.gcd (A036263 (n + 1)) (A031131 (n + 1)) : ℚ)

end

end A396240.P12229753657126069438

noncomputable section

/-- A396240: Denominator of r(n) = (prime(n+2) - 2*prime(n+1) + prime(n)) / (prime(n+2) - prime(n)).

Offset 1, canonical program `A396240.P12229753657126069438`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396240 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396240.P12229753657126069438.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396240.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A387726.P10728749570483671412

`A057521(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387726.P10728749570483671412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A000203 (n + 1)).toNat

end

end A387726.P10728749570483671412

noncomputable section

/-- A387726: Powerful part of the sum of divisors of n: a(n) = A057521(A000203(n)).

Offset 1, canonical program `A387726.P10728749570483671412`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387726 (n : ℕ) : ℤ :=
  A387726.P10728749570483671412.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389244.P9929055792756023973

`A057521((n+1)*(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389244.P9929055792756023973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 ((n + 1) * (n + 2))

end

end A389244.P9929055792756023973

noncomputable section

/-- A389244: Powerful part of n*(n+1): a(n) = A057521(n*(n+1)).

Offset 1, canonical program `A389244.P9929055792756023973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389244 (n : ℕ) : ℤ :=
  A389244.P9929055792756023973.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390173.P4997777104451970628

`A002110(n+1)*2^(A007504(n+1)-(n+1))`
-/

namespace A390173.P4997777104451970628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) * (2 : ℚ) ^ (A007504 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A390173.P4997777104451970628

noncomputable section

/-- A390173: Smallest integer k with exactly n distinct prime factors such that the sum of those primes equals the sum of the exponents in its prime factorization.

Offset 1, canonical program `A390173.P4997777104451970628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390173 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390173.P4997777104451970628.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392597.P12125127422441468717

`A006519(n+1)*A038500(n+1)*A060904(n+1)*A268354(n+1)`
-/

namespace A392597.P12125127422441468717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A038500 (n + 1) * A060904 (n + 1) * A268354 (n + 1)

end

end A392597.P12125127422441468717

noncomputable section

/-- A392597: The largest 7-smooth divisor of n.

Offset 1, canonical program `A392597.P12125127422441468717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392597 (n : ℕ) : ℤ :=
  A392597.P12125127422441468717.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394110.P1967582314872625174

`2*A006013(n)+A001764(n)`
-/

namespace A394110.P1967582314872625174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006013 n + A001764 n

end

end A394110.P1967582314872625174

noncomputable section

/-- A394110: a(n) = binomial(3*n, n)*(7*n+3)/((n+1)*(2*n+1)).

Offset 0, canonical program `A394110.P1967582314872625174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394110 (n : ℕ) : ℤ :=
  A394110.P1967582314872625174.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394111.P11665560195545579973

`A006013(n)+2*A001764(n)`
-/

namespace A394111.P11665560195545579973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n + 2 * A001764 n

end

end A394111.P11665560195545579973

noncomputable section

/-- A394111: a(n) = binomial(3*n, n)*(5*n+3)/((n+1)*(2*n+1)).

Offset 0, canonical program `A394111.P11665560195545579973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394111 (n : ℕ) : ℤ :=
  A394111.P11665560195545579973.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394111.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A380113.P2900189167819423770

`A110608(n)/A132749(n)`
-/

namespace A380113.P2900189167819423770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℚ) / (A132749 n : ℚ)

end

end A380113.P2900189167819423770

noncomputable section

/-- A380113: Triangle read by rows: The inverse matrix of the central factorials A370707, row n normalized by (-1)^(n - k)*A370707(n, n).

Offset 0, canonical program `A380113.P2900189167819423770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7786 terms. -/
def A380113 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380113.P2900189167819423770.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7786 terms. -/
def A380113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381101.P6112073308414063635

`A010060(eq[0, A048730(n)])`
-/

namespace A381101.P6112073308414063635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A381101.P6112073308414063635

noncomputable section

/-- A381101: Allouche-Johnson binary sequence based on the Narayana's cows sequence A000930.

Offset 0, canonical program `A381101.P6112073308414063635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A381101 (n : ℕ) : ℤ :=
  A381101.P6112073308414063635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A381101.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A381713.P7553467801404850531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059376, A069094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A381713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381713.P7553467801404850531.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059376, A069094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A381713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381883.P1597276662483742425

`A258758(n)/A100100(n)`
-/

namespace A381883.P1597276662483742425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258758 n : ℚ) / (A100100 n : ℚ)

end

end A381883.P1597276662483742425

noncomputable section

/-- A381883: Triangle read by rows: T(n, k) = binomial(2*n - 1, k).

Offset 0, canonical program `A381883.P1597276662483742425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A381883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381883.P1597276662483742425.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A381883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382416.P15268872696336261264

`comp[A248910(n+1)]`
-/

namespace A382416.P15268872696336261264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382416.P15268872696336261264

noncomputable section

/-- A382416: Numbers with at least one zero in their base-6 representation.

Offset 1, canonical program `A382416.P15268872696336261264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382416 (n : ℕ) : ℤ :=
  (A382416.P15268872696336261264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382416.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A383425.P7132039530282739650

`filter[A022342(n+1), A383422(#)]`
-/

namespace A383425.P7132039530282739650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383422 (f1 j).toNat = 1) n)

end

end A383425.P7132039530282739650

noncomputable section

/-- A383425: Indices k such that A003849(k) = 0 and A383422(k) = 1.

Offset 1, canonical program `A383425.P7132039530282739650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3234 terms. -/
def A383425 (n : ℕ) : ℤ :=
  A383425.P7132039530282739650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3234 terms. -/
def A383425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383426.P17980230647925148357

`lt[A383422(n), A003849(n)]`
-/

namespace A383426.P17980230647925148357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383426.P17980230647925148357

noncomputable section

/-- A383426: Indices k such that A003849(k) = 1 and A383422(k) = 0.

Offset 1, canonical program `A383426.P17980230647925148357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1526 terms. -/
def A383426 (n : ℕ) : ℤ :=
  (A383426.P17980230647925148357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1526 terms. -/
def A383426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383593.P18009256936053025423

`A004760(A266341(n)+2)`
-/

namespace A383593.P18009256936053025423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A266341 n + 2).toNat

end

end A383593.P18009256936053025423

noncomputable section

/-- A383593: In the binary expansion of n, change the most significant 0 bit to 1, if there is any 0 bit.

Offset 0, canonical program `A383593.P18009256936053025423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383593 (n : ℕ) : ℤ :=
  A383593.P18009256936053025423.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383657.P13992406352732443113

`∏{e}[n+1, A001803(#)]`
-/

namespace A383657.P13992406352732443113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001803 (Nat.factorization (f1 n) p)

end

end A383657.P13992406352732443113

noncomputable section

/-- A383657: Numerator of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s)^(3/2).

Offset 1, canonical program `A383657.P13992406352732443113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383657 (n : ℕ) : ℤ :=
  A383657.P13992406352732443113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383657.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A383783.P9434858666287389407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344597, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383783 (n : ℕ) : ℤ :=
  A383783.P9434858666287389407.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344597, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383783.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383795.P2583133115178924486

`∑{d}[n+1, A007429(#)*A061019((n+1)/#)]`
-/

namespace A383795.P2583133115178924486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383795.P2583133115178924486

noncomputable section

/-- A383795: Dirichlet g.f.: zeta(2*s-2) * zeta(s)^2.

Offset 1, canonical program `A383795.P2583133115178924486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383795 (n : ℕ) : ℤ :=
  A383795.P2583133115178924486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383832.P14484919071808481643

`(n+1)*A076025(n+1)`
-/

namespace A383832.P14484919071808481643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076025 (n + 1)

end

end A383832.P14484919071808481643

noncomputable section

/-- A383832: a(n) = Sum_{k=0..n} (k+1) * 3^k * binomial(2*n+2,n-k).

Offset 0, canonical program `A383832.P14484919071808481643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A383832 (n : ℕ) : ℤ :=
  A383832.P14484919071808481643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A383832.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A384956.P1572791689955752356

`xor(A000120(n), A023416(n))`
-/

namespace A384956.P1572791689955752356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000120 n) (A023416 n)

end

end A384956.P1572791689955752356

noncomputable section

/-- A384956: Binary XOR of number of 1-bits in the binary representation of n and number of 0-bits in the binary representation of n, a(0) = 1.

Offset 0, canonical program `A384956.P1572791689955752356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384956 (n : ℕ) : ℤ :=
  A384956.P1572791689955752356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384956.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A385134.P16551405868450602547

`∑{d}[n+1, #*A307430((n+1)/#)]`
-/

namespace A385134.P16551405868450602547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A307430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385134.P16551405868450602547

noncomputable section

/-- A385134: The sum of divisors d of n such that n/d is a biquadratefree number (A046100).

Offset 1, canonical program `A385134.P16551405868450602547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385134 (n : ℕ) : ℤ :=
  A385134.P16551405868450602547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385434.P13029139020623038212

`A022166(n)%3`
-/

namespace A385434.P13029139020623038212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022166 n) 3

end

end A385434.P13029139020623038212

noncomputable section

/-- A385434: Triangle of Gaussian binomial coefficients (or q-binomial coefficients) [n,k] for q = 2, reduced mod 3.

Offset 0, canonical program `A385434.P13029139020623038212`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385434 (n : ℕ) : ℤ :=
  A385434.P13029139020623038212.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385507.P8812681663359870477

`A089309(3*n+2)`
-/

namespace A385507.P8812681663359870477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (3 * n + 2)

end

end A385507.P8812681663359870477

noncomputable section

/-- A385507: a(n) = v(1 + F(2*n - 1)), where F(x) = (3*x + 1)/2^v(3*x + 1), x is any odd natural number, and v(y) is the 2-adic valuation of y.

Offset 1, canonical program `A385507.P8812681663359870477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5461 terms. -/
def A385507 (n : ℕ) : ℤ :=
  A385507.P8812681663359870477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5461 terms. -/
def A385507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385641.P16422059336115816604

`A211278(n)+A247287(n)`
-/

namespace A385641.P16422059336115816604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211278 n + A247287 n

end

end A385641.P16422059336115816604

noncomputable section

/-- A385641: Partial sums of A097893.

Offset 0, canonical program `A385641.P16422059336115816604`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211278, A247287, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385641 (n : ℕ) : ℤ :=
  A385641.P16422059336115816604.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211278, A247287, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386319.P6966133288420860649

`A112367(n)+A086460(n)`
-/

namespace A386319.P6966133288420860649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A086460 n

end

end A386319.P6966133288420860649

noncomputable section

/-- A386319: Triangle read by rows where row n is the start, corner and end vertex numbers of a triangular spiral with n sides on a triangular grid, starting from 1 and working inwards (0 <= k <= n).

Offset 0, canonical program `A386319.P6966133288420860649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386319 (n : ℕ) : ℤ :=
  A386319.P6966133288420860649.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386955.P10321546779278294111

`(n+2)*A007854(n)-record[A126930(n)]`
-/

namespace A386955.P10321546779278294111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A007854 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386955.P10321546779278294111

noncomputable section

/-- A386955: a(n) = Sum_{k=0..n} (k+1) * 2^k * binomial(2*n+1,n-k).

Offset 0, canonical program `A386955.P10321546779278294111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A386955 (n : ℕ) : ℤ :=
  A386955.P10321546779278294111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A386955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386963.P9105300058504622331

`Δ[A153043(n+1)]+1`
-/

namespace A386963.P9105300058504622331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A386963.P9105300058504622331

noncomputable section

/-- A386963: Gaps between positions of odd terms in A065090.

Offset 1, canonical program `A386963.P9105300058504622331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A386963 (n : ℕ) : ℤ :=
  A386963.P9105300058504622331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A386963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387096.P15198397566290512698

`lt[n+2, A086568(n+1)]+1`
-/

namespace A387096.P15198397566290512698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387096.P15198397566290512698

noncomputable section

/-- A387096: Numbers k such that k < prime(bigomega(k))#, where prime(bigomega(k))# is the product of the first bigomega(k) primes and bigomega(k) is the number of prime divisors of k (counted multiplicity).

Offset 1, canonical program `A387096.P15198397566290512698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1123 terms. -/
def A387096 (n : ℕ) : ℤ :=
  (A387096.P15198397566290512698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1123 terms. -/
def A387096.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387657.P982859840005591800

`A123275(A056943(n)+1)`
-/

namespace A387657.P982859840005591800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (A056943 n + 1).toNat

end

end A387657.P982859840005591800

noncomputable section

/-- A387657: Array read by ascending antidiagonals: A(n, k) = denominator(k^n/n), with k >= 0.

Offset 1, canonical program `A387657.P982859840005591800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387657 (n : ℕ) : ℤ :=
  A387657.P982859840005591800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387874.P13171271536536116590

`A306847(Δ[n²])`
-/

namespace A387874.P13171271536536116590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A387874.P13171271536536116590

noncomputable section

/-- A387874: a(n) = Sum_{k=0..n} binomial(2*n+1,6*k).

Offset 0, canonical program `A387874.P13171271536536116590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387874 (n : ℕ) : ℤ :=
  A387874.P13171271536536116590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387892.P11437669347664042803

`lt[A306927(n+1), n+1]+1`
-/

namespace A387892.P11437669347664042803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387892.P11437669347664042803

noncomputable section

/-- A387892: Psi-deficient numbers: numbers k such that psi(k) < 2*k.

Offset 1, canonical program `A387892.P11437669347664042803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8197 terms. -/
def A387892 (n : ℕ) : ℤ :=
  (A387892.P11437669347664042803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8197 terms. -/
def A387892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387893.P4630578512810266503

`A014681(lt[A014681(n), A306927(n+1)])`
-/

namespace A387893.P4630578512810266503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A387893.P4630578512810266503

noncomputable section

/-- A387893: Psi-abundant numbers: numbers k such that psi(k) > 2*k.

Offset 1, canonical program `A387893.P4630578512810266503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1758 terms. -/
def A387893 (n : ℕ) : ℤ :=
  A387893.P4630578512810266503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1758 terms. -/
def A387893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388427.P2071951571592344279

`filter[A303554(n+1), A066247(#)]`
-/

namespace A388427.P2071951571592344279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A388427.P2071951571592344279

noncomputable section

/-- A388427: Composite numbers that are squarefree or prime powers.

Offset 1, canonical program `A388427.P2071951571592344279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. -/
def A388427 (n : ℕ) : ℤ :=
  A388427.P2071951571592344279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. -/
def A388427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388973.P9138127869321454466

`filter[A049419(n+1), A010060(#)]`
-/

namespace A388973.P9138127869321454466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A388973.P9138127869321454466

noncomputable section

/-- A388973: The number of exponential divisors of the numbers whose number of exponential divisors is a power of 2.

Offset 1, canonical program `A388973.P9138127869321454466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9581 terms. -/
def A388973 (n : ℕ) : ℤ :=
  A388973.P9138127869321454466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9581 terms. -/
def A388973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389648.P661621194831941048

`A000194(A340172(n+1)*A340172(n))`
-/

namespace A389648.P661621194831941048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A340172 (n + 1) * A340172 n).toNat

end

end A389648.P661621194831941048

noncomputable section

/-- A389648: Y coordinate of point n while traversing the half plane by integer points in rectangular layers starting from n=1 at the origin.

Offset 1, canonical program `A389648.P661621194831941048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389648 (n : ℕ) : ℤ :=
  A389648.P661621194831941048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389648.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390099.P13380091930058253574

`A111333(A066940(n+2))`
-/

namespace A390099.P13380091930058253574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (A066940 (n + 2)).toNat

end

end A390099.P13380091930058253574

noncomputable section

/-- A390099: Record denominators of (p2+1)/(p1+1), where p1 < p2 are consecutive primes.

Offset 1, canonical program `A390099.P13380091930058253574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5699 terms. -/
def A390099 (n : ℕ) : ℤ :=
  A390099.P13380091930058253574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5699 terms. -/
def A390099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390258.P5353601345552815747

`∑{d}[n+1, A007427(#)*A174466((n+1)/#)]`
-/

namespace A390258.P5353601345552815747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A174466 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P5353601345552815747

noncomputable section

/-- A390258: Multiplicative sequence a(n) with a(p^e) = p^(e-1) * (e + 1) * (p * (2 + e) - e) / 2 for prime p and e > 0.

Offset 1, canonical program `A390258.P5353601345552815747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390258 (n : ℕ) : ℤ :=
  A390258.P5353601345552815747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390262.P9624603092470050995

`∑{d}[n+1, #*A140697((n+1)/#)]`
-/

namespace A390262.P9624603092470050995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A140697 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390262.P9624603092470050995

noncomputable section

/-- A390262: Multiplicative sequence a(n) with a(p^e) = ((p + 1)^2 * p^(e-1) - 2) * p^(e-1) for prime p and e > 0.

Offset 1, canonical program `A390262.P9624603092470050995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390262 (n : ℕ) : ℤ :=
  A390262.P9624603092470050995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390327.P5443559523868288326

`lt[A023816(n), A022998(A023816(n))]`
-/

namespace A390327.P5443559523868288326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A023816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390327.P5443559523868288326

noncomputable section

/-- A390327: Numbers k such that the number of prime divisors of binomial(2k, k), including multiplicities, is even.

Offset 0, canonical program `A390327.P5443559523868288326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A390327 (n : ℕ) : ℤ :=
  (A390327.P5443559523868288326.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A390327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390328.P12866154070320318220

`eq[1, A000035(A023816(n))]`
-/

namespace A390328.P12866154070320318220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A023816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A390328.P12866154070320318220

noncomputable section

/-- A390328: Numbers k such that the number of prime divisors of binomial(2k, k), including multiplicities, is odd.

Offset 1, canonical program `A390328.P12866154070320318220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A390328 (n : ℕ) : ℤ :=
  (A390328.P12866154070320318220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A390328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390725.P2084391966824759075

`A000108(A002262(n))*A271703(n)`
-/

namespace A390725.P2084391966824759075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A271703 n

end

end A390725.P2084391966824759075

noncomputable section

/-- A390725: Triangle read by rows: T(n, k) = Lah(n, k)*CatalanNumber(k), and Lah = A271703.

Offset 0, canonical program `A390725.P2084391966824759075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A390725 (n : ℕ) : ℤ :=
  A390725.P2084391966824759075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A390725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390764.P3120911945846591276

`A055642(A202267(n+1))`
-/

namespace A390764.P3120911945846591276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A202267 (n + 1)).toNat

end

end A390764.P3120911945846591276

noncomputable section

/-- A390764: Number of digits in base-6 representation of n.

Offset 0, canonical program `A390764.P3120911945846591276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A390764 (n : ℕ) : ℤ :=
  A390764.P3120911945846591276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A390764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390965.P17095960951919550593

`A070857(n)-A070031(n)`
-/

namespace A390965.P17095960951919550593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 n - A070031 n

end

end A390965.P17095960951919550593

noncomputable section

/-- A390965: a(n) = (1/(n+1)) * Sum_{k=0..n} k^2 * (k+1) * binomial(2*n-k,n-k).

Offset 0, canonical program `A390965.P17095960951919550593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A390965 (n : ℕ) : ℤ :=
  A390965.P17095960951919550593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A390965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391096.P15625190028387691659

`A130174(n+3)-3`
-/

namespace A391096.P15625190028387691659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130174 (n + 3) - 3

end

end A391096.P15625190028387691659

noncomputable section

/-- A391096: a(n) is largest number such that the sequence contains a total of a(n) base 10 digits + commas through n terms (assuming one comma between each pair of terms).

Offset 1, canonical program `A391096.P15625190028387691659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391096 (n : ℕ) : ℤ :=
  A391096.P15625190028387691659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391096.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391384.P18148672950887766433

`p?[A275418(n+1)]`
-/

namespace A391384.P18148672950887766433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A391384.P18148672950887766433

noncomputable section

/-- A391384: Primes p such that p - 1 has exactly as many odd divisors as p + 1.

Offset 1, canonical program `A391384.P18148672950887766433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A391384 (n : ℕ) : ℤ :=
  A391384.P18148672950887766433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A391384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391574.P13642684315948743333

`eq[A026492(n), A057427(n)]`
-/

namespace A391574.P13642684315948743333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391574.P13642684315948743333

noncomputable section

/-- A391574: Numbers k such that 3*k = A048720(3,m) for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391574.P13642684315948743333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5992 terms. -/
def A391574 (n : ℕ) : ℤ :=
  (A391574.P13642684315948743333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5992 terms. -/
def A391574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392332.P10626276045092877156

`A256562(n+1)-A091194(n+1)`
-/

namespace A392332.P10626276045092877156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256562 (n + 1) - A091194 (n + 1)

end

end A392332.P10626276045092877156

noncomputable section

/-- A392332: a(n) is the excess of deficient numbers over abundant numbers in the first n positive integers.

Offset 1, canonical program `A392332.P10626276045092877156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A256562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392332 (n : ℕ) : ℤ :=
  A392332.P10626276045092877156.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A256562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392332.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392630.P18032150745144184290

`∏{e}[(n+1)/∏{p}[n+1, #], A060236(#)]`
-/

namespace A392630.P18032150745144184290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A060236 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A392630.P18032150745144184290

noncomputable section

/-- A392630: The number of exponential divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A392630.P18032150745144184290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392630 (n : ℕ) : ℤ :=
  A392630.P18032150745144184290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392670.P14366886065038149397

`A002487(A046699(n+2))`
-/

namespace A392670.P14366886065038149397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A046699 (n + 2)).toNat

end

end A392670.P14366886065038149397

noncomputable section

/-- A392670: Triangle read by rows where row n is the numerators of the node values in a preorder traversal of the Calkin-Wilf tree with n levels, columns 0 <= k < 2^n-1.

Offset 1, canonical program `A392670.P14366886065038149397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392670 (n : ℕ) : ℤ :=
  A392670.P14366886065038149397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393608.P4231341936800649805

`A104887(n+1)%(A002260(n+1)+1)`
-/

namespace A393608.P4231341936800649805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104887 (n + 1)) (A002260 (n + 1) + 1)

end

end A393608.P4231341936800649805

noncomputable section

/-- A393608: Rectangular array R read by descending antidiagonals: R(n,k) = prime(k) mod n, for n>=2.

Offset 2, canonical program `A393608.P4231341936800649805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393608 (n : ℕ) : ℤ :=
  A393608.P4231341936800649805.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394178.P7172377896833367133

`A054521(n+1)*A144204(n+1)`
-/

namespace A394178.P7172377896833367133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A144204 (n + 1)

end

end A394178.P7172377896833367133

noncomputable section

/-- A394178: Triangle read by rows: T(n, k) is the Frobenius number for n and k if n and k coprime, and 0 otherwise, for 1 <= k <= n.

Offset 1, canonical program `A394178.P7172377896833367133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394178 (n : ℕ) : ℤ :=
  A394178.P7172377896833367133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394426.P7725940493784829555

`A049419(A197680(n+1))`
-/

namespace A394426.P7725940493784829555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A197680 (n + 1)).toNat

end

end A394426.P7725940493784829555

noncomputable section

/-- A394426: The number of exponential divisors of the numbers whose exponents in their prime factorization are squares (A197680).

Offset 1, canonical program `A394426.P7725940493784829555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394426 (n : ℕ) : ℤ :=
  A394426.P7725940493784829555.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394426.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394927.P16215032132539986639

`∑[A099375(n)]-A099375(n)`
-/

namespace A394927.P16215032132539986639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099375 n

end

end A394927.P16215032132539986639

noncomputable section

/-- A394927: a(n) is the minimal sum of squares over partitions of n into distinct parts.

Offset 0, canonical program `A394927.P16215032132539986639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394927 (n : ℕ) : ℤ :=
  A394927.P16215032132539986639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395251.P13720670033681036438

`eq[A288997(2*n+3)+1, A288997(n+1)]`
-/

namespace A395251.P13720670033681036438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (2 * n + 3) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395251.P13720670033681036438

noncomputable section

/-- A395251: a(n) gives positions k >= 1 where the equation b(b(k)+b(k-1)) = k fails, for b(k) = floor(k/sqrt(2) + 2*(sqrt(2)-1)).

Offset 1, canonical program `A395251.P13720670033681036438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A395251 (n : ℕ) : ℤ :=
  (A395251.P13720670033681036438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A395251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396269.P4590932951071944405

`filter[A386684(n+1), A379958(#)]`
-/

namespace A396269.P4590932951071944405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A396269.P4590932951071944405

noncomputable section

/-- A396269: Cubefree k that are neither squarefree nor squareful that have more than 2 distinct prime factors.

Offset 1, canonical program `A396269.P4590932951071944405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7193 terms. -/
def A396269 (n : ℕ) : ℤ :=
  A396269.P4590932951071944405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7193 terms. -/
def A396269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396283.P13868189083896900489

`(n+1)*(A000290(n+1)-2*A024916(n+1))+A350123(n+1)`
-/

namespace A396283.P13868189083896900489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000290 (n + 1) - 2 * A024916 (n + 1)) + A350123 (n + 1)

end

end A396283.P13868189083896900489

noncomputable section

/-- A396283: a(n) = Sum_{k=1..n} (n mod k)^2.

Offset 1, canonical program `A396283.P13868189083896900489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350123, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396283 (n : ℕ) : ℤ :=
  A396283.P13868189083896900489.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350123, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396283.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396284.P3005908805938491279

`(n+1)*(A000578(n+1)-3*((n+1)*A024916(n+1)-A350123(n+1)))-A356249(n+1)`
-/

namespace A396284.P3005908805938491279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000578 (n + 1) - 3 * ((n + 1 : ℤ) * A024916 (n + 1) - A350123 (n + 1))) - A356249 (n + 1)

end

end A396284.P3005908805938491279

noncomputable section

/-- A396284: a(n) = Sum_{k=1..n} (n mod k)^3.

Offset 1, canonical program `A396284.P3005908805938491279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350123, A356249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396284 (n : ℕ) : ℤ :=
  A396284.P3005908805938491279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350123, A356249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396284.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396574.P15412358032605073405

`A048671(n+1)*A064446(n+1)`
-/

namespace A396574.P15412358032605073405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1) * A064446 (n + 1)

end

end A396574.P15412358032605073405

noncomputable section

/-- A396574: a(n) is the smallest number k such that n divides binomial(k,m) for 1 <= m <= n-1.

Offset 1, canonical program `A396574.P15412358032605073405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396574 (n : ℕ) : ℤ :=
  A396574.P15412358032605073405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397136.P9058078001182760132

`lcm(A007427(n+1), A347291(n+1))`
-/

namespace A397136.P9058078001182760132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007427 (n + 1)) (A347291 (n + 1))

end

end A397136.P9058078001182760132

noncomputable section

/-- A397136: Dirichlet g.f.: Product_{p prime} (1 + 2/p^s + 1/p^(2*s-1)).

Offset 1, canonical program `A397136.P9058078001182760132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397136 (n : ℕ) : ℤ :=
  (A397136.P9058078001182760132.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397606.P554892582912637438

`gcd(2, ∏{p}[n, #])*A011782(A011371(n))`
-/

namespace A397606.P554892582912637438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) * A011782 (A011371 n).toNat

end

end A397606.P554892582912637438

noncomputable section

/-- A397606: a(n) = denominator of A069835(n)/2^n.

Offset 0, canonical program `A397606.P554892582912637438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A397606 (n : ℕ) : ℤ :=
  A397606.P554892582912637438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A397606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398324.P4813511843978568844

`eq[A088570(A216345(n+1)), A157928(n)]`
-/

namespace A398324.P4813511843978568844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (A216345 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398324.P4813511843978568844

noncomputable section

/-- A398324: Positions k such that the prefix of length k of the Kolakoski sequence contains an even number of 1's and an even number of 2's.

Offset 1, canonical program `A398324.P4813511843978568844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1657 terms. -/
def A398324 (n : ℕ) : ℤ :=
  (A398324.P4813511843978568844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1657 terms. -/
def A398324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380449.P8792025045371275510

`A000203(n+1)+A033273(n+1)`
-/

namespace A380449.P8792025045371275510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A033273 (n + 1)

end

end A380449.P8792025045371275510

noncomputable section

/-- A380449: Sum of the divisors of n plus the number of nonprime divisors of n.

Offset 1, canonical program `A380449.P8792025045371275510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380449 (n : ℕ) : ℤ :=
  A380449.P8792025045371275510.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380449.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A381973.P380861839472755798

`A120503(A381974(n+1))`
-/

namespace A381973.P380861839472755798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120503 (A381974 (n + 1)).toNat

end

end A381973.P380861839472755798

noncomputable section

/-- A381973: Numbers m such that Sum_{k >= 0} floor(m/3^k) is prime.

Offset 1, canonical program `A381973.P380861839472755798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A381973 (n : ℕ) : ℤ :=
  A381973.P380861839472755798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A381973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382418.P11791072874298517319

`eq[0, A309788(n)]`
-/

namespace A382418.P11791072874298517319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382418.P11791072874298517319

noncomputable section

/-- A382418: Numbers with at least one zero in their base-9 representation.

Offset 1, canonical program `A382418.P11791072874298517319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A382418 (n : ℕ) : ℤ :=
  (A382418.P11791072874298517319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A382418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382422.P18312410070460850629

`A005361(A046100(n+1))`
-/

namespace A382422.P18312410070460850629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A046100 (n + 1)).toNat

end

end A382422.P18312410070460850629

noncomputable section

/-- A382422: The product of exponents in the prime factorization of the biquadratefree numbers.

Offset 1, canonical program `A382422.P18312410070460850629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382422 (n : ℕ) : ℤ :=
  A382422.P18312410070460850629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382423.P17194027125548020755

`A369427(A046100(n+1))`
-/

namespace A382423.P17194027125548020755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (A046100 (n + 1)).toNat

end

end A382423.P17194027125548020755

noncomputable section

/-- A382423: The number of exponents in the prime factorization of n-th biquadratefree number that are equal to 2.

Offset 1, canonical program `A382423.P17194027125548020755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A369427, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382423 (n : ℕ) : ℤ :=
  A382423.P17194027125548020755.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A369427, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382423.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382630.P1089145758881786009

`floor(A078152(A028310(n))/2)`
-/

namespace A382630.P1089145758881786009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078152 (A028310 n).toNat : ℚ) / 2⌋

end

end A382630.P1089145758881786009

noncomputable section

/-- A382630: a(n) is the number of ways that n can be written as b+c*d, where b, c and d are positive integers and b < c < d.

Offset 0, canonical program `A382630.P1089145758881786009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382630 (n : ℕ) : ℤ :=
  A382630.P1089145758881786009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382788.P17277517064423675341

`∑{d}[n+1, #*A359473(#)]`
-/

namespace A382788.P17277517064423675341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A359473 d

end

end A382788.P17277517064423675341

noncomputable section

/-- A382788: The sum of divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A382788.P17277517064423675341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382788 (n : ℕ) : ℤ :=
  A382788.P17277517064423675341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382888.P10950597595188319361

`A007947(A004709(n+1))`
-/

namespace A382888.P10950597595188319361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A004709 (n + 1)).toNat

end

end A382888.P10950597595188319361

noncomputable section

/-- A382888: The squarefree kernel of the n-th cubefree number.

Offset 1, canonical program `A382888.P10950597595188319361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382888 (n : ℕ) : ℤ :=
  A382888.P10950597595188319361.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382902.P15410201200105396021

`A007948(A046100(n+1))`
-/

namespace A382902.P15410201200105396021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A046100 (n + 1)).toNat

end

end A382902.P15410201200105396021

noncomputable section

/-- A382902: The largest cubefree divisor of the n-th biquadratefree number.

Offset 1, canonical program `A382902.P15410201200105396021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382902 (n : ℕ) : ℤ :=
  A382902.P15410201200105396021.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382904.P15714576197998800300

`A007947(A046100(n+1))`
-/

namespace A382904.P15714576197998800300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A046100 (n + 1)).toNat

end

end A382904.P15714576197998800300

noncomputable section

/-- A382904: The squarefree kernel of the n-th biquadratefree number.

Offset 1, canonical program `A382904.P15714576197998800300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382904 (n : ℕ) : ℤ :=
  A382904.P15714576197998800300.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382905.P13634783915817260642

`A055231(A046100(n+1))`
-/

namespace A382905.P13634783915817260642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A046100 (n + 1)).toNat

end

end A382905.P13634783915817260642

noncomputable section

/-- A382905: The powerfree part of the n-th biquadratefree number.

Offset 1, canonical program `A382905.P13634783915817260642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382905 (n : ℕ) : ℤ :=
  A382905.P13634783915817260642.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383009.P8779910049877826587

`lt[val((A004709(n+1)+1)², 2), 1]+1`
-/

namespace A383009.P8779910049877826587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A004709 (n + 1) + 1) ^ 2).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A383009.P8779910049877826587

noncomputable section

/-- A383009: Indices of the even terms in the sequence of cubefree numbers.

Offset 1, canonical program `A383009.P8779910049877826587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4286 terms. -/
def A383009 (n : ℕ) : ℤ :=
  (A383009.P8779910049877826587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4286 terms. -/
def A383009.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A383784.P16897109203414652711

`∪[A001481(n+1), A003136(n+1)]`
-/

namespace A383784.P16897109203414652711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383784.P16897109203414652711

noncomputable section

/-- A383784: Norms of vectors in any regular planar tiling (square or A2 lattice).

Offset 1, canonical program `A383784.P16897109203414652711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383784 (n : ℕ) : ℤ :=
  (A383784.P16897109203414652711.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383948.P10971274123354708614

`(n+1)*A104455(n)`
-/

namespace A383948.P10971274123354708614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A104455 n

end

end A383948.P10971274123354708614

noncomputable section

/-- A383948: Expansion of 1/sqrt((1-3*x)^3 * (1-7*x)).

Offset 0, canonical program `A383948.P10971274123354708614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A383948 (n : ℕ) : ℤ :=
  A383948.P10971274123354708614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A383948.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A385313.P2090871860569150372

`∑{d}[n+1, A008683(#)*A380447((n+1)/#)]`
-/

namespace A385313.P2090871860569150372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A380447 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385313.P2090871860569150372

noncomputable section

/-- A385313: a(n) = c(n) + Sum_{d|n} d * phi(n/d) * (1 - c(d)), where c = A010051.

Offset 1, canonical program `A385313.P2090871860569150372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385313 (n : ℕ) : ℤ :=
  A385313.P2090871860569150372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385998.P16754963175489702644

`eq[A001221(n+1), A046951(n+1)]+1`
-/

namespace A385998.P16754963175489702644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A385998.P16754963175489702644

noncomputable section

/-- A385998: Numbers that are divisible by an equal number of distinct primes and squares.

Offset 1, canonical program `A385998.P16754963175489702644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A385998 (n : ℕ) : ℤ :=
  (A385998.P16754963175489702644.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A385998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386268.P721446606681825854

`A392359(A040976(n+2))`
-/

namespace A386268.P721446606681825854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392359 (A040976 (n + 2)).toNat

end

end A386268.P721446606681825854

noncomputable section

/-- A386268: a(n) = numerator((prime(n) - 2)/(n - 1)).

Offset 2, canonical program `A386268.P721446606681825854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A386268 (n : ℕ) : ℤ :=
  A386268.P721446606681825854.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A386268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386438.P6678444631215707728

`A007503(n+1)-A348219(n+1)`
-/

namespace A386438.P6678444631215707728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A348219 (n + 1)

end

end A386438.P6678444631215707728

noncomputable section

/-- A386438: a(n) = sigma(n) + omega(n) - n * Sum_{p|n, p prime} 1 / p.

Offset 1, canonical program `A386438.P6678444631215707728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348219, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386438 (n : ℕ) : ℤ :=
  A386438.P6678444631215707728.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348219, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387008.P8105791285011153245

`A005809(n+1)-A047098(n+1)`
-/

namespace A387008.P8105791285011153245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 (n + 1) - A047098 (n + 1)

end

end A387008.P8105791285011153245

noncomputable section

/-- A387008: a(n) = Sum_{k=0..n} binomial(3*n+3,k).

Offset 0, canonical program `A387008.P8105791285011153245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A387008 (n : ℕ) : ℤ :=
  A387008.P8105791285011153245.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A387008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387254.P4440641154738734773

`A389065(n+1)²`
-/

namespace A387254.P4440641154738734773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1) ^ 2

end

end A387254.P4440641154738734773

noncomputable section

/-- A387254: Squares of numbers that are neither prime powers nor powerful.

Offset 1, canonical program `A387254.P4440641154738734773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387254 (n : ℕ) : ℤ :=
  A387254.P4440641154738734773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388011.P2434188042193603591

`comp[A388012(n+1)-1]+1`
-/

namespace A388011.P2434188042193603591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388012 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A388011.P2434188042193603591

noncomputable section

/-- A388011: Numbers k such that sigma(k)/k < 5/3.

Offset 1, canonical program `A388011.P2434188042193603591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388011 (n : ℕ) : ℤ :=
  (A388011.P2434188042193603591.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389115.P8667954685780618499

`A104629(n)-A114495(n+1)`
-/

namespace A389115.P8667954685780618499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104629 n - A114495 (n + 1)

end

end A389115.P8667954685780618499

noncomputable section

/-- A389115: Expansion of g^3/(1 + x*g)^2, where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A389115.P8667954685780618499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A389115 (n : ℕ) : ℤ :=
  A389115.P8667954685780618499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A389115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389810.P16776173714572326767

`A008578(A175969(n+1)-n)`
-/

namespace A389810.P16776173714572326767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A175969 (n + 1) - (n : ℤ)).toNat

end

end A389810.P16776173714572326767

noncomputable section

/-- A389810: Prime(k)-1 copies of prime(k) ordered by increasing k.

Offset 1, canonical program `A389810.P16776173714572326767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389810 (n : ℕ) : ℤ :=
  A389810.P16776173714572326767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389810.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389921.P16454545496110612837

`A094373(n)-A350102(n)`
-/

namespace A389921.P16454545496110612837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A350102 n

end

end A389921.P16454545496110612837

noncomputable section

/-- A389921: Number of subsets of {1..n} that contain n but do not form a finite arithmetic progression.

Offset 0, canonical program `A389921.P16454545496110612837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A389921 (n : ℕ) : ℤ :=
  A389921.P16454545496110612837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A389921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390348.P12405491163351906346

`A390349(n)-A079978(n)`
-/

namespace A390348.P12405491163351906346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390349 n - A079978 n

end

end A390348.P12405491163351906346

noncomputable section

/-- A390348: Lower (1/2)-midsequence of Fibonacci numbers (A000045) and tribonacci numbers (A000213); see Comments.

Offset 0, canonical program `A390348.P12405491163351906346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A390348 (n : ℕ) : ℤ :=
  A390348.P12405491163351906346.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A390348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391125.P9418888809291049878

`A047098(n)+A047098(n)-A001764(n)`
-/

namespace A391125.P9418888809291049878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047098 n + (A047098 n - A001764 n)

end

end A391125.P9418888809291049878

noncomputable section

/-- A391125: Expansion of g^2/(2 - g), where g = 1+x*g^3 is the g.f. of A001764.

Offset 0, canonical program `A391125.P9418888809291049878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A391125 (n : ℕ) : ℤ :=
  A391125.P9418888809291049878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A391125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391597.P14152947396835619235

`2*(A006218(n+1)+A061201(n+1))+A013936(n+1)-(n+1)`
-/

namespace A391597.P14152947396835619235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006218 (n + 1) + A061201 (n + 1)) + A013936 (n + 1) - (n + 1 : ℤ)

end

end A391597.P14152947396835619235

noncomputable section

/-- A391597: a(n) is the number of quadratic polynomials with coefficients in {-n, ..., n}, positive leading coefficient, and having two integer roots.

Offset 1, canonical program `A391597.P14152947396835619235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013936, A061201, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391597 (n : ℕ) : ℤ :=
  A391597.P14152947396835619235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013936, A061201, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391597.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A391711.P7269243793553933826

`A000045(A046470(n+1))`
-/

namespace A391711.P7269243793553933826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A046470 (n + 1)).toNat

end

end A391711.P7269243793553933826

noncomputable section

/-- A391711: Fibonacci numbers whose indices are even positive numbers with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A391711.P7269243793553933826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046470, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391711 (n : ℕ) : ℤ :=
  A391711.P7269243793553933826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046470, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391713.P12918001386924230058

`A000005(n+1)-A005361(n+1)-2^A001221(n+1)+1`
-/

namespace A391713.P12918001386924230058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - A005361 (n + 1) : ℚ) - (2 : ℚ) ^ (A001221 (n + 1) : ℤ) + 1

end

end A391713.P12918001386924230058

noncomputable section

/-- A391713: Number of divisors d | n such that d is neither squarefree nor powerful (in A332785).

Offset 1, canonical program `A391713.P12918001386924230058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391713.P12918001386924230058.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391900.P11135445181283333301

`A001222(A005361(n+1))`
-/

namespace A391900.P11135445181283333301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005361 (n + 1)).toNat

end

end A391900.P11135445181283333301

noncomputable section

/-- A391900: The total number of prime factors (counted with multiplicity) of the prime factorization exponents of n.

Offset 1, canonical program `A391900.P11135445181283333301`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391900 (n : ℕ) : ℤ :=
  A391900.P11135445181283333301.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391900.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392012.P18374582958621527053

`A057723(A004709(2*n+1-n))`
-/

namespace A392012.P18374582958621527053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A004709 (2 * n + 1 - n)).toNat

end

end A392012.P18374582958621527053

noncomputable section

/-- A392012: The sum of the exponential divisors of the cubefree numbers.

Offset 1, canonical program `A392012.P18374582958621527053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A392012 (n : ℕ) : ℤ :=
  A392012.P18374582958621527053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A392012.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392365.P14078290519509760206

`A004709(n+1)²`
-/

namespace A392365.P14078290519509760206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) ^ 2

end

end A392365.P14078290519509760206

noncomputable section

/-- A392365: The cubefree numbers squared.

Offset 1, canonical program `A392365.P14078290519509760206`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392365 (n : ℕ) : ℤ :=
  A392365.P14078290519509760206.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394425.P13849324502405230266

`A049419(A046100(n+1))`
-/

namespace A394425.P13849324502405230266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A046100 (n + 1)).toNat

end

end A394425.P13849324502405230266

noncomputable section

/-- A394425: The number of exponential divisors of the biquadratefree numbers.

Offset 1, canonical program `A394425.P13849324502405230266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394425 (n : ℕ) : ℤ :=
  A394425.P13849324502405230266.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394471.P5852096907617755890

`∩[A000040(n+1), A048448(n+4)-1]`
-/

namespace A394471.P5852096907617755890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 4) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394471.P5852096907617755890

noncomputable section

/-- A394471: Primes of the form prime(k) + prime(k+2) - 1, where prime(k) is the k-th prime.

Offset 1, canonical program `A394471.P5852096907617755890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1188 terms. -/
def A394471 (n : ℕ) : ℤ :=
  (A394471.P5852096907617755890.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1188 terms. -/
def A394471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395089.P12188725371683441728

`1-A395088(n)`
-/

namespace A395089.P12188725371683441728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A395088 n

end

end A395089.P12188725371683441728

noncomputable section

/-- A395089: Binary complement of A395088.

Offset 0, canonical program `A395089.P12188725371683441728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395089 (n : ℕ) : ℤ :=
  A395089.P12188725371683441728.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395089.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A395133.P17198686885299587289`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395133 (n : ℕ) : ℤ :=
  A395133.P17198686885299587289.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395962.P3547014246278371736

`2*n+A395961(2*n)`
-/

namespace A395962.P3547014246278371736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A395961 (2 * n)

end

end A395962.P3547014246278371736

noncomputable section

/-- A395962: Numbers k such that A395961(k) = 0.

Offset 1, canonical program `A395962.P3547014246278371736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395962 (n : ℕ) : ℤ :=
  A395962.P3547014246278371736.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395963.P2013661775841027138

`2*n+1-A395961(2*n)`
-/

namespace A395963.P2013661775841027138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A395961 (2 * n)

end

end A395963.P2013661775841027138

noncomputable section

/-- A395963: Numbers k such that A395961(k) = 1.

Offset 1, canonical program `A395963.P2013661775841027138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395963 (n : ℕ) : ℤ :=
  A395963.P2013661775841027138.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395963.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396543.P10005515851274933396

`A005361(n+1)-A049419(n+1)`
-/

namespace A396543.P10005515851274933396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - A049419 (n + 1)

end

end A396543.P10005515851274933396

noncomputable section

/-- A396543: The number of coreful divisors of n that are not exponential divisors of n.

Offset 1, canonical program `A396543.P10005515851274933396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396543 (n : ℕ) : ℤ :=
  A396543.P10005515851274933396.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396543.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A397071.P3539504569464205153

`n²+6*n+3+2*A006218(n)`
-/

namespace A397071.P3539504569464205153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 6 * n + 3 : ℤ) + 2 * A006218 n

end

end A397071.P3539504569464205153

noncomputable section

/-- A397071: Number of true statements (x op y) = z, where 0 <= x, y, z <= n, op is in {+,-,*,/}.

Offset 0, canonical program `A397071.P3539504569464205153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397071 (n : ℕ) : ℤ :=
  A397071.P3539504569464205153.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397672.P3807838670338666769

`A011371(n)-A083741(n)`
-/

namespace A397672.P3807838670338666769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A083741 n

end

end A397672.P3807838670338666769

noncomputable section

/-- A397672: Value of the Colless index for the rooted binary echelon tree with n leaves.

Offset 1, canonical program `A397672.P3807838670338666769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397672 (n : ℕ) : ℤ :=
  A397672.P3807838670338666769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398165.P11536307954340140639

`∩[A138302(n+1)-1, A138302(n+1)]`
-/

namespace A398165.P11536307954340140639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398165.P11536307954340140639

noncomputable section

/-- A398165: Numbers k such that all the exponents in the prime factorizations of k and k+1 are powers of 2.

Offset 1, canonical program `A398165.P11536307954340140639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8631 terms. -/
def A398165 (n : ℕ) : ℤ :=
  (A398165.P11536307954340140639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8631 terms. -/
def A398165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398168.P16108428066764494187

`eq[(n+1)/∏{p}[n+1, #], char[A004709(n+1)]]`
-/

namespace A398168.P16108428066764494187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A398168.P16108428066764494187

noncomputable section

/-- A398168: Cubefree numbers k such that k+1 is squarefree.

Offset 1, canonical program `A398168.P16108428066764494187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4800 terms. -/
def A398168 (n : ℕ) : ℤ :=
  (A398168.P16108428066764494187.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4800 terms. -/
def A398168.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392569.P15058182535622603523

`a(n-1)+A000788(n)` with `a(0)=0`
-/

namespace A392569.P15058182535622603523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000788 n

end

end A392569.P15058182535622603523

noncomputable section

/-- A392569: Partial sums of A000788.

Offset 0, canonical program `A392569.P15058182535622603523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392569 (n : ℕ) : ℤ :=
  A392569.P15058182535622603523.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396203.P15910022281224477011

`p?[A396279(n+1)]`
-/

namespace A396203.P15910022281224477011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396203.P15910022281224477011

noncomputable section

/-- A396203: Primes p such that the gap to the next prime is floor(log_2(p)).

Offset 1, canonical program `A396203.P15910022281224477011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A396203 (n : ℕ) : ℤ :=
  A396203.P15910022281224477011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A396203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384555.P15004222589011881551

`A053165((n+1)/A062378(A053165(n+1)))`
-/

namespace A384555.P15004222589011881551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062378 (A053165 (n + 1)).toNat : ℚ))).toNat

end

end A384555.P15004222589011881551

noncomputable section

/-- A384555: The largest infinitary divisor of n that is cubefree.

Offset 1, canonical program `A384555.P15004222589011881551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384555 (n : ℕ) : ℤ :=
  A384555.P15004222589011881551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385007.P2853750131647033924

`A053165((n+1)/A062379(A003557(n+1)))`
-/

namespace A385007.P2853750131647033924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062379 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A385007.P2853750131647033924

noncomputable section

/-- A385007: The largest unitary divisor of n that is a biquadratefree number (A046100).

Offset 1, canonical program `A385007.P2853750131647033924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385007 (n : ℕ) : ℤ :=
  A385007.P2853750131647033924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381664.P17133759747871015799

`A210521(A209293(n+1))`
-/

namespace A381664.P17133759747871015799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210521 (A209293 (n + 1)).toNat

end

end A381664.P17133759747871015799

noncomputable section

/-- A381664: a(n) = A380200(A379342(n)).

Offset 1, canonical program `A381664.P17133759747871015799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A381664 (n : ℕ) : ℤ :=
  A381664.P17133759747871015799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A381664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381740.P15547761009824729862

`filter[A363171(n+1), A008966(#)]`
-/

namespace A381740.P15547761009824729862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A381740.P15547761009824729862

noncomputable section

/-- A381740: Squarefree numbers k such that k^2 is abundant.

Offset 1, canonical program `A381740.P15547761009824729862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3068 terms. -/
def A381740 (n : ℕ) : ℤ :=
  A381740.P15547761009824729862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3068 terms. -/
def A381740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384420.P10522523073999906591

`∑{e}[n+1, A070321(#)]`
-/

namespace A384420.P10522523073999906591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A070321 (Nat.factorization (f1 n) p)

end

end A384420.P10522523073999906591

noncomputable section

/-- A384420: The number of exponentially squarefree prime powers (not including 1) that divide n.

Offset 1, canonical program `A384420.P10522523073999906591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384420 (n : ℕ) : ℤ :=
  A384420.P10522523073999906591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384420.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A393336.P13809973050334025134

`A029931(n)-A359400(n)`
-/

namespace A393336.P13809973050334025134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A359400 n

end

end A393336.P13809973050334025134

noncomputable section

/-- A393336: a(n) is the sum of positions of 1's minus sum of positions of 0's in the binary expansion of n.

Offset 0, canonical program `A393336.P13809973050334025134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A359400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393336 (n : ℕ) : ℤ :=
  A393336.P13809973050334025134.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A359400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384955.P6172935050039872195

`A269221(n)/A066459(n)`
-/

namespace A384955.P6172935050039872195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269221 n : ℚ) / (A066459 n : ℚ)

end

end A384955.P6172935050039872195

noncomputable section

/-- A384955: a(n) is the multinomial coefficient of the digits of n.

Offset 0, canonical program `A384955.P6172935050039872195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066459, A269221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384955 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384955.P6172935050039872195.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066459, A269221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384955.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A390225.P7477734311538200322

`∩[A037310(n+1), A037312(n+1)]`
-/

namespace A390225.P7477734311538200322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390225.P7477734311538200322

noncomputable section

/-- A390225: Positive numbers whose base-3, base-5, and base-7 expansions have the same digit sum.

Offset 1, canonical program `A390225.P7477734311538200322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A390225 (n : ℕ) : ℤ :=
  (A390225.P7477734311538200322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A390225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380192.P1180676149005535308

`A010879(A007605(n+1))`
-/

namespace A380192.P1180676149005535308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007605 (n + 1)).toNat

end

end A380192.P1180676149005535308

noncomputable section

/-- A380192: Sum mod(10) of digits of n-th prime.

Offset 1, canonical program `A380192.P1180676149005535308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380192 (n : ℕ) : ℤ :=
  A380192.P1180676149005535308.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385656.P8934032101623162455

`lt[(n+1)²%A004159(n+1), 1]+1`
-/

namespace A385656.P8934032101623162455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A004159 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A385656.P8934032101623162455

noncomputable section

/-- A385656: Numbers k such that the sum of the decimal digits of k^2 divides k^2.

Offset 1, canonical program `A385656.P8934032101623162455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1769 terms. -/
def A385656 (n : ℕ) : ℤ :=
  (A385656.P8934032101623162455.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1769 terms. -/
def A385656.provenance : SequenceMachineLib.Provenance := .conjectured

